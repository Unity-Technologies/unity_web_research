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
  /* @offset(160) */
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

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_283 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb72 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb4 : bool;

@group(1) @binding(5) var<uniform> x_1603 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlatu73 : u32;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_1913 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlatb76 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb77 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati31 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlatb55 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatu51 : u32;

var<private> u_xlatb74 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_163 : f32;
  var x_175 : f32;
  var x_187 : f32;
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
  var x_1690 : f32;
  var x_1701 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2055 : f32;
  var x_2066 : f32;
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
  var x_3732 : f32;
  var x_3745 : f32;
  var x_3802 : f32;
  var x_3813 : vec3<f32>;
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
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb24 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb24;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat24;
  let x_151 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat24;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_162 : bool = u_xlatb1;
  if (x_162) {
    let x_167 : f32 = u_xlat24.x;
    x_163 = x_167;
  } else {
    let x_171 : f32 = x_45.unity_MatrixV[0i].z;
    x_163 = x_171;
  }
  let x_172 : f32 = x_163;
  u_xlat2.x = x_172;
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_180 : f32 = u_xlat24.y;
    x_175 = x_180;
  } else {
    let x_183 : f32 = x_45.unity_MatrixV[1i].z;
    x_175 = x_183;
  }
  let x_184 : f32 = x_175;
  u_xlat2.y = x_184;
  let x_186 : bool = u_xlatb1;
  if (x_186) {
    let x_191 : f32 = u_xlat24.z;
    x_187 = x_191;
  } else {
    let x_194 : f32 = x_45.unity_MatrixV[2i].z;
    x_187 = x_194;
  }
  let x_195 : f32 = x_187;
  u_xlat2.z = x_195;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_198, x_199);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_203);
  let x_206 : vec3<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_211 : vec3<f32> = u_xlat2;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat70 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat70;
  u_xlat70 = max(x_214, 0.00006103515625f);
  let x_217 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_217);
  let x_226 : vec2<f32> = vs_TEXCOORD7;
  let x_228 : f32 = x_45.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_226, x_228);
  u_xlat3 = x_229;
  let x_235 : vec2<f32> = vs_TEXCOORD7;
  let x_237 : f32 = x_45.x_GlobalMipBias.x;
  let x_238 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_235, x_237);
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat3;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec3<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat71 = dot(x_250, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : f32 = u_xlat71;
  u_xlat71 = (x_254 + 0.5f);
  let x_257 : f32 = u_xlat71;
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = (vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : f32 = u_xlat3.w;
  u_xlat71 = max(x_265, 0.00009999999747378752f);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : f32 = u_xlat71;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) / vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_286 : f32 = x_283.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_286);
  let x_288 : bool = u_xlatb71;
  if (x_288) {
    let x_292 : f32 = x_283.x_MainLightShadowParams.y;
    u_xlatb71 = (x_292 == 1.0f);
    let x_294 : bool = u_xlatb71;
    if (x_294) {
      let x_298 : vec4<f32> = vs_TEXCOORD6;
      let x_301 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_298.x, x_298.y, x_298.x, x_298.y) + x_301);
      let x_305 : vec4<f32> = u_xlat4;
      let x_306 : vec2<f32> = vec2<f32>(x_305.x, x_305.y);
      let x_308 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_306.x, x_306.y, x_308);
      let x_321 : vec3<f32> = txVec0;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat5.x = x_323;
      let x_326 : vec4<f32> = u_xlat4;
      let x_327 : vec2<f32> = vec2<f32>(x_326.z, x_326.w);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_327.x, x_327.y, x_329);
      let x_336 : vec3<f32> = txVec1;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat5.y = x_338;
      let x_340 : vec4<f32> = vs_TEXCOORD6;
      let x_343 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_340.x, x_340.y, x_340.x, x_340.y) + x_343);
      let x_346 : vec4<f32> = u_xlat4;
      let x_347 : vec2<f32> = vec2<f32>(x_346.x, x_346.y);
      let x_349 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec2;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_356.xy, x_356.z);
      u_xlat5.z = x_358;
      let x_361 : vec4<f32> = u_xlat4;
      let x_362 : vec2<f32> = vec2<f32>(x_361.z, x_361.w);
      let x_364 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_362.x, x_362.y, x_364);
      let x_371 : vec3<f32> = txVec3;
      let x_373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_371.xy, x_371.z);
      u_xlat5.w = x_373;
      let x_375 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_375, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_382 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb72 = (x_382 == 2.0f);
      let x_385 : bool = u_xlatb72;
      if (x_385) {
        let x_388 : vec4<f32> = vs_TEXCOORD6;
        let x_392 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_396 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.y) * vec2<f32>(x_392.z, x_392.w)) + vec2<f32>(0.5f, 0.5f));
        let x_397 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
        let x_399 : vec4<f32> = u_xlat4;
        let x_401 : vec2<f32> = floor(vec2<f32>(x_399.x, x_399.y));
        let x_402 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
        let x_406 : vec4<f32> = vs_TEXCOORD6;
        let x_409 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_412 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_409.z, x_409.w)) + -(vec2<f32>(x_412.x, x_412.y)));
        let x_416 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_416.x, x_416.x, x_416.y, x_416.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_421 : vec4<f32> = u_xlat5;
        let x_423 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_421.x, x_421.x, x_421.z, x_421.z) * vec4<f32>(x_423.x, x_423.x, x_423.z, x_423.z));
        let x_426 : vec4<f32> = u_xlat6;
        let x_430 : vec2<f32> = (vec2<f32>(x_426.y, x_426.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_430.x, x_431.y, x_430.y, x_431.w);
        let x_433 : vec4<f32> = u_xlat6;
        let x_436 : vec2<f32> = u_xlat50;
        let x_438 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.z) * vec2<f32>(0.5f, 0.5f)) + -(x_436));
        let x_439 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_442 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_442) + vec2<f32>(1.0f, 1.0f));
        let x_447 : vec2<f32> = u_xlat50;
        let x_449 : vec2<f32> = min(x_447, vec2<f32>(0.0f, 0.0f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat7;
        let x_455 : vec4<f32> = u_xlat7;
        let x_458 : vec2<f32> = u_xlat52;
        let x_459 : vec2<f32> = ((-(vec2<f32>(x_452.x, x_452.y)) * vec2<f32>(x_455.x, x_455.y)) + x_458);
        let x_460 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_462, vec2<f32>(0.0f, 0.0f));
        let x_464 : vec2<f32> = u_xlat50;
        let x_466 : vec2<f32> = u_xlat50;
        let x_468 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_464) * x_466) + vec2<f32>(x_468.y, x_468.w));
        let x_471 : vec4<f32> = u_xlat7;
        let x_473 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) + vec2<f32>(1.0f, 1.0f));
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_476 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_476 + vec2<f32>(1.0f, 1.0f));
        let x_479 : vec4<f32> = u_xlat6;
        let x_483 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec2<f32> = u_xlat52;
        let x_487 : vec2<f32> = (x_486 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_488 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec4<f32> = u_xlat7;
        let x_492 : vec2<f32> = (vec2<f32>(x_490.x, x_490.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_493 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_496 : vec2<f32> = u_xlat50;
        let x_497 : vec2<f32> = (x_496 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_498 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_500.y, x_500.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_504 : f32 = u_xlat7.x;
        u_xlat8.z = x_504;
        let x_507 : f32 = u_xlat50.x;
        u_xlat8.w = x_507;
        let x_510 : f32 = u_xlat9.x;
        u_xlat6.z = x_510;
        let x_513 : f32 = u_xlat5.x;
        u_xlat6.w = x_513;
        let x_516 : vec4<f32> = u_xlat6;
        let x_518 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_516.z, x_516.w, x_516.x, x_516.z) + vec4<f32>(x_518.z, x_518.w, x_518.x, x_518.z));
        let x_522 : f32 = u_xlat8.y;
        u_xlat7.z = x_522;
        let x_525 : f32 = u_xlat50.y;
        u_xlat7.w = x_525;
        let x_528 : f32 = u_xlat6.y;
        u_xlat9.z = x_528;
        let x_531 : f32 = u_xlat5.z;
        u_xlat9.w = x_531;
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat9;
        let x_537 : vec3<f32> = (vec3<f32>(x_533.z, x_533.y, x_533.w) + vec3<f32>(x_535.z, x_535.y, x_535.w));
        let x_538 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat6;
        let x_542 : vec4<f32> = u_xlat10;
        let x_544 : vec3<f32> = (vec3<f32>(x_540.x, x_540.z, x_540.w) / vec3<f32>(x_542.z, x_542.w, x_542.y));
        let x_545 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
        let x_547 : vec4<f32> = u_xlat6;
        let x_552 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat9;
        let x_557 : vec4<f32> = u_xlat5;
        let x_559 : vec3<f32> = (vec3<f32>(x_555.z, x_555.y, x_555.w) / vec3<f32>(x_557.x, x_557.y, x_557.z));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat6;
        let x_570 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.y, x_567.x, x_567.z) * vec3<f32>(x_570.x, x_570.x, x_570.x));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat7;
        let x_578 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_580 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) * vec3<f32>(x_578.y, x_578.y, x_578.y));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_584 : f32 = u_xlat7.x;
        u_xlat6.w = x_584;
        let x_586 : vec4<f32> = u_xlat4;
        let x_589 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y) * vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y)) + vec4<f32>(x_592.y, x_592.w, x_592.x, x_592.w));
        let x_595 : vec4<f32> = u_xlat4;
        let x_598 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_598.x, x_598.y)) + vec2<f32>(x_601.z, x_601.w));
        let x_605 : f32 = u_xlat6.y;
        u_xlat7.w = x_605;
        let x_607 : vec4<f32> = u_xlat7;
        let x_608 : vec2<f32> = vec2<f32>(x_607.y, x_607.z);
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_609.x, x_608.x, x_609.z, x_608.y);
        let x_611 : vec4<f32> = u_xlat4;
        let x_614 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) * vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y)) + vec4<f32>(x_617.x, x_617.y, x_617.z, x_617.y));
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.w, x_626.y, x_626.w, x_626.z));
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.x, x_635.w, x_635.z, x_635.w));
        let x_639 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_639.x, x_639.x, x_639.x, x_639.y) * vec4<f32>(x_641.z, x_641.w, x_641.y, x_641.z));
        let x_645 : vec4<f32> = u_xlat5;
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_645.y, x_645.y, x_645.z, x_645.z) * x_647);
        let x_651 : f32 = u_xlat5.z;
        let x_653 : f32 = u_xlat10.y;
        u_xlat72 = (x_651 * x_653);
        let x_656 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = vec2<f32>(x_656.x, x_656.y);
        let x_659 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_657.x, x_657.y, x_659);
        let x_666 : vec3<f32> = txVec4;
        let x_668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_666.xy, x_666.z);
        u_xlat4.x = x_668;
        let x_671 : vec4<f32> = u_xlat8;
        let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_682 : vec3<f32> = txVec5;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat27 = x_684;
        let x_685 : f32 = u_xlat27;
        let x_687 : f32 = u_xlat11.y;
        u_xlat27 = (x_685 * x_687);
        let x_690 : f32 = u_xlat11.x;
        let x_692 : f32 = u_xlat4.x;
        let x_694 : f32 = u_xlat27;
        u_xlat4.x = ((x_690 * x_692) + x_694);
        let x_698 : vec2<f32> = u_xlat50;
        let x_700 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_698.x, x_698.y, x_700);
        let x_707 : vec3<f32> = txVec6;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat27 = x_709;
        let x_711 : f32 = u_xlat11.z;
        let x_712 : f32 = u_xlat27;
        let x_715 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_711 * x_712) + x_715);
        let x_719 : vec4<f32> = u_xlat7;
        let x_720 : vec2<f32> = vec2<f32>(x_719.x, x_719.y);
        let x_722 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_720.x, x_720.y, x_722);
        let x_729 : vec3<f32> = txVec7;
        let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_729.xy, x_729.z);
        u_xlat27 = x_731;
        let x_733 : f32 = u_xlat11.w;
        let x_734 : f32 = u_xlat27;
        let x_737 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_733 * x_734) + x_737);
        let x_741 : vec4<f32> = u_xlat9;
        let x_742 : vec2<f32> = vec2<f32>(x_741.x, x_741.y);
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec8;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat27 = x_753;
        let x_755 : f32 = u_xlat12.x;
        let x_756 : f32 = u_xlat27;
        let x_759 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_755 * x_756) + x_759);
        let x_763 : vec4<f32> = u_xlat9;
        let x_764 : vec2<f32> = vec2<f32>(x_763.z, x_763.w);
        let x_766 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_764.x, x_764.y, x_766);
        let x_773 : vec3<f32> = txVec9;
        let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
        u_xlat27 = x_775;
        let x_777 : f32 = u_xlat12.y;
        let x_778 : f32 = u_xlat27;
        let x_781 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_777 * x_778) + x_781);
        let x_785 : vec4<f32> = u_xlat7;
        let x_786 : vec2<f32> = vec2<f32>(x_785.z, x_785.w);
        let x_788 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_795 : vec3<f32> = txVec10;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat27 = x_797;
        let x_799 : f32 = u_xlat12.z;
        let x_800 : f32 = u_xlat27;
        let x_803 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_799 * x_800) + x_803);
        let x_807 : vec4<f32> = u_xlat6;
        let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec11;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat27 = x_819;
        let x_821 : f32 = u_xlat12.w;
        let x_822 : f32 = u_xlat27;
        let x_825 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_821 * x_822) + x_825);
        let x_829 : vec4<f32> = u_xlat6;
        let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
        let x_832 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec12;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
        u_xlat27 = x_841;
        let x_842 : f32 = u_xlat72;
        let x_843 : f32 = u_xlat27;
        let x_846 : f32 = u_xlat4.x;
        u_xlat71 = ((x_842 * x_843) + x_846);
      } else {
        let x_849 : vec4<f32> = vs_TEXCOORD6;
        let x_852 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_855 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat4;
        let x_860 : vec2<f32> = floor(vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_863 : vec4<f32> = vs_TEXCOORD6;
        let x_866 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_863.x, x_863.y) * vec2<f32>(x_866.z, x_866.w)) + -(vec2<f32>(x_869.x, x_869.y)));
        let x_873 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_873.x, x_873.x, x_873.y, x_873.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_876 : vec4<f32> = u_xlat5;
        let x_878 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_876.x, x_876.x, x_876.z, x_876.z) * vec4<f32>(x_878.x, x_878.x, x_878.z, x_878.z));
        let x_881 : vec4<f32> = u_xlat6;
        let x_885 : vec2<f32> = (vec2<f32>(x_881.y, x_881.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_886 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_888 : vec4<f32> = u_xlat6;
        let x_891 : vec2<f32> = u_xlat50;
        let x_893 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.z) * vec2<f32>(0.5f, 0.5f)) + -(x_891));
        let x_894 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_893.x, x_894.y, x_893.y, x_894.w);
        let x_896 : vec2<f32> = u_xlat50;
        let x_898 : vec2<f32> = (-(x_896) + vec2<f32>(1.0f, 1.0f));
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_901, vec2<f32>(0.0f, 0.0f));
        let x_903 : vec2<f32> = u_xlat52;
        let x_905 : vec2<f32> = u_xlat52;
        let x_907 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = ((-(x_903) * x_905) + vec2<f32>(x_907.x, x_907.y));
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
        let x_912 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_912, vec2<f32>(0.0f, 0.0f));
        let x_915 : vec2<f32> = u_xlat52;
        let x_917 : vec2<f32> = u_xlat52;
        let x_919 : vec4<f32> = u_xlat5;
        let x_921 : vec2<f32> = ((-(x_915) * x_917) + vec2<f32>(x_919.y, x_919.w));
        let x_922 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_921.x, x_922.y, x_921.y);
        let x_924 : vec4<f32> = u_xlat6;
        let x_927 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) + vec2<f32>(2.0f, 2.0f));
        let x_928 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec3<f32> = u_xlat28;
        let x_932 : vec2<f32> = (vec2<f32>(x_930.x, x_930.z) + vec2<f32>(2.0f, 2.0f));
        let x_933 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_933.x, x_932.x, x_933.z, x_932.y);
        let x_936 : f32 = u_xlat5.y;
        u_xlat8.z = (x_936 * 0.08163200318813323975f);
        let x_940 : vec4<f32> = u_xlat5;
        let x_943 : vec3<f32> = (vec3<f32>(x_940.z, x_940.x, x_940.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
        let x_946 : vec4<f32> = u_xlat6;
        let x_949 : vec2<f32> = (vec2<f32>(x_946.x, x_946.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_950 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_953 : f32 = u_xlat9.y;
        u_xlat8.x = x_953;
        let x_955 : vec2<f32> = u_xlat50;
        let x_962 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_962.x, x_963.z, x_962.y);
        let x_965 : vec2<f32> = u_xlat50;
        let x_969 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_970 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_969.x, x_970.y, x_969.y, x_970.w);
        let x_973 : f32 = u_xlat5.x;
        u_xlat6.y = x_973;
        let x_976 : f32 = u_xlat7.y;
        u_xlat6.w = x_976;
        let x_978 : vec4<f32> = u_xlat6;
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_978 + x_979);
        let x_981 : vec2<f32> = u_xlat50;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec2<f32> = u_xlat50;
        let x_990 : vec2<f32> = ((vec2<f32>(x_987.y, x_987.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
        let x_994 : f32 = u_xlat5.y;
        u_xlat7.y = x_994;
        let x_996 : vec4<f32> = u_xlat7;
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_996 + x_997);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1000 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_999 / x_1000);
        let x_1002 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1002 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1009 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1008 / x_1009);
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1011 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1016 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1013.w, x_1013.x, x_1013.y, x_1013.z) * vec4<f32>(x_1016.x, x_1016.x, x_1016.x, x_1016.x));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1019.x, x_1019.w, x_1019.y, x_1019.z) * vec4<f32>(x_1022.y, x_1022.y, x_1022.y, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1026 : vec3<f32> = vec3<f32>(x_1025.y, x_1025.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1027.y, x_1026.y, x_1026.z);
        let x_1030 : f32 = u_xlat7.x;
        u_xlat9.y = x_1030;
        let x_1032 : vec4<f32> = u_xlat4;
        let x_1035 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) * vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y)) + vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat4;
        let x_1044 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.x, x_1044.y)) + vec2<f32>(x_1047.w, x_1047.y));
        let x_1051 : f32 = u_xlat9.y;
        u_xlat6.y = x_1051;
        let x_1054 : f32 = u_xlat7.z;
        u_xlat9.y = x_1054;
        let x_1056 : vec4<f32> = u_xlat4;
        let x_1059 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y) * vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y)) + vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat4;
        let x_1068 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1073 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1071.w, x_1071.y));
        let x_1074 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1077 : f32 = u_xlat9.y;
        u_xlat6.z = x_1077;
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.z));
        let x_1090 : f32 = u_xlat7.w;
        u_xlat9.y = x_1090;
        let x_1093 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.y));
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat9.y;
        u_xlat6.w = x_1113;
        let x_1116 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.x, x_1122.w));
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1126 : vec3<f32> = vec3<f32>(x_1125.x, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1126.x, x_1127.y, x_1126.y, x_1126.z);
        let x_1129 : vec4<f32> = u_xlat4;
        let x_1132 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.y));
        let x_1139 : vec4<f32> = u_xlat4;
        let x_1142 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.w, x_1145.y));
        let x_1149 : f32 = u_xlat6.x;
        u_xlat7.x = x_1149;
        let x_1151 : vec4<f32> = u_xlat4;
        let x_1154 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1154.x, x_1154.y)) + vec2<f32>(x_1157.x, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1163 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1163.x, x_1163.x, x_1163.x, x_1163.x) * x_1165);
        let x_1168 : vec4<f32> = u_xlat5;
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1168.y, x_1168.y, x_1168.y, x_1168.y) * x_1170);
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1173.z, x_1173.z, x_1173.z, x_1173.z) * x_1175);
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1177.w, x_1177.w, x_1177.w, x_1177.w) * x_1179);
        let x_1182 : vec4<f32> = u_xlat10;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
        let x_1185 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec13;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat72 = x_1194;
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.z, x_1196.w);
        let x_1199 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec14;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1206.xy, x_1206.z);
        u_xlat6.x = x_1208;
        let x_1211 : f32 = u_xlat6.x;
        let x_1213 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1211 * x_1213);
        let x_1217 : f32 = u_xlat15.x;
        let x_1218 : f32 = u_xlat72;
        let x_1221 : f32 = u_xlat6.x;
        u_xlat72 = ((x_1217 * x_1218) + x_1221);
        let x_1224 : vec2<f32> = u_xlat50;
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec15;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
        u_xlat50.x = x_1235;
        let x_1238 : f32 = u_xlat15.z;
        let x_1240 : f32 = u_xlat50.x;
        let x_1242 : f32 = u_xlat72;
        u_xlat72 = ((x_1238 * x_1240) + x_1242);
        let x_1245 : vec4<f32> = u_xlat13;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.x, x_1245.y);
        let x_1248 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec16;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1255.xy, x_1255.z);
        u_xlat50.x = x_1257;
        let x_1260 : f32 = u_xlat15.w;
        let x_1262 : f32 = u_xlat50.x;
        let x_1264 : f32 = u_xlat72;
        u_xlat72 = ((x_1260 * x_1262) + x_1264);
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1268 : vec2<f32> = vec2<f32>(x_1267.x, x_1267.y);
        let x_1270 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1268.x, x_1268.y, x_1270);
        let x_1277 : vec3<f32> = txVec17;
        let x_1279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1277.xy, x_1277.z);
        u_xlat50.x = x_1279;
        let x_1282 : f32 = u_xlat16.x;
        let x_1284 : f32 = u_xlat50.x;
        let x_1286 : f32 = u_xlat72;
        u_xlat72 = ((x_1282 * x_1284) + x_1286);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.z, x_1289.w);
        let x_1292 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec18;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat50.x = x_1301;
        let x_1304 : f32 = u_xlat16.y;
        let x_1306 : f32 = u_xlat50.x;
        let x_1308 : f32 = u_xlat72;
        u_xlat72 = ((x_1304 * x_1306) + x_1308);
        let x_1311 : vec4<f32> = u_xlat12;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec19;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat50.x = x_1323;
        let x_1326 : f32 = u_xlat16.z;
        let x_1328 : f32 = u_xlat50.x;
        let x_1330 : f32 = u_xlat72;
        u_xlat72 = ((x_1326 * x_1328) + x_1330);
        let x_1333 : vec4<f32> = u_xlat13;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.z, x_1333.w);
        let x_1336 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec20;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat50.x = x_1345;
        let x_1348 : f32 = u_xlat16.w;
        let x_1350 : f32 = u_xlat50.x;
        let x_1352 : f32 = u_xlat72;
        u_xlat72 = ((x_1348 * x_1350) + x_1352);
        let x_1355 : vec4<f32> = u_xlat14;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec21;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat50.x = x_1367;
        let x_1370 : f32 = u_xlat17.x;
        let x_1372 : f32 = u_xlat50.x;
        let x_1374 : f32 = u_xlat72;
        u_xlat72 = ((x_1370 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat14;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.z, x_1377.w);
        let x_1380 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec22;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat50.x = x_1389;
        let x_1392 : f32 = u_xlat17.y;
        let x_1394 : f32 = u_xlat50.x;
        let x_1396 : f32 = u_xlat72;
        u_xlat72 = ((x_1392 * x_1394) + x_1396);
        let x_1399 : vec2<f32> = u_xlat29;
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec23;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat50.x = x_1410;
        let x_1413 : f32 = u_xlat17.z;
        let x_1415 : f32 = u_xlat50.x;
        let x_1417 : f32 = u_xlat72;
        u_xlat72 = ((x_1413 * x_1415) + x_1417);
        let x_1420 : vec2<f32> = u_xlat58;
        let x_1422 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec24;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat50.x = x_1431;
        let x_1434 : f32 = u_xlat17.w;
        let x_1436 : f32 = u_xlat50.x;
        let x_1438 : f32 = u_xlat72;
        u_xlat72 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec25;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat50.x = x_1453;
        let x_1456 : f32 = u_xlat5.x;
        let x_1458 : f32 = u_xlat50.x;
        let x_1460 : f32 = u_xlat72;
        u_xlat72 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat9;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec26;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat50.x = x_1475;
        let x_1478 : f32 = u_xlat5.y;
        let x_1480 : f32 = u_xlat50.x;
        let x_1482 : f32 = u_xlat72;
        u_xlat72 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec2<f32> = u_xlat53;
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec27;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat50.x = x_1496;
        let x_1499 : f32 = u_xlat5.z;
        let x_1501 : f32 = u_xlat50.x;
        let x_1503 : f32 = u_xlat72;
        u_xlat72 = ((x_1499 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat4;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec28;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat4.x = x_1518;
        let x_1521 : f32 = u_xlat5.w;
        let x_1523 : f32 = u_xlat4.x;
        let x_1525 : f32 = u_xlat72;
        u_xlat71 = ((x_1521 * x_1523) + x_1525);
      }
    }
  } else {
    let x_1529 : vec4<f32> = vs_TEXCOORD6;
    let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
    let x_1532 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
    let x_1539 : vec3<f32> = txVec29;
    let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
    u_xlat71 = x_1541;
  }
  let x_1543 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat72 = (-(x_1543) + 1.0f);
  let x_1546 : f32 = u_xlat71;
  let x_1548 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1550 : f32 = u_xlat72;
  u_xlat71 = ((x_1546 * x_1548) + x_1550);
  let x_1553 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (0.0f >= x_1553);
  let x_1557 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1557 >= 1.0f);
  let x_1559 : bool = u_xlatb72;
  let x_1560 : bool = u_xlatb4;
  u_xlatb72 = (x_1559 | x_1560);
  let x_1562 : bool = u_xlatb72;
  let x_1563 : f32 = u_xlat71;
  u_xlat71 = select(x_1563, 1.0f, x_1562);
  let x_1565 : vec3<f32> = vs_TEXCOORD1;
  let x_1567 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1569 : vec3<f32> = (x_1565 + -(x_1567));
  let x_1570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat4;
  let x_1574 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(vec3<f32>(x_1572.x, x_1572.y, x_1572.z), vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : f32 = u_xlat72;
  let x_1579 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1582 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1577 * x_1579) + x_1582);
  let x_1586 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1586, 0.0f, 1.0f);
  let x_1589 : f32 = u_xlat71;
  u_xlat27 = (-(x_1589) + 1.0f);
  let x_1593 : f32 = u_xlat4.x;
  let x_1594 : f32 = u_xlat27;
  let x_1596 : f32 = u_xlat71;
  u_xlat71 = ((x_1593 * x_1594) + x_1596);
  let x_1605 : f32 = x_1603.x_MainLightCookieTextureFormat;
  u_xlatb4 = !((x_1605 == -1.0f));
  let x_1608 : bool = u_xlatb4;
  if (x_1608) {
    let x_1611 : vec3<f32> = vs_TEXCOORD1;
    let x_1614 : vec4<f32> = x_1603.x_MainLightWorldToLight[1i];
    let x_1616 : vec2<f32> = (vec2<f32>(x_1611.y, x_1611.y) * vec2<f32>(x_1614.x, x_1614.y));
    let x_1617 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
    let x_1620 : vec4<f32> = x_1603.x_MainLightWorldToLight[0i];
    let x_1622 : vec3<f32> = vs_TEXCOORD1;
    let x_1625 : vec4<f32> = u_xlat4;
    let x_1627 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1622.x, x_1622.x)) + vec2<f32>(x_1625.x, x_1625.y));
    let x_1628 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1627.x, x_1627.y, x_1628.z, x_1628.w);
    let x_1631 : vec4<f32> = x_1603.x_MainLightWorldToLight[2i];
    let x_1633 : vec3<f32> = vs_TEXCOORD1;
    let x_1636 : vec4<f32> = u_xlat4;
    let x_1638 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(x_1633.z, x_1633.z)) + vec2<f32>(x_1636.x, x_1636.y));
    let x_1639 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
    let x_1641 : vec4<f32> = u_xlat4;
    let x_1645 : vec4<f32> = x_1603.x_MainLightWorldToLight[3i];
    let x_1647 : vec2<f32> = (vec2<f32>(x_1641.x, x_1641.y) + vec2<f32>(x_1645.x, x_1645.y));
    let x_1648 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
    let x_1650 : vec4<f32> = u_xlat4;
    let x_1653 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1654 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
    let x_1661 : vec4<f32> = u_xlat4;
    let x_1664 : f32 = x_45.x_GlobalMipBias.x;
    let x_1665 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1661.x, x_1661.y), x_1664);
    u_xlat4 = x_1665;
    let x_1670 : f32 = x_1603.x_MainLightCookieTextureFormat;
    let x_1672 : f32 = x_1603.x_MainLightCookieTextureFormat;
    let x_1674 : f32 = x_1603.x_MainLightCookieTextureFormat;
    let x_1676 : f32 = x_1603.x_MainLightCookieTextureFormat;
    let x_1677 : vec4<f32> = vec4<f32>(x_1670, x_1672, x_1674, x_1676);
    let x_1685 : vec4<bool> = (vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1677.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1685.x, x_1685.y);
    let x_1689 : bool = u_xlatb5.y;
    if (x_1689) {
      let x_1694 : f32 = u_xlat4.w;
      x_1690 = x_1694;
    } else {
      let x_1697 : f32 = u_xlat4.x;
      x_1690 = x_1697;
    }
    let x_1698 : f32 = x_1690;
    u_xlat73 = x_1698;
    let x_1700 : bool = u_xlatb5.x;
    if (x_1700) {
      let x_1704 : vec4<f32> = u_xlat4;
      x_1701 = vec3<f32>(x_1704.x, x_1704.y, x_1704.z);
    } else {
      let x_1707 : f32 = u_xlat73;
      x_1701 = vec3<f32>(x_1707, x_1707, x_1707);
    }
    let x_1709 : vec3<f32> = x_1701;
    let x_1710 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1716 : vec4<f32> = u_xlat4;
  let x_1719 : vec4<f32> = x_45.x_MainLightColor;
  let x_1721 : vec3<f32> = (vec3<f32>(x_1716.x, x_1716.y, x_1716.z) * vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
  let x_1722 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
  let x_1724 : f32 = u_xlat71;
  let x_1726 : f32 = x_95.unity_LightData.z;
  u_xlat71 = (x_1724 * x_1726);
  let x_1728 : f32 = u_xlat71;
  let x_1730 : vec4<f32> = u_xlat4;
  let x_1732 : vec3<f32> = (vec3<f32>(x_1728, x_1728, x_1728) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec3<f32> = u_xlat1;
  let x_1737 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat71 = dot(x_1735, vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1740, 0.0f, 1.0f);
  let x_1742 : f32 = u_xlat71;
  let x_1744 : vec4<f32> = u_xlat4;
  let x_1746 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1750 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1750 * 10.0f) + 1.0f);
  let x_1754 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1754);
  let x_1756 : vec3<f32> = u_xlat2;
  let x_1757 : f32 = u_xlat70;
  let x_1761 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1763 : vec3<f32> = ((x_1756 * vec3<f32>(x_1757, x_1757, x_1757)) + vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
  let x_1764 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec4<f32> = u_xlat6;
  let x_1768 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1771 : f32 = u_xlat73;
  u_xlat73 = max(x_1771, 1.17549435e-38f);
  let x_1774 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1774);
  let x_1776 : f32 = u_xlat73;
  let x_1778 : vec4<f32> = u_xlat6;
  let x_1780 : vec3<f32> = (vec3<f32>(x_1776, x_1776, x_1776) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec3<f32> = u_xlat1;
  let x_1784 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(x_1783, vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1787, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat73;
  u_xlat73 = log2(x_1789);
  let x_1791 : f32 = u_xlat71;
  let x_1792 : f32 = u_xlat73;
  u_xlat73 = (x_1791 * x_1792);
  let x_1794 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1794);
  let x_1796 : f32 = u_xlat73;
  let x_1799 : vec4<f32> = x_57.x_SpecColor;
  let x_1801 : vec3<f32> = (vec3<f32>(x_1796, x_1796, x_1796) * vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1804 : vec4<f32> = u_xlat4;
  let x_1806 : vec4<f32> = u_xlat6;
  let x_1808 : vec3<f32> = (vec3<f32>(x_1804.x, x_1804.y, x_1804.z) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1811 : vec4<f32> = u_xlat5;
  let x_1813 : vec4<f32> = u_xlat0;
  let x_1816 : vec4<f32> = u_xlat4;
  let x_1818 : vec3<f32> = ((vec3<f32>(x_1811.x, x_1811.y, x_1811.z) * vec3<f32>(x_1813.y, x_1813.z, x_1813.w)) + vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
  let x_1819 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
  let x_1822 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1824 : f32 = x_95.unity_LightData.y;
  u_xlat73 = min(x_1822, x_1824);
  let x_1828 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1828));
  let x_1831 : f32 = u_xlat72;
  let x_1834 : f32 = x_283.x_AdditionalShadowFadeParams.x;
  let x_1837 : f32 = x_283.x_AdditionalShadowFadeParams.y;
  u_xlat72 = ((x_1831 * x_1834) + x_1837);
  let x_1839 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1839, 0.0f, 1.0f);
  let x_1842 : f32 = x_1603.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1844 : f32 = x_1603.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1846 : f32 = x_1603.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1848 : f32 = x_1603.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1849 : vec4<f32> = vec4<f32>(x_1842, x_1844, x_1846, x_1848);
  let x_1855 : vec4<bool> = (vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1849.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1855.x, x_1855.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1867 : u32 = u_xlatu_loop_1;
    let x_1868 : u32 = u_xlatu73;
    if ((x_1867 < x_1868)) {
    } else {
      break;
    }
    let x_1871 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1871 >> 2u);
    let x_1875 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1875 & 3u));
    let x_1879 : u32 = u_xlatu74;
    let x_1882 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1879)];
    let x_1892 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1897 : vec4<u32> = indexable[x_1892];
    u_xlat74 = dot(x_1882, bitcast<vec4<f32>>(x_1897));
    let x_1901 : f32 = u_xlat74;
    u_xlati74 = i32(x_1901);
    let x_1903 : vec3<f32> = vs_TEXCOORD1;
    let x_1914 : i32 = u_xlati74;
    let x_1916 : vec4<f32> = x_1913.x_AdditionalLightsPosition[x_1914];
    let x_1919 : i32 = u_xlati74;
    let x_1921 : vec4<f32> = x_1913.x_AdditionalLightsPosition[x_1919];
    let x_1923 : vec3<f32> = ((-(x_1903) * vec3<f32>(x_1916.w, x_1916.w, x_1916.w)) + vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1927 : vec4<f32> = u_xlat7;
    let x_1929 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
    let x_1932 : f32 = u_xlat75;
    u_xlat75 = max(x_1932, 0.00006103515625f);
    let x_1935 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_1935);
    let x_1937 : f32 = u_xlat76;
    let x_1939 : vec4<f32> = u_xlat7;
    let x_1941 : vec3<f32> = (vec3<f32>(x_1937, x_1937, x_1937) * vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
    let x_1942 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1942.w);
    let x_1944 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_1944);
    let x_1946 : f32 = u_xlat75;
    let x_1947 : i32 = u_xlati74;
    let x_1949 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1947].x;
    u_xlat75 = (x_1946 * x_1949);
    let x_1951 : f32 = u_xlat75;
    let x_1953 : f32 = u_xlat75;
    u_xlat75 = ((-(x_1951) * x_1953) + 1.0f);
    let x_1956 : f32 = u_xlat75;
    u_xlat75 = max(x_1956, 0.0f);
    let x_1958 : f32 = u_xlat75;
    let x_1959 : f32 = u_xlat75;
    u_xlat75 = (x_1958 * x_1959);
    let x_1961 : f32 = u_xlat75;
    let x_1962 : f32 = u_xlat76;
    u_xlat75 = (x_1961 * x_1962);
    let x_1964 : i32 = u_xlati74;
    let x_1966 : vec4<f32> = x_1913.x_AdditionalLightsSpotDir[x_1964];
    let x_1968 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1966.x, x_1966.y, x_1966.z), vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
    let x_1971 : f32 = u_xlat76;
    let x_1972 : i32 = u_xlati74;
    let x_1974 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1972].z;
    let x_1976 : i32 = u_xlati74;
    let x_1978 : f32 = x_1913.x_AdditionalLightsAttenuation[x_1976].w;
    u_xlat76 = ((x_1971 * x_1974) + x_1978);
    let x_1980 : f32 = u_xlat76;
    u_xlat76 = clamp(x_1980, 0.0f, 1.0f);
    let x_1982 : f32 = u_xlat76;
    let x_1983 : f32 = u_xlat76;
    u_xlat76 = (x_1982 * x_1983);
    let x_1985 : f32 = u_xlat75;
    let x_1986 : f32 = u_xlat76;
    u_xlat75 = (x_1985 * x_1986);
    let x_1990 : i32 = u_xlati74;
    let x_1992 : f32 = x_283.x_AdditionalShadowParams[x_1990].w;
    u_xlati76 = i32(x_1992);
    let x_1997 : i32 = u_xlati76;
    u_xlatb8.x = (x_1997 >= 0i);
    let x_2001 : bool = u_xlatb8.x;
    if (x_2001) {
      let x_2005 : i32 = u_xlati74;
      let x_2007 : f32 = x_283.x_AdditionalShadowParams[x_2005].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2007, x_2007, x_2007, x_2007))));
      let x_2013 : bool = u_xlatb8.x;
      if (x_2013) {
        let x_2016 : vec4<f32> = u_xlat7;
        let x_2019 : vec4<f32> = u_xlat7;
        let x_2022 : vec4<bool> = (abs(vec4<f32>(x_2016.z, x_2016.z, x_2016.y, x_2016.z)) >= abs(vec4<f32>(x_2019.x, x_2019.y, x_2019.x, x_2019.x)));
        u_xlatb8 = vec3<bool>(x_2022.x, x_2022.y, x_2022.z);
        let x_2025 : bool = u_xlatb8.y;
        let x_2027 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2025 & x_2027);
        let x_2031 : vec4<f32> = u_xlat7;
        let x_2034 : vec4<bool> = (-(vec4<f32>(x_2031.z, x_2031.y, x_2031.x, x_2031.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2034.x, x_2034.y, x_2034.z);
        let x_2038 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2038);
        let x_2044 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2044);
        let x_2049 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2049);
        let x_2054 : bool = u_xlatb8.z;
        if (x_2054) {
          let x_2059 : f32 = u_xlat31.z;
          x_2055 = x_2059;
        } else {
          let x_2062 : f32 = u_xlat9.x;
          x_2055 = x_2062;
        }
        let x_2063 : f32 = x_2055;
        u_xlat54 = x_2063;
        let x_2065 : bool = u_xlatb8.x;
        if (x_2065) {
          let x_2070 : f32 = u_xlat31.x;
          x_2066 = x_2070;
        } else {
          let x_2072 : f32 = u_xlat54;
          x_2066 = x_2072;
        }
        let x_2073 : f32 = x_2066;
        u_xlat8.x = x_2073;
        let x_2075 : i32 = u_xlati74;
        let x_2077 : f32 = x_283.x_AdditionalShadowParams[x_2075].w;
        u_xlat31.x = trunc(x_2077);
        let x_2081 : f32 = u_xlat8.x;
        let x_2083 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2081 + x_2083);
        let x_2087 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2087);
      }
      let x_2089 : i32 = u_xlati76;
      u_xlati76 = (x_2089 << bitcast<u32>(2i));
      let x_2091 : vec3<f32> = vs_TEXCOORD1;
      let x_2094 : i32 = u_xlati76;
      let x_2097 : i32 = u_xlati76;
      let x_2101 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_2094 + 1i) / 4i)][((x_2097 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2091.y, x_2091.y, x_2091.y, x_2091.y) * x_2101);
      let x_2103 : i32 = u_xlati76;
      let x_2105 : i32 = u_xlati76;
      let x_2108 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[(x_2103 / 4i)][(x_2105 % 4i)];
      let x_2109 : vec3<f32> = vs_TEXCOORD1;
      let x_2112 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2108 * vec4<f32>(x_2109.x, x_2109.x, x_2109.x, x_2109.x)) + x_2112);
      let x_2114 : i32 = u_xlati76;
      let x_2117 : i32 = u_xlati76;
      let x_2121 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_2114 + 2i) / 4i)][((x_2117 + 2i) % 4i)];
      let x_2122 : vec3<f32> = vs_TEXCOORD1;
      let x_2125 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2121 * vec4<f32>(x_2122.z, x_2122.z, x_2122.z, x_2122.z)) + x_2125);
      let x_2127 : vec4<f32> = u_xlat8;
      let x_2128 : i32 = u_xlati76;
      let x_2131 : i32 = u_xlati76;
      let x_2135 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_2128 + 3i) / 4i)][((x_2131 + 3i) % 4i)];
      u_xlat8 = (x_2127 + x_2135);
      let x_2137 : vec4<f32> = u_xlat8;
      let x_2139 : vec4<f32> = u_xlat8;
      let x_2141 : vec3<f32> = (vec3<f32>(x_2137.x, x_2137.y, x_2137.z) / vec3<f32>(x_2139.w, x_2139.w, x_2139.w));
      let x_2142 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
      let x_2145 : i32 = u_xlati74;
      let x_2147 : f32 = x_283.x_AdditionalShadowParams[x_2145].y;
      u_xlatb76 = (0.0f < x_2147);
      let x_2149 : bool = u_xlatb76;
      if (x_2149) {
        let x_2152 : i32 = u_xlati74;
        let x_2154 : f32 = x_283.x_AdditionalShadowParams[x_2152].y;
        u_xlatb76 = (1.0f == x_2154);
        let x_2156 : bool = u_xlatb76;
        if (x_2156) {
          let x_2159 : vec4<f32> = u_xlat8;
          let x_2163 : vec4<f32> = x_283.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2159.x, x_2159.y, x_2159.x, x_2159.y) + x_2163);
          let x_2166 : vec4<f32> = u_xlat9;
          let x_2167 : vec2<f32> = vec2<f32>(x_2166.x, x_2166.y);
          let x_2169 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2167.x, x_2167.y, x_2169);
          let x_2177 : vec3<f32> = txVec30;
          let x_2179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2177.xy, x_2177.z);
          u_xlat10.x = x_2179;
          let x_2182 : vec4<f32> = u_xlat9;
          let x_2183 : vec2<f32> = vec2<f32>(x_2182.z, x_2182.w);
          let x_2185 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
          let x_2192 : vec3<f32> = txVec31;
          let x_2194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2192.xy, x_2192.z);
          u_xlat10.y = x_2194;
          let x_2196 : vec4<f32> = u_xlat8;
          let x_2200 : vec4<f32> = x_283.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2196.x, x_2196.y, x_2196.x, x_2196.y) + x_2200);
          let x_2203 : vec4<f32> = u_xlat9;
          let x_2204 : vec2<f32> = vec2<f32>(x_2203.x, x_2203.y);
          let x_2206 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
          let x_2213 : vec3<f32> = txVec32;
          let x_2215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2213.xy, x_2213.z);
          u_xlat10.z = x_2215;
          let x_2218 : vec4<f32> = u_xlat9;
          let x_2219 : vec2<f32> = vec2<f32>(x_2218.z, x_2218.w);
          let x_2221 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2219.x, x_2219.y, x_2221);
          let x_2228 : vec3<f32> = txVec33;
          let x_2230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2228.xy, x_2228.z);
          u_xlat10.w = x_2230;
          let x_2232 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2232, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2236 : i32 = u_xlati74;
          let x_2238 : f32 = x_283.x_AdditionalShadowParams[x_2236].y;
          u_xlatb77 = (2.0f == x_2238);
          let x_2240 : bool = u_xlatb77;
          if (x_2240) {
            let x_2243 : vec4<f32> = u_xlat8;
            let x_2247 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2250 : vec2<f32> = ((vec2<f32>(x_2243.x, x_2243.y) * vec2<f32>(x_2247.z, x_2247.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2251 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2251.z, x_2251.w);
            let x_2253 : vec4<f32> = u_xlat9;
            let x_2255 : vec2<f32> = floor(vec2<f32>(x_2253.x, x_2253.y));
            let x_2256 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2259 : vec4<f32> = u_xlat8;
            let x_2262 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2265 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(x_2262.z, x_2262.w)) + -(vec2<f32>(x_2265.x, x_2265.y)));
            let x_2269 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2269.x, x_2269.x, x_2269.y, x_2269.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2272 : vec4<f32> = u_xlat10;
            let x_2274 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2272.x, x_2272.x, x_2272.z, x_2272.z) * vec4<f32>(x_2274.x, x_2274.x, x_2274.z, x_2274.z));
            let x_2277 : vec4<f32> = u_xlat11;
            let x_2279 : vec2<f32> = (vec2<f32>(x_2277.y, x_2277.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2280 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2279.x, x_2280.y, x_2279.y, x_2280.w);
            let x_2282 : vec4<f32> = u_xlat11;
            let x_2285 : vec2<f32> = u_xlat55;
            let x_2287 : vec2<f32> = ((vec2<f32>(x_2282.x, x_2282.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2285));
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
            let x_2291 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2291) + vec2<f32>(1.0f, 1.0f));
            let x_2294 : vec2<f32> = u_xlat55;
            let x_2295 : vec2<f32> = min(x_2294, vec2<f32>(0.0f, 0.0f));
            let x_2296 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
            let x_2298 : vec4<f32> = u_xlat12;
            let x_2301 : vec4<f32> = u_xlat12;
            let x_2304 : vec2<f32> = u_xlat57;
            let x_2305 : vec2<f32> = ((-(vec2<f32>(x_2298.x, x_2298.y)) * vec2<f32>(x_2301.x, x_2301.y)) + x_2304);
            let x_2306 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
            let x_2308 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2308, vec2<f32>(0.0f, 0.0f));
            let x_2310 : vec2<f32> = u_xlat55;
            let x_2312 : vec2<f32> = u_xlat55;
            let x_2314 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2310) * x_2312) + vec2<f32>(x_2314.y, x_2314.w));
            let x_2317 : vec4<f32> = u_xlat12;
            let x_2319 : vec2<f32> = (vec2<f32>(x_2317.x, x_2317.y) + vec2<f32>(1.0f, 1.0f));
            let x_2320 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
            let x_2322 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2322 + vec2<f32>(1.0f, 1.0f));
            let x_2324 : vec4<f32> = u_xlat11;
            let x_2326 : vec2<f32> = (vec2<f32>(x_2324.x, x_2324.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2327 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
            let x_2329 : vec2<f32> = u_xlat57;
            let x_2330 : vec2<f32> = (x_2329 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2331 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
            let x_2333 : vec4<f32> = u_xlat12;
            let x_2335 : vec2<f32> = (vec2<f32>(x_2333.x, x_2333.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2336 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
            let x_2338 : vec2<f32> = u_xlat55;
            let x_2339 : vec2<f32> = (x_2338 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2340 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
            let x_2342 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2342.y, x_2342.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2346 : f32 = u_xlat12.x;
            u_xlat13.z = x_2346;
            let x_2349 : f32 = u_xlat55.x;
            u_xlat13.w = x_2349;
            let x_2352 : f32 = u_xlat14.x;
            u_xlat11.z = x_2352;
            let x_2355 : f32 = u_xlat10.x;
            u_xlat11.w = x_2355;
            let x_2357 : vec4<f32> = u_xlat11;
            let x_2359 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2357.z, x_2357.w, x_2357.x, x_2357.z) + vec4<f32>(x_2359.z, x_2359.w, x_2359.x, x_2359.z));
            let x_2363 : f32 = u_xlat13.y;
            u_xlat12.z = x_2363;
            let x_2366 : f32 = u_xlat55.y;
            u_xlat12.w = x_2366;
            let x_2369 : f32 = u_xlat11.y;
            u_xlat14.z = x_2369;
            let x_2372 : f32 = u_xlat10.z;
            u_xlat14.w = x_2372;
            let x_2374 : vec4<f32> = u_xlat12;
            let x_2376 : vec4<f32> = u_xlat14;
            let x_2378 : vec3<f32> = (vec3<f32>(x_2374.z, x_2374.y, x_2374.w) + vec3<f32>(x_2376.z, x_2376.y, x_2376.w));
            let x_2379 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
            let x_2381 : vec4<f32> = u_xlat11;
            let x_2383 : vec4<f32> = u_xlat15;
            let x_2385 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.z, x_2381.w) / vec3<f32>(x_2383.z, x_2383.w, x_2383.y));
            let x_2386 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
            let x_2388 : vec4<f32> = u_xlat11;
            let x_2390 : vec3<f32> = (vec3<f32>(x_2388.x, x_2388.y, x_2388.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2391 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
            let x_2393 : vec4<f32> = u_xlat14;
            let x_2395 : vec4<f32> = u_xlat10;
            let x_2397 : vec3<f32> = (vec3<f32>(x_2393.z, x_2393.y, x_2393.w) / vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
            let x_2398 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
            let x_2400 : vec4<f32> = u_xlat12;
            let x_2402 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat11;
            let x_2408 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2410 : vec3<f32> = (vec3<f32>(x_2405.y, x_2405.x, x_2405.z) * vec3<f32>(x_2408.x, x_2408.x, x_2408.x));
            let x_2411 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
            let x_2413 : vec4<f32> = u_xlat12;
            let x_2416 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2418 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) * vec3<f32>(x_2416.y, x_2416.y, x_2416.y));
            let x_2419 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
            let x_2422 : f32 = u_xlat12.x;
            u_xlat11.w = x_2422;
            let x_2424 : vec4<f32> = u_xlat9;
            let x_2427 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2430 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2424.x, x_2424.y, x_2424.x, x_2424.y) * vec4<f32>(x_2427.x, x_2427.y, x_2427.x, x_2427.y)) + vec4<f32>(x_2430.y, x_2430.w, x_2430.x, x_2430.w));
            let x_2433 : vec4<f32> = u_xlat9;
            let x_2436 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2439 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2436.x, x_2436.y)) + vec2<f32>(x_2439.z, x_2439.w));
            let x_2443 : f32 = u_xlat11.y;
            u_xlat12.w = x_2443;
            let x_2445 : vec4<f32> = u_xlat12;
            let x_2446 : vec2<f32> = vec2<f32>(x_2445.y, x_2445.z);
            let x_2447 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2447.x, x_2446.x, x_2447.z, x_2446.y);
            let x_2449 : vec4<f32> = u_xlat9;
            let x_2452 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2455 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2449.x, x_2449.y, x_2449.x, x_2449.y) * vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y)) + vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2455.y));
            let x_2458 : vec4<f32> = u_xlat9;
            let x_2461 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2464 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2458.x, x_2458.y, x_2458.x, x_2458.y) * vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y)) + vec4<f32>(x_2464.w, x_2464.y, x_2464.w, x_2464.z));
            let x_2467 : vec4<f32> = u_xlat9;
            let x_2470 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2473 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2467.x, x_2467.y, x_2467.x, x_2467.y) * vec4<f32>(x_2470.x, x_2470.y, x_2470.x, x_2470.y)) + vec4<f32>(x_2473.x, x_2473.w, x_2473.z, x_2473.w));
            let x_2476 : vec4<f32> = u_xlat10;
            let x_2478 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2476.x, x_2476.x, x_2476.x, x_2476.y) * vec4<f32>(x_2478.z, x_2478.w, x_2478.y, x_2478.z));
            let x_2481 : vec4<f32> = u_xlat10;
            let x_2483 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2481.y, x_2481.y, x_2481.z, x_2481.z) * x_2483);
            let x_2487 : f32 = u_xlat10.z;
            let x_2489 : f32 = u_xlat15.y;
            u_xlat77 = (x_2487 * x_2489);
            let x_2492 : vec4<f32> = u_xlat13;
            let x_2493 : vec2<f32> = vec2<f32>(x_2492.x, x_2492.y);
            let x_2495 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
            let x_2502 : vec3<f32> = txVec34;
            let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
            u_xlat9.x = x_2504;
            let x_2507 : vec4<f32> = u_xlat13;
            let x_2508 : vec2<f32> = vec2<f32>(x_2507.z, x_2507.w);
            let x_2510 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
            let x_2518 : vec3<f32> = txVec35;
            let x_2520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
            u_xlat32 = x_2520;
            let x_2521 : f32 = u_xlat32;
            let x_2523 : f32 = u_xlat16.y;
            u_xlat32 = (x_2521 * x_2523);
            let x_2526 : f32 = u_xlat16.x;
            let x_2528 : f32 = u_xlat9.x;
            let x_2530 : f32 = u_xlat32;
            u_xlat9.x = ((x_2526 * x_2528) + x_2530);
            let x_2534 : vec2<f32> = u_xlat55;
            let x_2536 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
            let x_2543 : vec3<f32> = txVec36;
            let x_2545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
            u_xlat32 = x_2545;
            let x_2547 : f32 = u_xlat16.z;
            let x_2548 : f32 = u_xlat32;
            let x_2551 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2547 * x_2548) + x_2551);
            let x_2555 : vec4<f32> = u_xlat12;
            let x_2556 : vec2<f32> = vec2<f32>(x_2555.x, x_2555.y);
            let x_2558 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2556.x, x_2556.y, x_2558);
            let x_2565 : vec3<f32> = txVec37;
            let x_2567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2565.xy, x_2565.z);
            u_xlat32 = x_2567;
            let x_2569 : f32 = u_xlat16.w;
            let x_2570 : f32 = u_xlat32;
            let x_2573 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2569 * x_2570) + x_2573);
            let x_2577 : vec4<f32> = u_xlat14;
            let x_2578 : vec2<f32> = vec2<f32>(x_2577.x, x_2577.y);
            let x_2580 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2578.x, x_2578.y, x_2580);
            let x_2587 : vec3<f32> = txVec38;
            let x_2589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2587.xy, x_2587.z);
            u_xlat32 = x_2589;
            let x_2591 : f32 = u_xlat17.x;
            let x_2592 : f32 = u_xlat32;
            let x_2595 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2591 * x_2592) + x_2595);
            let x_2599 : vec4<f32> = u_xlat14;
            let x_2600 : vec2<f32> = vec2<f32>(x_2599.z, x_2599.w);
            let x_2602 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2600.x, x_2600.y, x_2602);
            let x_2609 : vec3<f32> = txVec39;
            let x_2611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2609.xy, x_2609.z);
            u_xlat32 = x_2611;
            let x_2613 : f32 = u_xlat17.y;
            let x_2614 : f32 = u_xlat32;
            let x_2617 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2613 * x_2614) + x_2617);
            let x_2621 : vec4<f32> = u_xlat12;
            let x_2622 : vec2<f32> = vec2<f32>(x_2621.z, x_2621.w);
            let x_2624 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2622.x, x_2622.y, x_2624);
            let x_2631 : vec3<f32> = txVec40;
            let x_2633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2631.xy, x_2631.z);
            u_xlat32 = x_2633;
            let x_2635 : f32 = u_xlat17.z;
            let x_2636 : f32 = u_xlat32;
            let x_2639 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2635 * x_2636) + x_2639);
            let x_2643 : vec4<f32> = u_xlat11;
            let x_2644 : vec2<f32> = vec2<f32>(x_2643.x, x_2643.y);
            let x_2646 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2644.x, x_2644.y, x_2646);
            let x_2653 : vec3<f32> = txVec41;
            let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
            u_xlat32 = x_2655;
            let x_2657 : f32 = u_xlat17.w;
            let x_2658 : f32 = u_xlat32;
            let x_2661 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2657 * x_2658) + x_2661);
            let x_2665 : vec4<f32> = u_xlat11;
            let x_2666 : vec2<f32> = vec2<f32>(x_2665.z, x_2665.w);
            let x_2668 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2666.x, x_2666.y, x_2668);
            let x_2675 : vec3<f32> = txVec42;
            let x_2677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2675.xy, x_2675.z);
            u_xlat32 = x_2677;
            let x_2678 : f32 = u_xlat77;
            let x_2679 : f32 = u_xlat32;
            let x_2682 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2678 * x_2679) + x_2682);
          } else {
            let x_2685 : vec4<f32> = u_xlat8;
            let x_2688 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2691 : vec2<f32> = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2688.z, x_2688.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2692 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2691.x, x_2691.y, x_2692.z, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat9;
            let x_2696 : vec2<f32> = floor(vec2<f32>(x_2694.x, x_2694.y));
            let x_2697 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2696.x, x_2696.y, x_2697.z, x_2697.w);
            let x_2699 : vec4<f32> = u_xlat8;
            let x_2702 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2699.x, x_2699.y) * vec2<f32>(x_2702.z, x_2702.w)) + -(vec2<f32>(x_2705.x, x_2705.y)));
            let x_2709 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2709.x, x_2709.x, x_2709.y, x_2709.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2712 : vec4<f32> = u_xlat10;
            let x_2714 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2712.x, x_2712.x, x_2712.z, x_2712.z) * vec4<f32>(x_2714.x, x_2714.x, x_2714.z, x_2714.z));
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2719 : vec2<f32> = (vec2<f32>(x_2717.y, x_2717.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2720 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2720.x, x_2719.x, x_2720.z, x_2719.y);
            let x_2722 : vec4<f32> = u_xlat11;
            let x_2725 : vec2<f32> = u_xlat55;
            let x_2727 : vec2<f32> = ((vec2<f32>(x_2722.x, x_2722.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2725));
            let x_2728 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2727.x, x_2728.y, x_2727.y, x_2728.w);
            let x_2730 : vec2<f32> = u_xlat55;
            let x_2732 : vec2<f32> = (-(x_2730) + vec2<f32>(1.0f, 1.0f));
            let x_2733 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
            let x_2735 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2735, vec2<f32>(0.0f, 0.0f));
            let x_2737 : vec2<f32> = u_xlat57;
            let x_2739 : vec2<f32> = u_xlat57;
            let x_2741 : vec4<f32> = u_xlat11;
            let x_2743 : vec2<f32> = ((-(x_2737) * x_2739) + vec2<f32>(x_2741.x, x_2741.y));
            let x_2744 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
            let x_2746 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2746, vec2<f32>(0.0f, 0.0f));
            let x_2749 : vec2<f32> = u_xlat57;
            let x_2751 : vec2<f32> = u_xlat57;
            let x_2753 : vec4<f32> = u_xlat10;
            let x_2755 : vec2<f32> = ((-(x_2749) * x_2751) + vec2<f32>(x_2753.y, x_2753.w));
            let x_2756 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2755.x, x_2756.y, x_2755.y);
            let x_2758 : vec4<f32> = u_xlat11;
            let x_2760 : vec2<f32> = (vec2<f32>(x_2758.x, x_2758.y) + vec2<f32>(2.0f, 2.0f));
            let x_2761 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2763 : vec3<f32> = u_xlat33;
            let x_2765 : vec2<f32> = (vec2<f32>(x_2763.x, x_2763.z) + vec2<f32>(2.0f, 2.0f));
            let x_2766 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2766.x, x_2765.x, x_2766.z, x_2765.y);
            let x_2769 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2769 * 0.08163200318813323975f);
            let x_2772 : vec4<f32> = u_xlat10;
            let x_2774 : vec3<f32> = (vec3<f32>(x_2772.z, x_2772.x, x_2772.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2775 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
            let x_2777 : vec4<f32> = u_xlat11;
            let x_2779 : vec2<f32> = (vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2780 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2779.x, x_2779.y, x_2780.z, x_2780.w);
            let x_2783 : f32 = u_xlat14.y;
            u_xlat13.x = x_2783;
            let x_2785 : vec2<f32> = u_xlat55;
            let x_2788 : vec2<f32> = ((vec2<f32>(x_2785.x, x_2785.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2789 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2789.x, x_2788.x, x_2789.z, x_2788.y);
            let x_2791 : vec2<f32> = u_xlat55;
            let x_2794 : vec2<f32> = ((vec2<f32>(x_2791.x, x_2791.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2795 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2794.x, x_2795.y, x_2794.y, x_2795.w);
            let x_2798 : f32 = u_xlat10.x;
            u_xlat11.y = x_2798;
            let x_2801 : f32 = u_xlat12.y;
            u_xlat11.w = x_2801;
            let x_2803 : vec4<f32> = u_xlat11;
            let x_2804 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2803 + x_2804);
            let x_2806 : vec2<f32> = u_xlat55;
            let x_2809 : vec2<f32> = ((vec2<f32>(x_2806.y, x_2806.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2810 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2810.x, x_2809.x, x_2810.z, x_2809.y);
            let x_2812 : vec2<f32> = u_xlat55;
            let x_2815 : vec2<f32> = ((vec2<f32>(x_2812.y, x_2812.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2816 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2815.x, x_2816.y, x_2815.y, x_2816.w);
            let x_2819 : f32 = u_xlat10.y;
            u_xlat12.y = x_2819;
            let x_2821 : vec4<f32> = u_xlat12;
            let x_2822 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2821 + x_2822);
            let x_2824 : vec4<f32> = u_xlat11;
            let x_2825 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2824 / x_2825);
            let x_2827 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2827 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2829 : vec4<f32> = u_xlat12;
            let x_2830 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2829 / x_2830);
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2832 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2834 : vec4<f32> = u_xlat11;
            let x_2837 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2834.w, x_2834.x, x_2834.y, x_2834.z) * vec4<f32>(x_2837.x, x_2837.x, x_2837.x, x_2837.x));
            let x_2840 : vec4<f32> = u_xlat12;
            let x_2843 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2840.x, x_2840.w, x_2840.y, x_2840.z) * vec4<f32>(x_2843.y, x_2843.y, x_2843.y, x_2843.y));
            let x_2846 : vec4<f32> = u_xlat11;
            let x_2847 : vec3<f32> = vec3<f32>(x_2846.y, x_2846.z, x_2846.w);
            let x_2848 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2847.x, x_2848.y, x_2847.y, x_2847.z);
            let x_2851 : f32 = u_xlat12.x;
            u_xlat14.y = x_2851;
            let x_2853 : vec4<f32> = u_xlat9;
            let x_2856 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2853.x, x_2853.y, x_2853.x, x_2853.y) * vec4<f32>(x_2856.x, x_2856.y, x_2856.x, x_2856.y)) + vec4<f32>(x_2859.x, x_2859.y, x_2859.z, x_2859.y));
            let x_2862 : vec4<f32> = u_xlat9;
            let x_2865 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2862.x, x_2862.y) * vec2<f32>(x_2865.x, x_2865.y)) + vec2<f32>(x_2868.w, x_2868.y));
            let x_2872 : f32 = u_xlat14.y;
            u_xlat11.y = x_2872;
            let x_2875 : f32 = u_xlat12.z;
            u_xlat14.y = x_2875;
            let x_2877 : vec4<f32> = u_xlat9;
            let x_2880 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2883 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2877.x, x_2877.y, x_2877.x, x_2877.y) * vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y)) + vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2883.y));
            let x_2886 : vec4<f32> = u_xlat9;
            let x_2889 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2894 : vec2<f32> = ((vec2<f32>(x_2886.x, x_2886.y) * vec2<f32>(x_2889.x, x_2889.y)) + vec2<f32>(x_2892.w, x_2892.y));
            let x_2895 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2894.x, x_2894.y, x_2895.z, x_2895.w);
            let x_2898 : f32 = u_xlat14.y;
            u_xlat11.z = x_2898;
            let x_2901 : vec4<f32> = u_xlat9;
            let x_2904 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2907 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y) * vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y)) + vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.z));
            let x_2911 : f32 = u_xlat12.w;
            u_xlat14.y = x_2911;
            let x_2914 : vec4<f32> = u_xlat9;
            let x_2917 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2920 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2914.x, x_2914.y, x_2914.x, x_2914.y) * vec4<f32>(x_2917.x, x_2917.y, x_2917.x, x_2917.y)) + vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2920.y));
            let x_2924 : vec4<f32> = u_xlat9;
            let x_2927 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2924.x, x_2924.y) * vec2<f32>(x_2927.x, x_2927.y)) + vec2<f32>(x_2930.w, x_2930.y));
            let x_2934 : f32 = u_xlat14.y;
            u_xlat11.w = x_2934;
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2940 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2940.x, x_2940.y)) + vec2<f32>(x_2943.x, x_2943.w));
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2947 : vec3<f32> = vec3<f32>(x_2946.x, x_2946.z, x_2946.w);
            let x_2948 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2947.x, x_2948.y, x_2947.y, x_2947.z);
            let x_2950 : vec4<f32> = u_xlat9;
            let x_2953 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2956 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y) * vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.y)) + vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2956.y));
            let x_2959 : vec4<f32> = u_xlat9;
            let x_2962 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.x, x_2962.y)) + vec2<f32>(x_2965.w, x_2965.y));
            let x_2969 : f32 = u_xlat11.x;
            u_xlat12.x = x_2969;
            let x_2971 : vec4<f32> = u_xlat9;
            let x_2974 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat12;
            let x_2979 : vec2<f32> = ((vec2<f32>(x_2971.x, x_2971.y) * vec2<f32>(x_2974.x, x_2974.y)) + vec2<f32>(x_2977.x, x_2977.y));
            let x_2980 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2983 : vec4<f32> = u_xlat10;
            let x_2985 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2983.x, x_2983.x, x_2983.x, x_2983.x) * x_2985);
            let x_2988 : vec4<f32> = u_xlat10;
            let x_2990 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2988.y, x_2988.y, x_2988.y, x_2988.y) * x_2990);
            let x_2993 : vec4<f32> = u_xlat10;
            let x_2995 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2993.z, x_2993.z, x_2993.z, x_2993.z) * x_2995);
            let x_2997 : vec4<f32> = u_xlat10;
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2997.w, x_2997.w, x_2997.w, x_2997.w) * x_2999);
            let x_3002 : vec4<f32> = u_xlat15;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
            let x_3005 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec43;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat77 = x_3014;
            let x_3016 : vec4<f32> = u_xlat15;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.z, x_3016.w);
            let x_3019 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec44;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat11.x = x_3028;
            let x_3031 : f32 = u_xlat11.x;
            let x_3033 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3031 * x_3033);
            let x_3037 : f32 = u_xlat20.x;
            let x_3038 : f32 = u_xlat77;
            let x_3041 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3037 * x_3038) + x_3041);
            let x_3044 : vec2<f32> = u_xlat55;
            let x_3046 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec45;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat55.x = x_3055;
            let x_3058 : f32 = u_xlat20.z;
            let x_3060 : f32 = u_xlat55.x;
            let x_3062 : f32 = u_xlat77;
            u_xlat77 = ((x_3058 * x_3060) + x_3062);
            let x_3065 : vec4<f32> = u_xlat18;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
            let x_3068 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec46;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat55.x = x_3077;
            let x_3080 : f32 = u_xlat20.w;
            let x_3082 : f32 = u_xlat55.x;
            let x_3084 : f32 = u_xlat77;
            u_xlat77 = ((x_3080 * x_3082) + x_3084);
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.x, x_3087.y);
            let x_3090 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec47;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat55.x = x_3099;
            let x_3102 : f32 = u_xlat21.x;
            let x_3104 : f32 = u_xlat55.x;
            let x_3106 : f32 = u_xlat77;
            u_xlat77 = ((x_3102 * x_3104) + x_3106);
            let x_3109 : vec4<f32> = u_xlat16;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.z, x_3109.w);
            let x_3112 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec48;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat55.x = x_3121;
            let x_3124 : f32 = u_xlat21.y;
            let x_3126 : f32 = u_xlat55.x;
            let x_3128 : f32 = u_xlat77;
            u_xlat77 = ((x_3124 * x_3126) + x_3128);
            let x_3131 : vec4<f32> = u_xlat17;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.x, x_3131.y);
            let x_3134 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
            let x_3141 : vec3<f32> = txVec49;
            let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
            u_xlat55.x = x_3143;
            let x_3146 : f32 = u_xlat21.z;
            let x_3148 : f32 = u_xlat55.x;
            let x_3150 : f32 = u_xlat77;
            u_xlat77 = ((x_3146 * x_3148) + x_3150);
            let x_3153 : vec4<f32> = u_xlat18;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec50;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat55.x = x_3165;
            let x_3168 : f32 = u_xlat21.w;
            let x_3170 : f32 = u_xlat55.x;
            let x_3172 : f32 = u_xlat77;
            u_xlat77 = ((x_3168 * x_3170) + x_3172);
            let x_3175 : vec4<f32> = u_xlat19;
            let x_3176 : vec2<f32> = vec2<f32>(x_3175.x, x_3175.y);
            let x_3178 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
            let x_3185 : vec3<f32> = txVec51;
            let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
            u_xlat55.x = x_3187;
            let x_3190 : f32 = u_xlat22.x;
            let x_3192 : f32 = u_xlat55.x;
            let x_3194 : f32 = u_xlat77;
            u_xlat77 = ((x_3190 * x_3192) + x_3194);
            let x_3197 : vec4<f32> = u_xlat19;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.z, x_3197.w);
            let x_3200 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec52;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat55.x = x_3209;
            let x_3212 : f32 = u_xlat22.y;
            let x_3214 : f32 = u_xlat55.x;
            let x_3216 : f32 = u_xlat77;
            u_xlat77 = ((x_3212 * x_3214) + x_3216);
            let x_3219 : vec2<f32> = u_xlat34;
            let x_3221 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec53;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat55.x = x_3230;
            let x_3233 : f32 = u_xlat22.z;
            let x_3235 : f32 = u_xlat55.x;
            let x_3237 : f32 = u_xlat77;
            u_xlat77 = ((x_3233 * x_3235) + x_3237);
            let x_3240 : vec2<f32> = u_xlat63;
            let x_3242 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3240.x, x_3240.y, x_3242);
            let x_3249 : vec3<f32> = txVec54;
            let x_3251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3249.xy, x_3249.z);
            u_xlat55.x = x_3251;
            let x_3254 : f32 = u_xlat22.w;
            let x_3256 : f32 = u_xlat55.x;
            let x_3258 : f32 = u_xlat77;
            u_xlat77 = ((x_3254 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat14;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec55;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat55.x = x_3273;
            let x_3276 : f32 = u_xlat10.x;
            let x_3278 : f32 = u_xlat55.x;
            let x_3280 : f32 = u_xlat77;
            u_xlat77 = ((x_3276 * x_3278) + x_3280);
            let x_3283 : vec4<f32> = u_xlat14;
            let x_3284 : vec2<f32> = vec2<f32>(x_3283.z, x_3283.w);
            let x_3286 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec56;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat55.x = x_3295;
            let x_3298 : f32 = u_xlat10.y;
            let x_3300 : f32 = u_xlat55.x;
            let x_3302 : f32 = u_xlat77;
            u_xlat77 = ((x_3298 * x_3300) + x_3302);
            let x_3305 : vec2<f32> = u_xlat58;
            let x_3307 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3305.x, x_3305.y, x_3307);
            let x_3314 : vec3<f32> = txVec57;
            let x_3316 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3314.xy, x_3314.z);
            u_xlat55.x = x_3316;
            let x_3319 : f32 = u_xlat10.z;
            let x_3321 : f32 = u_xlat55.x;
            let x_3323 : f32 = u_xlat77;
            u_xlat77 = ((x_3319 * x_3321) + x_3323);
            let x_3326 : vec4<f32> = u_xlat9;
            let x_3327 : vec2<f32> = vec2<f32>(x_3326.x, x_3326.y);
            let x_3329 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3327.x, x_3327.y, x_3329);
            let x_3336 : vec3<f32> = txVec58;
            let x_3338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3336.xy, x_3336.z);
            u_xlat9.x = x_3338;
            let x_3341 : f32 = u_xlat10.w;
            let x_3343 : f32 = u_xlat9.x;
            let x_3345 : f32 = u_xlat77;
            u_xlat76 = ((x_3341 * x_3343) + x_3345);
          }
        }
      } else {
        let x_3349 : vec4<f32> = u_xlat8;
        let x_3350 : vec2<f32> = vec2<f32>(x_3349.x, x_3349.y);
        let x_3352 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
        let x_3359 : vec3<f32> = txVec59;
        let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
        u_xlat76 = x_3361;
      }
      let x_3362 : i32 = u_xlati74;
      let x_3364 : f32 = x_283.x_AdditionalShadowParams[x_3362].x;
      u_xlat8.x = (1.0f + -(x_3364));
      let x_3368 : f32 = u_xlat76;
      let x_3369 : i32 = u_xlati74;
      let x_3371 : f32 = x_283.x_AdditionalShadowParams[x_3369].x;
      let x_3374 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3368 * x_3371) + x_3374);
      let x_3377 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3377);
      let x_3382 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3382 >= 1.0f);
      let x_3384 : bool = u_xlatb31;
      let x_3386 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3384 | x_3386);
      let x_3390 : bool = u_xlatb8.x;
      let x_3391 : f32 = u_xlat76;
      u_xlat76 = select(x_3391, 1.0f, x_3390);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3394 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3394) + 1.0f);
    let x_3398 : f32 = u_xlat72;
    let x_3400 : f32 = u_xlat8.x;
    let x_3402 : f32 = u_xlat76;
    u_xlat76 = ((x_3398 * x_3400) + x_3402);
    let x_3405 : i32 = u_xlati74;
    u_xlati8 = (1i << bitcast<u32>((x_3405 & 31i)));
    let x_3409 : i32 = u_xlati8;
    let x_3412 : f32 = x_1603.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_3409) & bitcast<u32>(x_3412)));
    let x_3416 : i32 = u_xlati8;
    if ((x_3416 != 0i)) {
      let x_3420 : i32 = u_xlati74;
      let x_3422 : f32 = x_1603.x_AdditionalLightsLightTypes[x_3420].el;
      u_xlati8 = i32(x_3422);
      let x_3425 : i32 = u_xlati8;
      u_xlati31 = select(1i, 0i, (x_3425 != 0i));
      let x_3429 : i32 = u_xlati74;
      u_xlati54 = (x_3429 << bitcast<u32>(2i));
      let x_3431 : i32 = u_xlati31;
      if ((x_3431 != 0i)) {
        let x_3435 : vec3<f32> = vs_TEXCOORD1;
        let x_3437 : i32 = u_xlati54;
        let x_3440 : i32 = u_xlati54;
        let x_3444 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3437 + 1i) / 4i)][((x_3440 + 1i) % 4i)];
        let x_3446 : vec3<f32> = (vec3<f32>(x_3435.y, x_3435.y, x_3435.y) * vec3<f32>(x_3444.x, x_3444.y, x_3444.w));
        let x_3447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3447.w);
        let x_3449 : i32 = u_xlati54;
        let x_3451 : i32 = u_xlati54;
        let x_3454 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[(x_3449 / 4i)][(x_3451 % 4i)];
        let x_3456 : vec3<f32> = vs_TEXCOORD1;
        let x_3459 : vec4<f32> = u_xlat9;
        let x_3461 : vec3<f32> = ((vec3<f32>(x_3454.x, x_3454.y, x_3454.w) * vec3<f32>(x_3456.x, x_3456.x, x_3456.x)) + vec3<f32>(x_3459.x, x_3459.y, x_3459.z));
        let x_3462 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3461.x, x_3461.y, x_3461.z, x_3462.w);
        let x_3464 : i32 = u_xlati54;
        let x_3467 : i32 = u_xlati54;
        let x_3471 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3464 + 2i) / 4i)][((x_3467 + 2i) % 4i)];
        let x_3473 : vec3<f32> = vs_TEXCOORD1;
        let x_3476 : vec4<f32> = u_xlat9;
        let x_3478 : vec3<f32> = ((vec3<f32>(x_3471.x, x_3471.y, x_3471.w) * vec3<f32>(x_3473.z, x_3473.z, x_3473.z)) + vec3<f32>(x_3476.x, x_3476.y, x_3476.z));
        let x_3479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
        let x_3481 : vec4<f32> = u_xlat9;
        let x_3483 : i32 = u_xlati54;
        let x_3486 : i32 = u_xlati54;
        let x_3490 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3483 + 3i) / 4i)][((x_3486 + 3i) % 4i)];
        let x_3492 : vec3<f32> = (vec3<f32>(x_3481.x, x_3481.y, x_3481.z) + vec3<f32>(x_3490.x, x_3490.y, x_3490.w));
        let x_3493 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3493.w);
        let x_3495 : vec4<f32> = u_xlat9;
        let x_3497 : vec4<f32> = u_xlat9;
        let x_3499 : vec2<f32> = (vec2<f32>(x_3495.x, x_3495.y) / vec2<f32>(x_3497.z, x_3497.z));
        let x_3500 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3499.x, x_3500.y, x_3499.y);
        let x_3502 : vec3<f32> = u_xlat31;
        let x_3505 : vec2<f32> = ((vec2<f32>(x_3502.x, x_3502.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3506 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3505.x, x_3506.y, x_3505.y);
        let x_3508 : vec3<f32> = u_xlat31;
        let x_3512 : vec2<f32> = clamp(vec2<f32>(x_3508.x, x_3508.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3513 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3512.x, x_3513.y, x_3512.y);
        let x_3515 : i32 = u_xlati74;
        let x_3517 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3515];
        let x_3519 : vec3<f32> = u_xlat31;
        let x_3522 : i32 = u_xlati74;
        let x_3524 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3522];
        let x_3526 : vec2<f32> = ((vec2<f32>(x_3517.x, x_3517.y) * vec2<f32>(x_3519.x, x_3519.z)) + vec2<f32>(x_3524.z, x_3524.w));
        let x_3527 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3526.x, x_3527.y, x_3526.y);
      } else {
        let x_3530 : i32 = u_xlati8;
        u_xlatb8.x = (x_3530 == 1i);
        let x_3534 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_3534);
        let x_3536 : i32 = u_xlati8;
        if ((x_3536 != 0i)) {
          let x_3540 : vec3<f32> = vs_TEXCOORD1;
          let x_3542 : i32 = u_xlati54;
          let x_3545 : i32 = u_xlati54;
          let x_3549 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3542 + 1i) / 4i)][((x_3545 + 1i) % 4i)];
          let x_3551 : vec2<f32> = (vec2<f32>(x_3540.y, x_3540.y) * vec2<f32>(x_3549.x, x_3549.y));
          let x_3552 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3551.x, x_3551.y, x_3552.z, x_3552.w);
          let x_3554 : i32 = u_xlati54;
          let x_3556 : i32 = u_xlati54;
          let x_3559 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[(x_3554 / 4i)][(x_3556 % 4i)];
          let x_3561 : vec3<f32> = vs_TEXCOORD1;
          let x_3564 : vec4<f32> = u_xlat9;
          let x_3566 : vec2<f32> = ((vec2<f32>(x_3559.x, x_3559.y) * vec2<f32>(x_3561.x, x_3561.x)) + vec2<f32>(x_3564.x, x_3564.y));
          let x_3567 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3566.x, x_3566.y, x_3567.z, x_3567.w);
          let x_3569 : i32 = u_xlati54;
          let x_3572 : i32 = u_xlati54;
          let x_3576 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3569 + 2i) / 4i)][((x_3572 + 2i) % 4i)];
          let x_3578 : vec3<f32> = vs_TEXCOORD1;
          let x_3581 : vec4<f32> = u_xlat9;
          let x_3583 : vec2<f32> = ((vec2<f32>(x_3576.x, x_3576.y) * vec2<f32>(x_3578.z, x_3578.z)) + vec2<f32>(x_3581.x, x_3581.y));
          let x_3584 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3583.x, x_3583.y, x_3584.z, x_3584.w);
          let x_3586 : vec4<f32> = u_xlat9;
          let x_3588 : i32 = u_xlati54;
          let x_3591 : i32 = u_xlati54;
          let x_3595 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3588 + 3i) / 4i)][((x_3591 + 3i) % 4i)];
          let x_3597 : vec2<f32> = (vec2<f32>(x_3586.x, x_3586.y) + vec2<f32>(x_3595.x, x_3595.y));
          let x_3598 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3597.x, x_3597.y, x_3598.z, x_3598.w);
          let x_3600 : vec4<f32> = u_xlat9;
          let x_3603 : vec2<f32> = ((vec2<f32>(x_3600.x, x_3600.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3604 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3603.x, x_3603.y, x_3604.z, x_3604.w);
          let x_3606 : vec4<f32> = u_xlat9;
          let x_3608 : vec2<f32> = fract(vec2<f32>(x_3606.x, x_3606.y));
          let x_3609 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3608.x, x_3608.y, x_3609.z, x_3609.w);
          let x_3611 : i32 = u_xlati74;
          let x_3613 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3611];
          let x_3615 : vec4<f32> = u_xlat9;
          let x_3618 : i32 = u_xlati74;
          let x_3620 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3618];
          let x_3622 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.y) * vec2<f32>(x_3615.x, x_3615.y)) + vec2<f32>(x_3620.z, x_3620.w));
          let x_3623 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3622.x, x_3623.y, x_3622.y);
        } else {
          let x_3626 : vec3<f32> = vs_TEXCOORD1;
          let x_3628 : i32 = u_xlati54;
          let x_3631 : i32 = u_xlati54;
          let x_3635 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3628 + 1i) / 4i)][((x_3631 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3626.y, x_3626.y, x_3626.y, x_3626.y) * x_3635);
          let x_3637 : i32 = u_xlati54;
          let x_3639 : i32 = u_xlati54;
          let x_3642 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[(x_3637 / 4i)][(x_3639 % 4i)];
          let x_3643 : vec3<f32> = vs_TEXCOORD1;
          let x_3646 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3642 * vec4<f32>(x_3643.x, x_3643.x, x_3643.x, x_3643.x)) + x_3646);
          let x_3648 : i32 = u_xlati54;
          let x_3651 : i32 = u_xlati54;
          let x_3655 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3648 + 2i) / 4i)][((x_3651 + 2i) % 4i)];
          let x_3656 : vec3<f32> = vs_TEXCOORD1;
          let x_3659 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3655 * vec4<f32>(x_3656.z, x_3656.z, x_3656.z, x_3656.z)) + x_3659);
          let x_3661 : vec4<f32> = u_xlat9;
          let x_3662 : i32 = u_xlati54;
          let x_3665 : i32 = u_xlati54;
          let x_3669 : vec4<f32> = x_1603.x_AdditionalLightsWorldToLights[((x_3662 + 3i) / 4i)][((x_3665 + 3i) % 4i)];
          u_xlat9 = (x_3661 + x_3669);
          let x_3671 : vec4<f32> = u_xlat9;
          let x_3673 : vec4<f32> = u_xlat9;
          let x_3675 : vec3<f32> = (vec3<f32>(x_3671.x, x_3671.y, x_3671.z) / vec3<f32>(x_3673.w, x_3673.w, x_3673.w));
          let x_3676 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3675.x, x_3675.y, x_3675.z, x_3676.w);
          let x_3678 : vec4<f32> = u_xlat9;
          let x_3680 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_3678.x, x_3678.y, x_3678.z), vec3<f32>(x_3680.x, x_3680.y, x_3680.z));
          let x_3685 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_3685);
          let x_3688 : vec4<f32> = u_xlat8;
          let x_3690 : vec4<f32> = u_xlat9;
          let x_3692 : vec3<f32> = (vec3<f32>(x_3688.x, x_3688.x, x_3688.x) * vec3<f32>(x_3690.x, x_3690.y, x_3690.z));
          let x_3693 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3692.x, x_3692.y, x_3692.z, x_3693.w);
          let x_3695 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_3695.x, x_3695.y, x_3695.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3702 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_3702, 0.00000099999999747524f);
          let x_3707 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_3707);
          let x_3710 : vec4<f32> = u_xlat8;
          let x_3712 : vec4<f32> = u_xlat9;
          let x_3714 : vec3<f32> = (vec3<f32>(x_3710.x, x_3710.x, x_3710.x) * vec3<f32>(x_3712.z, x_3712.x, x_3712.y));
          let x_3715 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3715.w);
          let x_3718 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3718);
          let x_3722 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3722, 0.0f, 1.0f);
          let x_3726 : vec4<f32> = u_xlat10;
          let x_3728 : vec4<bool> = (vec4<f32>(x_3726.y, x_3726.z, x_3726.y, x_3726.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3728.x, x_3728.y);
          let x_3731 : bool = u_xlatb55.x;
          if (x_3731) {
            let x_3736 : f32 = u_xlat10.x;
            x_3732 = x_3736;
          } else {
            let x_3739 : f32 = u_xlat10.x;
            x_3732 = -(x_3739);
          }
          let x_3741 : f32 = x_3732;
          u_xlat55.x = x_3741;
          let x_3744 : bool = u_xlatb55.y;
          if (x_3744) {
            let x_3749 : f32 = u_xlat10.x;
            x_3745 = x_3749;
          } else {
            let x_3752 : f32 = u_xlat10.x;
            x_3745 = -(x_3752);
          }
          let x_3754 : f32 = x_3745;
          u_xlat55.y = x_3754;
          let x_3756 : vec4<f32> = u_xlat9;
          let x_3758 : vec4<f32> = u_xlat8;
          let x_3761 : vec2<f32> = u_xlat55;
          let x_3762 : vec2<f32> = ((vec2<f32>(x_3756.x, x_3756.y) * vec2<f32>(x_3758.x, x_3758.x)) + x_3761);
          let x_3763 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3762.x, x_3763.y, x_3762.y, x_3763.w);
          let x_3765 : vec4<f32> = u_xlat8;
          let x_3768 : vec2<f32> = ((vec2<f32>(x_3765.x, x_3765.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3769 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3768.x, x_3769.y, x_3768.y, x_3769.w);
          let x_3771 : vec4<f32> = u_xlat8;
          let x_3775 : vec2<f32> = clamp(vec2<f32>(x_3771.x, x_3771.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3776 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3775.x, x_3776.y, x_3775.y, x_3776.w);
          let x_3778 : i32 = u_xlati74;
          let x_3780 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3778];
          let x_3782 : vec4<f32> = u_xlat8;
          let x_3785 : i32 = u_xlati74;
          let x_3787 : vec4<f32> = x_1603.x_AdditionalLightsCookieAtlasUVRects[x_3785];
          let x_3789 : vec2<f32> = ((vec2<f32>(x_3780.x, x_3780.y) * vec2<f32>(x_3782.x, x_3782.z)) + vec2<f32>(x_3787.z, x_3787.w));
          let x_3790 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3789.x, x_3790.y, x_3789.y);
        }
      }
      let x_3797 : vec3<f32> = u_xlat31;
      let x_3799 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3797.x, x_3797.z), 0.0f);
      u_xlat8 = x_3799;
      let x_3801 : bool = u_xlatb5.y;
      if (x_3801) {
        let x_3806 : f32 = u_xlat8.w;
        x_3802 = x_3806;
      } else {
        let x_3809 : f32 = u_xlat8.x;
        x_3802 = x_3809;
      }
      let x_3810 : f32 = x_3802;
      u_xlat77 = x_3810;
      let x_3812 : bool = u_xlatb5.x;
      if (x_3812) {
        let x_3816 : vec4<f32> = u_xlat8;
        x_3813 = vec3<f32>(x_3816.x, x_3816.y, x_3816.z);
      } else {
        let x_3819 : f32 = u_xlat77;
        x_3813 = vec3<f32>(x_3819, x_3819, x_3819);
      }
      let x_3821 : vec3<f32> = x_3813;
      let x_3822 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3821.x, x_3821.y, x_3821.z, x_3822.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3828 : vec4<f32> = u_xlat8;
    let x_3830 : i32 = u_xlati74;
    let x_3832 : vec4<f32> = x_1913.x_AdditionalLightsColor[x_3830];
    let x_3834 : vec3<f32> = (vec3<f32>(x_3828.x, x_3828.y, x_3828.z) * vec3<f32>(x_3832.x, x_3832.y, x_3832.z));
    let x_3835 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3834.x, x_3834.y, x_3834.z, x_3835.w);
    let x_3837 : f32 = u_xlat75;
    let x_3838 : f32 = u_xlat76;
    u_xlat74 = (x_3837 * x_3838);
    let x_3840 : f32 = u_xlat74;
    let x_3842 : vec4<f32> = u_xlat8;
    let x_3844 : vec3<f32> = (vec3<f32>(x_3840, x_3840, x_3840) * vec3<f32>(x_3842.x, x_3842.y, x_3842.z));
    let x_3845 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3844.x, x_3844.y, x_3844.z, x_3845.w);
    let x_3847 : vec3<f32> = u_xlat1;
    let x_3848 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_3847, vec3<f32>(x_3848.x, x_3848.y, x_3848.z));
    let x_3851 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3851, 0.0f, 1.0f);
    let x_3853 : f32 = u_xlat74;
    let x_3855 : vec4<f32> = u_xlat8;
    let x_3857 : vec3<f32> = (vec3<f32>(x_3853, x_3853, x_3853) * vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
    let x_3858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3857.x, x_3857.y, x_3857.z, x_3858.w);
    let x_3860 : vec3<f32> = u_xlat2;
    let x_3861 : f32 = u_xlat70;
    let x_3864 : vec4<f32> = u_xlat7;
    let x_3866 : vec3<f32> = ((x_3860 * vec3<f32>(x_3861, x_3861, x_3861)) + vec3<f32>(x_3864.x, x_3864.y, x_3864.z));
    let x_3867 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3866.x, x_3866.y, x_3866.z, x_3867.w);
    let x_3869 : vec4<f32> = u_xlat7;
    let x_3871 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3869.x, x_3869.y, x_3869.z), vec3<f32>(x_3871.x, x_3871.y, x_3871.z));
    let x_3874 : f32 = u_xlat74;
    u_xlat74 = max(x_3874, 1.17549435e-38f);
    let x_3876 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3876);
    let x_3878 : f32 = u_xlat74;
    let x_3880 : vec4<f32> = u_xlat7;
    let x_3882 : vec3<f32> = (vec3<f32>(x_3878, x_3878, x_3878) * vec3<f32>(x_3880.x, x_3880.y, x_3880.z));
    let x_3883 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3882.x, x_3882.y, x_3882.z, x_3883.w);
    let x_3885 : vec3<f32> = u_xlat1;
    let x_3886 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_3885, vec3<f32>(x_3886.x, x_3886.y, x_3886.z));
    let x_3889 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3889, 0.0f, 1.0f);
    let x_3891 : f32 = u_xlat74;
    u_xlat74 = log2(x_3891);
    let x_3893 : f32 = u_xlat71;
    let x_3894 : f32 = u_xlat74;
    u_xlat74 = (x_3893 * x_3894);
    let x_3896 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3896);
    let x_3898 : f32 = u_xlat74;
    let x_3901 : vec4<f32> = x_57.x_SpecColor;
    let x_3903 : vec3<f32> = (vec3<f32>(x_3898, x_3898, x_3898) * vec3<f32>(x_3901.x, x_3901.y, x_3901.z));
    let x_3904 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3903.x, x_3903.y, x_3903.z, x_3904.w);
    let x_3906 : vec4<f32> = u_xlat7;
    let x_3908 : vec4<f32> = u_xlat8;
    let x_3910 : vec3<f32> = (vec3<f32>(x_3906.x, x_3906.y, x_3906.z) * vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
    let x_3913 : vec4<f32> = u_xlat9;
    let x_3915 : vec4<f32> = u_xlat0;
    let x_3918 : vec4<f32> = u_xlat7;
    let x_3920 : vec3<f32> = ((vec3<f32>(x_3913.x, x_3913.y, x_3913.z) * vec3<f32>(x_3915.y, x_3915.z, x_3915.w)) + vec3<f32>(x_3918.x, x_3918.y, x_3918.z));
    let x_3921 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3920.x, x_3920.y, x_3920.z, x_3921.w);
    let x_3923 : vec4<f32> = u_xlat6;
    let x_3925 : vec4<f32> = u_xlat7;
    let x_3927 : vec3<f32> = (vec3<f32>(x_3923.x, x_3923.y, x_3923.z) + vec3<f32>(x_3925.x, x_3925.y, x_3925.z));
    let x_3928 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3927.x, x_3927.y, x_3927.z, x_3928.w);

    continuing {
      let x_3930 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3930 + bitcast<u32>(1i));
    }
  }
  let x_3933 : vec4<f32> = u_xlat3;
  let x_3935 : vec4<f32> = u_xlat0;
  let x_3938 : vec4<f32> = u_xlat4;
  u_xlat23 = ((vec3<f32>(x_3933.x, x_3933.y, x_3933.z) * vec3<f32>(x_3935.y, x_3935.z, x_3935.w)) + vec3<f32>(x_3938.x, x_3938.y, x_3938.z));
  let x_3943 : vec4<f32> = u_xlat6;
  let x_3945 : vec3<f32> = u_xlat23;
  let x_3946 : vec3<f32> = (vec3<f32>(x_3943.x, x_3943.y, x_3943.z) + x_3945);
  let x_3947 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
  let x_3951 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3951 == 1.0f);
  let x_3953 : bool = u_xlatb23;
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
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


