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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_269 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu72 : u32;

var<private> u_xlati72 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb72 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb74 : bool;

@group(1) @binding(5) var<uniform> x_1811 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1932 : UnityPerDraw;

var<private> u_xlatu74 : u32;

var<private> u_xlatu76 : u32;

var<private> u_xlati77 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

@group(1) @binding(1) var<uniform> x_2123 : AdditionalLights;

var<private> u_xlat77 : f32;

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

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlati78 : i32;

var<private> u_xlati79 : i32;

var<private> u_xlati80 : i32;

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
  var x_1894 : f32;
  var x_1905 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2270 : f32;
  var x_2280 : f32;
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
  var x_3549 : f32;
  var x_3871 : f32;
  var x_3884 : f32;
  var x_3932 : f32;
  var x_3943 : vec3<f32>;
  var x_4089 : f32;
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
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_271 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres0;
  let x_274 : vec3<f32> = (x_260 + -(vec3<f32>(x_271.x, x_271.y, x_271.z)));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres1;
  let x_284 : vec3<f32> = (x_278 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_291 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres2;
  let x_294 : vec3<f32> = (x_288 + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_300 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres3;
  let x_303 : vec3<f32> = (x_298 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : vec4<f32> = u_xlat5;
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_333 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = x_269.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_333 < x_336);
  let x_339 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_339);
  let x_343 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_343);
  let x_347 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_347);
  let x_351 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_351);
  let x_355 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_355);
  let x_360 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_360);
  let x_364 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_364);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = u_xlat5;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_377.z);
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat72 = dot(x_380, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_385 : f32 = u_xlat72;
  u_xlat72 = (-(x_385) + 4.0f);
  let x_390 : f32 = u_xlat72;
  u_xlatu72 = u32(x_390);
  let x_394 : u32 = u_xlatu72;
  u_xlati72 = (bitcast<i32>(x_394) << bitcast<u32>(2i));
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_399 : i32 = u_xlati72;
  let x_402 : i32 = u_xlati72;
  let x_406 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_399 + 1i) / 4i)][((x_402 + 1i) % 4i)];
  let x_408 : vec3<f32> = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : i32 = u_xlati72;
  let x_413 : i32 = u_xlati72;
  let x_416 : vec4<f32> = x_269.x_MainLightWorldToShadow[(x_411 / 4i)][(x_413 % 4i)];
  let x_418 : vec3<f32> = vs_TEXCOORD1;
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.x, x_418.x, x_418.x)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : i32 = u_xlati72;
  let x_429 : i32 = u_xlati72;
  let x_433 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_426 + 2i) / 4i)][((x_429 + 2i) % 4i)];
  let x_435 : vec3<f32> = vs_TEXCOORD1;
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.z, x_435.z, x_435.z)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : i32 = u_xlati72;
  let x_448 : i32 = u_xlati72;
  let x_452 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_445 + 3i) / 4i)][((x_448 + 3i) % 4i)];
  let x_454 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_463 : vec2<f32> = vs_TEXCOORD7;
  let x_465 : f32 = x_27.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_463, x_465);
  u_xlat5 = x_466;
  let x_471 : vec2<f32> = vs_TEXCOORD7;
  let x_473 : f32 = x_27.x_GlobalMipBias.x;
  let x_474 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_471, x_473);
  let x_475 : vec3<f32> = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat5;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat2;
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat72 = dot(x_485, vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : f32 = u_xlat72;
  u_xlat72 = (x_489 + 0.5f);
  let x_491 : f32 = u_xlat72;
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : vec3<f32> = (vec3<f32>(x_491, x_491, x_491) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat5.w;
  u_xlat72 = max(x_499, 0.00009999999747378752f);
  let x_501 : vec4<f32> = u_xlat5;
  let x_503 : f32 = u_xlat72;
  let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) / vec3<f32>(x_503, x_503, x_503));
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_511 : f32 = x_269.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_511);
  let x_513 : bool = u_xlatb72;
  if (x_513) {
    let x_517 : f32 = x_269.x_MainLightShadowParams.y;
    u_xlatb72 = (x_517 == 1.0f);
    let x_519 : bool = u_xlatb72;
    if (x_519) {
      let x_522 : vec4<f32> = u_xlat4;
      let x_526 : vec4<f32> = x_269.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.y) + x_526);
      let x_530 : vec4<f32> = u_xlat6;
      let x_531 : vec2<f32> = vec2<f32>(x_530.x, x_530.y);
      let x_533 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_531.x, x_531.y, x_533);
      let x_545 : vec3<f32> = txVec0;
      let x_547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_545.xy, x_545.z);
      u_xlat7.x = x_547;
      let x_550 : vec4<f32> = u_xlat6;
      let x_551 : vec2<f32> = vec2<f32>(x_550.z, x_550.w);
      let x_553 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_551.x, x_551.y, x_553);
      let x_560 : vec3<f32> = txVec1;
      let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
      u_xlat7.y = x_562;
      let x_564 : vec4<f32> = u_xlat4;
      let x_568 : vec4<f32> = x_269.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_564.x, x_564.y, x_564.x, x_564.y) + x_568);
      let x_571 : vec4<f32> = u_xlat6;
      let x_572 : vec2<f32> = vec2<f32>(x_571.x, x_571.y);
      let x_574 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_572.x, x_572.y, x_574);
      let x_581 : vec3<f32> = txVec2;
      let x_583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_581.xy, x_581.z);
      u_xlat7.z = x_583;
      let x_586 : vec4<f32> = u_xlat6;
      let x_587 : vec2<f32> = vec2<f32>(x_586.z, x_586.w);
      let x_589 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_587.x, x_587.y, x_589);
      let x_596 : vec3<f32> = txVec3;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_596.xy, x_596.z);
      u_xlat7.w = x_598;
      let x_600 : vec4<f32> = u_xlat7;
      u_xlat72 = dot(x_600, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_607 : f32 = x_269.x_MainLightShadowParams.y;
      u_xlatb1 = (x_607 == 2.0f);
      let x_609 : bool = u_xlatb1;
      if (x_609) {
        let x_612 : vec4<f32> = u_xlat4;
        let x_616 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_620 : vec2<f32> = ((vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_616.z, x_616.w)) + vec2<f32>(0.5f, 0.5f));
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_623 : vec4<f32> = u_xlat6;
        let x_625 : vec2<f32> = floor(vec2<f32>(x_623.x, x_623.y));
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_630 : vec4<f32> = u_xlat4;
        let x_633 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_636 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_630.x, x_630.y) * vec2<f32>(x_633.z, x_633.w)) + -(vec2<f32>(x_636.x, x_636.y)));
        let x_640 : vec2<f32> = u_xlat54;
        u_xlat7 = (vec4<f32>(x_640.x, x_640.x, x_640.y, x_640.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_645 : vec4<f32> = u_xlat7;
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_645.x, x_645.x, x_645.z, x_645.z) * vec4<f32>(x_647.x, x_647.x, x_647.z, x_647.z));
        let x_650 : vec4<f32> = u_xlat8;
        let x_654 : vec2<f32> = (vec2<f32>(x_650.y, x_650.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_654.x, x_655.y, x_654.y, x_655.w);
        let x_657 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = u_xlat54;
        let x_662 : vec2<f32> = ((vec2<f32>(x_657.x, x_657.z) * vec2<f32>(0.5f, 0.5f)) + -(x_660));
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
        let x_666 : vec2<f32> = u_xlat54;
        u_xlat56 = (-(x_666) + vec2<f32>(1.0f, 1.0f));
        let x_671 : vec2<f32> = u_xlat54;
        let x_673 : vec2<f32> = min(x_671, vec2<f32>(0.0f, 0.0f));
        let x_674 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat9;
        let x_679 : vec4<f32> = u_xlat9;
        let x_682 : vec2<f32> = u_xlat56;
        let x_683 : vec2<f32> = ((-(vec2<f32>(x_676.x, x_676.y)) * vec2<f32>(x_679.x, x_679.y)) + x_682);
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec2<f32> = u_xlat54;
        u_xlat54 = max(x_686, vec2<f32>(0.0f, 0.0f));
        let x_688 : vec2<f32> = u_xlat54;
        let x_690 : vec2<f32> = u_xlat54;
        let x_692 : vec4<f32> = u_xlat7;
        u_xlat54 = ((-(x_688) * x_690) + vec2<f32>(x_692.y, x_692.w));
        let x_695 : vec4<f32> = u_xlat9;
        let x_697 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) + vec2<f32>(1.0f, 1.0f));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_700 + vec2<f32>(1.0f, 1.0f));
        let x_703 : vec4<f32> = u_xlat8;
        let x_707 : vec2<f32> = (vec2<f32>(x_703.x, x_703.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_708 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_710 : vec2<f32> = u_xlat56;
        let x_711 : vec2<f32> = (x_710 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat9;
        let x_716 : vec2<f32> = (vec2<f32>(x_714.x, x_714.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_720 : vec2<f32> = u_xlat54;
        let x_721 : vec2<f32> = (x_720 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat54 = (vec2<f32>(x_724.y, x_724.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_728 : f32 = u_xlat9.x;
        u_xlat10.z = x_728;
        let x_731 : f32 = u_xlat54.x;
        u_xlat10.w = x_731;
        let x_734 : f32 = u_xlat11.x;
        u_xlat8.z = x_734;
        let x_737 : f32 = u_xlat7.x;
        u_xlat8.w = x_737;
        let x_740 : vec4<f32> = u_xlat8;
        let x_742 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_740.z, x_740.w, x_740.x, x_740.z) + vec4<f32>(x_742.z, x_742.w, x_742.x, x_742.z));
        let x_746 : f32 = u_xlat10.y;
        u_xlat9.z = x_746;
        let x_749 : f32 = u_xlat54.y;
        u_xlat9.w = x_749;
        let x_752 : f32 = u_xlat8.y;
        u_xlat11.z = x_752;
        let x_755 : f32 = u_xlat7.z;
        u_xlat11.w = x_755;
        let x_757 : vec4<f32> = u_xlat9;
        let x_759 : vec4<f32> = u_xlat11;
        let x_761 : vec3<f32> = (vec3<f32>(x_757.z, x_757.y, x_757.w) + vec3<f32>(x_759.z, x_759.y, x_759.w));
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat8;
        let x_766 : vec4<f32> = u_xlat12;
        let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.z, x_764.w) / vec3<f32>(x_766.z, x_766.w, x_766.y));
        let x_769 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat8;
        let x_776 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_777 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat11;
        let x_781 : vec4<f32> = u_xlat7;
        let x_783 : vec3<f32> = (vec3<f32>(x_779.z, x_779.y, x_779.w) / vec3<f32>(x_781.x, x_781.y, x_781.z));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat9;
        let x_788 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat8;
        let x_794 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_796 : vec3<f32> = (vec3<f32>(x_791.y, x_791.x, x_791.z) * vec3<f32>(x_794.x, x_794.x, x_794.x));
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_799 : vec4<f32> = u_xlat9;
        let x_802 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_804 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_802.y, x_802.y, x_802.y));
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
        let x_808 : f32 = u_xlat9.x;
        u_xlat8.w = x_808;
        let x_810 : vec4<f32> = u_xlat6;
        let x_813 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_816 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y) * vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y)) + vec4<f32>(x_816.y, x_816.w, x_816.x, x_816.w));
        let x_819 : vec4<f32> = u_xlat6;
        let x_822 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_819.x, x_819.y) * vec2<f32>(x_822.x, x_822.y)) + vec2<f32>(x_825.z, x_825.w));
        let x_829 : f32 = u_xlat8.y;
        u_xlat9.w = x_829;
        let x_831 : vec4<f32> = u_xlat9;
        let x_832 : vec2<f32> = vec2<f32>(x_831.y, x_831.z);
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_833.x, x_832.x, x_833.z, x_832.y);
        let x_835 : vec4<f32> = u_xlat6;
        let x_838 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.x, x_841.y, x_841.z, x_841.y));
        let x_844 : vec4<f32> = u_xlat6;
        let x_847 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_844.x, x_844.y, x_844.x, x_844.y) * vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y)) + vec4<f32>(x_850.w, x_850.y, x_850.w, x_850.z));
        let x_853 : vec4<f32> = u_xlat6;
        let x_856 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y)) + vec4<f32>(x_859.x, x_859.w, x_859.z, x_859.w));
        let x_863 : vec4<f32> = u_xlat7;
        let x_865 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_863.x, x_863.x, x_863.x, x_863.y) * vec4<f32>(x_865.z, x_865.w, x_865.y, x_865.z));
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_869.y, x_869.y, x_869.z, x_869.z) * x_871);
        let x_874 : f32 = u_xlat7.z;
        let x_876 : f32 = u_xlat12.y;
        u_xlat1.x = (x_874 * x_876);
        let x_880 : vec4<f32> = u_xlat10;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_891 : vec3<f32> = txVec4;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat74 = x_893;
        let x_895 : vec4<f32> = u_xlat10;
        let x_896 : vec2<f32> = vec2<f32>(x_895.z, x_895.w);
        let x_898 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_906 : vec3<f32> = txVec5;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_906.xy, x_906.z);
        u_xlat75 = x_908;
        let x_909 : f32 = u_xlat75;
        let x_911 : f32 = u_xlat13.y;
        u_xlat75 = (x_909 * x_911);
        let x_914 : f32 = u_xlat13.x;
        let x_915 : f32 = u_xlat74;
        let x_917 : f32 = u_xlat75;
        u_xlat74 = ((x_914 * x_915) + x_917);
        let x_920 : vec2<f32> = u_xlat54;
        let x_922 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec6;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_929.xy, x_929.z);
        u_xlat75 = x_931;
        let x_933 : f32 = u_xlat13.z;
        let x_934 : f32 = u_xlat75;
        let x_936 : f32 = u_xlat74;
        u_xlat74 = ((x_933 * x_934) + x_936);
        let x_939 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
        let x_942 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec7;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
        u_xlat75 = x_951;
        let x_953 : f32 = u_xlat13.w;
        let x_954 : f32 = u_xlat75;
        let x_956 : f32 = u_xlat74;
        u_xlat74 = ((x_953 * x_954) + x_956);
        let x_959 : vec4<f32> = u_xlat11;
        let x_960 : vec2<f32> = vec2<f32>(x_959.x, x_959.y);
        let x_962 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_960.x, x_960.y, x_962);
        let x_969 : vec3<f32> = txVec8;
        let x_971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_969.xy, x_969.z);
        u_xlat75 = x_971;
        let x_973 : f32 = u_xlat14.x;
        let x_974 : f32 = u_xlat75;
        let x_976 : f32 = u_xlat74;
        u_xlat74 = ((x_973 * x_974) + x_976);
        let x_979 : vec4<f32> = u_xlat11;
        let x_980 : vec2<f32> = vec2<f32>(x_979.z, x_979.w);
        let x_982 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_980.x, x_980.y, x_982);
        let x_989 : vec3<f32> = txVec9;
        let x_991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_989.xy, x_989.z);
        u_xlat75 = x_991;
        let x_993 : f32 = u_xlat14.y;
        let x_994 : f32 = u_xlat75;
        let x_996 : f32 = u_xlat74;
        u_xlat74 = ((x_993 * x_994) + x_996);
        let x_999 : vec4<f32> = u_xlat9;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
        let x_1002 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec10;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
        u_xlat75 = x_1011;
        let x_1013 : f32 = u_xlat14.z;
        let x_1014 : f32 = u_xlat75;
        let x_1016 : f32 = u_xlat74;
        u_xlat74 = ((x_1013 * x_1014) + x_1016);
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
        let x_1022 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec11;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
        u_xlat75 = x_1031;
        let x_1033 : f32 = u_xlat14.w;
        let x_1034 : f32 = u_xlat75;
        let x_1036 : f32 = u_xlat74;
        u_xlat74 = ((x_1033 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec12;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
        u_xlat75 = x_1051;
        let x_1053 : f32 = u_xlat1.x;
        let x_1054 : f32 = u_xlat75;
        let x_1056 : f32 = u_xlat74;
        u_xlat72 = ((x_1053 * x_1054) + x_1056);
      } else {
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1066 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat6;
        let x_1070 : vec2<f32> = floor(vec2<f32>(x_1068.x, x_1068.y));
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.z, x_1076.w)) + -(vec2<f32>(x_1079.x, x_1079.y)));
        let x_1083 : vec2<f32> = u_xlat54;
        u_xlat7 = (vec4<f32>(x_1083.x, x_1083.x, x_1083.y, x_1083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.z, x_1086.z) * vec4<f32>(x_1088.x, x_1088.x, x_1088.z, x_1088.z));
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1091.y, x_1091.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1101 : vec2<f32> = u_xlat54;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1101));
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat54;
        let x_1108 : vec2<f32> = (-(x_1106) + vec2<f32>(1.0f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat54;
        u_xlat56 = min(x_1111, vec2<f32>(0.0f, 0.0f));
        let x_1113 : vec2<f32> = u_xlat56;
        let x_1115 : vec2<f32> = u_xlat56;
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = ((-(x_1113) * x_1115) + vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec2<f32> = u_xlat54;
        u_xlat56 = max(x_1122, vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec2<f32> = u_xlat56;
        let x_1127 : vec2<f32> = u_xlat56;
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1131 : vec2<f32> = ((-(x_1125) * x_1127) + vec2<f32>(x_1129.y, x_1129.w));
        let x_1132 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1131.x, x_1132.y, x_1131.y);
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) + vec2<f32>(2.0f, 2.0f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec3<f32> = u_xlat31;
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
        let x_1164 : vec2<f32> = u_xlat54;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec2<f32> = u_xlat54;
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
        let x_1190 : vec2<f32> = u_xlat54;
        let x_1193 : vec2<f32> = ((vec2<f32>(x_1190.y, x_1190.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1194.x, x_1193.x, x_1194.z, x_1193.y);
        let x_1196 : vec2<f32> = u_xlat54;
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
        let x_1225 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1222.w, x_1222.x, x_1222.y, x_1222.z) * vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1228.x, x_1228.w, x_1228.y, x_1228.z) * vec4<f32>(x_1231.y, x_1231.y, x_1231.y, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = vec3<f32>(x_1234.y, x_1234.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1235.z);
        let x_1239 : f32 = u_xlat9.x;
        u_xlat11.y = x_1239;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat54 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat11.y;
        u_xlat8.y = x_1260;
        let x_1263 : f32 = u_xlat9.z;
        u_xlat11.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat11.y;
        u_xlat8.z = x_1286;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.z));
        let x_1299 : f32 = u_xlat9.w;
        u_xlat11.y = x_1299;
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat32 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1322 : f32 = u_xlat11.y;
        u_xlat8.w = x_1322;
        let x_1325 : vec4<f32> = u_xlat6;
        let x_1328 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.x, x_1331.w));
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec3<f32> = vec3<f32>(x_1334.x, x_1334.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1335.x, x_1336.y, x_1335.y, x_1335.z);
        let x_1338 : vec4<f32> = u_xlat6;
        let x_1341 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y) * vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y)) + vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1344.y));
        let x_1348 : vec4<f32> = u_xlat6;
        let x_1351 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.w, x_1354.y));
        let x_1358 : f32 = u_xlat8.x;
        u_xlat9.x = x_1358;
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.x, x_1366.y));
        let x_1369 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1372.x, x_1372.x, x_1372.x, x_1372.x) * x_1374);
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1377.y, x_1377.y, x_1377.y, x_1377.y) * x_1379);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1382.z, x_1382.z, x_1382.z, x_1382.z) * x_1384);
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1388 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1386.w, x_1386.w, x_1386.w, x_1386.w) * x_1388);
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec13;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat1.x = x_1403;
        let x_1406 : vec4<f32> = u_xlat12;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec14;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat74 = x_1418;
        let x_1419 : f32 = u_xlat74;
        let x_1421 : f32 = u_xlat17.y;
        u_xlat74 = (x_1419 * x_1421);
        let x_1424 : f32 = u_xlat17.x;
        let x_1426 : f32 = u_xlat1.x;
        let x_1428 : f32 = u_xlat74;
        u_xlat1.x = ((x_1424 * x_1426) + x_1428);
        let x_1432 : vec2<f32> = u_xlat54;
        let x_1434 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec15;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat74 = x_1443;
        let x_1445 : f32 = u_xlat17.z;
        let x_1446 : f32 = u_xlat74;
        let x_1449 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat15;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec16;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat74 = x_1465;
        let x_1467 : f32 = u_xlat17.w;
        let x_1468 : f32 = u_xlat74;
        let x_1471 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat13;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec17;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat74 = x_1487;
        let x_1489 : f32 = u_xlat18.x;
        let x_1490 : f32 = u_xlat74;
        let x_1493 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat13;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec18;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat74 = x_1509;
        let x_1511 : f32 = u_xlat18.y;
        let x_1512 : f32 = u_xlat74;
        let x_1515 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat14;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec19;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat74 = x_1531;
        let x_1533 : f32 = u_xlat18.z;
        let x_1534 : f32 = u_xlat74;
        let x_1537 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat15;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec20;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat74 = x_1553;
        let x_1555 : f32 = u_xlat18.w;
        let x_1556 : f32 = u_xlat74;
        let x_1559 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec4<f32> = u_xlat16;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec21;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1573.xy, x_1573.z);
        u_xlat74 = x_1575;
        let x_1577 : f32 = u_xlat19.x;
        let x_1578 : f32 = u_xlat74;
        let x_1581 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1577 * x_1578) + x_1581);
        let x_1585 : vec4<f32> = u_xlat16;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.z, x_1585.w);
        let x_1588 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec22;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1595.xy, x_1595.z);
        u_xlat74 = x_1597;
        let x_1599 : f32 = u_xlat19.y;
        let x_1600 : f32 = u_xlat74;
        let x_1603 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec2<f32> = u_xlat32;
        let x_1609 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec23;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat74 = x_1618;
        let x_1620 : f32 = u_xlat19.z;
        let x_1621 : f32 = u_xlat74;
        let x_1624 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1620 * x_1621) + x_1624);
        let x_1628 : vec2<f32> = u_xlat62;
        let x_1630 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec24;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat74 = x_1639;
        let x_1641 : f32 = u_xlat19.w;
        let x_1642 : f32 = u_xlat74;
        let x_1645 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1641 * x_1642) + x_1645);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec25;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat74 = x_1661;
        let x_1663 : f32 = u_xlat7.x;
        let x_1664 : f32 = u_xlat74;
        let x_1667 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1663 * x_1664) + x_1667);
        let x_1671 : vec4<f32> = u_xlat11;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec26;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat74 = x_1683;
        let x_1685 : f32 = u_xlat7.y;
        let x_1686 : f32 = u_xlat74;
        let x_1689 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1685 * x_1686) + x_1689);
        let x_1693 : vec2<f32> = u_xlat57;
        let x_1695 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec27;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
        u_xlat74 = x_1704;
        let x_1706 : f32 = u_xlat7.z;
        let x_1707 : f32 = u_xlat74;
        let x_1710 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1706 * x_1707) + x_1710);
        let x_1714 : vec4<f32> = u_xlat6;
        let x_1715 : vec2<f32> = vec2<f32>(x_1714.x, x_1714.y);
        let x_1717 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec28;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1724.xy, x_1724.z);
        u_xlat74 = x_1726;
        let x_1728 : f32 = u_xlat7.w;
        let x_1729 : f32 = u_xlat74;
        let x_1732 : f32 = u_xlat1.x;
        u_xlat72 = ((x_1728 * x_1729) + x_1732);
      }
    }
  } else {
    let x_1736 : vec4<f32> = u_xlat4;
    let x_1737 : vec2<f32> = vec2<f32>(x_1736.x, x_1736.y);
    let x_1739 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
    let x_1746 : vec3<f32> = txVec29;
    let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1746.xy, x_1746.z);
    u_xlat72 = x_1748;
  }
  let x_1750 : f32 = x_269.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1750) + 1.0f);
  let x_1754 : f32 = u_xlat72;
  let x_1756 : f32 = x_269.x_MainLightShadowParams.x;
  let x_1759 : f32 = u_xlat1.x;
  u_xlat72 = ((x_1754 * x_1756) + x_1759);
  let x_1762 : f32 = u_xlat4.z;
  u_xlatb1 = (0.0f >= x_1762);
  let x_1766 : f32 = u_xlat4.z;
  u_xlatb74 = (x_1766 >= 1.0f);
  let x_1768 : bool = u_xlatb1;
  let x_1769 : bool = u_xlatb74;
  u_xlatb1 = (x_1768 | x_1769);
  let x_1771 : bool = u_xlatb1;
  let x_1772 : f32 = u_xlat72;
  u_xlat72 = select(x_1772, 1.0f, x_1771);
  let x_1774 : vec3<f32> = vs_TEXCOORD1;
  let x_1777 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1779 : vec3<f32> = (x_1774 + -(x_1777));
  let x_1780 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1782 : vec4<f32> = u_xlat4;
  let x_1784 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1782.x, x_1782.y, x_1782.z), vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1789 : f32 = u_xlat1.x;
  let x_1791 : f32 = x_269.x_MainLightShadowParams.z;
  let x_1794 : f32 = x_269.x_MainLightShadowParams.w;
  u_xlat74 = ((x_1789 * x_1791) + x_1794);
  let x_1796 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1796, 0.0f, 1.0f);
  let x_1798 : f32 = u_xlat72;
  u_xlat75 = (-(x_1798) + 1.0f);
  let x_1801 : f32 = u_xlat74;
  let x_1802 : f32 = u_xlat75;
  let x_1804 : f32 = u_xlat72;
  u_xlat72 = ((x_1801 * x_1802) + x_1804);
  let x_1813 : f32 = x_1811.x_MainLightCookieTextureFormat;
  u_xlatb74 = !((x_1813 == -1.0f));
  let x_1815 : bool = u_xlatb74;
  if (x_1815) {
    let x_1818 : vec3<f32> = vs_TEXCOORD1;
    let x_1821 : vec4<f32> = x_1811.x_MainLightWorldToLight[1i];
    let x_1823 : vec2<f32> = (vec2<f32>(x_1818.y, x_1818.y) * vec2<f32>(x_1821.x, x_1821.y));
    let x_1824 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
    let x_1827 : vec4<f32> = x_1811.x_MainLightWorldToLight[0i];
    let x_1829 : vec3<f32> = vs_TEXCOORD1;
    let x_1832 : vec4<f32> = u_xlat4;
    let x_1834 : vec2<f32> = ((vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1829.x, x_1829.x)) + vec2<f32>(x_1832.x, x_1832.y));
    let x_1835 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1834.x, x_1834.y, x_1835.z, x_1835.w);
    let x_1838 : vec4<f32> = x_1811.x_MainLightWorldToLight[2i];
    let x_1840 : vec3<f32> = vs_TEXCOORD1;
    let x_1843 : vec4<f32> = u_xlat4;
    let x_1845 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1840.z, x_1840.z)) + vec2<f32>(x_1843.x, x_1843.y));
    let x_1846 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
    let x_1848 : vec4<f32> = u_xlat4;
    let x_1851 : vec4<f32> = x_1811.x_MainLightWorldToLight[3i];
    let x_1853 : vec2<f32> = (vec2<f32>(x_1848.x, x_1848.y) + vec2<f32>(x_1851.x, x_1851.y));
    let x_1854 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
    let x_1856 : vec4<f32> = u_xlat4;
    let x_1859 : vec2<f32> = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1860 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
    let x_1867 : vec4<f32> = u_xlat4;
    let x_1870 : f32 = x_27.x_GlobalMipBias.x;
    let x_1871 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1867.x, x_1867.y), x_1870);
    u_xlat4 = x_1871;
    let x_1876 : f32 = x_1811.x_MainLightCookieTextureFormat;
    let x_1878 : f32 = x_1811.x_MainLightCookieTextureFormat;
    let x_1880 : f32 = x_1811.x_MainLightCookieTextureFormat;
    let x_1882 : f32 = x_1811.x_MainLightCookieTextureFormat;
    let x_1883 : vec4<f32> = vec4<f32>(x_1876, x_1878, x_1880, x_1882);
    let x_1890 : vec4<bool> = (vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1883.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1890.x, x_1890.y);
    let x_1893 : bool = u_xlatb6.y;
    if (x_1893) {
      let x_1898 : f32 = u_xlat4.w;
      x_1894 = x_1898;
    } else {
      let x_1901 : f32 = u_xlat4.x;
      x_1894 = x_1901;
    }
    let x_1902 : f32 = x_1894;
    u_xlat74 = x_1902;
    let x_1904 : bool = u_xlatb6.x;
    if (x_1904) {
      let x_1908 : vec4<f32> = u_xlat4;
      x_1905 = vec3<f32>(x_1908.x, x_1908.y, x_1908.z);
    } else {
      let x_1911 : f32 = u_xlat74;
      x_1905 = vec3<f32>(x_1911, x_1911, x_1911);
    }
    let x_1913 : vec3<f32> = x_1905;
    let x_1914 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1920 : vec4<f32> = u_xlat4;
  let x_1923 : vec4<f32> = x_27.x_MainLightColor;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1920.x, x_1920.y, x_1920.z) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
  let x_1928 : f32 = u_xlat72;
  let x_1934 : f32 = x_1932.unity_LightData.z;
  u_xlat72 = (x_1928 * x_1934);
  let x_1936 : f32 = u_xlat72;
  let x_1938 : vec4<f32> = u_xlat4;
  let x_1940 : vec3<f32> = (vec3<f32>(x_1936, x_1936, x_1936) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
  let x_1943 : vec3<f32> = u_xlat2;
  let x_1945 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat72 = dot(x_1943, vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1948, 0.0f, 1.0f);
  let x_1950 : f32 = u_xlat72;
  let x_1952 : vec4<f32> = u_xlat4;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1950, x_1950, x_1950) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1958 : f32 = x_41.x_SpecColor.w;
  u_xlat72 = ((x_1958 * 10.0f) + 1.0f);
  let x_1962 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1962);
  let x_1964 : vec3<f32> = u_xlat3;
  let x_1965 : vec3<f32> = u_xlat24;
  let x_1969 : vec4<f32> = x_27.x_MainLightPosition;
  let x_1971 : vec3<f32> = ((x_1964 * vec3<f32>(x_1965.x, x_1965.x, x_1965.x)) + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
  let x_1974 : vec4<f32> = u_xlat7;
  let x_1976 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(vec3<f32>(x_1974.x, x_1974.y, x_1974.z), vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
  let x_1979 : f32 = u_xlat74;
  u_xlat74 = max(x_1979, 1.17549435e-38f);
  let x_1982 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1982);
  let x_1984 : f32 = u_xlat74;
  let x_1986 : vec4<f32> = u_xlat7;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1984, x_1984, x_1984) * vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1991 : vec3<f32> = u_xlat2;
  let x_1992 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(x_1991, vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1995 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1995, 0.0f, 1.0f);
  let x_1997 : f32 = u_xlat74;
  u_xlat74 = log2(x_1997);
  let x_1999 : f32 = u_xlat72;
  let x_2000 : f32 = u_xlat74;
  u_xlat74 = (x_1999 * x_2000);
  let x_2002 : f32 = u_xlat74;
  u_xlat74 = exp2(x_2002);
  let x_2004 : f32 = u_xlat74;
  let x_2007 : vec4<f32> = x_41.x_SpecColor;
  let x_2009 : vec3<f32> = (vec3<f32>(x_2004, x_2004, x_2004) * vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
  let x_2012 : vec4<f32> = u_xlat4;
  let x_2014 : vec4<f32> = u_xlat7;
  let x_2016 : vec3<f32> = (vec3<f32>(x_2012.x, x_2012.y, x_2012.z) * vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
  let x_2017 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
  let x_2019 : vec4<f32> = u_xlat6;
  let x_2021 : vec4<f32> = u_xlat1;
  let x_2024 : vec4<f32> = u_xlat4;
  let x_2026 : vec3<f32> = ((vec3<f32>(x_2019.x, x_2019.y, x_2019.z) * vec3<f32>(x_2021.y, x_2021.z, x_2021.w)) + vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
  let x_2027 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
  let x_2030 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_2032 : f32 = x_1932.unity_LightData.y;
  u_xlat74 = min(x_2030, x_2032);
  let x_2035 : f32 = u_xlat74;
  u_xlatu74 = bitcast<u32>(i32(x_2035));
  let x_2039 : f32 = u_xlat1.x;
  let x_2042 : f32 = x_269.x_AdditionalShadowFadeParams.x;
  let x_2045 : f32 = x_269.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2039 * x_2042) + x_2045);
  let x_2049 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2049, 0.0f, 1.0f);
  let x_2053 : f32 = x_1811.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2055 : f32 = x_1811.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2057 : f32 = x_1811.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2059 : f32 = x_1811.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2060 : vec4<f32> = vec4<f32>(x_2053, x_2055, x_2057, x_2059);
  let x_2066 : vec4<bool> = (vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2060.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2066.x, x_2066.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2078 : u32 = u_xlatu_loop_1;
    let x_2079 : u32 = u_xlatu74;
    if ((x_2078 < x_2079)) {
    } else {
      break;
    }
    let x_2082 : u32 = u_xlatu_loop_1;
    u_xlatu76 = (x_2082 >> 2u);
    let x_2085 : u32 = u_xlatu_loop_1;
    u_xlati77 = bitcast<i32>((x_2085 & 3u));
    let x_2089 : u32 = u_xlatu76;
    let x_2092 : vec4<f32> = x_1932.unity_LightIndices[bitcast<i32>(x_2089)];
    let x_2102 : i32 = u_xlati77;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2107 : vec4<u32> = indexable[x_2102];
    u_xlat76 = dot(x_2092, bitcast<vec4<f32>>(x_2107));
    let x_2111 : f32 = u_xlat76;
    u_xlati76 = i32(x_2111);
    let x_2113 : vec3<f32> = vs_TEXCOORD1;
    let x_2124 : i32 = u_xlati76;
    let x_2126 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2124];
    let x_2129 : i32 = u_xlati76;
    let x_2131 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2129];
    let x_2133 : vec3<f32> = ((-(x_2113) * vec3<f32>(x_2126.w, x_2126.w, x_2126.w)) + vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
    let x_2134 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
    let x_2137 : vec4<f32> = u_xlat8;
    let x_2139 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_2137.x, x_2137.y, x_2137.z), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : f32 = u_xlat77;
    u_xlat77 = max(x_2142, 0.00006103515625f);
    let x_2144 : f32 = u_xlat77;
    u_xlat54.x = inverseSqrt(x_2144);
    let x_2147 : vec2<f32> = u_xlat54;
    let x_2149 : vec4<f32> = u_xlat8;
    let x_2151 : vec3<f32> = (vec3<f32>(x_2147.x, x_2147.x, x_2147.x) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
    let x_2154 : f32 = u_xlat77;
    u_xlat54.x = (1.0f / x_2154);
    let x_2157 : f32 = u_xlat77;
    let x_2158 : i32 = u_xlati76;
    let x_2160 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2158].x;
    u_xlat77 = (x_2157 * x_2160);
    let x_2162 : f32 = u_xlat77;
    let x_2164 : f32 = u_xlat77;
    u_xlat77 = ((-(x_2162) * x_2164) + 1.0f);
    let x_2167 : f32 = u_xlat77;
    u_xlat77 = max(x_2167, 0.0f);
    let x_2169 : f32 = u_xlat77;
    let x_2170 : f32 = u_xlat77;
    u_xlat77 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat77;
    let x_2174 : f32 = u_xlat54.x;
    u_xlat77 = (x_2172 * x_2174);
    let x_2176 : i32 = u_xlati76;
    let x_2178 : vec4<f32> = x_2123.x_AdditionalLightsSpotDir[x_2176];
    let x_2180 : vec4<f32> = u_xlat8;
    u_xlat54.x = dot(vec3<f32>(x_2178.x, x_2178.y, x_2178.z), vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
    let x_2185 : f32 = u_xlat54.x;
    let x_2186 : i32 = u_xlati76;
    let x_2188 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2186].z;
    let x_2190 : i32 = u_xlati76;
    let x_2192 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2190].w;
    u_xlat54.x = ((x_2185 * x_2188) + x_2192);
    let x_2196 : f32 = u_xlat54.x;
    u_xlat54.x = clamp(x_2196, 0.0f, 1.0f);
    let x_2200 : f32 = u_xlat54.x;
    let x_2202 : f32 = u_xlat54.x;
    u_xlat54.x = (x_2200 * x_2202);
    let x_2205 : f32 = u_xlat77;
    let x_2207 : f32 = u_xlat54.x;
    u_xlat77 = (x_2205 * x_2207);
    let x_2211 : i32 = u_xlati76;
    let x_2213 : f32 = x_269.x_AdditionalShadowParams[x_2211].w;
    u_xlati54 = i32(x_2213);
    let x_2216 : i32 = u_xlati54;
    u_xlatb78 = (x_2216 >= 0i);
    let x_2218 : bool = u_xlatb78;
    if (x_2218) {
      let x_2222 : i32 = u_xlati76;
      let x_2224 : f32 = x_269.x_AdditionalShadowParams[x_2222].z;
      u_xlatb78 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2224, x_2224, x_2224, x_2224))));
      let x_2228 : bool = u_xlatb78;
      if (x_2228) {
        let x_2232 : vec4<f32> = u_xlat8;
        let x_2235 : vec4<f32> = u_xlat8;
        let x_2238 : vec4<bool> = (abs(vec4<f32>(x_2232.z, x_2232.z, x_2232.y, x_2232.z)) >= abs(vec4<f32>(x_2235.x, x_2235.y, x_2235.x, x_2235.x)));
        let x_2240 : vec3<bool> = vec3<bool>(x_2238.x, x_2238.y, x_2238.z);
        let x_2241 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
        let x_2244 : bool = u_xlatb9.y;
        let x_2246 : bool = u_xlatb9.x;
        u_xlatb78 = (x_2244 & x_2246);
        let x_2248 : vec4<f32> = u_xlat8;
        let x_2251 : vec4<bool> = (-(vec4<f32>(x_2248.z, x_2248.y, x_2248.z, x_2248.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2252 : vec3<bool> = vec3<bool>(x_2251.x, x_2251.y, x_2251.w);
        let x_2253 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2252.x, x_2252.y, x_2253.z, x_2252.z);
        let x_2256 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2256);
        let x_2261 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2261);
        let x_2266 : bool = u_xlatb9.w;
        u_xlat79 = select(0.0f, 1.0f, x_2266);
        let x_2269 : bool = u_xlatb9.z;
        if (x_2269) {
          let x_2274 : f32 = u_xlat9.y;
          x_2270 = x_2274;
        } else {
          let x_2276 : f32 = u_xlat79;
          x_2270 = x_2276;
        }
        let x_2277 : f32 = x_2270;
        u_xlat79 = x_2277;
        let x_2279 : bool = u_xlatb78;
        if (x_2279) {
          let x_2284 : f32 = u_xlat9.x;
          x_2280 = x_2284;
        } else {
          let x_2286 : f32 = u_xlat79;
          x_2280 = x_2286;
        }
        let x_2287 : f32 = x_2280;
        u_xlat78 = x_2287;
        let x_2288 : i32 = u_xlati76;
        let x_2290 : f32 = x_269.x_AdditionalShadowParams[x_2288].w;
        u_xlat79 = trunc(x_2290);
        let x_2292 : f32 = u_xlat78;
        let x_2293 : f32 = u_xlat79;
        u_xlat78 = (x_2292 + x_2293);
        let x_2295 : f32 = u_xlat78;
        u_xlati54 = i32(x_2295);
      }
      let x_2297 : i32 = u_xlati54;
      u_xlati54 = (x_2297 << bitcast<u32>(2i));
      let x_2299 : vec3<f32> = vs_TEXCOORD1;
      let x_2302 : i32 = u_xlati54;
      let x_2305 : i32 = u_xlati54;
      let x_2309 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_2302 + 1i) / 4i)][((x_2305 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2299.y, x_2299.y, x_2299.y, x_2299.y) * x_2309);
      let x_2311 : i32 = u_xlati54;
      let x_2313 : i32 = u_xlati54;
      let x_2316 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[(x_2311 / 4i)][(x_2313 % 4i)];
      let x_2317 : vec3<f32> = vs_TEXCOORD1;
      let x_2320 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2316 * vec4<f32>(x_2317.x, x_2317.x, x_2317.x, x_2317.x)) + x_2320);
      let x_2322 : i32 = u_xlati54;
      let x_2325 : i32 = u_xlati54;
      let x_2329 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_2322 + 2i) / 4i)][((x_2325 + 2i) % 4i)];
      let x_2330 : vec3<f32> = vs_TEXCOORD1;
      let x_2333 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2329 * vec4<f32>(x_2330.z, x_2330.z, x_2330.z, x_2330.z)) + x_2333);
      let x_2335 : vec4<f32> = u_xlat9;
      let x_2336 : i32 = u_xlati54;
      let x_2339 : i32 = u_xlati54;
      let x_2343 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_2336 + 3i) / 4i)][((x_2339 + 3i) % 4i)];
      u_xlat9 = (x_2335 + x_2343);
      let x_2345 : vec4<f32> = u_xlat9;
      let x_2347 : vec4<f32> = u_xlat9;
      let x_2349 : vec3<f32> = (vec3<f32>(x_2345.x, x_2345.y, x_2345.z) / vec3<f32>(x_2347.w, x_2347.w, x_2347.w));
      let x_2350 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
      let x_2353 : i32 = u_xlati76;
      let x_2355 : f32 = x_269.x_AdditionalShadowParams[x_2353].y;
      u_xlatb54 = (0.0f < x_2355);
      let x_2357 : bool = u_xlatb54;
      if (x_2357) {
        let x_2360 : i32 = u_xlati76;
        let x_2362 : f32 = x_269.x_AdditionalShadowParams[x_2360].y;
        u_xlatb54 = (1.0f == x_2362);
        let x_2364 : bool = u_xlatb54;
        if (x_2364) {
          let x_2367 : vec4<f32> = u_xlat9;
          let x_2371 : vec4<f32> = x_269.x_AdditionalShadowOffset0;
          u_xlat10 = (vec4<f32>(x_2367.x, x_2367.y, x_2367.x, x_2367.y) + x_2371);
          let x_2374 : vec4<f32> = u_xlat10;
          let x_2375 : vec2<f32> = vec2<f32>(x_2374.x, x_2374.y);
          let x_2377 : f32 = u_xlat9.z;
          txVec30 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
          let x_2385 : vec3<f32> = txVec30;
          let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
          u_xlat11.x = x_2387;
          let x_2390 : vec4<f32> = u_xlat10;
          let x_2391 : vec2<f32> = vec2<f32>(x_2390.z, x_2390.w);
          let x_2393 : f32 = u_xlat9.z;
          txVec31 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
          let x_2400 : vec3<f32> = txVec31;
          let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
          u_xlat11.y = x_2402;
          let x_2404 : vec4<f32> = u_xlat9;
          let x_2408 : vec4<f32> = x_269.x_AdditionalShadowOffset1;
          u_xlat10 = (vec4<f32>(x_2404.x, x_2404.y, x_2404.x, x_2404.y) + x_2408);
          let x_2411 : vec4<f32> = u_xlat10;
          let x_2412 : vec2<f32> = vec2<f32>(x_2411.x, x_2411.y);
          let x_2414 : f32 = u_xlat9.z;
          txVec32 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
          let x_2421 : vec3<f32> = txVec32;
          let x_2423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2421.xy, x_2421.z);
          u_xlat11.z = x_2423;
          let x_2426 : vec4<f32> = u_xlat10;
          let x_2427 : vec2<f32> = vec2<f32>(x_2426.z, x_2426.w);
          let x_2429 : f32 = u_xlat9.z;
          txVec33 = vec3<f32>(x_2427.x, x_2427.y, x_2429);
          let x_2436 : vec3<f32> = txVec33;
          let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
          u_xlat11.w = x_2438;
          let x_2440 : vec4<f32> = u_xlat11;
          u_xlat54.x = dot(x_2440, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2444 : i32 = u_xlati76;
          let x_2446 : f32 = x_269.x_AdditionalShadowParams[x_2444].y;
          u_xlatb78 = (2.0f == x_2446);
          let x_2448 : bool = u_xlatb78;
          if (x_2448) {
            let x_2451 : vec4<f32> = u_xlat9;
            let x_2455 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2458 : vec2<f32> = ((vec2<f32>(x_2451.x, x_2451.y) * vec2<f32>(x_2455.z, x_2455.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2459 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat10;
            let x_2463 : vec2<f32> = floor(vec2<f32>(x_2461.x, x_2461.y));
            let x_2464 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2467 : vec4<f32> = u_xlat9;
            let x_2470 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2473 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2467.x, x_2467.y) * vec2<f32>(x_2470.z, x_2470.w)) + -(vec2<f32>(x_2473.x, x_2473.y)));
            let x_2477 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2477.x, x_2477.x, x_2477.y, x_2477.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2480 : vec4<f32> = u_xlat11;
            let x_2482 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2480.x, x_2480.x, x_2480.z, x_2480.z) * vec4<f32>(x_2482.x, x_2482.x, x_2482.z, x_2482.z));
            let x_2485 : vec4<f32> = u_xlat12;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.y, x_2485.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2488 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2487.x, x_2488.y, x_2487.y, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat12;
            let x_2493 : vec2<f32> = u_xlat58;
            let x_2495 : vec2<f32> = ((vec2<f32>(x_2490.x, x_2490.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2493));
            let x_2496 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
            let x_2499 : vec2<f32> = u_xlat58;
            u_xlat60 = (-(x_2499) + vec2<f32>(1.0f, 1.0f));
            let x_2502 : vec2<f32> = u_xlat58;
            let x_2503 : vec2<f32> = min(x_2502, vec2<f32>(0.0f, 0.0f));
            let x_2504 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
            let x_2506 : vec4<f32> = u_xlat13;
            let x_2509 : vec4<f32> = u_xlat13;
            let x_2512 : vec2<f32> = u_xlat60;
            let x_2513 : vec2<f32> = ((-(vec2<f32>(x_2506.x, x_2506.y)) * vec2<f32>(x_2509.x, x_2509.y)) + x_2512);
            let x_2514 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec2<f32> = u_xlat58;
            u_xlat58 = max(x_2516, vec2<f32>(0.0f, 0.0f));
            let x_2518 : vec2<f32> = u_xlat58;
            let x_2520 : vec2<f32> = u_xlat58;
            let x_2522 : vec4<f32> = u_xlat11;
            u_xlat58 = ((-(x_2518) * x_2520) + vec2<f32>(x_2522.y, x_2522.w));
            let x_2525 : vec4<f32> = u_xlat13;
            let x_2527 : vec2<f32> = (vec2<f32>(x_2525.x, x_2525.y) + vec2<f32>(1.0f, 1.0f));
            let x_2528 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
            let x_2530 : vec2<f32> = u_xlat58;
            u_xlat58 = (x_2530 + vec2<f32>(1.0f, 1.0f));
            let x_2532 : vec4<f32> = u_xlat12;
            let x_2534 : vec2<f32> = (vec2<f32>(x_2532.x, x_2532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2535 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2534.x, x_2534.y, x_2535.z, x_2535.w);
            let x_2537 : vec2<f32> = u_xlat60;
            let x_2538 : vec2<f32> = (x_2537 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2539 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
            let x_2541 : vec4<f32> = u_xlat13;
            let x_2543 : vec2<f32> = (vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
            let x_2546 : vec2<f32> = u_xlat58;
            let x_2547 : vec2<f32> = (x_2546 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2548 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat11;
            u_xlat58 = (vec2<f32>(x_2550.y, x_2550.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2554 : f32 = u_xlat13.x;
            u_xlat14.z = x_2554;
            let x_2557 : f32 = u_xlat58.x;
            u_xlat14.w = x_2557;
            let x_2560 : f32 = u_xlat15.x;
            u_xlat12.z = x_2560;
            let x_2563 : f32 = u_xlat11.x;
            u_xlat12.w = x_2563;
            let x_2565 : vec4<f32> = u_xlat12;
            let x_2567 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2565.z, x_2565.w, x_2565.x, x_2565.z) + vec4<f32>(x_2567.z, x_2567.w, x_2567.x, x_2567.z));
            let x_2571 : f32 = u_xlat14.y;
            u_xlat13.z = x_2571;
            let x_2574 : f32 = u_xlat58.y;
            u_xlat13.w = x_2574;
            let x_2577 : f32 = u_xlat12.y;
            u_xlat15.z = x_2577;
            let x_2580 : f32 = u_xlat11.z;
            u_xlat15.w = x_2580;
            let x_2582 : vec4<f32> = u_xlat13;
            let x_2584 : vec4<f32> = u_xlat15;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2582.z, x_2582.y, x_2582.w) + vec3<f32>(x_2584.z, x_2584.y, x_2584.w));
            let x_2587 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat12;
            let x_2591 : vec4<f32> = u_xlat16;
            let x_2593 : vec3<f32> = (vec3<f32>(x_2589.x, x_2589.z, x_2589.w) / vec3<f32>(x_2591.z, x_2591.w, x_2591.y));
            let x_2594 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat12;
            let x_2598 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2599 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat15;
            let x_2603 : vec4<f32> = u_xlat11;
            let x_2605 : vec3<f32> = (vec3<f32>(x_2601.z, x_2601.y, x_2601.w) / vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
            let x_2606 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat13;
            let x_2610 : vec3<f32> = (vec3<f32>(x_2608.x, x_2608.y, x_2608.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2611 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat12;
            let x_2616 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2613.y, x_2613.x, x_2613.z) * vec3<f32>(x_2616.x, x_2616.x, x_2616.x));
            let x_2619 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat13;
            let x_2624 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2626 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) * vec3<f32>(x_2624.y, x_2624.y, x_2624.y));
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
            let x_2630 : f32 = u_xlat13.x;
            u_xlat12.w = x_2630;
            let x_2632 : vec4<f32> = u_xlat10;
            let x_2635 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2638 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.y) * vec4<f32>(x_2635.x, x_2635.y, x_2635.x, x_2635.y)) + vec4<f32>(x_2638.y, x_2638.w, x_2638.x, x_2638.w));
            let x_2641 : vec4<f32> = u_xlat10;
            let x_2644 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2647 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(x_2644.x, x_2644.y)) + vec2<f32>(x_2647.z, x_2647.w));
            let x_2651 : f32 = u_xlat12.y;
            u_xlat13.w = x_2651;
            let x_2653 : vec4<f32> = u_xlat13;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.y, x_2653.z);
            let x_2655 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2655.x, x_2654.x, x_2655.z, x_2654.y);
            let x_2657 : vec4<f32> = u_xlat10;
            let x_2660 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2663 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2657.x, x_2657.y, x_2657.x, x_2657.y) * vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y)) + vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2663.y));
            let x_2666 : vec4<f32> = u_xlat10;
            let x_2669 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2672 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2666.x, x_2666.y, x_2666.x, x_2666.y) * vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.y)) + vec4<f32>(x_2672.w, x_2672.y, x_2672.w, x_2672.z));
            let x_2675 : vec4<f32> = u_xlat10;
            let x_2678 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2681 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.y) * vec4<f32>(x_2678.x, x_2678.y, x_2678.x, x_2678.y)) + vec4<f32>(x_2681.x, x_2681.w, x_2681.z, x_2681.w));
            let x_2684 : vec4<f32> = u_xlat11;
            let x_2686 : vec4<f32> = u_xlat16;
            u_xlat17 = (vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.y) * vec4<f32>(x_2686.z, x_2686.w, x_2686.y, x_2686.z));
            let x_2689 : vec4<f32> = u_xlat11;
            let x_2691 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2689.y, x_2689.y, x_2689.z, x_2689.z) * x_2691);
            let x_2694 : f32 = u_xlat11.z;
            let x_2696 : f32 = u_xlat16.y;
            u_xlat78 = (x_2694 * x_2696);
            let x_2699 : vec4<f32> = u_xlat14;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.x, x_2699.y);
            let x_2702 : f32 = u_xlat9.z;
            txVec34 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec34;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat79 = x_2711;
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.z, x_2713.w);
            let x_2716 : f32 = u_xlat9.z;
            txVec35 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2724 : vec3<f32> = txVec35;
            let x_2726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2724.xy, x_2724.z);
            u_xlat80 = x_2726;
            let x_2727 : f32 = u_xlat80;
            let x_2729 : f32 = u_xlat17.y;
            u_xlat80 = (x_2727 * x_2729);
            let x_2732 : f32 = u_xlat17.x;
            let x_2733 : f32 = u_xlat79;
            let x_2735 : f32 = u_xlat80;
            u_xlat79 = ((x_2732 * x_2733) + x_2735);
            let x_2738 : vec2<f32> = u_xlat58;
            let x_2740 : f32 = u_xlat9.z;
            txVec36 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
            let x_2747 : vec3<f32> = txVec36;
            let x_2749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
            u_xlat80 = x_2749;
            let x_2751 : f32 = u_xlat17.z;
            let x_2752 : f32 = u_xlat80;
            let x_2754 : f32 = u_xlat79;
            u_xlat79 = ((x_2751 * x_2752) + x_2754);
            let x_2757 : vec4<f32> = u_xlat13;
            let x_2758 : vec2<f32> = vec2<f32>(x_2757.x, x_2757.y);
            let x_2760 : f32 = u_xlat9.z;
            txVec37 = vec3<f32>(x_2758.x, x_2758.y, x_2760);
            let x_2767 : vec3<f32> = txVec37;
            let x_2769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2767.xy, x_2767.z);
            u_xlat80 = x_2769;
            let x_2771 : f32 = u_xlat17.w;
            let x_2772 : f32 = u_xlat80;
            let x_2774 : f32 = u_xlat79;
            u_xlat79 = ((x_2771 * x_2772) + x_2774);
            let x_2777 : vec4<f32> = u_xlat15;
            let x_2778 : vec2<f32> = vec2<f32>(x_2777.x, x_2777.y);
            let x_2780 : f32 = u_xlat9.z;
            txVec38 = vec3<f32>(x_2778.x, x_2778.y, x_2780);
            let x_2787 : vec3<f32> = txVec38;
            let x_2789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
            u_xlat80 = x_2789;
            let x_2791 : f32 = u_xlat18.x;
            let x_2792 : f32 = u_xlat80;
            let x_2794 : f32 = u_xlat79;
            u_xlat79 = ((x_2791 * x_2792) + x_2794);
            let x_2797 : vec4<f32> = u_xlat15;
            let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
            let x_2800 : f32 = u_xlat9.z;
            txVec39 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
            let x_2807 : vec3<f32> = txVec39;
            let x_2809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
            u_xlat80 = x_2809;
            let x_2811 : f32 = u_xlat18.y;
            let x_2812 : f32 = u_xlat80;
            let x_2814 : f32 = u_xlat79;
            u_xlat79 = ((x_2811 * x_2812) + x_2814);
            let x_2817 : vec4<f32> = u_xlat13;
            let x_2818 : vec2<f32> = vec2<f32>(x_2817.z, x_2817.w);
            let x_2820 : f32 = u_xlat9.z;
            txVec40 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
            let x_2827 : vec3<f32> = txVec40;
            let x_2829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
            u_xlat80 = x_2829;
            let x_2831 : f32 = u_xlat18.z;
            let x_2832 : f32 = u_xlat80;
            let x_2834 : f32 = u_xlat79;
            u_xlat79 = ((x_2831 * x_2832) + x_2834);
            let x_2837 : vec4<f32> = u_xlat12;
            let x_2838 : vec2<f32> = vec2<f32>(x_2837.x, x_2837.y);
            let x_2840 : f32 = u_xlat9.z;
            txVec41 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
            let x_2847 : vec3<f32> = txVec41;
            let x_2849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
            u_xlat80 = x_2849;
            let x_2851 : f32 = u_xlat18.w;
            let x_2852 : f32 = u_xlat80;
            let x_2854 : f32 = u_xlat79;
            u_xlat79 = ((x_2851 * x_2852) + x_2854);
            let x_2857 : vec4<f32> = u_xlat12;
            let x_2858 : vec2<f32> = vec2<f32>(x_2857.z, x_2857.w);
            let x_2860 : f32 = u_xlat9.z;
            txVec42 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
            let x_2867 : vec3<f32> = txVec42;
            let x_2869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2867.xy, x_2867.z);
            u_xlat80 = x_2869;
            let x_2870 : f32 = u_xlat78;
            let x_2871 : f32 = u_xlat80;
            let x_2873 : f32 = u_xlat79;
            u_xlat54.x = ((x_2870 * x_2871) + x_2873);
          } else {
            let x_2877 : vec4<f32> = u_xlat9;
            let x_2880 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2883 : vec2<f32> = ((vec2<f32>(x_2877.x, x_2877.y) * vec2<f32>(x_2880.z, x_2880.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2884 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2883.x, x_2883.y, x_2884.z, x_2884.w);
            let x_2886 : vec4<f32> = u_xlat10;
            let x_2888 : vec2<f32> = floor(vec2<f32>(x_2886.x, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec4<f32> = u_xlat9;
            let x_2894 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_2897 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2891.x, x_2891.y) * vec2<f32>(x_2894.z, x_2894.w)) + -(vec2<f32>(x_2897.x, x_2897.y)));
            let x_2901 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2901.x, x_2901.x, x_2901.y, x_2901.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2904 : vec4<f32> = u_xlat11;
            let x_2906 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2904.x, x_2904.x, x_2904.z, x_2904.z) * vec4<f32>(x_2906.x, x_2906.x, x_2906.z, x_2906.z));
            let x_2909 : vec4<f32> = u_xlat12;
            let x_2911 : vec2<f32> = (vec2<f32>(x_2909.y, x_2909.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2912 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2912.x, x_2911.x, x_2912.z, x_2911.y);
            let x_2914 : vec4<f32> = u_xlat12;
            let x_2917 : vec2<f32> = u_xlat58;
            let x_2919 : vec2<f32> = ((vec2<f32>(x_2914.x, x_2914.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2917));
            let x_2920 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2919.x, x_2920.y, x_2919.y, x_2920.w);
            let x_2922 : vec2<f32> = u_xlat58;
            let x_2924 : vec2<f32> = (-(x_2922) + vec2<f32>(1.0f, 1.0f));
            let x_2925 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2924.x, x_2924.y, x_2925.z, x_2925.w);
            let x_2927 : vec2<f32> = u_xlat58;
            u_xlat60 = min(x_2927, vec2<f32>(0.0f, 0.0f));
            let x_2929 : vec2<f32> = u_xlat60;
            let x_2931 : vec2<f32> = u_xlat60;
            let x_2933 : vec4<f32> = u_xlat12;
            let x_2935 : vec2<f32> = ((-(x_2929) * x_2931) + vec2<f32>(x_2933.x, x_2933.y));
            let x_2936 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2935.x, x_2935.y, x_2936.z, x_2936.w);
            let x_2938 : vec2<f32> = u_xlat58;
            u_xlat60 = max(x_2938, vec2<f32>(0.0f, 0.0f));
            let x_2941 : vec2<f32> = u_xlat60;
            let x_2943 : vec2<f32> = u_xlat60;
            let x_2945 : vec4<f32> = u_xlat11;
            let x_2947 : vec2<f32> = ((-(x_2941) * x_2943) + vec2<f32>(x_2945.y, x_2945.w));
            let x_2948 : vec3<f32> = u_xlat35;
            u_xlat35 = vec3<f32>(x_2947.x, x_2948.y, x_2947.y);
            let x_2950 : vec4<f32> = u_xlat12;
            let x_2952 : vec2<f32> = (vec2<f32>(x_2950.x, x_2950.y) + vec2<f32>(2.0f, 2.0f));
            let x_2953 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2952.x, x_2952.y, x_2953.z, x_2953.w);
            let x_2955 : vec3<f32> = u_xlat35;
            let x_2957 : vec2<f32> = (vec2<f32>(x_2955.x, x_2955.z) + vec2<f32>(2.0f, 2.0f));
            let x_2958 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2958.x, x_2957.x, x_2958.z, x_2957.y);
            let x_2961 : f32 = u_xlat11.y;
            u_xlat14.z = (x_2961 * 0.08163200318813323975f);
            let x_2964 : vec4<f32> = u_xlat11;
            let x_2966 : vec3<f32> = (vec3<f32>(x_2964.z, x_2964.x, x_2964.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2967 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
            let x_2969 : vec4<f32> = u_xlat12;
            let x_2971 : vec2<f32> = (vec2<f32>(x_2969.x, x_2969.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2972 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
            let x_2975 : f32 = u_xlat15.y;
            u_xlat14.x = x_2975;
            let x_2977 : vec2<f32> = u_xlat58;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2977.x, x_2977.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2981 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2981.x, x_2980.x, x_2981.z, x_2980.y);
            let x_2983 : vec2<f32> = u_xlat58;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2983.x, x_2983.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2987 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2986.x, x_2987.y, x_2986.y, x_2987.w);
            let x_2990 : f32 = u_xlat11.x;
            u_xlat12.y = x_2990;
            let x_2993 : f32 = u_xlat13.y;
            u_xlat12.w = x_2993;
            let x_2995 : vec4<f32> = u_xlat12;
            let x_2996 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2995 + x_2996);
            let x_2998 : vec2<f32> = u_xlat58;
            let x_3001 : vec2<f32> = ((vec2<f32>(x_2998.y, x_2998.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3002 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3002.x, x_3001.x, x_3002.z, x_3001.y);
            let x_3004 : vec2<f32> = u_xlat58;
            let x_3007 : vec2<f32> = ((vec2<f32>(x_3004.y, x_3004.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3008 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3007.x, x_3008.y, x_3007.y, x_3008.w);
            let x_3011 : f32 = u_xlat11.y;
            u_xlat13.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat13;
            let x_3014 : vec4<f32> = u_xlat15;
            u_xlat11 = (x_3013 + x_3014);
            let x_3016 : vec4<f32> = u_xlat12;
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat12 = (x_3016 / x_3017);
            let x_3019 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_3019 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3021 : vec4<f32> = u_xlat13;
            let x_3022 : vec4<f32> = u_xlat11;
            u_xlat13 = (x_3021 / x_3022);
            let x_3024 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3029 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_3026.w, x_3026.x, x_3026.y, x_3026.z) * vec4<f32>(x_3029.x, x_3029.x, x_3029.x, x_3029.x));
            let x_3032 : vec4<f32> = u_xlat13;
            let x_3035 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3032.x, x_3032.w, x_3032.y, x_3032.z) * vec4<f32>(x_3035.y, x_3035.y, x_3035.y, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat12;
            let x_3039 : vec3<f32> = vec3<f32>(x_3038.y, x_3038.z, x_3038.w);
            let x_3040 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3039.x, x_3040.y, x_3039.y, x_3039.z);
            let x_3043 : f32 = u_xlat13.x;
            u_xlat15.y = x_3043;
            let x_3045 : vec4<f32> = u_xlat10;
            let x_3048 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3045.x, x_3045.y, x_3045.x, x_3045.y) * vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y)) + vec4<f32>(x_3051.x, x_3051.y, x_3051.z, x_3051.y));
            let x_3054 : vec4<f32> = u_xlat10;
            let x_3057 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat58 = ((vec2<f32>(x_3054.x, x_3054.y) * vec2<f32>(x_3057.x, x_3057.y)) + vec2<f32>(x_3060.w, x_3060.y));
            let x_3064 : f32 = u_xlat15.y;
            u_xlat12.y = x_3064;
            let x_3067 : f32 = u_xlat13.z;
            u_xlat15.y = x_3067;
            let x_3069 : vec4<f32> = u_xlat10;
            let x_3072 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat10;
            let x_3081 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat15;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.w, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat15.y;
            u_xlat12.z = x_3090;
            let x_3092 : vec4<f32> = u_xlat10;
            let x_3095 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat12;
            u_xlat19 = ((vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y) * vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y)) + vec4<f32>(x_3098.x, x_3098.y, x_3098.x, x_3098.z));
            let x_3102 : f32 = u_xlat13.w;
            u_xlat15.y = x_3102;
            let x_3105 : vec4<f32> = u_xlat10;
            let x_3108 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat15;
            u_xlat20 = ((vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.y) * vec4<f32>(x_3108.x, x_3108.y, x_3108.x, x_3108.y)) + vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3111.y));
            let x_3115 : vec4<f32> = u_xlat10;
            let x_3118 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat15;
            u_xlat36 = ((vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(x_3118.x, x_3118.y)) + vec2<f32>(x_3121.w, x_3121.y));
            let x_3125 : f32 = u_xlat15.y;
            u_xlat12.w = x_3125;
            let x_3128 : vec4<f32> = u_xlat10;
            let x_3131 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3134 : vec4<f32> = u_xlat12;
            u_xlat66 = ((vec2<f32>(x_3128.x, x_3128.y) * vec2<f32>(x_3131.x, x_3131.y)) + vec2<f32>(x_3134.x, x_3134.w));
            let x_3137 : vec4<f32> = u_xlat15;
            let x_3138 : vec3<f32> = vec3<f32>(x_3137.x, x_3137.z, x_3137.w);
            let x_3139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3138.x, x_3139.y, x_3138.y, x_3138.z);
            let x_3141 : vec4<f32> = u_xlat10;
            let x_3144 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3147 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y) * vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y)) + vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3147.y));
            let x_3151 : vec4<f32> = u_xlat10;
            let x_3154 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3151.x, x_3151.y) * vec2<f32>(x_3154.x, x_3154.y)) + vec2<f32>(x_3157.w, x_3157.y));
            let x_3161 : f32 = u_xlat12.x;
            u_xlat13.x = x_3161;
            let x_3163 : vec4<f32> = u_xlat10;
            let x_3166 : vec4<f32> = x_269.x_AdditionalShadowmapSize;
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3171 : vec2<f32> = ((vec2<f32>(x_3163.x, x_3163.y) * vec2<f32>(x_3166.x, x_3166.y)) + vec2<f32>(x_3169.x, x_3169.y));
            let x_3172 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_3171.x, x_3171.y, x_3172.z, x_3172.w);
            let x_3175 : vec4<f32> = u_xlat11;
            let x_3177 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_3175.x, x_3175.x, x_3175.x, x_3175.x) * x_3177);
            let x_3180 : vec4<f32> = u_xlat11;
            let x_3182 : vec4<f32> = u_xlat14;
            u_xlat22 = (vec4<f32>(x_3180.y, x_3180.y, x_3180.y, x_3180.y) * x_3182);
            let x_3185 : vec4<f32> = u_xlat11;
            let x_3187 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3185.z, x_3185.z, x_3185.z, x_3185.z) * x_3187);
            let x_3189 : vec4<f32> = u_xlat11;
            let x_3191 : vec4<f32> = u_xlat14;
            u_xlat11 = (vec4<f32>(x_3189.w, x_3189.w, x_3189.w, x_3189.w) * x_3191);
            let x_3194 : vec4<f32> = u_xlat16;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat9.z;
            txVec43 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec43;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat78 = x_3206;
            let x_3208 : vec4<f32> = u_xlat16;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.z, x_3208.w);
            let x_3211 : f32 = u_xlat9.z;
            txVec44 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec44;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat79 = x_3220;
            let x_3221 : f32 = u_xlat79;
            let x_3223 : f32 = u_xlat21.y;
            u_xlat79 = (x_3221 * x_3223);
            let x_3226 : f32 = u_xlat21.x;
            let x_3227 : f32 = u_xlat78;
            let x_3229 : f32 = u_xlat79;
            u_xlat78 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec2<f32> = u_xlat58;
            let x_3234 : f32 = u_xlat9.z;
            txVec45 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec45;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat79 = x_3243;
            let x_3245 : f32 = u_xlat21.z;
            let x_3246 : f32 = u_xlat79;
            let x_3248 : f32 = u_xlat78;
            u_xlat78 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec4<f32> = u_xlat19;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.x, x_3251.y);
            let x_3254 : f32 = u_xlat9.z;
            txVec46 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec46;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat79 = x_3263;
            let x_3265 : f32 = u_xlat21.w;
            let x_3266 : f32 = u_xlat79;
            let x_3268 : f32 = u_xlat78;
            u_xlat78 = ((x_3265 * x_3266) + x_3268);
            let x_3271 : vec4<f32> = u_xlat17;
            let x_3272 : vec2<f32> = vec2<f32>(x_3271.x, x_3271.y);
            let x_3274 : f32 = u_xlat9.z;
            txVec47 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec47;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat79 = x_3283;
            let x_3285 : f32 = u_xlat22.x;
            let x_3286 : f32 = u_xlat79;
            let x_3288 : f32 = u_xlat78;
            u_xlat78 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec4<f32> = u_xlat17;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.z, x_3291.w);
            let x_3294 : f32 = u_xlat9.z;
            txVec48 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec48;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat79 = x_3303;
            let x_3305 : f32 = u_xlat22.y;
            let x_3306 : f32 = u_xlat79;
            let x_3308 : f32 = u_xlat78;
            u_xlat78 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat18;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.x, x_3311.y);
            let x_3314 : f32 = u_xlat9.z;
            txVec49 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec49;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat79 = x_3323;
            let x_3325 : f32 = u_xlat22.z;
            let x_3326 : f32 = u_xlat79;
            let x_3328 : f32 = u_xlat78;
            u_xlat78 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat19;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.z, x_3331.w);
            let x_3334 : f32 = u_xlat9.z;
            txVec50 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec50;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat79 = x_3343;
            let x_3345 : f32 = u_xlat22.w;
            let x_3346 : f32 = u_xlat79;
            let x_3348 : f32 = u_xlat78;
            u_xlat78 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec4<f32> = u_xlat20;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.x, x_3351.y);
            let x_3354 : f32 = u_xlat9.z;
            txVec51 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec51;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat79 = x_3363;
            let x_3365 : f32 = u_xlat23.x;
            let x_3366 : f32 = u_xlat79;
            let x_3368 : f32 = u_xlat78;
            u_xlat78 = ((x_3365 * x_3366) + x_3368);
            let x_3371 : vec4<f32> = u_xlat20;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.z, x_3371.w);
            let x_3374 : f32 = u_xlat9.z;
            txVec52 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec52;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat79 = x_3383;
            let x_3385 : f32 = u_xlat23.y;
            let x_3386 : f32 = u_xlat79;
            let x_3388 : f32 = u_xlat78;
            u_xlat78 = ((x_3385 * x_3386) + x_3388);
            let x_3391 : vec2<f32> = u_xlat36;
            let x_3393 : f32 = u_xlat9.z;
            txVec53 = vec3<f32>(x_3391.x, x_3391.y, x_3393);
            let x_3400 : vec3<f32> = txVec53;
            let x_3402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3400.xy, x_3400.z);
            u_xlat79 = x_3402;
            let x_3404 : f32 = u_xlat23.z;
            let x_3405 : f32 = u_xlat79;
            let x_3407 : f32 = u_xlat78;
            u_xlat78 = ((x_3404 * x_3405) + x_3407);
            let x_3410 : vec2<f32> = u_xlat66;
            let x_3412 : f32 = u_xlat9.z;
            txVec54 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec54;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat79 = x_3421;
            let x_3423 : f32 = u_xlat23.w;
            let x_3424 : f32 = u_xlat79;
            let x_3426 : f32 = u_xlat78;
            u_xlat78 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat15;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.x, x_3429.y);
            let x_3432 : f32 = u_xlat9.z;
            txVec55 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec55;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat79 = x_3441;
            let x_3443 : f32 = u_xlat11.x;
            let x_3444 : f32 = u_xlat79;
            let x_3446 : f32 = u_xlat78;
            u_xlat78 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec4<f32> = u_xlat15;
            let x_3450 : vec2<f32> = vec2<f32>(x_3449.z, x_3449.w);
            let x_3452 : f32 = u_xlat9.z;
            txVec56 = vec3<f32>(x_3450.x, x_3450.y, x_3452);
            let x_3459 : vec3<f32> = txVec56;
            let x_3461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3459.xy, x_3459.z);
            u_xlat79 = x_3461;
            let x_3463 : f32 = u_xlat11.y;
            let x_3464 : f32 = u_xlat79;
            let x_3466 : f32 = u_xlat78;
            u_xlat78 = ((x_3463 * x_3464) + x_3466);
            let x_3469 : vec2<f32> = u_xlat61;
            let x_3471 : f32 = u_xlat9.z;
            txVec57 = vec3<f32>(x_3469.x, x_3469.y, x_3471);
            let x_3478 : vec3<f32> = txVec57;
            let x_3480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3478.xy, x_3478.z);
            u_xlat79 = x_3480;
            let x_3482 : f32 = u_xlat11.z;
            let x_3483 : f32 = u_xlat79;
            let x_3485 : f32 = u_xlat78;
            u_xlat78 = ((x_3482 * x_3483) + x_3485);
            let x_3488 : vec4<f32> = u_xlat10;
            let x_3489 : vec2<f32> = vec2<f32>(x_3488.x, x_3488.y);
            let x_3491 : f32 = u_xlat9.z;
            txVec58 = vec3<f32>(x_3489.x, x_3489.y, x_3491);
            let x_3498 : vec3<f32> = txVec58;
            let x_3500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3498.xy, x_3498.z);
            u_xlat79 = x_3500;
            let x_3502 : f32 = u_xlat11.w;
            let x_3503 : f32 = u_xlat79;
            let x_3505 : f32 = u_xlat78;
            u_xlat54.x = ((x_3502 * x_3503) + x_3505);
          }
        }
      } else {
        let x_3510 : vec4<f32> = u_xlat9;
        let x_3511 : vec2<f32> = vec2<f32>(x_3510.x, x_3510.y);
        let x_3513 : f32 = u_xlat9.z;
        txVec59 = vec3<f32>(x_3511.x, x_3511.y, x_3513);
        let x_3520 : vec3<f32> = txVec59;
        let x_3522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3520.xy, x_3520.z);
        u_xlat54.x = x_3522;
      }
      let x_3524 : i32 = u_xlati76;
      let x_3526 : f32 = x_269.x_AdditionalShadowParams[x_3524].x;
      u_xlat78 = (1.0f + -(x_3526));
      let x_3530 : f32 = u_xlat54.x;
      let x_3531 : i32 = u_xlati76;
      let x_3533 : f32 = x_269.x_AdditionalShadowParams[x_3531].x;
      let x_3535 : f32 = u_xlat78;
      u_xlat54.x = ((x_3530 * x_3533) + x_3535);
      let x_3539 : f32 = u_xlat9.z;
      u_xlatb78 = (0.0f >= x_3539);
      let x_3543 : f32 = u_xlat9.z;
      u_xlatb79 = (x_3543 >= 1.0f);
      let x_3545 : bool = u_xlatb78;
      let x_3546 : bool = u_xlatb79;
      u_xlatb78 = (x_3545 | x_3546);
      let x_3548 : bool = u_xlatb78;
      if (x_3548) {
        x_3549 = 1.0f;
      } else {
        let x_3554 : f32 = u_xlat54.x;
        x_3549 = x_3554;
      }
      let x_3555 : f32 = x_3549;
      u_xlat54.x = x_3555;
    } else {
      u_xlat54.x = 1.0f;
    }
    let x_3560 : f32 = u_xlat54.x;
    u_xlat78 = (-(x_3560) + 1.0f);
    let x_3564 : f32 = u_xlat1.x;
    let x_3565 : f32 = u_xlat78;
    let x_3568 : f32 = u_xlat54.x;
    u_xlat54.x = ((x_3564 * x_3565) + x_3568);
    let x_3572 : i32 = u_xlati76;
    u_xlati78 = (1i << bitcast<u32>((x_3572 & 31i)));
    let x_3576 : i32 = u_xlati78;
    let x_3579 : f32 = x_1811.x_AdditionalLightsCookieEnableBits;
    u_xlati78 = bitcast<i32>((bitcast<u32>(x_3576) & bitcast<u32>(x_3579)));
    let x_3583 : i32 = u_xlati78;
    if ((x_3583 != 0i)) {
      let x_3587 : i32 = u_xlati76;
      let x_3589 : f32 = x_1811.x_AdditionalLightsLightTypes[x_3587].el;
      u_xlati78 = i32(x_3589);
      let x_3592 : i32 = u_xlati78;
      u_xlati79 = select(1i, 0i, (x_3592 != 0i));
      let x_3596 : i32 = u_xlati76;
      u_xlati80 = (x_3596 << bitcast<u32>(2i));
      let x_3598 : i32 = u_xlati79;
      if ((x_3598 != 0i)) {
        let x_3602 : vec3<f32> = vs_TEXCOORD1;
        let x_3604 : i32 = u_xlati80;
        let x_3607 : i32 = u_xlati80;
        let x_3611 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3604 + 1i) / 4i)][((x_3607 + 1i) % 4i)];
        let x_3613 : vec3<f32> = (vec3<f32>(x_3602.y, x_3602.y, x_3602.y) * vec3<f32>(x_3611.x, x_3611.y, x_3611.w));
        let x_3614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
        let x_3616 : i32 = u_xlati80;
        let x_3618 : i32 = u_xlati80;
        let x_3621 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[(x_3616 / 4i)][(x_3618 % 4i)];
        let x_3623 : vec3<f32> = vs_TEXCOORD1;
        let x_3626 : vec4<f32> = u_xlat9;
        let x_3628 : vec3<f32> = ((vec3<f32>(x_3621.x, x_3621.y, x_3621.w) * vec3<f32>(x_3623.x, x_3623.x, x_3623.x)) + vec3<f32>(x_3626.x, x_3626.y, x_3626.z));
        let x_3629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3628.x, x_3628.y, x_3628.z, x_3629.w);
        let x_3631 : i32 = u_xlati80;
        let x_3634 : i32 = u_xlati80;
        let x_3638 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3631 + 2i) / 4i)][((x_3634 + 2i) % 4i)];
        let x_3640 : vec3<f32> = vs_TEXCOORD1;
        let x_3643 : vec4<f32> = u_xlat9;
        let x_3645 : vec3<f32> = ((vec3<f32>(x_3638.x, x_3638.y, x_3638.w) * vec3<f32>(x_3640.z, x_3640.z, x_3640.z)) + vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
        let x_3646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3645.x, x_3645.y, x_3645.z, x_3646.w);
        let x_3648 : vec4<f32> = u_xlat9;
        let x_3650 : i32 = u_xlati80;
        let x_3653 : i32 = u_xlati80;
        let x_3657 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3650 + 3i) / 4i)][((x_3653 + 3i) % 4i)];
        let x_3659 : vec3<f32> = (vec3<f32>(x_3648.x, x_3648.y, x_3648.z) + vec3<f32>(x_3657.x, x_3657.y, x_3657.w));
        let x_3660 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
        let x_3662 : vec4<f32> = u_xlat9;
        let x_3664 : vec4<f32> = u_xlat9;
        let x_3666 : vec2<f32> = (vec2<f32>(x_3662.x, x_3662.y) / vec2<f32>(x_3664.z, x_3664.z));
        let x_3667 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3666.x, x_3666.y, x_3667.z, x_3667.w);
        let x_3669 : vec4<f32> = u_xlat9;
        let x_3672 : vec2<f32> = ((vec2<f32>(x_3669.x, x_3669.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3673 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3672.x, x_3672.y, x_3673.z, x_3673.w);
        let x_3675 : vec4<f32> = u_xlat9;
        let x_3679 : vec2<f32> = clamp(vec2<f32>(x_3675.x, x_3675.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3680 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3679.x, x_3679.y, x_3680.z, x_3680.w);
        let x_3682 : i32 = u_xlati76;
        let x_3684 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3682];
        let x_3686 : vec4<f32> = u_xlat9;
        let x_3689 : i32 = u_xlati76;
        let x_3691 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3689];
        let x_3693 : vec2<f32> = ((vec2<f32>(x_3684.x, x_3684.y) * vec2<f32>(x_3686.x, x_3686.y)) + vec2<f32>(x_3691.z, x_3691.w));
        let x_3694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3693.x, x_3693.y, x_3694.z, x_3694.w);
      } else {
        let x_3697 : i32 = u_xlati78;
        u_xlatb78 = (x_3697 == 1i);
        let x_3699 : bool = u_xlatb78;
        u_xlati78 = select(0i, 1i, x_3699);
        let x_3701 : i32 = u_xlati78;
        if ((x_3701 != 0i)) {
          let x_3705 : vec3<f32> = vs_TEXCOORD1;
          let x_3707 : i32 = u_xlati80;
          let x_3710 : i32 = u_xlati80;
          let x_3714 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3707 + 1i) / 4i)][((x_3710 + 1i) % 4i)];
          u_xlat57 = (vec2<f32>(x_3705.y, x_3705.y) * vec2<f32>(x_3714.x, x_3714.y));
          let x_3717 : i32 = u_xlati80;
          let x_3719 : i32 = u_xlati80;
          let x_3722 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[(x_3717 / 4i)][(x_3719 % 4i)];
          let x_3724 : vec3<f32> = vs_TEXCOORD1;
          let x_3727 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3722.x, x_3722.y) * vec2<f32>(x_3724.x, x_3724.x)) + x_3727);
          let x_3729 : i32 = u_xlati80;
          let x_3732 : i32 = u_xlati80;
          let x_3736 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3729 + 2i) / 4i)][((x_3732 + 2i) % 4i)];
          let x_3738 : vec3<f32> = vs_TEXCOORD1;
          let x_3741 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3736.x, x_3736.y) * vec2<f32>(x_3738.z, x_3738.z)) + x_3741);
          let x_3743 : vec2<f32> = u_xlat57;
          let x_3744 : i32 = u_xlati80;
          let x_3747 : i32 = u_xlati80;
          let x_3751 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3744 + 3i) / 4i)][((x_3747 + 3i) % 4i)];
          u_xlat57 = (x_3743 + vec2<f32>(x_3751.x, x_3751.y));
          let x_3754 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3754 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3757 : vec2<f32> = u_xlat57;
          u_xlat57 = fract(x_3757);
          let x_3759 : i32 = u_xlati76;
          let x_3761 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3759];
          let x_3763 : vec2<f32> = u_xlat57;
          let x_3765 : i32 = u_xlati76;
          let x_3767 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3765];
          let x_3769 : vec2<f32> = ((vec2<f32>(x_3761.x, x_3761.y) * x_3763) + vec2<f32>(x_3767.z, x_3767.w));
          let x_3770 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
        } else {
          let x_3773 : vec3<f32> = vs_TEXCOORD1;
          let x_3775 : i32 = u_xlati80;
          let x_3778 : i32 = u_xlati80;
          let x_3782 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3775 + 1i) / 4i)][((x_3778 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3773.y, x_3773.y, x_3773.y, x_3773.y) * x_3782);
          let x_3784 : i32 = u_xlati80;
          let x_3786 : i32 = u_xlati80;
          let x_3789 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[(x_3784 / 4i)][(x_3786 % 4i)];
          let x_3790 : vec3<f32> = vs_TEXCOORD1;
          let x_3793 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3789 * vec4<f32>(x_3790.x, x_3790.x, x_3790.x, x_3790.x)) + x_3793);
          let x_3795 : i32 = u_xlati80;
          let x_3798 : i32 = u_xlati80;
          let x_3802 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3795 + 2i) / 4i)][((x_3798 + 2i) % 4i)];
          let x_3803 : vec3<f32> = vs_TEXCOORD1;
          let x_3806 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3802 * vec4<f32>(x_3803.z, x_3803.z, x_3803.z, x_3803.z)) + x_3806);
          let x_3808 : vec4<f32> = u_xlat10;
          let x_3809 : i32 = u_xlati80;
          let x_3812 : i32 = u_xlati80;
          let x_3816 : vec4<f32> = x_1811.x_AdditionalLightsWorldToLights[((x_3809 + 3i) / 4i)][((x_3812 + 3i) % 4i)];
          u_xlat10 = (x_3808 + x_3816);
          let x_3818 : vec4<f32> = u_xlat10;
          let x_3820 : vec4<f32> = u_xlat10;
          let x_3822 : vec3<f32> = (vec3<f32>(x_3818.x, x_3818.y, x_3818.z) / vec3<f32>(x_3820.w, x_3820.w, x_3820.w));
          let x_3823 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3822.x, x_3822.y, x_3822.z, x_3823.w);
          let x_3825 : vec4<f32> = u_xlat10;
          let x_3827 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(vec3<f32>(x_3825.x, x_3825.y, x_3825.z), vec3<f32>(x_3827.x, x_3827.y, x_3827.z));
          let x_3830 : f32 = u_xlat78;
          u_xlat78 = inverseSqrt(x_3830);
          let x_3832 : f32 = u_xlat78;
          let x_3834 : vec4<f32> = u_xlat10;
          let x_3836 : vec3<f32> = (vec3<f32>(x_3832, x_3832, x_3832) * vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
          let x_3837 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
          let x_3839 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(abs(vec3<f32>(x_3839.x, x_3839.y, x_3839.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3844 : f32 = u_xlat78;
          u_xlat78 = max(x_3844, 0.00000099999999747524f);
          let x_3847 : f32 = u_xlat78;
          u_xlat78 = (1.0f / x_3847);
          let x_3849 : f32 = u_xlat78;
          let x_3851 : vec4<f32> = u_xlat10;
          let x_3853 : vec3<f32> = (vec3<f32>(x_3849, x_3849, x_3849) * vec3<f32>(x_3851.z, x_3851.x, x_3851.y));
          let x_3854 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3853.x, x_3853.y, x_3853.z, x_3854.w);
          let x_3857 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_3857);
          let x_3861 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_3861, 0.0f, 1.0f);
          let x_3865 : vec4<f32> = u_xlat11;
          let x_3867 : vec4<bool> = (vec4<f32>(x_3865.y, x_3865.z, x_3865.y, x_3865.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb57 = vec2<bool>(x_3867.x, x_3867.y);
          let x_3870 : bool = u_xlatb57.x;
          if (x_3870) {
            let x_3875 : f32 = u_xlat11.x;
            x_3871 = x_3875;
          } else {
            let x_3878 : f32 = u_xlat11.x;
            x_3871 = -(x_3878);
          }
          let x_3880 : f32 = x_3871;
          u_xlat57.x = x_3880;
          let x_3883 : bool = u_xlatb57.y;
          if (x_3883) {
            let x_3888 : f32 = u_xlat11.x;
            x_3884 = x_3888;
          } else {
            let x_3891 : f32 = u_xlat11.x;
            x_3884 = -(x_3891);
          }
          let x_3893 : f32 = x_3884;
          u_xlat57.y = x_3893;
          let x_3895 : vec4<f32> = u_xlat10;
          let x_3897 : f32 = u_xlat78;
          let x_3900 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3895.x, x_3895.y) * vec2<f32>(x_3897, x_3897)) + x_3900);
          let x_3902 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3902 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3905 : vec2<f32> = u_xlat57;
          u_xlat57 = clamp(x_3905, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3909 : i32 = u_xlati76;
          let x_3911 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3909];
          let x_3913 : vec2<f32> = u_xlat57;
          let x_3915 : i32 = u_xlati76;
          let x_3917 : vec4<f32> = x_1811.x_AdditionalLightsCookieAtlasUVRects[x_3915];
          let x_3919 : vec2<f32> = ((vec2<f32>(x_3911.x, x_3911.y) * x_3913) + vec2<f32>(x_3917.z, x_3917.w));
          let x_3920 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3919.x, x_3919.y, x_3920.z, x_3920.w);
        }
      }
      let x_3927 : vec4<f32> = u_xlat9;
      let x_3929 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3927.x, x_3927.y), 0.0f);
      u_xlat9 = x_3929;
      let x_3931 : bool = u_xlatb6.y;
      if (x_3931) {
        let x_3936 : f32 = u_xlat9.w;
        x_3932 = x_3936;
      } else {
        let x_3939 : f32 = u_xlat9.x;
        x_3932 = x_3939;
      }
      let x_3940 : f32 = x_3932;
      u_xlat78 = x_3940;
      let x_3942 : bool = u_xlatb6.x;
      if (x_3942) {
        let x_3946 : vec4<f32> = u_xlat9;
        x_3943 = vec3<f32>(x_3946.x, x_3946.y, x_3946.z);
      } else {
        let x_3949 : f32 = u_xlat78;
        x_3943 = vec3<f32>(x_3949, x_3949, x_3949);
      }
      let x_3951 : vec3<f32> = x_3943;
      let x_3952 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_3951.x, x_3951.y, x_3951.z, x_3952.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_3958 : vec4<f32> = u_xlat9;
    let x_3960 : i32 = u_xlati76;
    let x_3962 : vec4<f32> = x_2123.x_AdditionalLightsColor[x_3960];
    let x_3964 : vec3<f32> = (vec3<f32>(x_3958.x, x_3958.y, x_3958.z) * vec3<f32>(x_3962.x, x_3962.y, x_3962.z));
    let x_3965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);
    let x_3967 : f32 = u_xlat77;
    let x_3969 : f32 = u_xlat54.x;
    u_xlat76 = (x_3967 * x_3969);
    let x_3971 : f32 = u_xlat76;
    let x_3973 : vec4<f32> = u_xlat9;
    let x_3975 : vec3<f32> = (vec3<f32>(x_3971, x_3971, x_3971) * vec3<f32>(x_3973.x, x_3973.y, x_3973.z));
    let x_3976 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3975.x, x_3975.y, x_3975.z, x_3976.w);
    let x_3978 : vec3<f32> = u_xlat2;
    let x_3979 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_3978, vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3982 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3982, 0.0f, 1.0f);
    let x_3984 : f32 = u_xlat76;
    let x_3986 : vec4<f32> = u_xlat9;
    let x_3988 : vec3<f32> = (vec3<f32>(x_3984, x_3984, x_3984) * vec3<f32>(x_3986.x, x_3986.y, x_3986.z));
    let x_3989 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3988.x, x_3988.y, x_3988.z, x_3989.w);
    let x_3991 : vec3<f32> = u_xlat3;
    let x_3992 : vec3<f32> = u_xlat24;
    let x_3995 : vec4<f32> = u_xlat8;
    let x_3997 : vec3<f32> = ((x_3991 * vec3<f32>(x_3992.x, x_3992.x, x_3992.x)) + vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
    let x_3998 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3997.x, x_3997.y, x_3997.z, x_3998.w);
    let x_4000 : vec4<f32> = u_xlat8;
    let x_4002 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_4000.x, x_4000.y, x_4000.z), vec3<f32>(x_4002.x, x_4002.y, x_4002.z));
    let x_4005 : f32 = u_xlat76;
    u_xlat76 = max(x_4005, 1.17549435e-38f);
    let x_4007 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_4007);
    let x_4009 : f32 = u_xlat76;
    let x_4011 : vec4<f32> = u_xlat8;
    let x_4013 : vec3<f32> = (vec3<f32>(x_4009, x_4009, x_4009) * vec3<f32>(x_4011.x, x_4011.y, x_4011.z));
    let x_4014 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4013.x, x_4013.y, x_4013.z, x_4014.w);
    let x_4016 : vec3<f32> = u_xlat2;
    let x_4017 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_4016, vec3<f32>(x_4017.x, x_4017.y, x_4017.z));
    let x_4020 : f32 = u_xlat76;
    u_xlat76 = clamp(x_4020, 0.0f, 1.0f);
    let x_4022 : f32 = u_xlat76;
    u_xlat76 = log2(x_4022);
    let x_4024 : f32 = u_xlat72;
    let x_4025 : f32 = u_xlat76;
    u_xlat76 = (x_4024 * x_4025);
    let x_4027 : f32 = u_xlat76;
    u_xlat76 = exp2(x_4027);
    let x_4029 : f32 = u_xlat76;
    let x_4032 : vec4<f32> = x_41.x_SpecColor;
    let x_4034 : vec3<f32> = (vec3<f32>(x_4029, x_4029, x_4029) * vec3<f32>(x_4032.x, x_4032.y, x_4032.z));
    let x_4035 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4034.x, x_4034.y, x_4034.z, x_4035.w);
    let x_4037 : vec4<f32> = u_xlat8;
    let x_4039 : vec4<f32> = u_xlat9;
    let x_4041 : vec3<f32> = (vec3<f32>(x_4037.x, x_4037.y, x_4037.z) * vec3<f32>(x_4039.x, x_4039.y, x_4039.z));
    let x_4042 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4041.x, x_4041.y, x_4041.z, x_4042.w);
    let x_4044 : vec4<f32> = u_xlat10;
    let x_4046 : vec4<f32> = u_xlat1;
    let x_4049 : vec4<f32> = u_xlat8;
    let x_4051 : vec3<f32> = ((vec3<f32>(x_4044.x, x_4044.y, x_4044.z) * vec3<f32>(x_4046.y, x_4046.z, x_4046.w)) + vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);
    let x_4054 : vec4<f32> = u_xlat7;
    let x_4056 : vec4<f32> = u_xlat8;
    let x_4058 : vec3<f32> = (vec3<f32>(x_4054.x, x_4054.y, x_4054.z) + vec3<f32>(x_4056.x, x_4056.y, x_4056.z));
    let x_4059 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4058.x, x_4058.y, x_4058.z, x_4059.w);

    continuing {
      let x_4061 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4061 + bitcast<u32>(1i));
    }
  }
  let x_4063 : vec4<f32> = u_xlat5;
  let x_4065 : vec4<f32> = u_xlat1;
  let x_4068 : vec4<f32> = u_xlat4;
  let x_4070 : vec3<f32> = ((vec3<f32>(x_4063.x, x_4063.y, x_4063.z) * vec3<f32>(x_4065.y, x_4065.z, x_4065.w)) + vec3<f32>(x_4068.x, x_4068.y, x_4068.z));
  let x_4071 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);
  let x_4075 : vec4<f32> = u_xlat7;
  let x_4077 : vec4<f32> = u_xlat1;
  let x_4079 : vec3<f32> = (vec3<f32>(x_4075.x, x_4075.y, x_4075.z) + vec3<f32>(x_4077.x, x_4077.y, x_4077.z));
  let x_4080 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4079.x, x_4079.y, x_4079.z, x_4080.w);
  let x_4083 : f32 = x_41.x_Surface;
  u_xlatb24 = (x_4083 == 1.0f);
  let x_4085 : bool = u_xlatb24;
  let x_4086 : bool = u_xlatb48;
  u_xlatb24 = (x_4085 | x_4086);
  let x_4088 : bool = u_xlatb24;
  if (x_4088) {
    let x_4093 : f32 = u_xlat0.x;
    x_4089 = x_4093;
  } else {
    x_4089 = 1.0f;
  }
  let x_4095 : f32 = x_4089;
  SV_Target0.w = x_4095;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


