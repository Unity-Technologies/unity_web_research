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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlatb70 : bool;

@group(1) @binding(4) var<uniform> x_307 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1628 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlatu73 : u32;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_1940 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlatb76 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatu51 : u32;

var<private> u_xlatb74 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
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
  var x_1715 : f32;
  var x_1726 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2082 : f32;
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
  var x_3759 : f32;
  var x_3772 : f32;
  var x_3829 : f32;
  var x_3840 : vec3<f32>;
  var x_3982 : f32;
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
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb24 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb24;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_136 == 0.0f);
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
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec3<f32> = u_xlat2;
  let x_214 : vec3<f32> = u_xlat2;
  u_xlat71 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat71;
  u_xlat71 = max(x_216, 0.00006103515625f);
  let x_219 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_219);
  u_xlat1.w = 1.0f;
  let x_225 : vec4<f32> = x_94.unity_SHAr;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_225, x_226);
  let x_231 : vec4<f32> = x_94.unity_SHAg;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_231, x_232);
  let x_237 : vec4<f32> = x_94.unity_SHAb;
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_237, x_238);
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_242.y, x_242.z, x_242.z, x_242.x) * vec4<f32>(x_244.x, x_244.y, x_244.z, x_244.z));
  let x_250 : vec4<f32> = x_94.unity_SHBr;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_250, x_251);
  let x_256 : vec4<f32> = x_94.unity_SHBg;
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_256, x_257);
  let x_262 : vec4<f32> = x_94.unity_SHBb;
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_262, x_263);
  let x_268 : f32 = u_xlat1.y;
  let x_270 : f32 = u_xlat1.y;
  u_xlat70 = (x_268 * x_270);
  let x_273 : f32 = u_xlat1.x;
  let x_275 : f32 = u_xlat1.x;
  let x_277 : f32 = u_xlat70;
  u_xlat70 = ((x_273 * x_275) + -(x_277));
  let x_282 : vec4<f32> = x_94.unity_SHC;
  let x_284 : f32 = u_xlat70;
  let x_287 : vec4<f32> = u_xlat5;
  let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284, x_284, x_284)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat3;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_292 + vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_296, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_310 : f32 = x_307.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_310);
  let x_312 : bool = u_xlatb70;
  if (x_312) {
    let x_316 : f32 = x_307.x_MainLightShadowParams.y;
    u_xlatb70 = (x_316 == 1.0f);
    let x_318 : bool = u_xlatb70;
    if (x_318) {
      let x_322 : vec4<f32> = vs_TEXCOORD6;
      let x_325 : vec4<f32> = x_307.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y) + x_325);
      let x_329 : vec4<f32> = u_xlat4;
      let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
      let x_332 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_330.x, x_330.y, x_332);
      let x_344 : vec3<f32> = txVec0;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.x = x_346;
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec1;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_359.xy, x_359.z);
      u_xlat5.y = x_361;
      let x_363 : vec4<f32> = vs_TEXCOORD6;
      let x_366 : vec4<f32> = x_307.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec2;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.z = x_381;
      let x_384 : vec4<f32> = u_xlat4;
      let x_385 : vec2<f32> = vec2<f32>(x_384.z, x_384.w);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec3;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_394.xy, x_394.z);
      u_xlat5.w = x_396;
      let x_398 : vec4<f32> = u_xlat5;
      u_xlat70 = dot(x_398, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_405 : f32 = x_307.x_MainLightShadowParams.y;
      u_xlatb72 = (x_405 == 2.0f);
      let x_408 : bool = u_xlatb72;
      if (x_408) {
        let x_411 : vec4<f32> = vs_TEXCOORD6;
        let x_415 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_420 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_415.z, x_415.w)) + vec2<f32>(0.5f, 0.5f));
        let x_421 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec4<f32> = u_xlat4;
        let x_425 : vec2<f32> = floor(vec2<f32>(x_423.x, x_423.y));
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_430 : vec4<f32> = vs_TEXCOORD6;
        let x_433 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_436 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_433.z, x_433.w)) + -(vec2<f32>(x_436.x, x_436.y)));
        let x_440 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_440.x, x_440.x, x_440.y, x_440.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_445 : vec4<f32> = u_xlat5;
        let x_447 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_445.x, x_445.x, x_445.z, x_445.z) * vec4<f32>(x_447.x, x_447.x, x_447.z, x_447.z));
        let x_450 : vec4<f32> = u_xlat6;
        let x_454 : vec2<f32> = (vec2<f32>(x_450.y, x_450.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_454.x, x_455.y, x_454.y, x_455.w);
        let x_457 : vec4<f32> = u_xlat6;
        let x_460 : vec2<f32> = u_xlat50;
        let x_462 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.z) * vec2<f32>(0.5f, 0.5f)) + -(x_460));
        let x_463 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_466 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_466) + vec2<f32>(1.0f, 1.0f));
        let x_471 : vec2<f32> = u_xlat50;
        let x_473 : vec2<f32> = min(x_471, vec2<f32>(0.0f, 0.0f));
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_476 : vec4<f32> = u_xlat7;
        let x_479 : vec4<f32> = u_xlat7;
        let x_482 : vec2<f32> = u_xlat52;
        let x_483 : vec2<f32> = ((-(vec2<f32>(x_476.x, x_476.y)) * vec2<f32>(x_479.x, x_479.y)) + x_482);
        let x_484 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_486, vec2<f32>(0.0f, 0.0f));
        let x_488 : vec2<f32> = u_xlat50;
        let x_490 : vec2<f32> = u_xlat50;
        let x_492 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_488) * x_490) + vec2<f32>(x_492.y, x_492.w));
        let x_495 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) + vec2<f32>(1.0f, 1.0f));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_500 + vec2<f32>(1.0f, 1.0f));
        let x_503 : vec4<f32> = u_xlat6;
        let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec2<f32> = u_xlat52;
        let x_511 : vec2<f32> = (x_510 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec2<f32> = u_xlat50;
        let x_521 : vec2<f32> = (x_520 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_524.y, x_524.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_528 : f32 = u_xlat7.x;
        u_xlat8.z = x_528;
        let x_531 : f32 = u_xlat50.x;
        u_xlat8.w = x_531;
        let x_534 : f32 = u_xlat9.x;
        u_xlat6.z = x_534;
        let x_537 : f32 = u_xlat5.x;
        u_xlat6.w = x_537;
        let x_540 : vec4<f32> = u_xlat6;
        let x_542 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_540.z, x_540.w, x_540.x, x_540.z) + vec4<f32>(x_542.z, x_542.w, x_542.x, x_542.z));
        let x_546 : f32 = u_xlat8.y;
        u_xlat7.z = x_546;
        let x_549 : f32 = u_xlat50.y;
        u_xlat7.w = x_549;
        let x_552 : f32 = u_xlat6.y;
        u_xlat9.z = x_552;
        let x_555 : f32 = u_xlat5.z;
        u_xlat9.w = x_555;
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec4<f32> = u_xlat9;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.z, x_557.y, x_557.w) + vec3<f32>(x_559.z, x_559.y, x_559.w));
        let x_562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat6;
        let x_566 : vec4<f32> = u_xlat10;
        let x_568 : vec3<f32> = (vec3<f32>(x_564.x, x_564.z, x_564.w) / vec3<f32>(x_566.z, x_566.w, x_566.y));
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat6;
        let x_577 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat9;
        let x_582 : vec4<f32> = u_xlat5;
        let x_584 : vec3<f32> = (vec3<f32>(x_580.z, x_580.y, x_580.w) / vec3<f32>(x_582.x, x_582.y, x_582.z));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat7;
        let x_589 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat6;
        let x_595 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_597 : vec3<f32> = (vec3<f32>(x_592.y, x_592.x, x_592.z) * vec3<f32>(x_595.x, x_595.x, x_595.x));
        let x_598 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_605 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_603.y, x_603.y, x_603.y));
        let x_606 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
        let x_609 : f32 = u_xlat7.x;
        u_xlat6.w = x_609;
        let x_611 : vec4<f32> = u_xlat4;
        let x_614 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) * vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y)) + vec4<f32>(x_617.y, x_617.w, x_617.x, x_617.w));
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_620.x, x_620.y) * vec2<f32>(x_623.x, x_623.y)) + vec2<f32>(x_626.z, x_626.w));
        let x_630 : f32 = u_xlat6.y;
        u_xlat7.w = x_630;
        let x_632 : vec4<f32> = u_xlat7;
        let x_633 : vec2<f32> = vec2<f32>(x_632.y, x_632.z);
        let x_634 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_634.x, x_633.x, x_634.z, x_633.y);
        let x_636 : vec4<f32> = u_xlat4;
        let x_639 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y) * vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y)) + vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.y));
        let x_645 : vec4<f32> = u_xlat4;
        let x_648 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_651 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y) * vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y)) + vec4<f32>(x_651.w, x_651.y, x_651.w, x_651.z));
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.w, x_660.z, x_660.w));
        let x_664 : vec4<f32> = u_xlat5;
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_664.x, x_664.x, x_664.x, x_664.y) * vec4<f32>(x_666.z, x_666.w, x_666.y, x_666.z));
        let x_670 : vec4<f32> = u_xlat5;
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_670.y, x_670.y, x_670.z, x_670.z) * x_672);
        let x_676 : f32 = u_xlat5.z;
        let x_678 : f32 = u_xlat10.y;
        u_xlat72 = (x_676 * x_678);
        let x_681 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec4;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat4.x = x_693;
        let x_696 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = vec2<f32>(x_696.z, x_696.w);
        let x_699 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_697.x, x_697.y, x_699);
        let x_707 : vec3<f32> = txVec5;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat27 = x_709;
        let x_710 : f32 = u_xlat27;
        let x_712 : f32 = u_xlat11.y;
        u_xlat27 = (x_710 * x_712);
        let x_715 : f32 = u_xlat11.x;
        let x_717 : f32 = u_xlat4.x;
        let x_719 : f32 = u_xlat27;
        u_xlat4.x = ((x_715 * x_717) + x_719);
        let x_723 : vec2<f32> = u_xlat50;
        let x_725 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec6;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat27 = x_734;
        let x_736 : f32 = u_xlat11.z;
        let x_737 : f32 = u_xlat27;
        let x_740 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_736 * x_737) + x_740);
        let x_744 : vec4<f32> = u_xlat7;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec7;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat27 = x_756;
        let x_758 : f32 = u_xlat11.w;
        let x_759 : f32 = u_xlat27;
        let x_762 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_758 * x_759) + x_762);
        let x_766 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec8;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_776.xy, x_776.z);
        u_xlat27 = x_778;
        let x_780 : f32 = u_xlat12.x;
        let x_781 : f32 = u_xlat27;
        let x_784 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_780 * x_781) + x_784);
        let x_788 : vec4<f32> = u_xlat9;
        let x_789 : vec2<f32> = vec2<f32>(x_788.z, x_788.w);
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec9;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat27 = x_800;
        let x_802 : f32 = u_xlat12.y;
        let x_803 : f32 = u_xlat27;
        let x_806 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_802 * x_803) + x_806);
        let x_810 : vec4<f32> = u_xlat7;
        let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
        let x_813 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec10;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat27 = x_822;
        let x_824 : f32 = u_xlat12.z;
        let x_825 : f32 = u_xlat27;
        let x_828 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_824 * x_825) + x_828);
        let x_832 : vec4<f32> = u_xlat6;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec11;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat27 = x_844;
        let x_846 : f32 = u_xlat12.w;
        let x_847 : f32 = u_xlat27;
        let x_850 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_846 * x_847) + x_850);
        let x_854 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = vec2<f32>(x_854.z, x_854.w);
        let x_857 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec12;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat27 = x_866;
        let x_867 : f32 = u_xlat72;
        let x_868 : f32 = u_xlat27;
        let x_871 : f32 = u_xlat4.x;
        u_xlat70 = ((x_867 * x_868) + x_871);
      } else {
        let x_874 : vec4<f32> = vs_TEXCOORD6;
        let x_877 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_880 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.y) * vec2<f32>(x_877.z, x_877.w)) + vec2<f32>(0.5f, 0.5f));
        let x_881 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec4<f32> = u_xlat4;
        let x_885 : vec2<f32> = floor(vec2<f32>(x_883.x, x_883.y));
        let x_886 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = vs_TEXCOORD6;
        let x_891 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + -(vec2<f32>(x_894.x, x_894.y)));
        let x_898 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_898.x, x_898.x, x_898.y, x_898.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_901 : vec4<f32> = u_xlat5;
        let x_903 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z) * vec4<f32>(x_903.x, x_903.x, x_903.z, x_903.z));
        let x_906 : vec4<f32> = u_xlat6;
        let x_910 : vec2<f32> = (vec2<f32>(x_906.y, x_906.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_910.x, x_911.z, x_910.y);
        let x_913 : vec4<f32> = u_xlat6;
        let x_916 : vec2<f32> = u_xlat50;
        let x_918 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.z) * vec2<f32>(0.5f, 0.5f)) + -(x_916));
        let x_919 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_918.x, x_919.y, x_918.y, x_919.w);
        let x_921 : vec2<f32> = u_xlat50;
        let x_923 : vec2<f32> = (-(x_921) + vec2<f32>(1.0f, 1.0f));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_926, vec2<f32>(0.0f, 0.0f));
        let x_928 : vec2<f32> = u_xlat52;
        let x_930 : vec2<f32> = u_xlat52;
        let x_932 : vec4<f32> = u_xlat6;
        let x_934 : vec2<f32> = ((-(x_928) * x_930) + vec2<f32>(x_932.x, x_932.y));
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_937, vec2<f32>(0.0f, 0.0f));
        let x_940 : vec2<f32> = u_xlat52;
        let x_942 : vec2<f32> = u_xlat52;
        let x_944 : vec4<f32> = u_xlat5;
        let x_946 : vec2<f32> = ((-(x_940) * x_942) + vec2<f32>(x_944.y, x_944.w));
        let x_947 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_946.x, x_947.y, x_946.y);
        let x_949 : vec4<f32> = u_xlat6;
        let x_952 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) + vec2<f32>(2.0f, 2.0f));
        let x_953 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec3<f32> = u_xlat28;
        let x_957 : vec2<f32> = (vec2<f32>(x_955.x, x_955.z) + vec2<f32>(2.0f, 2.0f));
        let x_958 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_958.x, x_957.x, x_958.z, x_957.y);
        let x_961 : f32 = u_xlat5.y;
        u_xlat8.z = (x_961 * 0.08163200318813323975f);
        let x_965 : vec4<f32> = u_xlat5;
        let x_968 : vec3<f32> = (vec3<f32>(x_965.z, x_965.x, x_965.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_969 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat6;
        let x_974 : vec2<f32> = (vec2<f32>(x_971.x, x_971.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_975 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_978 : f32 = u_xlat9.y;
        u_xlat8.x = x_978;
        let x_980 : vec2<f32> = u_xlat50;
        let x_987 : vec2<f32> = ((vec2<f32>(x_980.x, x_980.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_987.x, x_988.z, x_987.y);
        let x_990 : vec2<f32> = u_xlat50;
        let x_994 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_995 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_994.x, x_995.y, x_994.y, x_995.w);
        let x_998 : f32 = u_xlat5.x;
        u_xlat6.y = x_998;
        let x_1001 : f32 = u_xlat7.y;
        u_xlat6.w = x_1001;
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1003 + x_1004);
        let x_1006 : vec2<f32> = u_xlat50;
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1006.y, x_1006.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1009.x, x_1010.z, x_1009.y);
        let x_1012 : vec2<f32> = u_xlat50;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1012.y, x_1012.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1016.y, x_1015.y, x_1016.w);
        let x_1019 : f32 = u_xlat5.y;
        u_xlat7.y = x_1019;
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1021 + x_1022);
        let x_1024 : vec4<f32> = u_xlat6;
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1024 / x_1025);
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1027 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1033 / x_1034);
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1036 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1038.w, x_1038.x, x_1038.y, x_1038.z) * vec4<f32>(x_1041.x, x_1041.x, x_1041.x, x_1041.x));
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1047 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1044.x, x_1044.w, x_1044.y, x_1044.z) * vec4<f32>(x_1047.y, x_1047.y, x_1047.y, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1051 : vec3<f32> = vec3<f32>(x_1050.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1052.y, x_1051.y, x_1051.z);
        let x_1055 : f32 = u_xlat7.x;
        u_xlat9.y = x_1055;
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) * vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y)) + vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat4;
        let x_1069 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1066.x, x_1066.y) * vec2<f32>(x_1069.x, x_1069.y)) + vec2<f32>(x_1072.w, x_1072.y));
        let x_1076 : f32 = u_xlat9.y;
        u_xlat6.y = x_1076;
        let x_1079 : f32 = u_xlat7.z;
        u_xlat9.y = x_1079;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1093 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.w, x_1096.y));
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1102 : f32 = u_xlat9.y;
        u_xlat6.z = x_1102;
        let x_1105 : vec4<f32> = u_xlat4;
        let x_1108 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y) * vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y)) + vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.z));
        let x_1115 : f32 = u_xlat7.w;
        u_xlat9.y = x_1115;
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1128 : vec4<f32> = u_xlat4;
        let x_1131 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.w, x_1134.y));
        let x_1138 : f32 = u_xlat9.y;
        u_xlat6.w = x_1138;
        let x_1141 : vec4<f32> = u_xlat4;
        let x_1144 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.w));
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1151 : vec3<f32> = vec3<f32>(x_1150.x, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1151.z);
        let x_1154 : vec4<f32> = u_xlat4;
        let x_1157 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1160.y));
        let x_1164 : vec4<f32> = u_xlat4;
        let x_1167 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat6.x;
        u_xlat7.x = x_1174;
        let x_1176 : vec4<f32> = u_xlat4;
        let x_1179 : vec4<f32> = x_307.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.x, x_1182.y));
        let x_1185 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1188.x, x_1188.x, x_1188.x, x_1188.x) * x_1190);
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1193.y, x_1193.y, x_1193.y, x_1193.y) * x_1195);
        let x_1198 : vec4<f32> = u_xlat5;
        let x_1200 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1198.z, x_1198.z, x_1198.z, x_1198.z) * x_1200);
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1202.w, x_1202.w, x_1202.w, x_1202.w) * x_1204);
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1208 : vec2<f32> = vec2<f32>(x_1207.x, x_1207.y);
        let x_1210 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
        let x_1217 : vec3<f32> = txVec13;
        let x_1219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1217.xy, x_1217.z);
        u_xlat72 = x_1219;
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
        let x_1224 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
        let x_1231 : vec3<f32> = txVec14;
        let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
        u_xlat6.x = x_1233;
        let x_1236 : f32 = u_xlat6.x;
        let x_1238 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1236 * x_1238);
        let x_1242 : f32 = u_xlat15.x;
        let x_1243 : f32 = u_xlat72;
        let x_1246 : f32 = u_xlat6.x;
        u_xlat72 = ((x_1242 * x_1243) + x_1246);
        let x_1249 : vec2<f32> = u_xlat50;
        let x_1251 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec15;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat50.x = x_1260;
        let x_1263 : f32 = u_xlat15.z;
        let x_1265 : f32 = u_xlat50.x;
        let x_1267 : f32 = u_xlat72;
        u_xlat72 = ((x_1263 * x_1265) + x_1267);
        let x_1270 : vec4<f32> = u_xlat13;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
        let x_1273 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec16;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1280.xy, x_1280.z);
        u_xlat50.x = x_1282;
        let x_1285 : f32 = u_xlat15.w;
        let x_1287 : f32 = u_xlat50.x;
        let x_1289 : f32 = u_xlat72;
        u_xlat72 = ((x_1285 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec17;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat50.x = x_1304;
        let x_1307 : f32 = u_xlat16.x;
        let x_1309 : f32 = u_xlat50.x;
        let x_1311 : f32 = u_xlat72;
        u_xlat72 = ((x_1307 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec18;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat50.x = x_1326;
        let x_1329 : f32 = u_xlat16.y;
        let x_1331 : f32 = u_xlat50.x;
        let x_1333 : f32 = u_xlat72;
        u_xlat72 = ((x_1329 * x_1331) + x_1333);
        let x_1336 : vec4<f32> = u_xlat12;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec19;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat50.x = x_1348;
        let x_1351 : f32 = u_xlat16.z;
        let x_1353 : f32 = u_xlat50.x;
        let x_1355 : f32 = u_xlat72;
        u_xlat72 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat13;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.z, x_1358.w);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec20;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat50.x = x_1370;
        let x_1373 : f32 = u_xlat16.w;
        let x_1375 : f32 = u_xlat50.x;
        let x_1377 : f32 = u_xlat72;
        u_xlat72 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat14;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
        let x_1383 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec21;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1390.xy, x_1390.z);
        u_xlat50.x = x_1392;
        let x_1395 : f32 = u_xlat17.x;
        let x_1397 : f32 = u_xlat50.x;
        let x_1399 : f32 = u_xlat72;
        u_xlat72 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat14;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.z, x_1402.w);
        let x_1405 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec22;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat50.x = x_1414;
        let x_1417 : f32 = u_xlat17.y;
        let x_1419 : f32 = u_xlat50.x;
        let x_1421 : f32 = u_xlat72;
        u_xlat72 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat29;
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec23;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat50.x = x_1435;
        let x_1438 : f32 = u_xlat17.z;
        let x_1440 : f32 = u_xlat50.x;
        let x_1442 : f32 = u_xlat72;
        u_xlat72 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec2<f32> = u_xlat58;
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec24;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat50.x = x_1456;
        let x_1459 : f32 = u_xlat17.w;
        let x_1461 : f32 = u_xlat50.x;
        let x_1463 : f32 = u_xlat72;
        u_xlat72 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat9;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec25;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat50.x = x_1478;
        let x_1481 : f32 = u_xlat5.x;
        let x_1483 : f32 = u_xlat50.x;
        let x_1485 : f32 = u_xlat72;
        u_xlat72 = ((x_1481 * x_1483) + x_1485);
        let x_1488 : vec4<f32> = u_xlat9;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec26;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat50.x = x_1500;
        let x_1503 : f32 = u_xlat5.y;
        let x_1505 : f32 = u_xlat50.x;
        let x_1507 : f32 = u_xlat72;
        u_xlat72 = ((x_1503 * x_1505) + x_1507);
        let x_1510 : vec2<f32> = u_xlat53;
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec27;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat50.x = x_1521;
        let x_1524 : f32 = u_xlat5.z;
        let x_1526 : f32 = u_xlat50.x;
        let x_1528 : f32 = u_xlat72;
        u_xlat72 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat4;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec28;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat4.x = x_1543;
        let x_1546 : f32 = u_xlat5.w;
        let x_1548 : f32 = u_xlat4.x;
        let x_1550 : f32 = u_xlat72;
        u_xlat70 = ((x_1546 * x_1548) + x_1550);
      }
    }
  } else {
    let x_1554 : vec4<f32> = vs_TEXCOORD6;
    let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
    let x_1557 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
    let x_1564 : vec3<f32> = txVec29;
    let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
    u_xlat70 = x_1566;
  }
  let x_1568 : f32 = x_307.x_MainLightShadowParams.x;
  u_xlat72 = (-(x_1568) + 1.0f);
  let x_1571 : f32 = u_xlat70;
  let x_1573 : f32 = x_307.x_MainLightShadowParams.x;
  let x_1575 : f32 = u_xlat72;
  u_xlat70 = ((x_1571 * x_1573) + x_1575);
  let x_1578 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (0.0f >= x_1578);
  let x_1582 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1582 >= 1.0f);
  let x_1584 : bool = u_xlatb72;
  let x_1585 : bool = u_xlatb4;
  u_xlatb72 = (x_1584 | x_1585);
  let x_1587 : bool = u_xlatb72;
  let x_1588 : f32 = u_xlat70;
  u_xlat70 = select(x_1588, 1.0f, x_1587);
  let x_1590 : vec3<f32> = vs_TEXCOORD1;
  let x_1592 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1594 : vec3<f32> = (x_1590 + -(x_1592));
  let x_1595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1597 : vec4<f32> = u_xlat4;
  let x_1599 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(vec3<f32>(x_1597.x, x_1597.y, x_1597.z), vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1602 : f32 = u_xlat72;
  let x_1604 : f32 = x_307.x_MainLightShadowParams.z;
  let x_1607 : f32 = x_307.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_1602 * x_1604) + x_1607);
  let x_1611 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1611, 0.0f, 1.0f);
  let x_1614 : f32 = u_xlat70;
  u_xlat27 = (-(x_1614) + 1.0f);
  let x_1618 : f32 = u_xlat4.x;
  let x_1619 : f32 = u_xlat27;
  let x_1621 : f32 = u_xlat70;
  u_xlat70 = ((x_1618 * x_1619) + x_1621);
  let x_1630 : f32 = x_1628.x_MainLightCookieTextureFormat;
  u_xlatb4 = !((x_1630 == -1.0f));
  let x_1633 : bool = u_xlatb4;
  if (x_1633) {
    let x_1636 : vec3<f32> = vs_TEXCOORD1;
    let x_1639 : vec4<f32> = x_1628.x_MainLightWorldToLight[1i];
    let x_1641 : vec2<f32> = (vec2<f32>(x_1636.y, x_1636.y) * vec2<f32>(x_1639.x, x_1639.y));
    let x_1642 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1641.x, x_1641.y, x_1642.z, x_1642.w);
    let x_1645 : vec4<f32> = x_1628.x_MainLightWorldToLight[0i];
    let x_1647 : vec3<f32> = vs_TEXCOORD1;
    let x_1650 : vec4<f32> = u_xlat4;
    let x_1652 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.y) * vec2<f32>(x_1647.x, x_1647.x)) + vec2<f32>(x_1650.x, x_1650.y));
    let x_1653 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
    let x_1656 : vec4<f32> = x_1628.x_MainLightWorldToLight[2i];
    let x_1658 : vec3<f32> = vs_TEXCOORD1;
    let x_1661 : vec4<f32> = u_xlat4;
    let x_1663 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1658.z, x_1658.z)) + vec2<f32>(x_1661.x, x_1661.y));
    let x_1664 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
    let x_1666 : vec4<f32> = u_xlat4;
    let x_1670 : vec4<f32> = x_1628.x_MainLightWorldToLight[3i];
    let x_1672 : vec2<f32> = (vec2<f32>(x_1666.x, x_1666.y) + vec2<f32>(x_1670.x, x_1670.y));
    let x_1673 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
    let x_1675 : vec4<f32> = u_xlat4;
    let x_1678 : vec2<f32> = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1679 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1678.x, x_1678.y, x_1679.z, x_1679.w);
    let x_1686 : vec4<f32> = u_xlat4;
    let x_1689 : f32 = x_45.x_GlobalMipBias.x;
    let x_1690 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1686.x, x_1686.y), x_1689);
    u_xlat4 = x_1690;
    let x_1695 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1697 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1699 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1701 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1702 : vec4<f32> = vec4<f32>(x_1695, x_1697, x_1699, x_1701);
    let x_1710 : vec4<bool> = (vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1710.x, x_1710.y);
    let x_1714 : bool = u_xlatb5.y;
    if (x_1714) {
      let x_1719 : f32 = u_xlat4.w;
      x_1715 = x_1719;
    } else {
      let x_1722 : f32 = u_xlat4.x;
      x_1715 = x_1722;
    }
    let x_1723 : f32 = x_1715;
    u_xlat73 = x_1723;
    let x_1725 : bool = u_xlatb5.x;
    if (x_1725) {
      let x_1729 : vec4<f32> = u_xlat4;
      x_1726 = vec3<f32>(x_1729.x, x_1729.y, x_1729.z);
    } else {
      let x_1732 : f32 = u_xlat73;
      x_1726 = vec3<f32>(x_1732, x_1732, x_1732);
    }
    let x_1734 : vec3<f32> = x_1726;
    let x_1735 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1741 : vec4<f32> = u_xlat4;
  let x_1744 : vec4<f32> = x_45.x_MainLightColor;
  let x_1746 : vec3<f32> = (vec3<f32>(x_1741.x, x_1741.y, x_1741.z) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1749 : f32 = u_xlat70;
  let x_1751 : f32 = x_94.unity_LightData.z;
  u_xlat70 = (x_1749 * x_1751);
  let x_1753 : f32 = u_xlat70;
  let x_1755 : vec4<f32> = u_xlat4;
  let x_1757 : vec3<f32> = (vec3<f32>(x_1753, x_1753, x_1753) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : vec4<f32> = u_xlat1;
  let x_1763 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat70 = dot(vec3<f32>(x_1760.x, x_1760.y, x_1760.z), vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1766, 0.0f, 1.0f);
  let x_1768 : f32 = u_xlat70;
  let x_1770 : vec4<f32> = u_xlat4;
  let x_1772 : vec3<f32> = (vec3<f32>(x_1768, x_1768, x_1768) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1776 : f32 = u_xlat0.x;
  u_xlat70 = ((x_1776 * 10.0f) + 1.0f);
  let x_1780 : f32 = u_xlat70;
  u_xlat70 = exp2(x_1780);
  let x_1782 : vec3<f32> = u_xlat2;
  let x_1783 : f32 = u_xlat71;
  let x_1787 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1789 : vec3<f32> = ((x_1782 * vec3<f32>(x_1783, x_1783, x_1783)) + vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
  let x_1790 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
  let x_1792 : vec4<f32> = u_xlat6;
  let x_1794 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1792.x, x_1792.y, x_1792.z), vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
  let x_1797 : f32 = u_xlat73;
  u_xlat73 = max(x_1797, 1.17549435e-38f);
  let x_1800 : f32 = u_xlat73;
  u_xlat73 = inverseSqrt(x_1800);
  let x_1802 : f32 = u_xlat73;
  let x_1804 : vec4<f32> = u_xlat6;
  let x_1806 : vec3<f32> = (vec3<f32>(x_1802, x_1802, x_1802) * vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
  let x_1807 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  let x_1809 : vec4<f32> = u_xlat1;
  let x_1811 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1809.x, x_1809.y, x_1809.z), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1814, 0.0f, 1.0f);
  let x_1816 : f32 = u_xlat73;
  u_xlat73 = log2(x_1816);
  let x_1818 : f32 = u_xlat70;
  let x_1819 : f32 = u_xlat73;
  u_xlat73 = (x_1818 * x_1819);
  let x_1821 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1821);
  let x_1823 : f32 = u_xlat73;
  let x_1826 : vec4<f32> = x_57.x_SpecColor;
  let x_1828 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
  let x_1829 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1831 : vec4<f32> = u_xlat4;
  let x_1833 : vec4<f32> = u_xlat6;
  let x_1835 : vec3<f32> = (vec3<f32>(x_1831.x, x_1831.y, x_1831.z) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1838 : vec4<f32> = u_xlat5;
  let x_1840 : vec4<f32> = u_xlat0;
  let x_1843 : vec4<f32> = u_xlat4;
  let x_1845 : vec3<f32> = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1840.y, x_1840.z, x_1840.w)) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1849 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1851 : f32 = x_94.unity_LightData.y;
  u_xlat73 = min(x_1849, x_1851);
  let x_1855 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1855));
  let x_1858 : f32 = u_xlat72;
  let x_1861 : f32 = x_307.x_AdditionalShadowFadeParams.x;
  let x_1864 : f32 = x_307.x_AdditionalShadowFadeParams.y;
  u_xlat72 = ((x_1858 * x_1861) + x_1864);
  let x_1866 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1866, 0.0f, 1.0f);
  let x_1869 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1871 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1873 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1875 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1876 : vec4<f32> = vec4<f32>(x_1869, x_1871, x_1873, x_1875);
  let x_1882 : vec4<bool> = (vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1876.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1882.x, x_1882.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1894 : u32 = u_xlatu_loop_1;
    let x_1895 : u32 = u_xlatu73;
    if ((x_1894 < x_1895)) {
    } else {
      break;
    }
    let x_1898 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1898 >> 2u);
    let x_1902 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1902 & 3u));
    let x_1906 : u32 = u_xlatu74;
    let x_1909 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1906)];
    let x_1919 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1924 : vec4<u32> = indexable[x_1919];
    u_xlat74 = dot(x_1909, bitcast<vec4<f32>>(x_1924));
    let x_1928 : f32 = u_xlat74;
    u_xlati74 = i32(x_1928);
    let x_1930 : vec3<f32> = vs_TEXCOORD1;
    let x_1941 : i32 = u_xlati74;
    let x_1943 : vec4<f32> = x_1940.x_AdditionalLightsPosition[x_1941];
    let x_1946 : i32 = u_xlati74;
    let x_1948 : vec4<f32> = x_1940.x_AdditionalLightsPosition[x_1946];
    let x_1950 : vec3<f32> = ((-(x_1930) * vec3<f32>(x_1943.w, x_1943.w, x_1943.w)) + vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
    let x_1951 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
    let x_1954 : vec4<f32> = u_xlat7;
    let x_1956 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1954.x, x_1954.y, x_1954.z), vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : f32 = u_xlat75;
    u_xlat75 = max(x_1959, 0.00006103515625f);
    let x_1962 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_1962);
    let x_1964 : f32 = u_xlat76;
    let x_1966 : vec4<f32> = u_xlat7;
    let x_1968 : vec3<f32> = (vec3<f32>(x_1964, x_1964, x_1964) * vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
    let x_1969 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
    let x_1971 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_1971);
    let x_1973 : f32 = u_xlat75;
    let x_1974 : i32 = u_xlati74;
    let x_1976 : f32 = x_1940.x_AdditionalLightsAttenuation[x_1974].x;
    u_xlat75 = (x_1973 * x_1976);
    let x_1978 : f32 = u_xlat75;
    let x_1980 : f32 = u_xlat75;
    u_xlat75 = ((-(x_1978) * x_1980) + 1.0f);
    let x_1983 : f32 = u_xlat75;
    u_xlat75 = max(x_1983, 0.0f);
    let x_1985 : f32 = u_xlat75;
    let x_1986 : f32 = u_xlat75;
    u_xlat75 = (x_1985 * x_1986);
    let x_1988 : f32 = u_xlat75;
    let x_1989 : f32 = u_xlat76;
    u_xlat75 = (x_1988 * x_1989);
    let x_1991 : i32 = u_xlati74;
    let x_1993 : vec4<f32> = x_1940.x_AdditionalLightsSpotDir[x_1991];
    let x_1995 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1993.x, x_1993.y, x_1993.z), vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
    let x_1998 : f32 = u_xlat76;
    let x_1999 : i32 = u_xlati74;
    let x_2001 : f32 = x_1940.x_AdditionalLightsAttenuation[x_1999].z;
    let x_2003 : i32 = u_xlati74;
    let x_2005 : f32 = x_1940.x_AdditionalLightsAttenuation[x_2003].w;
    u_xlat76 = ((x_1998 * x_2001) + x_2005);
    let x_2007 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2007, 0.0f, 1.0f);
    let x_2009 : f32 = u_xlat76;
    let x_2010 : f32 = u_xlat76;
    u_xlat76 = (x_2009 * x_2010);
    let x_2012 : f32 = u_xlat75;
    let x_2013 : f32 = u_xlat76;
    u_xlat75 = (x_2012 * x_2013);
    let x_2017 : i32 = u_xlati74;
    let x_2019 : f32 = x_307.x_AdditionalShadowParams[x_2017].w;
    u_xlati76 = i32(x_2019);
    let x_2024 : i32 = u_xlati76;
    u_xlatb8.x = (x_2024 >= 0i);
    let x_2028 : bool = u_xlatb8.x;
    if (x_2028) {
      let x_2032 : i32 = u_xlati74;
      let x_2034 : f32 = x_307.x_AdditionalShadowParams[x_2032].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2034, x_2034, x_2034, x_2034))));
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
        let x_2081 : bool = u_xlatb8.z;
        if (x_2081) {
          let x_2086 : f32 = u_xlat31.z;
          x_2082 = x_2086;
        } else {
          let x_2089 : f32 = u_xlat9.x;
          x_2082 = x_2089;
        }
        let x_2090 : f32 = x_2082;
        u_xlat54 = x_2090;
        let x_2092 : bool = u_xlatb8.x;
        if (x_2092) {
          let x_2097 : f32 = u_xlat31.x;
          x_2093 = x_2097;
        } else {
          let x_2099 : f32 = u_xlat54;
          x_2093 = x_2099;
        }
        let x_2100 : f32 = x_2093;
        u_xlat8.x = x_2100;
        let x_2102 : i32 = u_xlati74;
        let x_2104 : f32 = x_307.x_AdditionalShadowParams[x_2102].w;
        u_xlat31.x = trunc(x_2104);
        let x_2108 : f32 = u_xlat8.x;
        let x_2110 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2108 + x_2110);
        let x_2114 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2114);
      }
      let x_2116 : i32 = u_xlati76;
      u_xlati76 = (x_2116 << bitcast<u32>(2i));
      let x_2118 : vec3<f32> = vs_TEXCOORD1;
      let x_2121 : i32 = u_xlati76;
      let x_2124 : i32 = u_xlati76;
      let x_2128 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2121 + 1i) / 4i)][((x_2124 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2118.y, x_2118.y, x_2118.y, x_2118.y) * x_2128);
      let x_2130 : i32 = u_xlati76;
      let x_2132 : i32 = u_xlati76;
      let x_2135 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[(x_2130 / 4i)][(x_2132 % 4i)];
      let x_2136 : vec3<f32> = vs_TEXCOORD1;
      let x_2139 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2135 * vec4<f32>(x_2136.x, x_2136.x, x_2136.x, x_2136.x)) + x_2139);
      let x_2141 : i32 = u_xlati76;
      let x_2144 : i32 = u_xlati76;
      let x_2148 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2141 + 2i) / 4i)][((x_2144 + 2i) % 4i)];
      let x_2149 : vec3<f32> = vs_TEXCOORD1;
      let x_2152 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2148 * vec4<f32>(x_2149.z, x_2149.z, x_2149.z, x_2149.z)) + x_2152);
      let x_2154 : vec4<f32> = u_xlat8;
      let x_2155 : i32 = u_xlati76;
      let x_2158 : i32 = u_xlati76;
      let x_2162 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_2155 + 3i) / 4i)][((x_2158 + 3i) % 4i)];
      u_xlat8 = (x_2154 + x_2162);
      let x_2164 : vec4<f32> = u_xlat8;
      let x_2166 : vec4<f32> = u_xlat8;
      let x_2168 : vec3<f32> = (vec3<f32>(x_2164.x, x_2164.y, x_2164.z) / vec3<f32>(x_2166.w, x_2166.w, x_2166.w));
      let x_2169 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
      let x_2172 : i32 = u_xlati74;
      let x_2174 : f32 = x_307.x_AdditionalShadowParams[x_2172].y;
      u_xlatb76 = (0.0f < x_2174);
      let x_2176 : bool = u_xlatb76;
      if (x_2176) {
        let x_2179 : i32 = u_xlati74;
        let x_2181 : f32 = x_307.x_AdditionalShadowParams[x_2179].y;
        u_xlatb76 = (1.0f == x_2181);
        let x_2183 : bool = u_xlatb76;
        if (x_2183) {
          let x_2186 : vec4<f32> = u_xlat8;
          let x_2190 : vec4<f32> = x_307.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.y) + x_2190);
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
          let x_2227 : vec4<f32> = x_307.x_AdditionalShadowOffset1;
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
          let x_2265 : f32 = x_307.x_AdditionalShadowParams[x_2263].y;
          u_xlatb77 = (2.0f == x_2265);
          let x_2267 : bool = u_xlatb77;
          if (x_2267) {
            let x_2270 : vec4<f32> = u_xlat8;
            let x_2274 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2277 : vec2<f32> = ((vec2<f32>(x_2270.x, x_2270.y) * vec2<f32>(x_2274.z, x_2274.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2278 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2277.x, x_2277.y, x_2278.z, x_2278.w);
            let x_2280 : vec4<f32> = u_xlat9;
            let x_2282 : vec2<f32> = floor(vec2<f32>(x_2280.x, x_2280.y));
            let x_2283 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2282.x, x_2282.y, x_2283.z, x_2283.w);
            let x_2286 : vec4<f32> = u_xlat8;
            let x_2289 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
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
            let x_2435 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2437 : vec3<f32> = (vec3<f32>(x_2432.y, x_2432.x, x_2432.z) * vec3<f32>(x_2435.x, x_2435.x, x_2435.x));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2443 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2445 : vec3<f32> = (vec3<f32>(x_2440.x, x_2440.y, x_2440.z) * vec3<f32>(x_2443.y, x_2443.y, x_2443.y));
            let x_2446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
            let x_2449 : f32 = u_xlat12.x;
            u_xlat11.w = x_2449;
            let x_2451 : vec4<f32> = u_xlat9;
            let x_2454 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2457 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2451.x, x_2451.y, x_2451.x, x_2451.y) * vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y)) + vec4<f32>(x_2457.y, x_2457.w, x_2457.x, x_2457.w));
            let x_2460 : vec4<f32> = u_xlat9;
            let x_2463 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2466 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2460.x, x_2460.y) * vec2<f32>(x_2463.x, x_2463.y)) + vec2<f32>(x_2466.z, x_2466.w));
            let x_2470 : f32 = u_xlat11.y;
            u_xlat12.w = x_2470;
            let x_2472 : vec4<f32> = u_xlat12;
            let x_2473 : vec2<f32> = vec2<f32>(x_2472.y, x_2472.z);
            let x_2474 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2474.x, x_2473.x, x_2474.z, x_2473.y);
            let x_2476 : vec4<f32> = u_xlat9;
            let x_2479 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2482 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y) * vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y)) + vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2482.y));
            let x_2485 : vec4<f32> = u_xlat9;
            let x_2488 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2491 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2485.x, x_2485.y, x_2485.x, x_2485.y) * vec4<f32>(x_2488.x, x_2488.y, x_2488.x, x_2488.y)) + vec4<f32>(x_2491.w, x_2491.y, x_2491.w, x_2491.z));
            let x_2494 : vec4<f32> = u_xlat9;
            let x_2497 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
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
            let x_2715 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2718 : vec2<f32> = ((vec2<f32>(x_2712.x, x_2712.y) * vec2<f32>(x_2715.z, x_2715.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2719 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2718.x, x_2718.y, x_2719.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat9;
            let x_2723 : vec2<f32> = floor(vec2<f32>(x_2721.x, x_2721.y));
            let x_2724 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2726 : vec4<f32> = u_xlat8;
            let x_2729 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
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
            let x_2864 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2861.w, x_2861.x, x_2861.y, x_2861.z) * vec4<f32>(x_2864.x, x_2864.x, x_2864.x, x_2864.x));
            let x_2867 : vec4<f32> = u_xlat12;
            let x_2870 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2867.x, x_2867.w, x_2867.y, x_2867.z) * vec4<f32>(x_2870.y, x_2870.y, x_2870.y, x_2870.y));
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2874 : vec3<f32> = vec3<f32>(x_2873.y, x_2873.z, x_2873.w);
            let x_2875 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2874.x, x_2875.y, x_2874.y, x_2874.z);
            let x_2878 : f32 = u_xlat12.x;
            u_xlat14.y = x_2878;
            let x_2880 : vec4<f32> = u_xlat9;
            let x_2883 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) * vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y)) + vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2892 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2889.x, x_2889.y) * vec2<f32>(x_2892.x, x_2892.y)) + vec2<f32>(x_2895.w, x_2895.y));
            let x_2899 : f32 = u_xlat14.y;
            u_xlat11.y = x_2899;
            let x_2902 : f32 = u_xlat12.z;
            u_xlat14.y = x_2902;
            let x_2904 : vec4<f32> = u_xlat9;
            let x_2907 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y) * vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y)) + vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2910.y));
            let x_2913 : vec4<f32> = u_xlat9;
            let x_2916 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2921 : vec2<f32> = ((vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(x_2916.x, x_2916.y)) + vec2<f32>(x_2919.w, x_2919.y));
            let x_2922 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2921.x, x_2921.y, x_2922.z, x_2922.w);
            let x_2925 : f32 = u_xlat14.y;
            u_xlat11.z = x_2925;
            let x_2928 : vec4<f32> = u_xlat9;
            let x_2931 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.z));
            let x_2938 : f32 = u_xlat12.w;
            u_xlat14.y = x_2938;
            let x_2941 : vec4<f32> = u_xlat9;
            let x_2944 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.y) * vec4<f32>(x_2944.x, x_2944.y, x_2944.x, x_2944.y)) + vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2947.y));
            let x_2951 : vec4<f32> = u_xlat9;
            let x_2954 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2954.x, x_2954.y)) + vec2<f32>(x_2957.w, x_2957.y));
            let x_2961 : f32 = u_xlat14.y;
            u_xlat11.w = x_2961;
            let x_2964 : vec4<f32> = u_xlat9;
            let x_2967 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2967.x, x_2967.y)) + vec2<f32>(x_2970.x, x_2970.w));
            let x_2973 : vec4<f32> = u_xlat14;
            let x_2974 : vec3<f32> = vec3<f32>(x_2973.x, x_2973.z, x_2973.w);
            let x_2975 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2974.x, x_2975.y, x_2974.y, x_2974.z);
            let x_2977 : vec4<f32> = u_xlat9;
            let x_2980 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2983 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y) * vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y)) + vec4<f32>(x_2983.x, x_2983.y, x_2983.z, x_2983.y));
            let x_2986 : vec4<f32> = u_xlat9;
            let x_2989 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2986.x, x_2986.y) * vec2<f32>(x_2989.x, x_2989.y)) + vec2<f32>(x_2992.w, x_2992.y));
            let x_2996 : f32 = u_xlat11.x;
            u_xlat12.x = x_2996;
            let x_2998 : vec4<f32> = u_xlat9;
            let x_3001 : vec4<f32> = x_307.x_AdditionalShadowmapSize;
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
      let x_3391 : f32 = x_307.x_AdditionalShadowParams[x_3389].x;
      u_xlat8.x = (1.0f + -(x_3391));
      let x_3395 : f32 = u_xlat76;
      let x_3396 : i32 = u_xlati74;
      let x_3398 : f32 = x_307.x_AdditionalShadowParams[x_3396].x;
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
    let x_3425 : f32 = u_xlat72;
    let x_3427 : f32 = u_xlat8.x;
    let x_3429 : f32 = u_xlat76;
    u_xlat76 = ((x_3425 * x_3427) + x_3429);
    let x_3432 : i32 = u_xlati74;
    u_xlati8 = (1i << bitcast<u32>((x_3432 & 31i)));
    let x_3436 : i32 = u_xlati8;
    let x_3439 : f32 = x_1628.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_3436) & bitcast<u32>(x_3439)));
    let x_3443 : i32 = u_xlati8;
    if ((x_3443 != 0i)) {
      let x_3447 : i32 = u_xlati74;
      let x_3449 : f32 = x_1628.x_AdditionalLightsLightTypes[x_3447].el;
      u_xlati8 = i32(x_3449);
      let x_3452 : i32 = u_xlati8;
      u_xlati31 = select(1i, 0i, (x_3452 != 0i));
      let x_3456 : i32 = u_xlati74;
      u_xlati54 = (x_3456 << bitcast<u32>(2i));
      let x_3458 : i32 = u_xlati31;
      if ((x_3458 != 0i)) {
        let x_3462 : vec3<f32> = vs_TEXCOORD1;
        let x_3464 : i32 = u_xlati54;
        let x_3467 : i32 = u_xlati54;
        let x_3471 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3464 + 1i) / 4i)][((x_3467 + 1i) % 4i)];
        let x_3473 : vec3<f32> = (vec3<f32>(x_3462.y, x_3462.y, x_3462.y) * vec3<f32>(x_3471.x, x_3471.y, x_3471.w));
        let x_3474 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3473.x, x_3473.y, x_3473.z, x_3474.w);
        let x_3476 : i32 = u_xlati54;
        let x_3478 : i32 = u_xlati54;
        let x_3481 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[(x_3476 / 4i)][(x_3478 % 4i)];
        let x_3483 : vec3<f32> = vs_TEXCOORD1;
        let x_3486 : vec4<f32> = u_xlat9;
        let x_3488 : vec3<f32> = ((vec3<f32>(x_3481.x, x_3481.y, x_3481.w) * vec3<f32>(x_3483.x, x_3483.x, x_3483.x)) + vec3<f32>(x_3486.x, x_3486.y, x_3486.z));
        let x_3489 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3489.w);
        let x_3491 : i32 = u_xlati54;
        let x_3494 : i32 = u_xlati54;
        let x_3498 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3491 + 2i) / 4i)][((x_3494 + 2i) % 4i)];
        let x_3500 : vec3<f32> = vs_TEXCOORD1;
        let x_3503 : vec4<f32> = u_xlat9;
        let x_3505 : vec3<f32> = ((vec3<f32>(x_3498.x, x_3498.y, x_3498.w) * vec3<f32>(x_3500.z, x_3500.z, x_3500.z)) + vec3<f32>(x_3503.x, x_3503.y, x_3503.z));
        let x_3506 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
        let x_3508 : vec4<f32> = u_xlat9;
        let x_3510 : i32 = u_xlati54;
        let x_3513 : i32 = u_xlati54;
        let x_3517 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3510 + 3i) / 4i)][((x_3513 + 3i) % 4i)];
        let x_3519 : vec3<f32> = (vec3<f32>(x_3508.x, x_3508.y, x_3508.z) + vec3<f32>(x_3517.x, x_3517.y, x_3517.w));
        let x_3520 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3520.w);
        let x_3522 : vec4<f32> = u_xlat9;
        let x_3524 : vec4<f32> = u_xlat9;
        let x_3526 : vec2<f32> = (vec2<f32>(x_3522.x, x_3522.y) / vec2<f32>(x_3524.z, x_3524.z));
        let x_3527 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3526.x, x_3527.y, x_3526.y);
        let x_3529 : vec3<f32> = u_xlat31;
        let x_3532 : vec2<f32> = ((vec2<f32>(x_3529.x, x_3529.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3533 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3532.x, x_3533.y, x_3532.y);
        let x_3535 : vec3<f32> = u_xlat31;
        let x_3539 : vec2<f32> = clamp(vec2<f32>(x_3535.x, x_3535.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3540 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3539.x, x_3540.y, x_3539.y);
        let x_3542 : i32 = u_xlati74;
        let x_3544 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3542];
        let x_3546 : vec3<f32> = u_xlat31;
        let x_3549 : i32 = u_xlati74;
        let x_3551 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3549];
        let x_3553 : vec2<f32> = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3546.x, x_3546.z)) + vec2<f32>(x_3551.z, x_3551.w));
        let x_3554 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3553.x, x_3554.y, x_3553.y);
      } else {
        let x_3557 : i32 = u_xlati8;
        u_xlatb8.x = (x_3557 == 1i);
        let x_3561 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_3561);
        let x_3563 : i32 = u_xlati8;
        if ((x_3563 != 0i)) {
          let x_3567 : vec3<f32> = vs_TEXCOORD1;
          let x_3569 : i32 = u_xlati54;
          let x_3572 : i32 = u_xlati54;
          let x_3576 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3569 + 1i) / 4i)][((x_3572 + 1i) % 4i)];
          let x_3578 : vec2<f32> = (vec2<f32>(x_3567.y, x_3567.y) * vec2<f32>(x_3576.x, x_3576.y));
          let x_3579 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3578.x, x_3578.y, x_3579.z, x_3579.w);
          let x_3581 : i32 = u_xlati54;
          let x_3583 : i32 = u_xlati54;
          let x_3586 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[(x_3581 / 4i)][(x_3583 % 4i)];
          let x_3588 : vec3<f32> = vs_TEXCOORD1;
          let x_3591 : vec4<f32> = u_xlat9;
          let x_3593 : vec2<f32> = ((vec2<f32>(x_3586.x, x_3586.y) * vec2<f32>(x_3588.x, x_3588.x)) + vec2<f32>(x_3591.x, x_3591.y));
          let x_3594 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3593.x, x_3593.y, x_3594.z, x_3594.w);
          let x_3596 : i32 = u_xlati54;
          let x_3599 : i32 = u_xlati54;
          let x_3603 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3596 + 2i) / 4i)][((x_3599 + 2i) % 4i)];
          let x_3605 : vec3<f32> = vs_TEXCOORD1;
          let x_3608 : vec4<f32> = u_xlat9;
          let x_3610 : vec2<f32> = ((vec2<f32>(x_3603.x, x_3603.y) * vec2<f32>(x_3605.z, x_3605.z)) + vec2<f32>(x_3608.x, x_3608.y));
          let x_3611 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3610.x, x_3610.y, x_3611.z, x_3611.w);
          let x_3613 : vec4<f32> = u_xlat9;
          let x_3615 : i32 = u_xlati54;
          let x_3618 : i32 = u_xlati54;
          let x_3622 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3615 + 3i) / 4i)][((x_3618 + 3i) % 4i)];
          let x_3624 : vec2<f32> = (vec2<f32>(x_3613.x, x_3613.y) + vec2<f32>(x_3622.x, x_3622.y));
          let x_3625 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3624.x, x_3624.y, x_3625.z, x_3625.w);
          let x_3627 : vec4<f32> = u_xlat9;
          let x_3630 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3631 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3630.x, x_3630.y, x_3631.z, x_3631.w);
          let x_3633 : vec4<f32> = u_xlat9;
          let x_3635 : vec2<f32> = fract(vec2<f32>(x_3633.x, x_3633.y));
          let x_3636 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3635.x, x_3635.y, x_3636.z, x_3636.w);
          let x_3638 : i32 = u_xlati74;
          let x_3640 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3638];
          let x_3642 : vec4<f32> = u_xlat9;
          let x_3645 : i32 = u_xlati74;
          let x_3647 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3645];
          let x_3649 : vec2<f32> = ((vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(x_3642.x, x_3642.y)) + vec2<f32>(x_3647.z, x_3647.w));
          let x_3650 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3649.x, x_3650.y, x_3649.y);
        } else {
          let x_3653 : vec3<f32> = vs_TEXCOORD1;
          let x_3655 : i32 = u_xlati54;
          let x_3658 : i32 = u_xlati54;
          let x_3662 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3655 + 1i) / 4i)][((x_3658 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3653.y, x_3653.y, x_3653.y, x_3653.y) * x_3662);
          let x_3664 : i32 = u_xlati54;
          let x_3666 : i32 = u_xlati54;
          let x_3669 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[(x_3664 / 4i)][(x_3666 % 4i)];
          let x_3670 : vec3<f32> = vs_TEXCOORD1;
          let x_3673 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3669 * vec4<f32>(x_3670.x, x_3670.x, x_3670.x, x_3670.x)) + x_3673);
          let x_3675 : i32 = u_xlati54;
          let x_3678 : i32 = u_xlati54;
          let x_3682 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3675 + 2i) / 4i)][((x_3678 + 2i) % 4i)];
          let x_3683 : vec3<f32> = vs_TEXCOORD1;
          let x_3686 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3682 * vec4<f32>(x_3683.z, x_3683.z, x_3683.z, x_3683.z)) + x_3686);
          let x_3688 : vec4<f32> = u_xlat9;
          let x_3689 : i32 = u_xlati54;
          let x_3692 : i32 = u_xlati54;
          let x_3696 : vec4<f32> = x_1628.x_AdditionalLightsWorldToLights[((x_3689 + 3i) / 4i)][((x_3692 + 3i) % 4i)];
          u_xlat9 = (x_3688 + x_3696);
          let x_3698 : vec4<f32> = u_xlat9;
          let x_3700 : vec4<f32> = u_xlat9;
          let x_3702 : vec3<f32> = (vec3<f32>(x_3698.x, x_3698.y, x_3698.z) / vec3<f32>(x_3700.w, x_3700.w, x_3700.w));
          let x_3703 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
          let x_3705 : vec4<f32> = u_xlat9;
          let x_3707 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_3705.x, x_3705.y, x_3705.z), vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
          let x_3712 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_3712);
          let x_3715 : vec4<f32> = u_xlat8;
          let x_3717 : vec4<f32> = u_xlat9;
          let x_3719 : vec3<f32> = (vec3<f32>(x_3715.x, x_3715.x, x_3715.x) * vec3<f32>(x_3717.x, x_3717.y, x_3717.z));
          let x_3720 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3719.x, x_3719.y, x_3719.z, x_3720.w);
          let x_3722 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_3722.x, x_3722.y, x_3722.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3729 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_3729, 0.00000099999999747524f);
          let x_3734 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_3734);
          let x_3737 : vec4<f32> = u_xlat8;
          let x_3739 : vec4<f32> = u_xlat9;
          let x_3741 : vec3<f32> = (vec3<f32>(x_3737.x, x_3737.x, x_3737.x) * vec3<f32>(x_3739.z, x_3739.x, x_3739.y));
          let x_3742 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
          let x_3745 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3745);
          let x_3749 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3749, 0.0f, 1.0f);
          let x_3753 : vec4<f32> = u_xlat10;
          let x_3755 : vec4<bool> = (vec4<f32>(x_3753.y, x_3753.z, x_3753.y, x_3753.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3755.x, x_3755.y);
          let x_3758 : bool = u_xlatb55.x;
          if (x_3758) {
            let x_3763 : f32 = u_xlat10.x;
            x_3759 = x_3763;
          } else {
            let x_3766 : f32 = u_xlat10.x;
            x_3759 = -(x_3766);
          }
          let x_3768 : f32 = x_3759;
          u_xlat55.x = x_3768;
          let x_3771 : bool = u_xlatb55.y;
          if (x_3771) {
            let x_3776 : f32 = u_xlat10.x;
            x_3772 = x_3776;
          } else {
            let x_3779 : f32 = u_xlat10.x;
            x_3772 = -(x_3779);
          }
          let x_3781 : f32 = x_3772;
          u_xlat55.y = x_3781;
          let x_3783 : vec4<f32> = u_xlat9;
          let x_3785 : vec4<f32> = u_xlat8;
          let x_3788 : vec2<f32> = u_xlat55;
          let x_3789 : vec2<f32> = ((vec2<f32>(x_3783.x, x_3783.y) * vec2<f32>(x_3785.x, x_3785.x)) + x_3788);
          let x_3790 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3789.x, x_3790.y, x_3789.y, x_3790.w);
          let x_3792 : vec4<f32> = u_xlat8;
          let x_3795 : vec2<f32> = ((vec2<f32>(x_3792.x, x_3792.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3796 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3795.x, x_3796.y, x_3795.y, x_3796.w);
          let x_3798 : vec4<f32> = u_xlat8;
          let x_3802 : vec2<f32> = clamp(vec2<f32>(x_3798.x, x_3798.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3803 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3802.x, x_3803.y, x_3802.y, x_3803.w);
          let x_3805 : i32 = u_xlati74;
          let x_3807 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3805];
          let x_3809 : vec4<f32> = u_xlat8;
          let x_3812 : i32 = u_xlati74;
          let x_3814 : vec4<f32> = x_1628.x_AdditionalLightsCookieAtlasUVRects[x_3812];
          let x_3816 : vec2<f32> = ((vec2<f32>(x_3807.x, x_3807.y) * vec2<f32>(x_3809.x, x_3809.z)) + vec2<f32>(x_3814.z, x_3814.w));
          let x_3817 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3816.x, x_3817.y, x_3816.y);
        }
      }
      let x_3824 : vec3<f32> = u_xlat31;
      let x_3826 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3824.x, x_3824.z), 0.0f);
      u_xlat8 = x_3826;
      let x_3828 : bool = u_xlatb5.y;
      if (x_3828) {
        let x_3833 : f32 = u_xlat8.w;
        x_3829 = x_3833;
      } else {
        let x_3836 : f32 = u_xlat8.x;
        x_3829 = x_3836;
      }
      let x_3837 : f32 = x_3829;
      u_xlat77 = x_3837;
      let x_3839 : bool = u_xlatb5.x;
      if (x_3839) {
        let x_3843 : vec4<f32> = u_xlat8;
        x_3840 = vec3<f32>(x_3843.x, x_3843.y, x_3843.z);
      } else {
        let x_3846 : f32 = u_xlat77;
        x_3840 = vec3<f32>(x_3846, x_3846, x_3846);
      }
      let x_3848 : vec3<f32> = x_3840;
      let x_3849 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3855 : vec4<f32> = u_xlat8;
    let x_3857 : i32 = u_xlati74;
    let x_3859 : vec4<f32> = x_1940.x_AdditionalLightsColor[x_3857];
    let x_3861 : vec3<f32> = (vec3<f32>(x_3855.x, x_3855.y, x_3855.z) * vec3<f32>(x_3859.x, x_3859.y, x_3859.z));
    let x_3862 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3861.x, x_3861.y, x_3861.z, x_3862.w);
    let x_3864 : f32 = u_xlat75;
    let x_3865 : f32 = u_xlat76;
    u_xlat74 = (x_3864 * x_3865);
    let x_3867 : f32 = u_xlat74;
    let x_3869 : vec4<f32> = u_xlat8;
    let x_3871 : vec3<f32> = (vec3<f32>(x_3867, x_3867, x_3867) * vec3<f32>(x_3869.x, x_3869.y, x_3869.z));
    let x_3872 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3872.w);
    let x_3874 : vec4<f32> = u_xlat1;
    let x_3876 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3874.x, x_3874.y, x_3874.z), vec3<f32>(x_3876.x, x_3876.y, x_3876.z));
    let x_3879 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3879, 0.0f, 1.0f);
    let x_3881 : f32 = u_xlat74;
    let x_3883 : vec4<f32> = u_xlat8;
    let x_3885 : vec3<f32> = (vec3<f32>(x_3881, x_3881, x_3881) * vec3<f32>(x_3883.x, x_3883.y, x_3883.z));
    let x_3886 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3885.x, x_3885.y, x_3885.z, x_3886.w);
    let x_3888 : vec3<f32> = u_xlat2;
    let x_3889 : f32 = u_xlat71;
    let x_3892 : vec4<f32> = u_xlat7;
    let x_3894 : vec3<f32> = ((x_3888 * vec3<f32>(x_3889, x_3889, x_3889)) + vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
    let x_3895 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
    let x_3897 : vec4<f32> = u_xlat7;
    let x_3899 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3897.x, x_3897.y, x_3897.z), vec3<f32>(x_3899.x, x_3899.y, x_3899.z));
    let x_3902 : f32 = u_xlat74;
    u_xlat74 = max(x_3902, 1.17549435e-38f);
    let x_3904 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3904);
    let x_3906 : f32 = u_xlat74;
    let x_3908 : vec4<f32> = u_xlat7;
    let x_3910 : vec3<f32> = (vec3<f32>(x_3906, x_3906, x_3906) * vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
    let x_3913 : vec4<f32> = u_xlat1;
    let x_3915 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3913.x, x_3913.y, x_3913.z), vec3<f32>(x_3915.x, x_3915.y, x_3915.z));
    let x_3918 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3918, 0.0f, 1.0f);
    let x_3920 : f32 = u_xlat74;
    u_xlat74 = log2(x_3920);
    let x_3922 : f32 = u_xlat70;
    let x_3923 : f32 = u_xlat74;
    u_xlat74 = (x_3922 * x_3923);
    let x_3925 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3925);
    let x_3927 : f32 = u_xlat74;
    let x_3930 : vec4<f32> = x_57.x_SpecColor;
    let x_3932 : vec3<f32> = (vec3<f32>(x_3927, x_3927, x_3927) * vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
    let x_3933 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
    let x_3935 : vec4<f32> = u_xlat7;
    let x_3937 : vec4<f32> = u_xlat8;
    let x_3939 : vec3<f32> = (vec3<f32>(x_3935.x, x_3935.y, x_3935.z) * vec3<f32>(x_3937.x, x_3937.y, x_3937.z));
    let x_3940 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3939.x, x_3939.y, x_3939.z, x_3940.w);
    let x_3942 : vec4<f32> = u_xlat9;
    let x_3944 : vec4<f32> = u_xlat0;
    let x_3947 : vec4<f32> = u_xlat7;
    let x_3949 : vec3<f32> = ((vec3<f32>(x_3942.x, x_3942.y, x_3942.z) * vec3<f32>(x_3944.y, x_3944.z, x_3944.w)) + vec3<f32>(x_3947.x, x_3947.y, x_3947.z));
    let x_3950 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3950.w);
    let x_3952 : vec4<f32> = u_xlat6;
    let x_3954 : vec4<f32> = u_xlat7;
    let x_3956 : vec3<f32> = (vec3<f32>(x_3952.x, x_3952.y, x_3952.z) + vec3<f32>(x_3954.x, x_3954.y, x_3954.z));
    let x_3957 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3956.x, x_3956.y, x_3956.z, x_3957.w);

    continuing {
      let x_3959 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3959 + bitcast<u32>(1i));
    }
  }
  let x_3962 : vec3<f32> = u_xlat3;
  let x_3963 : vec4<f32> = u_xlat0;
  let x_3966 : vec4<f32> = u_xlat4;
  u_xlat23 = ((x_3962 * vec3<f32>(x_3963.y, x_3963.z, x_3963.w)) + vec3<f32>(x_3966.x, x_3966.y, x_3966.z));
  let x_3971 : vec4<f32> = u_xlat6;
  let x_3973 : vec3<f32> = u_xlat23;
  let x_3974 : vec3<f32> = (vec3<f32>(x_3971.x, x_3971.y, x_3971.z) + x_3973);
  let x_3975 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3974.x, x_3974.y, x_3974.z, x_3975.w);
  let x_3979 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3979 == 1.0f);
  let x_3981 : bool = u_xlatb23;
  if (x_3981) {
    let x_3986 : f32 = u_xlat0.x;
    x_3982 = x_3986;
  } else {
    x_3982 = 1.0f;
  }
  let x_3988 : f32 = x_3982;
  SV_Target0.w = x_3988;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


