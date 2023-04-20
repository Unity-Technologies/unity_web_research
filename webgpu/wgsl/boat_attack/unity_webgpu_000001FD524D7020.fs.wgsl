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

@group(1) @binding(4) var<uniform> x_228 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat71 : f32;

var<private> u_xlatu71 : u32;

var<private> u_xlati71 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb71 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb72 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

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

var<private> u_xlatb26 : vec2<bool>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : f32;

@group(1) @binding(5) var<uniform> x_1771 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu73 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_2064 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb76 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1853 : f32;
  var x_1864 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2203 : f32;
  var x_2215 : f32;
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
  var x_3883 : f32;
  var x_3896 : f32;
  var x_3953 : f32;
  var x_3964 : vec3<f32>;
  var x_4104 : f32;
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
  let x_220 : vec3<f32> = vs_TEXCOORD1;
  let x_230 : vec4<f32> = x_228.x_CascadeShadowSplitSpheres0;
  let x_233 : vec3<f32> = (x_220 + -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_239 : vec4<f32> = x_228.x_CascadeShadowSplitSpheres1;
  let x_242 : vec3<f32> = (x_237 + -(vec3<f32>(x_239.x, x_239.y, x_239.z)));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec3<f32> = vs_TEXCOORD1;
  let x_249 : vec4<f32> = x_228.x_CascadeShadowSplitSpheres2;
  let x_252 : vec3<f32> = (x_246 + -(vec3<f32>(x_249.x, x_249.y, x_249.z)));
  let x_253 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec4<f32> = x_228.x_CascadeShadowSplitSpheres3;
  let x_261 : vec3<f32> = (x_256 + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_270 : vec4<f32> = u_xlat4;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_276 : vec4<f32> = u_xlat5;
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_282 : vec4<f32> = u_xlat6;
  let x_284 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_291 : vec4<f32> = u_xlat3;
  let x_293 : vec4<f32> = x_228.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_291 < x_293);
  let x_296 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_296);
  let x_300 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_300);
  let x_304 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_304);
  let x_308 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_308);
  let x_312 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_312);
  let x_318 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_318);
  let x_322 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_322);
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec4<f32> = u_xlat4;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(x_327.y, x_327.z, x_327.w));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat3;
  let x_335 : vec3<f32> = max(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_335.x, x_335.y, x_335.z);
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_339, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_345 : f32 = u_xlat71;
  u_xlat71 = (-(x_345) + 4.0f);
  let x_350 : f32 = u_xlat71;
  u_xlatu71 = u32(x_350);
  let x_354 : u32 = u_xlatu71;
  u_xlati71 = (bitcast<i32>(x_354) << bitcast<u32>(2i));
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : i32 = u_xlati71;
  let x_362 : i32 = u_xlati71;
  let x_366 : vec4<f32> = x_228.x_MainLightWorldToShadow[((x_359 + 1i) / 4i)][((x_362 + 1i) % 4i)];
  let x_368 : vec3<f32> = (vec3<f32>(x_357.y, x_357.y, x_357.y) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : i32 = u_xlati71;
  let x_373 : i32 = u_xlati71;
  let x_376 : vec4<f32> = x_228.x_MainLightWorldToShadow[(x_371 / 4i)][(x_373 % 4i)];
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.x, x_378.x, x_378.x)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : i32 = u_xlati71;
  let x_389 : i32 = u_xlati71;
  let x_393 : vec4<f32> = x_228.x_MainLightWorldToShadow[((x_386 + 2i) / 4i)][((x_389 + 2i) % 4i)];
  let x_395 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.z, x_395.z, x_395.z)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : i32 = u_xlati71;
  let x_408 : i32 = u_xlati71;
  let x_412 : vec4<f32> = x_228.x_MainLightWorldToShadow[((x_405 + 3i) / 4i)][((x_408 + 3i) % 4i)];
  let x_414 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_423 : vec2<f32> = vs_TEXCOORD7;
  let x_425 : f32 = x_45.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_423, x_425);
  u_xlat4 = x_426;
  let x_431 : vec2<f32> = vs_TEXCOORD7;
  let x_433 : f32 = x_45.x_GlobalMipBias.x;
  let x_434 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_431, x_433);
  let x_435 : vec3<f32> = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = (vec3<f32>(x_438.x, x_438.y, x_438.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec3<f32> = u_xlat1;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_445, vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat71;
  u_xlat71 = (x_449 + 0.5f);
  let x_452 : f32 = u_xlat71;
  let x_454 : vec4<f32> = u_xlat5;
  let x_456 : vec3<f32> = (vec3<f32>(x_452, x_452, x_452) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_460 : f32 = u_xlat4.w;
  u_xlat71 = max(x_460, 0.00009999999747378752f);
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : f32 = u_xlat71;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) / vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_473 : f32 = x_228.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_473);
  let x_475 : bool = u_xlatb71;
  if (x_475) {
    let x_479 : f32 = x_228.x_MainLightShadowParams.y;
    u_xlatb71 = (x_479 == 1.0f);
    let x_481 : bool = u_xlatb71;
    if (x_481) {
      let x_484 : vec4<f32> = u_xlat3;
      let x_487 : vec4<f32> = x_228.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_484.x, x_484.y, x_484.x, x_484.y) + x_487);
      let x_491 : vec4<f32> = u_xlat5;
      let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
      let x_494 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_492.x, x_492.y, x_494);
      let x_506 : vec3<f32> = txVec0;
      let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
      u_xlat6.x = x_508;
      let x_511 : vec4<f32> = u_xlat5;
      let x_512 : vec2<f32> = vec2<f32>(x_511.z, x_511.w);
      let x_514 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec1;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat6.y = x_523;
      let x_525 : vec4<f32> = u_xlat3;
      let x_528 : vec4<f32> = x_228.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_525.x, x_525.y, x_525.x, x_525.y) + x_528);
      let x_531 : vec4<f32> = u_xlat5;
      let x_532 : vec2<f32> = vec2<f32>(x_531.x, x_531.y);
      let x_534 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_532.x, x_532.y, x_534);
      let x_541 : vec3<f32> = txVec2;
      let x_543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_541.xy, x_541.z);
      u_xlat6.z = x_543;
      let x_546 : vec4<f32> = u_xlat5;
      let x_547 : vec2<f32> = vec2<f32>(x_546.z, x_546.w);
      let x_549 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_547.x, x_547.y, x_549);
      let x_556 : vec3<f32> = txVec3;
      let x_558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_556.xy, x_556.z);
      u_xlat6.w = x_558;
      let x_560 : vec4<f32> = u_xlat6;
      u_xlat71 = dot(x_560, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_567 : f32 = x_228.x_MainLightShadowParams.y;
      u_xlatb72 = (x_567 == 2.0f);
      let x_569 : bool = u_xlatb72;
      if (x_569) {
        let x_572 : vec4<f32> = u_xlat3;
        let x_576 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_580 : vec2<f32> = ((vec2<f32>(x_572.x, x_572.y) * vec2<f32>(x_576.z, x_576.w)) + vec2<f32>(0.5f, 0.5f));
        let x_581 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat5;
        let x_585 : vec2<f32> = floor(vec2<f32>(x_583.x, x_583.y));
        let x_586 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_590 : vec4<f32> = u_xlat3;
        let x_593 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_596 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_593.z, x_593.w)) + -(vec2<f32>(x_596.x, x_596.y)));
        let x_600 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_600.x, x_600.x, x_600.y, x_600.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_605 : vec4<f32> = u_xlat6;
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_605.x, x_605.x, x_605.z, x_605.z) * vec4<f32>(x_607.x, x_607.x, x_607.z, x_607.z));
        let x_610 : vec4<f32> = u_xlat7;
        let x_614 : vec2<f32> = (vec2<f32>(x_610.y, x_610.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_614.x, x_615.y, x_614.y, x_615.w);
        let x_617 : vec4<f32> = u_xlat7;
        let x_620 : vec2<f32> = u_xlat51;
        let x_622 : vec2<f32> = ((vec2<f32>(x_617.x, x_617.z) * vec2<f32>(0.5f, 0.5f)) + -(x_620));
        let x_623 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_626 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_626) + vec2<f32>(1.0f, 1.0f));
        let x_631 : vec2<f32> = u_xlat51;
        let x_633 : vec2<f32> = min(x_631, vec2<f32>(0.0f, 0.0f));
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat8;
        let x_639 : vec4<f32> = u_xlat8;
        let x_642 : vec2<f32> = u_xlat53;
        let x_643 : vec2<f32> = ((-(vec2<f32>(x_636.x, x_636.y)) * vec2<f32>(x_639.x, x_639.y)) + x_642);
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_646 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_646, vec2<f32>(0.0f, 0.0f));
        let x_648 : vec2<f32> = u_xlat51;
        let x_650 : vec2<f32> = u_xlat51;
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_648) * x_650) + vec2<f32>(x_652.y, x_652.w));
        let x_655 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) + vec2<f32>(1.0f, 1.0f));
        let x_658 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_660 + vec2<f32>(1.0f, 1.0f));
        let x_663 : vec4<f32> = u_xlat7;
        let x_667 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_668 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec2<f32> = u_xlat53;
        let x_671 : vec2<f32> = (x_670 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat8;
        let x_676 : vec2<f32> = (vec2<f32>(x_674.x, x_674.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec2<f32> = u_xlat51;
        let x_681 : vec2<f32> = (x_680 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_684.y, x_684.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_688 : f32 = u_xlat8.x;
        u_xlat9.z = x_688;
        let x_691 : f32 = u_xlat51.x;
        u_xlat9.w = x_691;
        let x_694 : f32 = u_xlat10.x;
        u_xlat7.z = x_694;
        let x_697 : f32 = u_xlat6.x;
        u_xlat7.w = x_697;
        let x_700 : vec4<f32> = u_xlat7;
        let x_702 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_700.z, x_700.w, x_700.x, x_700.z) + vec4<f32>(x_702.z, x_702.w, x_702.x, x_702.z));
        let x_706 : f32 = u_xlat9.y;
        u_xlat8.z = x_706;
        let x_709 : f32 = u_xlat51.y;
        u_xlat8.w = x_709;
        let x_712 : f32 = u_xlat7.y;
        u_xlat10.z = x_712;
        let x_715 : f32 = u_xlat6.z;
        u_xlat10.w = x_715;
        let x_717 : vec4<f32> = u_xlat8;
        let x_719 : vec4<f32> = u_xlat10;
        let x_721 : vec3<f32> = (vec3<f32>(x_717.z, x_717.y, x_717.w) + vec3<f32>(x_719.z, x_719.y, x_719.w));
        let x_722 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat7;
        let x_726 : vec4<f32> = u_xlat11;
        let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.z, x_724.w) / vec3<f32>(x_726.z, x_726.w, x_726.y));
        let x_729 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat7;
        let x_736 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat10;
        let x_741 : vec4<f32> = u_xlat6;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.z, x_739.y, x_739.w) / vec3<f32>(x_741.x, x_741.y, x_741.z));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat8;
        let x_748 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_749 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
        let x_751 : vec4<f32> = u_xlat7;
        let x_754 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_756 : vec3<f32> = (vec3<f32>(x_751.y, x_751.x, x_751.z) * vec3<f32>(x_754.x, x_754.x, x_754.x));
        let x_757 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat8;
        let x_762 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_764 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_762.y, x_762.y, x_762.y));
        let x_765 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_768 : f32 = u_xlat8.x;
        u_xlat7.w = x_768;
        let x_770 : vec4<f32> = u_xlat5;
        let x_773 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.y, x_776.w, x_776.x, x_776.w));
        let x_779 : vec4<f32> = u_xlat5;
        let x_782 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_779.x, x_779.y) * vec2<f32>(x_782.x, x_782.y)) + vec2<f32>(x_785.z, x_785.w));
        let x_789 : f32 = u_xlat7.y;
        u_xlat8.w = x_789;
        let x_791 : vec4<f32> = u_xlat8;
        let x_792 : vec2<f32> = vec2<f32>(x_791.y, x_791.z);
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_793.x, x_792.x, x_793.z, x_792.y);
        let x_795 : vec4<f32> = u_xlat5;
        let x_798 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.x, x_801.y, x_801.z, x_801.y));
        let x_804 : vec4<f32> = u_xlat5;
        let x_807 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_810 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y) * vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y)) + vec4<f32>(x_810.w, x_810.y, x_810.w, x_810.z));
        let x_813 : vec4<f32> = u_xlat5;
        let x_816 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y) * vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y)) + vec4<f32>(x_819.x, x_819.w, x_819.z, x_819.w));
        let x_823 : vec4<f32> = u_xlat6;
        let x_825 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_823.x, x_823.x, x_823.x, x_823.y) * vec4<f32>(x_825.z, x_825.w, x_825.y, x_825.z));
        let x_829 : vec4<f32> = u_xlat6;
        let x_831 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_829.y, x_829.y, x_829.z, x_829.z) * x_831);
        let x_835 : f32 = u_xlat6.z;
        let x_837 : f32 = u_xlat11.y;
        u_xlat72 = (x_835 * x_837);
        let x_840 : vec4<f32> = u_xlat9;
        let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
        let x_843 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_851 : vec3<f32> = txVec4;
        let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_851.xy, x_851.z);
        u_xlat73 = x_853;
        let x_855 : vec4<f32> = u_xlat9;
        let x_856 : vec2<f32> = vec2<f32>(x_855.z, x_855.w);
        let x_858 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec5;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_865.xy, x_865.z);
        u_xlat5.x = x_867;
        let x_870 : f32 = u_xlat5.x;
        let x_872 : f32 = u_xlat12.y;
        u_xlat5.x = (x_870 * x_872);
        let x_876 : f32 = u_xlat12.x;
        let x_877 : f32 = u_xlat73;
        let x_880 : f32 = u_xlat5.x;
        u_xlat73 = ((x_876 * x_877) + x_880);
        let x_883 : vec2<f32> = u_xlat51;
        let x_885 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec6;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat5.x = x_894;
        let x_897 : f32 = u_xlat12.z;
        let x_899 : f32 = u_xlat5.x;
        let x_901 : f32 = u_xlat73;
        u_xlat73 = ((x_897 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat8;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec7;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat5.x = x_916;
        let x_919 : f32 = u_xlat12.w;
        let x_921 : f32 = u_xlat5.x;
        let x_923 : f32 = u_xlat73;
        u_xlat73 = ((x_919 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec8;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat5.x = x_938;
        let x_941 : f32 = u_xlat13.x;
        let x_943 : f32 = u_xlat5.x;
        let x_945 : f32 = u_xlat73;
        u_xlat73 = ((x_941 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat10;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec9;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
        u_xlat5.x = x_960;
        let x_963 : f32 = u_xlat13.y;
        let x_965 : f32 = u_xlat5.x;
        let x_967 : f32 = u_xlat73;
        u_xlat73 = ((x_963 * x_965) + x_967);
        let x_970 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec10;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat5.x = x_982;
        let x_985 : f32 = u_xlat13.z;
        let x_987 : f32 = u_xlat5.x;
        let x_989 : f32 = u_xlat73;
        u_xlat73 = ((x_985 * x_987) + x_989);
        let x_992 : vec4<f32> = u_xlat7;
        let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
        let x_995 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec11;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat5.x = x_1004;
        let x_1007 : f32 = u_xlat13.w;
        let x_1009 : f32 = u_xlat5.x;
        let x_1011 : f32 = u_xlat73;
        u_xlat73 = ((x_1007 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.z, x_1014.w);
        let x_1017 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec12;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat5.x = x_1026;
        let x_1028 : f32 = u_xlat72;
        let x_1030 : f32 = u_xlat5.x;
        let x_1032 : f32 = u_xlat73;
        u_xlat71 = ((x_1028 * x_1030) + x_1032);
      } else {
        let x_1035 : vec4<f32> = u_xlat3;
        let x_1038 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.z, x_1038.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1042 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat5;
        let x_1046 : vec2<f32> = floor(vec2<f32>(x_1044.x, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + -(vec2<f32>(x_1055.x, x_1055.y)));
        let x_1059 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1059.x, x_1059.x, x_1059.y, x_1059.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1062 : vec4<f32> = u_xlat6;
        let x_1064 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1062.x, x_1062.x, x_1062.z, x_1062.z) * vec4<f32>(x_1064.x, x_1064.x, x_1064.z, x_1064.z));
        let x_1067 : vec4<f32> = u_xlat7;
        let x_1071 : vec2<f32> = (vec2<f32>(x_1067.y, x_1067.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1072.x, x_1071.x, x_1072.z, x_1071.y);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec2<f32> = u_xlat51;
        let x_1079 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1077));
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1080.w);
        let x_1082 : vec2<f32> = u_xlat51;
        let x_1084 : vec2<f32> = (-(x_1082) + vec2<f32>(1.0f, 1.0f));
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1087, vec2<f32>(0.0f, 0.0f));
        let x_1089 : vec2<f32> = u_xlat53;
        let x_1091 : vec2<f32> = u_xlat53;
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec2<f32> = ((-(x_1089) * x_1091) + vec2<f32>(x_1093.x, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1098, vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec2<f32> = u_xlat53;
        let x_1103 : vec2<f32> = u_xlat53;
        let x_1105 : vec4<f32> = u_xlat6;
        let x_1107 : vec2<f32> = ((-(x_1101) * x_1103) + vec2<f32>(x_1105.y, x_1105.w));
        let x_1108 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1107.x, x_1108.y, x_1107.y);
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1113 : vec2<f32> = (vec2<f32>(x_1110.x, x_1110.y) + vec2<f32>(2.0f, 2.0f));
        let x_1114 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1116 : vec3<f32> = u_xlat29;
        let x_1118 : vec2<f32> = (vec2<f32>(x_1116.x, x_1116.z) + vec2<f32>(2.0f, 2.0f));
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1119.x, x_1118.x, x_1119.z, x_1118.y);
        let x_1122 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1122 * 0.08163200318813323975f);
        let x_1126 : vec4<f32> = u_xlat6;
        let x_1129 : vec3<f32> = (vec3<f32>(x_1126.z, x_1126.x, x_1126.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1135 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1136 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1139 : f32 = u_xlat10.y;
        u_xlat9.x = x_1139;
        let x_1141 : vec2<f32> = u_xlat51;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1149.x, x_1148.x, x_1149.z, x_1148.y);
        let x_1151 : vec2<f32> = u_xlat51;
        let x_1155 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1156 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1156.w);
        let x_1159 : f32 = u_xlat6.x;
        u_xlat7.y = x_1159;
        let x_1162 : f32 = u_xlat8.y;
        u_xlat7.w = x_1162;
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1164 + x_1165);
        let x_1167 : vec2<f32> = u_xlat51;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1167.y, x_1167.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1171 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1171.x, x_1170.x, x_1171.z, x_1170.y);
        let x_1173 : vec2<f32> = u_xlat51;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1173.y, x_1173.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1177.w);
        let x_1180 : f32 = u_xlat6.y;
        u_xlat8.y = x_1180;
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1182 + x_1183);
        let x_1185 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1185 / x_1186);
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1188 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1194 : vec4<f32> = u_xlat8;
        let x_1195 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1194 / x_1195);
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1197 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1202 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1199.w, x_1199.x, x_1199.y, x_1199.z) * vec4<f32>(x_1202.x, x_1202.x, x_1202.x, x_1202.x));
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1208 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1205.x, x_1205.w, x_1205.y, x_1205.z) * vec4<f32>(x_1208.y, x_1208.y, x_1208.y, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1212 : vec3<f32> = vec3<f32>(x_1211.y, x_1211.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1212.z);
        let x_1216 : f32 = u_xlat8.x;
        u_xlat10.y = x_1216;
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat5;
        let x_1230 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1230.x, x_1230.y)) + vec2<f32>(x_1233.w, x_1233.y));
        let x_1237 : f32 = u_xlat10.y;
        u_xlat7.y = x_1237;
        let x_1240 : f32 = u_xlat8.z;
        u_xlat10.y = x_1240;
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1248.y));
        let x_1251 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1259 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.w, x_1257.y));
        let x_1260 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1263 : f32 = u_xlat10.y;
        u_xlat7.z = x_1263;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.z));
        let x_1276 : f32 = u_xlat8.w;
        u_xlat10.y = x_1276;
        let x_1279 : vec4<f32> = u_xlat5;
        let x_1282 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1289 : vec4<f32> = u_xlat5;
        let x_1292 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat10.y;
        u_xlat7.w = x_1299;
        let x_1302 : vec4<f32> = u_xlat5;
        let x_1305 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.x, x_1308.w));
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1312 : vec3<f32> = vec3<f32>(x_1311.x, x_1311.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1312.x, x_1313.y, x_1312.y, x_1312.z);
        let x_1315 : vec4<f32> = u_xlat5;
        let x_1318 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1321.y));
        let x_1325 : vec4<f32> = u_xlat5;
        let x_1328 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.w, x_1331.y));
        let x_1335 : f32 = u_xlat7.x;
        u_xlat8.x = x_1335;
        let x_1337 : vec4<f32> = u_xlat5;
        let x_1340 : vec4<f32> = x_228.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.x, x_1343.y));
        let x_1346 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1349 : vec4<f32> = u_xlat6;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1349.x, x_1349.x, x_1349.x, x_1349.x) * x_1351);
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1354.y, x_1354.y, x_1354.y, x_1354.y) * x_1356);
        let x_1359 : vec4<f32> = u_xlat6;
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1359.z, x_1359.z, x_1359.z, x_1359.z) * x_1361);
        let x_1363 : vec4<f32> = u_xlat6;
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1363.w, x_1363.w, x_1363.w, x_1363.w) * x_1365);
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec13;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat72 = x_1380;
        let x_1382 : vec4<f32> = u_xlat11;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec14;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat73 = x_1394;
        let x_1395 : f32 = u_xlat73;
        let x_1397 : f32 = u_xlat16.y;
        u_xlat73 = (x_1395 * x_1397);
        let x_1400 : f32 = u_xlat16.x;
        let x_1401 : f32 = u_xlat72;
        let x_1403 : f32 = u_xlat73;
        u_xlat72 = ((x_1400 * x_1401) + x_1403);
        let x_1406 : vec2<f32> = u_xlat51;
        let x_1408 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec15;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat73 = x_1417;
        let x_1419 : f32 = u_xlat16.z;
        let x_1420 : f32 = u_xlat73;
        let x_1422 : f32 = u_xlat72;
        u_xlat72 = ((x_1419 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat14;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec16;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
        u_xlat73 = x_1437;
        let x_1439 : f32 = u_xlat16.w;
        let x_1440 : f32 = u_xlat73;
        let x_1442 : f32 = u_xlat72;
        u_xlat72 = ((x_1439 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat12;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec17;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat73 = x_1457;
        let x_1459 : f32 = u_xlat17.x;
        let x_1460 : f32 = u_xlat73;
        let x_1462 : f32 = u_xlat72;
        u_xlat72 = ((x_1459 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat12;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.z, x_1465.w);
        let x_1468 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec18;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat73 = x_1477;
        let x_1479 : f32 = u_xlat17.y;
        let x_1480 : f32 = u_xlat73;
        let x_1482 : f32 = u_xlat72;
        u_xlat72 = ((x_1479 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat13;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec19;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat73 = x_1497;
        let x_1499 : f32 = u_xlat17.z;
        let x_1500 : f32 = u_xlat73;
        let x_1502 : f32 = u_xlat72;
        u_xlat72 = ((x_1499 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat14;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.z, x_1505.w);
        let x_1508 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec20;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat73 = x_1517;
        let x_1519 : f32 = u_xlat17.w;
        let x_1520 : f32 = u_xlat73;
        let x_1522 : f32 = u_xlat72;
        u_xlat72 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat15;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec21;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat73 = x_1537;
        let x_1539 : f32 = u_xlat18.x;
        let x_1540 : f32 = u_xlat73;
        let x_1542 : f32 = u_xlat72;
        u_xlat72 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat15;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec22;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat73 = x_1557;
        let x_1559 : f32 = u_xlat18.y;
        let x_1560 : f32 = u_xlat73;
        let x_1562 : f32 = u_xlat72;
        u_xlat72 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec2<f32> = u_xlat30;
        let x_1567 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec23;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat73 = x_1576;
        let x_1578 : f32 = u_xlat18.z;
        let x_1579 : f32 = u_xlat73;
        let x_1581 : f32 = u_xlat72;
        u_xlat72 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec2<f32> = u_xlat59;
        let x_1586 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec24;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1593.xy, x_1593.z);
        u_xlat73 = x_1595;
        let x_1597 : f32 = u_xlat18.w;
        let x_1598 : f32 = u_xlat73;
        let x_1600 : f32 = u_xlat72;
        u_xlat72 = ((x_1597 * x_1598) + x_1600);
        let x_1603 : vec4<f32> = u_xlat10;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec25;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat73 = x_1615;
        let x_1617 : f32 = u_xlat6.x;
        let x_1618 : f32 = u_xlat73;
        let x_1620 : f32 = u_xlat72;
        u_xlat72 = ((x_1617 * x_1618) + x_1620);
        let x_1623 : vec4<f32> = u_xlat10;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.z, x_1623.w);
        let x_1626 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec26;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
        u_xlat73 = x_1635;
        let x_1637 : f32 = u_xlat6.y;
        let x_1638 : f32 = u_xlat73;
        let x_1640 : f32 = u_xlat72;
        u_xlat72 = ((x_1637 * x_1638) + x_1640);
        let x_1643 : vec2<f32> = u_xlat54;
        let x_1645 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec27;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
        u_xlat73 = x_1654;
        let x_1656 : f32 = u_xlat6.z;
        let x_1657 : f32 = u_xlat73;
        let x_1659 : f32 = u_xlat72;
        u_xlat72 = ((x_1656 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat5;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec28;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat73 = x_1674;
        let x_1676 : f32 = u_xlat6.w;
        let x_1677 : f32 = u_xlat73;
        let x_1679 : f32 = u_xlat72;
        u_xlat71 = ((x_1676 * x_1677) + x_1679);
      }
    }
  } else {
    let x_1683 : vec4<f32> = u_xlat3;
    let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
    let x_1686 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
    let x_1693 : vec3<f32> = txVec29;
    let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
    u_xlat71 = x_1695;
  }
  let x_1697 : f32 = x_228.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1697) + 1.0f);
  let x_1701 : f32 = u_xlat71;
  let x_1703 : f32 = x_228.x_MainLightShadowParams.x;
  let x_1706 : f32 = u_xlat3.x;
  u_xlat71 = ((x_1701 * x_1703) + x_1706);
  let x_1709 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1709);
  let x_1716 : f32 = u_xlat3.z;
  u_xlatb26.x = (x_1716 >= 1.0f);
  let x_1720 : bool = u_xlatb26.x;
  let x_1722 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1720 | x_1722);
  let x_1726 : bool = u_xlatb3.x;
  let x_1727 : f32 = u_xlat71;
  u_xlat71 = select(x_1727, 1.0f, x_1726);
  let x_1729 : vec3<f32> = vs_TEXCOORD1;
  let x_1731 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1733 : vec3<f32> = (x_1729 + -(x_1731));
  let x_1734 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : vec4<f32> = u_xlat3;
  let x_1738 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1736.x, x_1736.y, x_1736.z), vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1744 : f32 = u_xlat3.x;
  let x_1746 : f32 = x_228.x_MainLightShadowParams.z;
  let x_1749 : f32 = x_228.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1744 * x_1746) + x_1749);
  let x_1753 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1753, 0.0f, 1.0f);
  let x_1757 : f32 = u_xlat71;
  u_xlat49 = (-(x_1757) + 1.0f);
  let x_1761 : f32 = u_xlat26.x;
  let x_1762 : f32 = u_xlat49;
  let x_1764 : f32 = u_xlat71;
  u_xlat71 = ((x_1761 * x_1762) + x_1764);
  let x_1773 : f32 = x_1771.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1773 == -1.0f));
  let x_1777 : bool = u_xlatb26.x;
  if (x_1777) {
    let x_1780 : vec3<f32> = vs_TEXCOORD1;
    let x_1783 : vec4<f32> = x_1771.x_MainLightWorldToLight[1i];
    let x_1785 : vec2<f32> = (vec2<f32>(x_1780.y, x_1780.y) * vec2<f32>(x_1783.x, x_1783.y));
    let x_1786 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1785.x, x_1785.y, x_1786.z);
    let x_1789 : vec4<f32> = x_1771.x_MainLightWorldToLight[0i];
    let x_1791 : vec3<f32> = vs_TEXCOORD1;
    let x_1794 : vec3<f32> = u_xlat26;
    let x_1796 : vec2<f32> = ((vec2<f32>(x_1789.x, x_1789.y) * vec2<f32>(x_1791.x, x_1791.x)) + vec2<f32>(x_1794.x, x_1794.y));
    let x_1797 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1796.x, x_1796.y, x_1797.z);
    let x_1800 : vec4<f32> = x_1771.x_MainLightWorldToLight[2i];
    let x_1802 : vec3<f32> = vs_TEXCOORD1;
    let x_1805 : vec3<f32> = u_xlat26;
    let x_1807 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.z, x_1802.z)) + vec2<f32>(x_1805.x, x_1805.y));
    let x_1808 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1807.x, x_1807.y, x_1808.z);
    let x_1810 : vec3<f32> = u_xlat26;
    let x_1813 : vec4<f32> = x_1771.x_MainLightWorldToLight[3i];
    let x_1815 : vec2<f32> = (vec2<f32>(x_1810.x, x_1810.y) + vec2<f32>(x_1813.x, x_1813.y));
    let x_1816 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1815.x, x_1815.y, x_1816.z);
    let x_1818 : vec3<f32> = u_xlat26;
    let x_1821 : vec2<f32> = ((vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1822 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1821.x, x_1821.y, x_1822.z);
    let x_1829 : vec3<f32> = u_xlat26;
    let x_1832 : f32 = x_45.x_GlobalMipBias.x;
    let x_1833 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1829.x, x_1829.y), x_1832);
    u_xlat5 = x_1833;
    let x_1835 : f32 = x_1771.x_MainLightCookieTextureFormat;
    let x_1837 : f32 = x_1771.x_MainLightCookieTextureFormat;
    let x_1839 : f32 = x_1771.x_MainLightCookieTextureFormat;
    let x_1841 : f32 = x_1771.x_MainLightCookieTextureFormat;
    let x_1842 : vec4<f32> = vec4<f32>(x_1835, x_1837, x_1839, x_1841);
    let x_1849 : vec4<bool> = (vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1842.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1849.x, x_1849.y);
    let x_1852 : bool = u_xlatb26.y;
    if (x_1852) {
      let x_1857 : f32 = u_xlat5.w;
      x_1853 = x_1857;
    } else {
      let x_1860 : f32 = u_xlat5.x;
      x_1853 = x_1860;
    }
    let x_1861 : f32 = x_1853;
    u_xlat49 = x_1861;
    let x_1863 : bool = u_xlatb26.x;
    if (x_1863) {
      let x_1867 : vec4<f32> = u_xlat5;
      x_1864 = vec3<f32>(x_1867.x, x_1867.y, x_1867.z);
    } else {
      let x_1870 : f32 = u_xlat49;
      x_1864 = vec3<f32>(x_1870, x_1870, x_1870);
    }
    let x_1872 : vec3<f32> = x_1864;
    u_xlat26 = x_1872;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_1877 : vec3<f32> = u_xlat26;
  let x_1879 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat26 = (x_1877 * vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : f32 = u_xlat71;
  let x_1884 : f32 = x_95.unity_LightData.z;
  u_xlat71 = (x_1882 * x_1884);
  let x_1886 : f32 = u_xlat71;
  let x_1888 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_1886, x_1886, x_1886) * x_1888);
  let x_1890 : vec3<f32> = u_xlat1;
  let x_1892 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat71 = dot(x_1890, vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
  let x_1895 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1895, 0.0f, 1.0f);
  let x_1897 : f32 = u_xlat71;
  let x_1899 : vec3<f32> = u_xlat26;
  let x_1900 : vec3<f32> = (vec3<f32>(x_1897, x_1897, x_1897) * x_1899);
  let x_1901 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
  let x_1904 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1904 * 10.0f) + 1.0f);
  let x_1908 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1908);
  let x_1910 : vec3<f32> = u_xlat2;
  let x_1911 : f32 = u_xlat70;
  let x_1915 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1917 : vec3<f32> = ((x_1910 * vec3<f32>(x_1911, x_1911, x_1911)) + vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
  let x_1918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : vec4<f32> = u_xlat6;
  let x_1922 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : f32 = u_xlat73;
  u_xlat73 = max(x_1925, 1.17549435e-38f);
  let x_1928 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1928);
  let x_1930 : f32 = u_xlat73;
  let x_1932 : vec4<f32> = u_xlat6;
  let x_1934 : vec3<f32> = (vec3<f32>(x_1930, x_1930, x_1930) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec3<f32> = u_xlat1;
  let x_1938 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(x_1937, vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1941, 0.0f, 1.0f);
  let x_1943 : f32 = u_xlat73;
  u_xlat73 = log2(x_1943);
  let x_1945 : f32 = u_xlat71;
  let x_1946 : f32 = u_xlat73;
  u_xlat73 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1948);
  let x_1950 : f32 = u_xlat73;
  let x_1953 : vec4<f32> = x_57.x_SpecColor;
  let x_1955 : vec3<f32> = (vec3<f32>(x_1950, x_1950, x_1950) * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  let x_1958 : vec3<f32> = u_xlat26;
  let x_1959 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : vec4<f32> = u_xlat5;
  let x_1964 : vec4<f32> = u_xlat0;
  let x_1967 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1964.y, x_1964.z, x_1964.w)) + x_1967);
  let x_1970 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1972 : f32 = x_95.unity_LightData.y;
  u_xlat73 = min(x_1970, x_1972);
  let x_1975 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1975));
  let x_1979 : f32 = u_xlat3.x;
  let x_1982 : f32 = x_228.x_AdditionalShadowFadeParams.x;
  let x_1985 : f32 = x_228.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1979 * x_1982) + x_1985);
  let x_1989 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1989, 0.0f, 1.0f);
  let x_1994 : f32 = x_1771.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1996 : f32 = x_1771.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1998 : f32 = x_1771.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2000 : f32 = x_1771.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2001 : vec4<f32> = vec4<f32>(x_1994, x_1996, x_1998, x_2000);
  let x_2007 : vec4<bool> = (vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2001.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2007.x, x_2007.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2019 : u32 = u_xlatu_loop_1;
    let x_2020 : u32 = u_xlatu73;
    if ((x_2019 < x_2020)) {
    } else {
      break;
    }
    let x_2023 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_2023 >> 2u);
    let x_2026 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_2026 & 3u));
    let x_2030 : u32 = u_xlatu74;
    let x_2033 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2030)];
    let x_2043 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2048 : vec4<u32> = indexable[x_2043];
    u_xlat74 = dot(x_2033, bitcast<vec4<f32>>(x_2048));
    let x_2052 : f32 = u_xlat74;
    u_xlati74 = i32(x_2052);
    let x_2054 : vec3<f32> = vs_TEXCOORD1;
    let x_2065 : i32 = u_xlati74;
    let x_2067 : vec4<f32> = x_2064.x_AdditionalLightsPosition[x_2065];
    let x_2070 : i32 = u_xlati74;
    let x_2072 : vec4<f32> = x_2064.x_AdditionalLightsPosition[x_2070];
    let x_2074 : vec3<f32> = ((-(x_2054) * vec3<f32>(x_2067.w, x_2067.w, x_2067.w)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
    let x_2078 : vec4<f32> = u_xlat7;
    let x_2080 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2078.x, x_2078.y, x_2078.z), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : f32 = u_xlat75;
    u_xlat75 = max(x_2083, 0.00006103515625f);
    let x_2086 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_2086);
    let x_2088 : f32 = u_xlat76;
    let x_2090 : vec4<f32> = u_xlat7;
    let x_2092 : vec3<f32> = (vec3<f32>(x_2088, x_2088, x_2088) * vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
    let x_2093 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
    let x_2095 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_2095);
    let x_2097 : f32 = u_xlat75;
    let x_2098 : i32 = u_xlati74;
    let x_2100 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2098].x;
    u_xlat75 = (x_2097 * x_2100);
    let x_2102 : f32 = u_xlat75;
    let x_2104 : f32 = u_xlat75;
    u_xlat75 = ((-(x_2102) * x_2104) + 1.0f);
    let x_2107 : f32 = u_xlat75;
    u_xlat75 = max(x_2107, 0.0f);
    let x_2109 : f32 = u_xlat75;
    let x_2110 : f32 = u_xlat75;
    u_xlat75 = (x_2109 * x_2110);
    let x_2112 : f32 = u_xlat75;
    let x_2113 : f32 = u_xlat76;
    u_xlat75 = (x_2112 * x_2113);
    let x_2115 : i32 = u_xlati74;
    let x_2117 : vec4<f32> = x_2064.x_AdditionalLightsSpotDir[x_2115];
    let x_2119 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
    let x_2122 : f32 = u_xlat76;
    let x_2123 : i32 = u_xlati74;
    let x_2125 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2123].z;
    let x_2127 : i32 = u_xlati74;
    let x_2129 : f32 = x_2064.x_AdditionalLightsAttenuation[x_2127].w;
    u_xlat76 = ((x_2122 * x_2125) + x_2129);
    let x_2131 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2131, 0.0f, 1.0f);
    let x_2133 : f32 = u_xlat76;
    let x_2134 : f32 = u_xlat76;
    u_xlat76 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat75;
    let x_2137 : f32 = u_xlat76;
    u_xlat75 = (x_2136 * x_2137);
    let x_2141 : i32 = u_xlati74;
    let x_2143 : f32 = x_228.x_AdditionalShadowParams[x_2141].w;
    u_xlati76 = i32(x_2143);
    let x_2148 : i32 = u_xlati76;
    u_xlatb8.x = (x_2148 >= 0i);
    let x_2152 : bool = u_xlatb8.x;
    if (x_2152) {
      let x_2156 : i32 = u_xlati74;
      let x_2158 : f32 = x_228.x_AdditionalShadowParams[x_2156].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2158, x_2158, x_2158, x_2158))));
      let x_2164 : bool = u_xlatb8.x;
      if (x_2164) {
        let x_2167 : vec4<f32> = u_xlat7;
        let x_2170 : vec4<f32> = u_xlat7;
        let x_2173 : vec4<bool> = (abs(vec4<f32>(x_2167.z, x_2167.z, x_2167.y, x_2167.z)) >= abs(vec4<f32>(x_2170.x, x_2170.y, x_2170.x, x_2170.x)));
        u_xlatb8 = vec3<bool>(x_2173.x, x_2173.y, x_2173.z);
        let x_2176 : bool = u_xlatb8.y;
        let x_2178 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2176 & x_2178);
        let x_2182 : vec4<f32> = u_xlat7;
        let x_2185 : vec4<bool> = (-(vec4<f32>(x_2182.z, x_2182.y, x_2182.x, x_2182.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2185.x, x_2185.y, x_2185.z);
        let x_2189 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2189);
        let x_2194 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2194);
        let x_2198 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2198);
        let x_2202 : bool = u_xlatb8.z;
        if (x_2202) {
          let x_2207 : f32 = u_xlat31.z;
          x_2203 = x_2207;
        } else {
          let x_2210 : f32 = u_xlat9.x;
          x_2203 = x_2210;
        }
        let x_2211 : f32 = x_2203;
        u_xlat54.x = x_2211;
        let x_2214 : bool = u_xlatb8.x;
        if (x_2214) {
          let x_2219 : f32 = u_xlat31.x;
          x_2215 = x_2219;
        } else {
          let x_2222 : f32 = u_xlat54.x;
          x_2215 = x_2222;
        }
        let x_2223 : f32 = x_2215;
        u_xlat8.x = x_2223;
        let x_2225 : i32 = u_xlati74;
        let x_2227 : f32 = x_228.x_AdditionalShadowParams[x_2225].w;
        u_xlat31.x = trunc(x_2227);
        let x_2231 : f32 = u_xlat8.x;
        let x_2233 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2231 + x_2233);
        let x_2237 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2237);
      }
      let x_2239 : i32 = u_xlati76;
      u_xlati76 = (x_2239 << bitcast<u32>(2i));
      let x_2241 : vec3<f32> = vs_TEXCOORD1;
      let x_2244 : i32 = u_xlati76;
      let x_2247 : i32 = u_xlati76;
      let x_2251 : vec4<f32> = x_228.x_AdditionalLightsWorldToShadow[((x_2244 + 1i) / 4i)][((x_2247 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2241.y, x_2241.y, x_2241.y, x_2241.y) * x_2251);
      let x_2253 : i32 = u_xlati76;
      let x_2255 : i32 = u_xlati76;
      let x_2258 : vec4<f32> = x_228.x_AdditionalLightsWorldToShadow[(x_2253 / 4i)][(x_2255 % 4i)];
      let x_2259 : vec3<f32> = vs_TEXCOORD1;
      let x_2262 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2258 * vec4<f32>(x_2259.x, x_2259.x, x_2259.x, x_2259.x)) + x_2262);
      let x_2264 : i32 = u_xlati76;
      let x_2267 : i32 = u_xlati76;
      let x_2271 : vec4<f32> = x_228.x_AdditionalLightsWorldToShadow[((x_2264 + 2i) / 4i)][((x_2267 + 2i) % 4i)];
      let x_2272 : vec3<f32> = vs_TEXCOORD1;
      let x_2275 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2271 * vec4<f32>(x_2272.z, x_2272.z, x_2272.z, x_2272.z)) + x_2275);
      let x_2277 : vec4<f32> = u_xlat8;
      let x_2278 : i32 = u_xlati76;
      let x_2281 : i32 = u_xlati76;
      let x_2285 : vec4<f32> = x_228.x_AdditionalLightsWorldToShadow[((x_2278 + 3i) / 4i)][((x_2281 + 3i) % 4i)];
      u_xlat8 = (x_2277 + x_2285);
      let x_2287 : vec4<f32> = u_xlat8;
      let x_2289 : vec4<f32> = u_xlat8;
      let x_2291 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.y, x_2287.z) / vec3<f32>(x_2289.w, x_2289.w, x_2289.w));
      let x_2292 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
      let x_2295 : i32 = u_xlati74;
      let x_2297 : f32 = x_228.x_AdditionalShadowParams[x_2295].y;
      u_xlatb76 = (0.0f < x_2297);
      let x_2299 : bool = u_xlatb76;
      if (x_2299) {
        let x_2302 : i32 = u_xlati74;
        let x_2304 : f32 = x_228.x_AdditionalShadowParams[x_2302].y;
        u_xlatb76 = (1.0f == x_2304);
        let x_2306 : bool = u_xlatb76;
        if (x_2306) {
          let x_2309 : vec4<f32> = u_xlat8;
          let x_2313 : vec4<f32> = x_228.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y) + x_2313);
          let x_2316 : vec4<f32> = u_xlat9;
          let x_2317 : vec2<f32> = vec2<f32>(x_2316.x, x_2316.y);
          let x_2319 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
          let x_2327 : vec3<f32> = txVec30;
          let x_2329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
          u_xlat10.x = x_2329;
          let x_2332 : vec4<f32> = u_xlat9;
          let x_2333 : vec2<f32> = vec2<f32>(x_2332.z, x_2332.w);
          let x_2335 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2333.x, x_2333.y, x_2335);
          let x_2342 : vec3<f32> = txVec31;
          let x_2344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
          u_xlat10.y = x_2344;
          let x_2346 : vec4<f32> = u_xlat8;
          let x_2350 : vec4<f32> = x_228.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.y) + x_2350);
          let x_2353 : vec4<f32> = u_xlat9;
          let x_2354 : vec2<f32> = vec2<f32>(x_2353.x, x_2353.y);
          let x_2356 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2354.x, x_2354.y, x_2356);
          let x_2363 : vec3<f32> = txVec32;
          let x_2365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
          u_xlat10.z = x_2365;
          let x_2368 : vec4<f32> = u_xlat9;
          let x_2369 : vec2<f32> = vec2<f32>(x_2368.z, x_2368.w);
          let x_2371 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
          let x_2378 : vec3<f32> = txVec33;
          let x_2380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2378.xy, x_2378.z);
          u_xlat10.w = x_2380;
          let x_2382 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2382, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2386 : i32 = u_xlati74;
          let x_2388 : f32 = x_228.x_AdditionalShadowParams[x_2386].y;
          u_xlatb77 = (2.0f == x_2388);
          let x_2390 : bool = u_xlatb77;
          if (x_2390) {
            let x_2393 : vec4<f32> = u_xlat8;
            let x_2397 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2400 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(x_2397.z, x_2397.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2401 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat9;
            let x_2405 : vec2<f32> = floor(vec2<f32>(x_2403.x, x_2403.y));
            let x_2406 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2405.x, x_2405.y, x_2406.z, x_2406.w);
            let x_2409 : vec4<f32> = u_xlat8;
            let x_2412 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2415 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(x_2412.z, x_2412.w)) + -(vec2<f32>(x_2415.x, x_2415.y)));
            let x_2419 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2419.x, x_2419.x, x_2419.y, x_2419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2422 : vec4<f32> = u_xlat10;
            let x_2424 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2422.x, x_2422.x, x_2422.z, x_2422.z) * vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z));
            let x_2427 : vec4<f32> = u_xlat11;
            let x_2429 : vec2<f32> = (vec2<f32>(x_2427.y, x_2427.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2430 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2429.x, x_2430.y, x_2429.y, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2435 : vec2<f32> = u_xlat55;
            let x_2437 : vec2<f32> = ((vec2<f32>(x_2432.x, x_2432.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2435));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2441 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2441) + vec2<f32>(1.0f, 1.0f));
            let x_2444 : vec2<f32> = u_xlat55;
            let x_2445 : vec2<f32> = min(x_2444, vec2<f32>(0.0f, 0.0f));
            let x_2446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat12;
            let x_2451 : vec4<f32> = u_xlat12;
            let x_2454 : vec2<f32> = u_xlat57;
            let x_2455 : vec2<f32> = ((-(vec2<f32>(x_2448.x, x_2448.y)) * vec2<f32>(x_2451.x, x_2451.y)) + x_2454);
            let x_2456 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2455.x, x_2455.y, x_2456.z, x_2456.w);
            let x_2458 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2458, vec2<f32>(0.0f, 0.0f));
            let x_2460 : vec2<f32> = u_xlat55;
            let x_2462 : vec2<f32> = u_xlat55;
            let x_2464 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2460) * x_2462) + vec2<f32>(x_2464.y, x_2464.w));
            let x_2467 : vec4<f32> = u_xlat12;
            let x_2469 : vec2<f32> = (vec2<f32>(x_2467.x, x_2467.y) + vec2<f32>(1.0f, 1.0f));
            let x_2470 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2472 + vec2<f32>(1.0f, 1.0f));
            let x_2474 : vec4<f32> = u_xlat11;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.x, x_2474.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec2<f32> = u_xlat57;
            let x_2480 : vec2<f32> = (x_2479 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2481 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat12;
            let x_2485 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2486 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec2<f32> = u_xlat55;
            let x_2489 : vec2<f32> = (x_2488 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2492.y, x_2492.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2496 : f32 = u_xlat12.x;
            u_xlat13.z = x_2496;
            let x_2499 : f32 = u_xlat55.x;
            u_xlat13.w = x_2499;
            let x_2502 : f32 = u_xlat14.x;
            u_xlat11.z = x_2502;
            let x_2505 : f32 = u_xlat10.x;
            u_xlat11.w = x_2505;
            let x_2507 : vec4<f32> = u_xlat11;
            let x_2509 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2507.z, x_2507.w, x_2507.x, x_2507.z) + vec4<f32>(x_2509.z, x_2509.w, x_2509.x, x_2509.z));
            let x_2513 : f32 = u_xlat13.y;
            u_xlat12.z = x_2513;
            let x_2516 : f32 = u_xlat55.y;
            u_xlat12.w = x_2516;
            let x_2519 : f32 = u_xlat11.y;
            u_xlat14.z = x_2519;
            let x_2522 : f32 = u_xlat10.z;
            u_xlat14.w = x_2522;
            let x_2524 : vec4<f32> = u_xlat12;
            let x_2526 : vec4<f32> = u_xlat14;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2524.z, x_2524.y, x_2524.w) + vec3<f32>(x_2526.z, x_2526.y, x_2526.w));
            let x_2529 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat11;
            let x_2533 : vec4<f32> = u_xlat15;
            let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.z, x_2531.w) / vec3<f32>(x_2533.z, x_2533.w, x_2533.y));
            let x_2536 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat11;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2541 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat14;
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2547 : vec3<f32> = (vec3<f32>(x_2543.z, x_2543.y, x_2543.w) / vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
            let x_2548 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2553 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat11;
            let x_2558 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2555.y, x_2555.x, x_2555.z) * vec3<f32>(x_2558.x, x_2558.x, x_2558.x));
            let x_2561 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat12;
            let x_2566 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2568 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2566.y, x_2566.y, x_2566.y));
            let x_2569 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
            let x_2572 : f32 = u_xlat12.x;
            u_xlat11.w = x_2572;
            let x_2574 : vec4<f32> = u_xlat9;
            let x_2577 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2580 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2574.x, x_2574.y, x_2574.x, x_2574.y) * vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y)) + vec4<f32>(x_2580.y, x_2580.w, x_2580.x, x_2580.w));
            let x_2583 : vec4<f32> = u_xlat9;
            let x_2586 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2589 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(x_2586.x, x_2586.y)) + vec2<f32>(x_2589.z, x_2589.w));
            let x_2593 : f32 = u_xlat11.y;
            u_xlat12.w = x_2593;
            let x_2595 : vec4<f32> = u_xlat12;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.y, x_2595.z);
            let x_2597 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2597.x, x_2596.x, x_2597.z, x_2596.y);
            let x_2599 : vec4<f32> = u_xlat9;
            let x_2602 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y) * vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y)) + vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat9;
            let x_2611 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2614 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.w, x_2614.y, x_2614.w, x_2614.z));
            let x_2617 : vec4<f32> = u_xlat9;
            let x_2620 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.w, x_2623.z, x_2623.w));
            let x_2626 : vec4<f32> = u_xlat10;
            let x_2628 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2626.x, x_2626.x, x_2626.x, x_2626.y) * vec4<f32>(x_2628.z, x_2628.w, x_2628.y, x_2628.z));
            let x_2631 : vec4<f32> = u_xlat10;
            let x_2633 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2631.y, x_2631.y, x_2631.z, x_2631.z) * x_2633);
            let x_2637 : f32 = u_xlat10.z;
            let x_2639 : f32 = u_xlat15.y;
            u_xlat77 = (x_2637 * x_2639);
            let x_2642 : vec4<f32> = u_xlat13;
            let x_2643 : vec2<f32> = vec2<f32>(x_2642.x, x_2642.y);
            let x_2645 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
            let x_2652 : vec3<f32> = txVec34;
            let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
            u_xlat9.x = x_2654;
            let x_2657 : vec4<f32> = u_xlat13;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.z, x_2657.w);
            let x_2660 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2668 : vec3<f32> = txVec35;
            let x_2670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2668.xy, x_2668.z);
            u_xlat32 = x_2670;
            let x_2671 : f32 = u_xlat32;
            let x_2673 : f32 = u_xlat16.y;
            u_xlat32 = (x_2671 * x_2673);
            let x_2676 : f32 = u_xlat16.x;
            let x_2678 : f32 = u_xlat9.x;
            let x_2680 : f32 = u_xlat32;
            u_xlat9.x = ((x_2676 * x_2678) + x_2680);
            let x_2684 : vec2<f32> = u_xlat55;
            let x_2686 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2684.x, x_2684.y, x_2686);
            let x_2693 : vec3<f32> = txVec36;
            let x_2695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2693.xy, x_2693.z);
            u_xlat32 = x_2695;
            let x_2697 : f32 = u_xlat16.z;
            let x_2698 : f32 = u_xlat32;
            let x_2701 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2697 * x_2698) + x_2701);
            let x_2705 : vec4<f32> = u_xlat12;
            let x_2706 : vec2<f32> = vec2<f32>(x_2705.x, x_2705.y);
            let x_2708 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2706.x, x_2706.y, x_2708);
            let x_2715 : vec3<f32> = txVec37;
            let x_2717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
            u_xlat32 = x_2717;
            let x_2719 : f32 = u_xlat16.w;
            let x_2720 : f32 = u_xlat32;
            let x_2723 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2719 * x_2720) + x_2723);
            let x_2727 : vec4<f32> = u_xlat14;
            let x_2728 : vec2<f32> = vec2<f32>(x_2727.x, x_2727.y);
            let x_2730 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
            let x_2737 : vec3<f32> = txVec38;
            let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
            u_xlat32 = x_2739;
            let x_2741 : f32 = u_xlat17.x;
            let x_2742 : f32 = u_xlat32;
            let x_2745 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2741 * x_2742) + x_2745);
            let x_2749 : vec4<f32> = u_xlat14;
            let x_2750 : vec2<f32> = vec2<f32>(x_2749.z, x_2749.w);
            let x_2752 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2759 : vec3<f32> = txVec39;
            let x_2761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
            u_xlat32 = x_2761;
            let x_2763 : f32 = u_xlat17.y;
            let x_2764 : f32 = u_xlat32;
            let x_2767 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2763 * x_2764) + x_2767);
            let x_2771 : vec4<f32> = u_xlat12;
            let x_2772 : vec2<f32> = vec2<f32>(x_2771.z, x_2771.w);
            let x_2774 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2772.x, x_2772.y, x_2774);
            let x_2781 : vec3<f32> = txVec40;
            let x_2783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
            u_xlat32 = x_2783;
            let x_2785 : f32 = u_xlat17.z;
            let x_2786 : f32 = u_xlat32;
            let x_2789 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2785 * x_2786) + x_2789);
            let x_2793 : vec4<f32> = u_xlat11;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
            let x_2796 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec41;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat32 = x_2805;
            let x_2807 : f32 = u_xlat17.w;
            let x_2808 : f32 = u_xlat32;
            let x_2811 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2807 * x_2808) + x_2811);
            let x_2815 : vec4<f32> = u_xlat11;
            let x_2816 : vec2<f32> = vec2<f32>(x_2815.z, x_2815.w);
            let x_2818 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2816.x, x_2816.y, x_2818);
            let x_2825 : vec3<f32> = txVec42;
            let x_2827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2825.xy, x_2825.z);
            u_xlat32 = x_2827;
            let x_2828 : f32 = u_xlat77;
            let x_2829 : f32 = u_xlat32;
            let x_2832 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2828 * x_2829) + x_2832);
          } else {
            let x_2835 : vec4<f32> = u_xlat8;
            let x_2838 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2841 : vec2<f32> = ((vec2<f32>(x_2835.x, x_2835.y) * vec2<f32>(x_2838.z, x_2838.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2842 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
            let x_2844 : vec4<f32> = u_xlat9;
            let x_2846 : vec2<f32> = floor(vec2<f32>(x_2844.x, x_2844.y));
            let x_2847 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
            let x_2849 : vec4<f32> = u_xlat8;
            let x_2852 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_2855 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2849.x, x_2849.y) * vec2<f32>(x_2852.z, x_2852.w)) + -(vec2<f32>(x_2855.x, x_2855.y)));
            let x_2859 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2859.x, x_2859.x, x_2859.y, x_2859.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2862 : vec4<f32> = u_xlat10;
            let x_2864 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2862.x, x_2862.x, x_2862.z, x_2862.z) * vec4<f32>(x_2864.x, x_2864.x, x_2864.z, x_2864.z));
            let x_2867 : vec4<f32> = u_xlat11;
            let x_2869 : vec2<f32> = (vec2<f32>(x_2867.y, x_2867.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2870 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2870.x, x_2869.x, x_2870.z, x_2869.y);
            let x_2872 : vec4<f32> = u_xlat11;
            let x_2875 : vec2<f32> = u_xlat55;
            let x_2877 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2875));
            let x_2878 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2877.x, x_2878.y, x_2877.y, x_2878.w);
            let x_2880 : vec2<f32> = u_xlat55;
            let x_2882 : vec2<f32> = (-(x_2880) + vec2<f32>(1.0f, 1.0f));
            let x_2883 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2882.x, x_2882.y, x_2883.z, x_2883.w);
            let x_2885 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2885, vec2<f32>(0.0f, 0.0f));
            let x_2887 : vec2<f32> = u_xlat57;
            let x_2889 : vec2<f32> = u_xlat57;
            let x_2891 : vec4<f32> = u_xlat11;
            let x_2893 : vec2<f32> = ((-(x_2887) * x_2889) + vec2<f32>(x_2891.x, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2896, vec2<f32>(0.0f, 0.0f));
            let x_2899 : vec2<f32> = u_xlat57;
            let x_2901 : vec2<f32> = u_xlat57;
            let x_2903 : vec4<f32> = u_xlat10;
            let x_2905 : vec2<f32> = ((-(x_2899) * x_2901) + vec2<f32>(x_2903.y, x_2903.w));
            let x_2906 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2905.x, x_2906.y, x_2905.y);
            let x_2908 : vec4<f32> = u_xlat11;
            let x_2910 : vec2<f32> = (vec2<f32>(x_2908.x, x_2908.y) + vec2<f32>(2.0f, 2.0f));
            let x_2911 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2910.x, x_2910.y, x_2911.z, x_2911.w);
            let x_2913 : vec3<f32> = u_xlat33;
            let x_2915 : vec2<f32> = (vec2<f32>(x_2913.x, x_2913.z) + vec2<f32>(2.0f, 2.0f));
            let x_2916 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2916.x, x_2915.x, x_2916.z, x_2915.y);
            let x_2919 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2919 * 0.08163200318813323975f);
            let x_2922 : vec4<f32> = u_xlat10;
            let x_2924 : vec3<f32> = (vec3<f32>(x_2922.z, x_2922.x, x_2922.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2925 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2925.w);
            let x_2927 : vec4<f32> = u_xlat11;
            let x_2929 : vec2<f32> = (vec2<f32>(x_2927.x, x_2927.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2930 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
            let x_2933 : f32 = u_xlat14.y;
            u_xlat13.x = x_2933;
            let x_2935 : vec2<f32> = u_xlat55;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2935.x, x_2935.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2939 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2939.x, x_2938.x, x_2939.z, x_2938.y);
            let x_2941 : vec2<f32> = u_xlat55;
            let x_2944 : vec2<f32> = ((vec2<f32>(x_2941.x, x_2941.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2945 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2944.x, x_2945.y, x_2944.y, x_2945.w);
            let x_2948 : f32 = u_xlat10.x;
            u_xlat11.y = x_2948;
            let x_2951 : f32 = u_xlat12.y;
            u_xlat11.w = x_2951;
            let x_2953 : vec4<f32> = u_xlat11;
            let x_2954 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2953 + x_2954);
            let x_2956 : vec2<f32> = u_xlat55;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2956.y, x_2956.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2960.x, x_2959.x, x_2960.z, x_2959.y);
            let x_2962 : vec2<f32> = u_xlat55;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2962.y, x_2962.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2965.x, x_2966.y, x_2965.y, x_2966.w);
            let x_2969 : f32 = u_xlat10.y;
            u_xlat12.y = x_2969;
            let x_2971 : vec4<f32> = u_xlat12;
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2971 + x_2972);
            let x_2974 : vec4<f32> = u_xlat11;
            let x_2975 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2974 / x_2975);
            let x_2977 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2977 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2979 : vec4<f32> = u_xlat12;
            let x_2980 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2979 / x_2980);
            let x_2982 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2982 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2984 : vec4<f32> = u_xlat11;
            let x_2987 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2984.w, x_2984.x, x_2984.y, x_2984.z) * vec4<f32>(x_2987.x, x_2987.x, x_2987.x, x_2987.x));
            let x_2990 : vec4<f32> = u_xlat12;
            let x_2993 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2990.x, x_2990.w, x_2990.y, x_2990.z) * vec4<f32>(x_2993.y, x_2993.y, x_2993.y, x_2993.y));
            let x_2996 : vec4<f32> = u_xlat11;
            let x_2997 : vec3<f32> = vec3<f32>(x_2996.y, x_2996.z, x_2996.w);
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2997.x, x_2998.y, x_2997.y, x_2997.z);
            let x_3001 : f32 = u_xlat12.x;
            u_xlat14.y = x_3001;
            let x_3003 : vec4<f32> = u_xlat9;
            let x_3006 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y) * vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y)) + vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3009.y));
            let x_3012 : vec4<f32> = u_xlat9;
            let x_3015 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3018 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_3012.x, x_3012.y) * vec2<f32>(x_3015.x, x_3015.y)) + vec2<f32>(x_3018.w, x_3018.y));
            let x_3022 : f32 = u_xlat14.y;
            u_xlat11.y = x_3022;
            let x_3025 : f32 = u_xlat12.z;
            u_xlat14.y = x_3025;
            let x_3027 : vec4<f32> = u_xlat9;
            let x_3030 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y) * vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y)) + vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3033.y));
            let x_3036 : vec4<f32> = u_xlat9;
            let x_3039 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat14;
            let x_3044 : vec2<f32> = ((vec2<f32>(x_3036.x, x_3036.y) * vec2<f32>(x_3039.x, x_3039.y)) + vec2<f32>(x_3042.w, x_3042.y));
            let x_3045 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3048 : f32 = u_xlat14.y;
            u_xlat11.z = x_3048;
            let x_3050 : vec4<f32> = u_xlat9;
            let x_3053 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y) * vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y)) + vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.z));
            let x_3060 : f32 = u_xlat12.w;
            u_xlat14.y = x_3060;
            let x_3063 : vec4<f32> = u_xlat9;
            let x_3066 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3069 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y) * vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y)) + vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3069.y));
            let x_3073 : vec4<f32> = u_xlat9;
            let x_3076 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.w, x_3079.y));
            let x_3083 : f32 = u_xlat14.y;
            u_xlat11.w = x_3083;
            let x_3086 : vec4<f32> = u_xlat9;
            let x_3089 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3086.x, x_3086.y) * vec2<f32>(x_3089.x, x_3089.y)) + vec2<f32>(x_3092.x, x_3092.w));
            let x_3095 : vec4<f32> = u_xlat14;
            let x_3096 : vec3<f32> = vec3<f32>(x_3095.x, x_3095.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3096.x, x_3097.y, x_3096.y, x_3096.z);
            let x_3099 : vec4<f32> = u_xlat9;
            let x_3102 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3105 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y) * vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y)) + vec4<f32>(x_3105.x, x_3105.y, x_3105.z, x_3105.y));
            let x_3109 : vec4<f32> = u_xlat9;
            let x_3112 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3109.x, x_3109.y) * vec2<f32>(x_3112.x, x_3112.y)) + vec2<f32>(x_3115.w, x_3115.y));
            let x_3119 : f32 = u_xlat11.x;
            u_xlat12.x = x_3119;
            let x_3121 : vec4<f32> = u_xlat9;
            let x_3124 : vec4<f32> = x_228.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat12;
            let x_3129 : vec2<f32> = ((vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(x_3124.x, x_3124.y)) + vec2<f32>(x_3127.x, x_3127.y));
            let x_3130 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3129.x, x_3129.y, x_3130.z, x_3130.w);
            let x_3133 : vec4<f32> = u_xlat10;
            let x_3135 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3133.x, x_3133.x, x_3133.x, x_3133.x) * x_3135);
            let x_3138 : vec4<f32> = u_xlat10;
            let x_3140 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3138.y, x_3138.y, x_3138.y, x_3138.y) * x_3140);
            let x_3143 : vec4<f32> = u_xlat10;
            let x_3145 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3143.z, x_3143.z, x_3143.z, x_3143.z) * x_3145);
            let x_3147 : vec4<f32> = u_xlat10;
            let x_3149 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3147.w, x_3147.w, x_3147.w, x_3147.w) * x_3149);
            let x_3152 : vec4<f32> = u_xlat15;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
            let x_3155 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec43;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat77 = x_3164;
            let x_3166 : vec4<f32> = u_xlat15;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.z, x_3166.w);
            let x_3169 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec44;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat11.x = x_3178;
            let x_3181 : f32 = u_xlat11.x;
            let x_3183 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3181 * x_3183);
            let x_3187 : f32 = u_xlat20.x;
            let x_3188 : f32 = u_xlat77;
            let x_3191 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3187 * x_3188) + x_3191);
            let x_3194 : vec2<f32> = u_xlat55;
            let x_3196 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec45;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat55.x = x_3205;
            let x_3208 : f32 = u_xlat20.z;
            let x_3210 : f32 = u_xlat55.x;
            let x_3212 : f32 = u_xlat77;
            u_xlat77 = ((x_3208 * x_3210) + x_3212);
            let x_3215 : vec4<f32> = u_xlat18;
            let x_3216 : vec2<f32> = vec2<f32>(x_3215.x, x_3215.y);
            let x_3218 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3216.x, x_3216.y, x_3218);
            let x_3225 : vec3<f32> = txVec46;
            let x_3227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3225.xy, x_3225.z);
            u_xlat55.x = x_3227;
            let x_3230 : f32 = u_xlat20.w;
            let x_3232 : f32 = u_xlat55.x;
            let x_3234 : f32 = u_xlat77;
            u_xlat77 = ((x_3230 * x_3232) + x_3234);
            let x_3237 : vec4<f32> = u_xlat16;
            let x_3238 : vec2<f32> = vec2<f32>(x_3237.x, x_3237.y);
            let x_3240 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3247 : vec3<f32> = txVec47;
            let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
            u_xlat55.x = x_3249;
            let x_3252 : f32 = u_xlat21.x;
            let x_3254 : f32 = u_xlat55.x;
            let x_3256 : f32 = u_xlat77;
            u_xlat77 = ((x_3252 * x_3254) + x_3256);
            let x_3259 : vec4<f32> = u_xlat16;
            let x_3260 : vec2<f32> = vec2<f32>(x_3259.z, x_3259.w);
            let x_3262 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec48;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat55.x = x_3271;
            let x_3274 : f32 = u_xlat21.y;
            let x_3276 : f32 = u_xlat55.x;
            let x_3278 : f32 = u_xlat77;
            u_xlat77 = ((x_3274 * x_3276) + x_3278);
            let x_3281 : vec4<f32> = u_xlat17;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.x, x_3281.y);
            let x_3284 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec49;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat55.x = x_3293;
            let x_3296 : f32 = u_xlat21.z;
            let x_3298 : f32 = u_xlat55.x;
            let x_3300 : f32 = u_xlat77;
            u_xlat77 = ((x_3296 * x_3298) + x_3300);
            let x_3303 : vec4<f32> = u_xlat18;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.z, x_3303.w);
            let x_3306 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec50;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat55.x = x_3315;
            let x_3318 : f32 = u_xlat21.w;
            let x_3320 : f32 = u_xlat55.x;
            let x_3322 : f32 = u_xlat77;
            u_xlat77 = ((x_3318 * x_3320) + x_3322);
            let x_3325 : vec4<f32> = u_xlat19;
            let x_3326 : vec2<f32> = vec2<f32>(x_3325.x, x_3325.y);
            let x_3328 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3326.x, x_3326.y, x_3328);
            let x_3335 : vec3<f32> = txVec51;
            let x_3337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3335.xy, x_3335.z);
            u_xlat55.x = x_3337;
            let x_3340 : f32 = u_xlat22.x;
            let x_3342 : f32 = u_xlat55.x;
            let x_3344 : f32 = u_xlat77;
            u_xlat77 = ((x_3340 * x_3342) + x_3344);
            let x_3347 : vec4<f32> = u_xlat19;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.z, x_3347.w);
            let x_3350 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec52;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat55.x = x_3359;
            let x_3362 : f32 = u_xlat22.y;
            let x_3364 : f32 = u_xlat55.x;
            let x_3366 : f32 = u_xlat77;
            u_xlat77 = ((x_3362 * x_3364) + x_3366);
            let x_3369 : vec2<f32> = u_xlat34;
            let x_3371 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3369.x, x_3369.y, x_3371);
            let x_3378 : vec3<f32> = txVec53;
            let x_3380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3378.xy, x_3378.z);
            u_xlat55.x = x_3380;
            let x_3383 : f32 = u_xlat22.z;
            let x_3385 : f32 = u_xlat55.x;
            let x_3387 : f32 = u_xlat77;
            u_xlat77 = ((x_3383 * x_3385) + x_3387);
            let x_3390 : vec2<f32> = u_xlat63;
            let x_3392 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec54;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat55.x = x_3401;
            let x_3404 : f32 = u_xlat22.w;
            let x_3406 : f32 = u_xlat55.x;
            let x_3408 : f32 = u_xlat77;
            u_xlat77 = ((x_3404 * x_3406) + x_3408);
            let x_3411 : vec4<f32> = u_xlat14;
            let x_3412 : vec2<f32> = vec2<f32>(x_3411.x, x_3411.y);
            let x_3414 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec55;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat55.x = x_3423;
            let x_3426 : f32 = u_xlat10.x;
            let x_3428 : f32 = u_xlat55.x;
            let x_3430 : f32 = u_xlat77;
            u_xlat77 = ((x_3426 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat14;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.z, x_3433.w);
            let x_3436 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec56;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat55.x = x_3445;
            let x_3448 : f32 = u_xlat10.y;
            let x_3450 : f32 = u_xlat55.x;
            let x_3452 : f32 = u_xlat77;
            u_xlat77 = ((x_3448 * x_3450) + x_3452);
            let x_3455 : vec2<f32> = u_xlat58;
            let x_3457 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec57;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat55.x = x_3466;
            let x_3469 : f32 = u_xlat10.z;
            let x_3471 : f32 = u_xlat55.x;
            let x_3473 : f32 = u_xlat77;
            u_xlat77 = ((x_3469 * x_3471) + x_3473);
            let x_3476 : vec4<f32> = u_xlat9;
            let x_3477 : vec2<f32> = vec2<f32>(x_3476.x, x_3476.y);
            let x_3479 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3477.x, x_3477.y, x_3479);
            let x_3486 : vec3<f32> = txVec58;
            let x_3488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3486.xy, x_3486.z);
            u_xlat9.x = x_3488;
            let x_3491 : f32 = u_xlat10.w;
            let x_3493 : f32 = u_xlat9.x;
            let x_3495 : f32 = u_xlat77;
            u_xlat76 = ((x_3491 * x_3493) + x_3495);
          }
        }
      } else {
        let x_3499 : vec4<f32> = u_xlat8;
        let x_3500 : vec2<f32> = vec2<f32>(x_3499.x, x_3499.y);
        let x_3502 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3500.x, x_3500.y, x_3502);
        let x_3509 : vec3<f32> = txVec59;
        let x_3511 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3509.xy, x_3509.z);
        u_xlat76 = x_3511;
      }
      let x_3512 : i32 = u_xlati74;
      let x_3514 : f32 = x_228.x_AdditionalShadowParams[x_3512].x;
      u_xlat8.x = (1.0f + -(x_3514));
      let x_3518 : f32 = u_xlat76;
      let x_3519 : i32 = u_xlati74;
      let x_3521 : f32 = x_228.x_AdditionalShadowParams[x_3519].x;
      let x_3524 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3518 * x_3521) + x_3524);
      let x_3527 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3527);
      let x_3532 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3532 >= 1.0f);
      let x_3534 : bool = u_xlatb31;
      let x_3536 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3534 | x_3536);
      let x_3540 : bool = u_xlatb8.x;
      let x_3541 : f32 = u_xlat76;
      u_xlat76 = select(x_3541, 1.0f, x_3540);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3544 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3544) + 1.0f);
    let x_3549 : f32 = u_xlat3.x;
    let x_3551 : f32 = u_xlat8.x;
    let x_3553 : f32 = u_xlat76;
    u_xlat76 = ((x_3549 * x_3551) + x_3553);
    let x_3556 : i32 = u_xlati74;
    u_xlati8 = (1i << bitcast<u32>((x_3556 & 31i)));
    let x_3560 : i32 = u_xlati8;
    let x_3563 : f32 = x_1771.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_3560) & bitcast<u32>(x_3563)));
    let x_3567 : i32 = u_xlati8;
    if ((x_3567 != 0i)) {
      let x_3571 : i32 = u_xlati74;
      let x_3573 : f32 = x_1771.x_AdditionalLightsLightTypes[x_3571].el;
      u_xlati8 = i32(x_3573);
      let x_3576 : i32 = u_xlati8;
      u_xlati31 = select(1i, 0i, (x_3576 != 0i));
      let x_3580 : i32 = u_xlati74;
      u_xlati54 = (x_3580 << bitcast<u32>(2i));
      let x_3582 : i32 = u_xlati31;
      if ((x_3582 != 0i)) {
        let x_3586 : vec3<f32> = vs_TEXCOORD1;
        let x_3588 : i32 = u_xlati54;
        let x_3591 : i32 = u_xlati54;
        let x_3595 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3588 + 1i) / 4i)][((x_3591 + 1i) % 4i)];
        let x_3597 : vec3<f32> = (vec3<f32>(x_3586.y, x_3586.y, x_3586.y) * vec3<f32>(x_3595.x, x_3595.y, x_3595.w));
        let x_3598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
        let x_3600 : i32 = u_xlati54;
        let x_3602 : i32 = u_xlati54;
        let x_3605 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[(x_3600 / 4i)][(x_3602 % 4i)];
        let x_3607 : vec3<f32> = vs_TEXCOORD1;
        let x_3610 : vec4<f32> = u_xlat9;
        let x_3612 : vec3<f32> = ((vec3<f32>(x_3605.x, x_3605.y, x_3605.w) * vec3<f32>(x_3607.x, x_3607.x, x_3607.x)) + vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
        let x_3613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
        let x_3615 : i32 = u_xlati54;
        let x_3618 : i32 = u_xlati54;
        let x_3622 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3615 + 2i) / 4i)][((x_3618 + 2i) % 4i)];
        let x_3624 : vec3<f32> = vs_TEXCOORD1;
        let x_3627 : vec4<f32> = u_xlat9;
        let x_3629 : vec3<f32> = ((vec3<f32>(x_3622.x, x_3622.y, x_3622.w) * vec3<f32>(x_3624.z, x_3624.z, x_3624.z)) + vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
        let x_3630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
        let x_3632 : vec4<f32> = u_xlat9;
        let x_3634 : i32 = u_xlati54;
        let x_3637 : i32 = u_xlati54;
        let x_3641 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3634 + 3i) / 4i)][((x_3637 + 3i) % 4i)];
        let x_3643 : vec3<f32> = (vec3<f32>(x_3632.x, x_3632.y, x_3632.z) + vec3<f32>(x_3641.x, x_3641.y, x_3641.w));
        let x_3644 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3643.x, x_3643.y, x_3643.z, x_3644.w);
        let x_3646 : vec4<f32> = u_xlat9;
        let x_3648 : vec4<f32> = u_xlat9;
        let x_3650 : vec2<f32> = (vec2<f32>(x_3646.x, x_3646.y) / vec2<f32>(x_3648.z, x_3648.z));
        let x_3651 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3650.x, x_3651.y, x_3650.y);
        let x_3653 : vec3<f32> = u_xlat31;
        let x_3656 : vec2<f32> = ((vec2<f32>(x_3653.x, x_3653.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3657 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3656.x, x_3657.y, x_3656.y);
        let x_3659 : vec3<f32> = u_xlat31;
        let x_3663 : vec2<f32> = clamp(vec2<f32>(x_3659.x, x_3659.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3664 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3663.x, x_3664.y, x_3663.y);
        let x_3666 : i32 = u_xlati74;
        let x_3668 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3666];
        let x_3670 : vec3<f32> = u_xlat31;
        let x_3673 : i32 = u_xlati74;
        let x_3675 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3673];
        let x_3677 : vec2<f32> = ((vec2<f32>(x_3668.x, x_3668.y) * vec2<f32>(x_3670.x, x_3670.z)) + vec2<f32>(x_3675.z, x_3675.w));
        let x_3678 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3677.x, x_3678.y, x_3677.y);
      } else {
        let x_3681 : i32 = u_xlati8;
        u_xlatb8.x = (x_3681 == 1i);
        let x_3685 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_3685);
        let x_3687 : i32 = u_xlati8;
        if ((x_3687 != 0i)) {
          let x_3691 : vec3<f32> = vs_TEXCOORD1;
          let x_3693 : i32 = u_xlati54;
          let x_3696 : i32 = u_xlati54;
          let x_3700 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3693 + 1i) / 4i)][((x_3696 + 1i) % 4i)];
          let x_3702 : vec2<f32> = (vec2<f32>(x_3691.y, x_3691.y) * vec2<f32>(x_3700.x, x_3700.y));
          let x_3703 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3702.x, x_3702.y, x_3703.z, x_3703.w);
          let x_3705 : i32 = u_xlati54;
          let x_3707 : i32 = u_xlati54;
          let x_3710 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[(x_3705 / 4i)][(x_3707 % 4i)];
          let x_3712 : vec3<f32> = vs_TEXCOORD1;
          let x_3715 : vec4<f32> = u_xlat9;
          let x_3717 : vec2<f32> = ((vec2<f32>(x_3710.x, x_3710.y) * vec2<f32>(x_3712.x, x_3712.x)) + vec2<f32>(x_3715.x, x_3715.y));
          let x_3718 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3717.x, x_3717.y, x_3718.z, x_3718.w);
          let x_3720 : i32 = u_xlati54;
          let x_3723 : i32 = u_xlati54;
          let x_3727 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3720 + 2i) / 4i)][((x_3723 + 2i) % 4i)];
          let x_3729 : vec3<f32> = vs_TEXCOORD1;
          let x_3732 : vec4<f32> = u_xlat9;
          let x_3734 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.y) * vec2<f32>(x_3729.z, x_3729.z)) + vec2<f32>(x_3732.x, x_3732.y));
          let x_3735 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
          let x_3737 : vec4<f32> = u_xlat9;
          let x_3739 : i32 = u_xlati54;
          let x_3742 : i32 = u_xlati54;
          let x_3746 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3739 + 3i) / 4i)][((x_3742 + 3i) % 4i)];
          let x_3748 : vec2<f32> = (vec2<f32>(x_3737.x, x_3737.y) + vec2<f32>(x_3746.x, x_3746.y));
          let x_3749 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3748.x, x_3748.y, x_3749.z, x_3749.w);
          let x_3751 : vec4<f32> = u_xlat9;
          let x_3754 : vec2<f32> = ((vec2<f32>(x_3751.x, x_3751.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3755 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3754.x, x_3754.y, x_3755.z, x_3755.w);
          let x_3757 : vec4<f32> = u_xlat9;
          let x_3759 : vec2<f32> = fract(vec2<f32>(x_3757.x, x_3757.y));
          let x_3760 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3759.x, x_3759.y, x_3760.z, x_3760.w);
          let x_3762 : i32 = u_xlati74;
          let x_3764 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3762];
          let x_3766 : vec4<f32> = u_xlat9;
          let x_3769 : i32 = u_xlati74;
          let x_3771 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3769];
          let x_3773 : vec2<f32> = ((vec2<f32>(x_3764.x, x_3764.y) * vec2<f32>(x_3766.x, x_3766.y)) + vec2<f32>(x_3771.z, x_3771.w));
          let x_3774 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3773.x, x_3774.y, x_3773.y);
        } else {
          let x_3777 : vec3<f32> = vs_TEXCOORD1;
          let x_3779 : i32 = u_xlati54;
          let x_3782 : i32 = u_xlati54;
          let x_3786 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3779 + 1i) / 4i)][((x_3782 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3777.y, x_3777.y, x_3777.y, x_3777.y) * x_3786);
          let x_3788 : i32 = u_xlati54;
          let x_3790 : i32 = u_xlati54;
          let x_3793 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[(x_3788 / 4i)][(x_3790 % 4i)];
          let x_3794 : vec3<f32> = vs_TEXCOORD1;
          let x_3797 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3793 * vec4<f32>(x_3794.x, x_3794.x, x_3794.x, x_3794.x)) + x_3797);
          let x_3799 : i32 = u_xlati54;
          let x_3802 : i32 = u_xlati54;
          let x_3806 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3799 + 2i) / 4i)][((x_3802 + 2i) % 4i)];
          let x_3807 : vec3<f32> = vs_TEXCOORD1;
          let x_3810 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3806 * vec4<f32>(x_3807.z, x_3807.z, x_3807.z, x_3807.z)) + x_3810);
          let x_3812 : vec4<f32> = u_xlat9;
          let x_3813 : i32 = u_xlati54;
          let x_3816 : i32 = u_xlati54;
          let x_3820 : vec4<f32> = x_1771.x_AdditionalLightsWorldToLights[((x_3813 + 3i) / 4i)][((x_3816 + 3i) % 4i)];
          u_xlat9 = (x_3812 + x_3820);
          let x_3822 : vec4<f32> = u_xlat9;
          let x_3824 : vec4<f32> = u_xlat9;
          let x_3826 : vec3<f32> = (vec3<f32>(x_3822.x, x_3822.y, x_3822.z) / vec3<f32>(x_3824.w, x_3824.w, x_3824.w));
          let x_3827 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3827.w);
          let x_3829 : vec4<f32> = u_xlat9;
          let x_3831 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_3829.x, x_3829.y, x_3829.z), vec3<f32>(x_3831.x, x_3831.y, x_3831.z));
          let x_3836 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_3836);
          let x_3839 : vec4<f32> = u_xlat8;
          let x_3841 : vec4<f32> = u_xlat9;
          let x_3843 : vec3<f32> = (vec3<f32>(x_3839.x, x_3839.x, x_3839.x) * vec3<f32>(x_3841.x, x_3841.y, x_3841.z));
          let x_3844 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3843.x, x_3843.y, x_3843.z, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_3846.x, x_3846.y, x_3846.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3853 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_3853, 0.00000099999999747524f);
          let x_3858 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_3858);
          let x_3861 : vec4<f32> = u_xlat8;
          let x_3863 : vec4<f32> = u_xlat9;
          let x_3865 : vec3<f32> = (vec3<f32>(x_3861.x, x_3861.x, x_3861.x) * vec3<f32>(x_3863.z, x_3863.x, x_3863.y));
          let x_3866 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3865.x, x_3865.y, x_3865.z, x_3866.w);
          let x_3869 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3869);
          let x_3873 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3873, 0.0f, 1.0f);
          let x_3877 : vec4<f32> = u_xlat10;
          let x_3879 : vec4<bool> = (vec4<f32>(x_3877.y, x_3877.z, x_3877.y, x_3877.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3879.x, x_3879.y);
          let x_3882 : bool = u_xlatb55.x;
          if (x_3882) {
            let x_3887 : f32 = u_xlat10.x;
            x_3883 = x_3887;
          } else {
            let x_3890 : f32 = u_xlat10.x;
            x_3883 = -(x_3890);
          }
          let x_3892 : f32 = x_3883;
          u_xlat55.x = x_3892;
          let x_3895 : bool = u_xlatb55.y;
          if (x_3895) {
            let x_3900 : f32 = u_xlat10.x;
            x_3896 = x_3900;
          } else {
            let x_3903 : f32 = u_xlat10.x;
            x_3896 = -(x_3903);
          }
          let x_3905 : f32 = x_3896;
          u_xlat55.y = x_3905;
          let x_3907 : vec4<f32> = u_xlat9;
          let x_3909 : vec4<f32> = u_xlat8;
          let x_3912 : vec2<f32> = u_xlat55;
          let x_3913 : vec2<f32> = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(x_3909.x, x_3909.x)) + x_3912);
          let x_3914 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3913.x, x_3914.y, x_3913.y, x_3914.w);
          let x_3916 : vec4<f32> = u_xlat8;
          let x_3919 : vec2<f32> = ((vec2<f32>(x_3916.x, x_3916.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3920 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3919.x, x_3920.y, x_3919.y, x_3920.w);
          let x_3922 : vec4<f32> = u_xlat8;
          let x_3926 : vec2<f32> = clamp(vec2<f32>(x_3922.x, x_3922.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3927 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3926.x, x_3927.y, x_3926.y, x_3927.w);
          let x_3929 : i32 = u_xlati74;
          let x_3931 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3929];
          let x_3933 : vec4<f32> = u_xlat8;
          let x_3936 : i32 = u_xlati74;
          let x_3938 : vec4<f32> = x_1771.x_AdditionalLightsCookieAtlasUVRects[x_3936];
          let x_3940 : vec2<f32> = ((vec2<f32>(x_3931.x, x_3931.y) * vec2<f32>(x_3933.x, x_3933.z)) + vec2<f32>(x_3938.z, x_3938.w));
          let x_3941 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3940.x, x_3941.y, x_3940.y);
        }
      }
      let x_3948 : vec3<f32> = u_xlat31;
      let x_3950 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3948.x, x_3948.z), 0.0f);
      u_xlat8 = x_3950;
      let x_3952 : bool = u_xlatb5.y;
      if (x_3952) {
        let x_3957 : f32 = u_xlat8.w;
        x_3953 = x_3957;
      } else {
        let x_3960 : f32 = u_xlat8.x;
        x_3953 = x_3960;
      }
      let x_3961 : f32 = x_3953;
      u_xlat77 = x_3961;
      let x_3963 : bool = u_xlatb5.x;
      if (x_3963) {
        let x_3967 : vec4<f32> = u_xlat8;
        x_3964 = vec3<f32>(x_3967.x, x_3967.y, x_3967.z);
      } else {
        let x_3970 : f32 = u_xlat77;
        x_3964 = vec3<f32>(x_3970, x_3970, x_3970);
      }
      let x_3972 : vec3<f32> = x_3964;
      let x_3973 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3979 : vec4<f32> = u_xlat8;
    let x_3981 : i32 = u_xlati74;
    let x_3983 : vec4<f32> = x_2064.x_AdditionalLightsColor[x_3981];
    let x_3985 : vec3<f32> = (vec3<f32>(x_3979.x, x_3979.y, x_3979.z) * vec3<f32>(x_3983.x, x_3983.y, x_3983.z));
    let x_3986 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3985.x, x_3985.y, x_3985.z, x_3986.w);
    let x_3988 : f32 = u_xlat75;
    let x_3989 : f32 = u_xlat76;
    u_xlat74 = (x_3988 * x_3989);
    let x_3991 : f32 = u_xlat74;
    let x_3993 : vec4<f32> = u_xlat8;
    let x_3995 : vec3<f32> = (vec3<f32>(x_3991, x_3991, x_3991) * vec3<f32>(x_3993.x, x_3993.y, x_3993.z));
    let x_3996 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3995.x, x_3995.y, x_3995.z, x_3996.w);
    let x_3998 : vec3<f32> = u_xlat1;
    let x_3999 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_3998, vec3<f32>(x_3999.x, x_3999.y, x_3999.z));
    let x_4002 : f32 = u_xlat74;
    u_xlat74 = clamp(x_4002, 0.0f, 1.0f);
    let x_4004 : f32 = u_xlat74;
    let x_4006 : vec4<f32> = u_xlat8;
    let x_4008 : vec3<f32> = (vec3<f32>(x_4004, x_4004, x_4004) * vec3<f32>(x_4006.x, x_4006.y, x_4006.z));
    let x_4009 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4008.x, x_4008.y, x_4008.z, x_4009.w);
    let x_4011 : vec3<f32> = u_xlat2;
    let x_4012 : f32 = u_xlat70;
    let x_4015 : vec4<f32> = u_xlat7;
    let x_4017 : vec3<f32> = ((x_4011 * vec3<f32>(x_4012, x_4012, x_4012)) + vec3<f32>(x_4015.x, x_4015.y, x_4015.z));
    let x_4018 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4017.x, x_4017.y, x_4017.z, x_4018.w);
    let x_4020 : vec4<f32> = u_xlat7;
    let x_4022 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_4020.x, x_4020.y, x_4020.z), vec3<f32>(x_4022.x, x_4022.y, x_4022.z));
    let x_4025 : f32 = u_xlat74;
    u_xlat74 = max(x_4025, 1.17549435e-38f);
    let x_4027 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_4027);
    let x_4029 : f32 = u_xlat74;
    let x_4031 : vec4<f32> = u_xlat7;
    let x_4033 : vec3<f32> = (vec3<f32>(x_4029, x_4029, x_4029) * vec3<f32>(x_4031.x, x_4031.y, x_4031.z));
    let x_4034 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4033.x, x_4033.y, x_4033.z, x_4034.w);
    let x_4036 : vec3<f32> = u_xlat1;
    let x_4037 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(x_4036, vec3<f32>(x_4037.x, x_4037.y, x_4037.z));
    let x_4040 : f32 = u_xlat74;
    u_xlat74 = clamp(x_4040, 0.0f, 1.0f);
    let x_4042 : f32 = u_xlat74;
    u_xlat74 = log2(x_4042);
    let x_4044 : f32 = u_xlat71;
    let x_4045 : f32 = u_xlat74;
    u_xlat74 = (x_4044 * x_4045);
    let x_4047 : f32 = u_xlat74;
    u_xlat74 = exp2(x_4047);
    let x_4049 : f32 = u_xlat74;
    let x_4052 : vec4<f32> = x_57.x_SpecColor;
    let x_4054 : vec3<f32> = (vec3<f32>(x_4049, x_4049, x_4049) * vec3<f32>(x_4052.x, x_4052.y, x_4052.z));
    let x_4055 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4054.x, x_4054.y, x_4054.z, x_4055.w);
    let x_4057 : vec4<f32> = u_xlat7;
    let x_4059 : vec4<f32> = u_xlat8;
    let x_4061 : vec3<f32> = (vec3<f32>(x_4057.x, x_4057.y, x_4057.z) * vec3<f32>(x_4059.x, x_4059.y, x_4059.z));
    let x_4062 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4061.x, x_4061.y, x_4061.z, x_4062.w);
    let x_4064 : vec4<f32> = u_xlat9;
    let x_4066 : vec4<f32> = u_xlat0;
    let x_4069 : vec4<f32> = u_xlat7;
    let x_4071 : vec3<f32> = ((vec3<f32>(x_4064.x, x_4064.y, x_4064.z) * vec3<f32>(x_4066.y, x_4066.z, x_4066.w)) + vec3<f32>(x_4069.x, x_4069.y, x_4069.z));
    let x_4072 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4071.x, x_4071.y, x_4071.z, x_4072.w);
    let x_4074 : vec4<f32> = u_xlat6;
    let x_4076 : vec4<f32> = u_xlat7;
    let x_4078 : vec3<f32> = (vec3<f32>(x_4074.x, x_4074.y, x_4074.z) + vec3<f32>(x_4076.x, x_4076.y, x_4076.z));
    let x_4079 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4078.x, x_4078.y, x_4078.z, x_4079.w);

    continuing {
      let x_4081 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4081 + bitcast<u32>(1i));
    }
  }
  let x_4084 : vec4<f32> = u_xlat4;
  let x_4086 : vec4<f32> = u_xlat0;
  let x_4089 : vec3<f32> = u_xlat26;
  u_xlat23 = ((vec3<f32>(x_4084.x, x_4084.y, x_4084.z) * vec3<f32>(x_4086.y, x_4086.z, x_4086.w)) + x_4089);
  let x_4093 : vec4<f32> = u_xlat6;
  let x_4095 : vec3<f32> = u_xlat23;
  let x_4096 : vec3<f32> = (vec3<f32>(x_4093.x, x_4093.y, x_4093.z) + x_4095);
  let x_4097 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4096.x, x_4096.y, x_4096.z, x_4097.w);
  let x_4101 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_4101 == 1.0f);
  let x_4103 : bool = u_xlatb23;
  if (x_4103) {
    let x_4108 : f32 = u_xlat0.x;
    x_4104 = x_4108;
  } else {
    x_4104 = 1.0f;
  }
  let x_4110 : f32 = x_4104;
  SV_Target0.w = x_4110;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


