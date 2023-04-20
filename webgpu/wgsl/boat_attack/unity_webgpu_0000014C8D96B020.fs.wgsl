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
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_163 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb70 : bool;

@group(1) @binding(5) var<uniform> x_1734 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1980 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlatb73 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu70 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
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
  var x_1687 : f32;
  var x_1817 : f32;
  var x_1828 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2117 : f32;
  var x_2126 : f32;
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
  var x_3718 : f32;
  var x_3731 : f32;
  var x_3779 : f32;
  var x_3791 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat23 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat69;
  let x_88 : f32 = u_xlat46;
  u_xlat46 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat46;
  u_xlat46 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat23;
  let x_95 : f32 = u_xlat46;
  u_xlat23 = (x_94 / x_95);
  let x_97 : f32 = u_xlat23;
  u_xlat23 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat23;
  u_xlat23 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb46;
  if (x_108) {
    let x_112 : f32 = u_xlat23;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres0;
  let x_169 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres1;
  let x_180 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres2;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_198 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres3;
  let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : vec4<f32> = u_xlat5;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_233 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = x_163.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_233 < x_236);
  let x_239 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_255);
  let x_261 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_261);
  let x_265 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_265);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat4;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = max(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_281, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_289 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_289) + 4.0f);
  let x_296 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_296);
  let x_300 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_300) << bitcast<u32>(2i));
  let x_303 : vec4<f32> = vs_TEXCOORD2;
  let x_305 : i32 = u_xlati0;
  let x_308 : i32 = u_xlati0;
  let x_312 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_305 + 1i) / 4i)][((x_308 + 1i) % 4i)];
  let x_314 : vec3<f32> = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati0;
  let x_319 : i32 = u_xlati0;
  let x_322 : vec4<f32> = x_163.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec4<f32> = vs_TEXCOORD2;
  let x_327 : vec4<f32> = u_xlat3;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : i32 = u_xlati0;
  let x_335 : i32 = u_xlati0;
  let x_339 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_332 + 2i) / 4i)][((x_335 + 2i) % 4i)];
  let x_341 : vec4<f32> = vs_TEXCOORD2;
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.z, x_341.z, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : i32 = u_xlati0;
  let x_354 : i32 = u_xlati0;
  let x_358 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_351 + 3i) / 4i)][((x_354 + 3i) % 4i)];
  let x_360 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  u_xlat2.w = 1.0f;
  let x_370 : vec4<f32> = x_367.unity_SHAr;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_367.unity_SHAg;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_367.unity_SHAb;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.x) * vec4<f32>(x_388.x, x_388.y, x_388.z, x_388.z));
  let x_393 : vec4<f32> = x_367.unity_SHBr;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_367.unity_SHBg;
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_399, x_400);
  let x_405 : vec4<f32> = x_367.unity_SHBb;
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_405, x_406);
  let x_410 : f32 = u_xlat2.y;
  let x_412 : f32 = u_xlat2.y;
  u_xlat0.x = (x_410 * x_412);
  let x_416 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_416 * x_418) + -(x_421));
  let x_427 : vec4<f32> = x_367.unity_SHC;
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec3<f32> = max(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : f32 = x_163.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_451);
  let x_453 : bool = u_xlatb0;
  if (x_453) {
    let x_457 : f32 = x_163.x_MainLightShadowParams.y;
    u_xlatb0 = (x_457 == 1.0f);
    let x_459 : bool = u_xlatb0;
    if (x_459) {
      let x_462 : vec4<f32> = u_xlat3;
      let x_466 : vec4<f32> = x_163.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) + x_466);
      let x_470 : vec4<f32> = u_xlat5;
      let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
      let x_473 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_485 : vec3<f32> = txVec0;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.x = x_487;
      let x_490 : vec4<f32> = u_xlat5;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec1;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat6.y = x_502;
      let x_504 : vec4<f32> = u_xlat3;
      let x_508 : vec4<f32> = x_163.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_504.x, x_504.y, x_504.x, x_504.y) + x_508);
      let x_511 : vec4<f32> = u_xlat5;
      let x_512 : vec2<f32> = vec2<f32>(x_511.x, x_511.y);
      let x_514 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec2;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat6.z = x_523;
      let x_526 : vec4<f32> = u_xlat5;
      let x_527 : vec2<f32> = vec2<f32>(x_526.z, x_526.w);
      let x_529 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec3;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat6.w = x_538;
      let x_540 : vec4<f32> = u_xlat6;
      u_xlat0.x = dot(x_540, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_548 : f32 = x_163.x_MainLightShadowParams.y;
      u_xlatb69 = (x_548 == 2.0f);
      let x_550 : bool = u_xlatb69;
      if (x_550) {
        let x_553 : vec4<f32> = u_xlat3;
        let x_557 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_561 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_557.z, x_557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat5;
        let x_566 : vec2<f32> = floor(vec2<f32>(x_564.x, x_564.y));
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_571 : vec4<f32> = u_xlat3;
        let x_574 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_577 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_571.x, x_571.y) * vec2<f32>(x_574.z, x_574.w)) + -(vec2<f32>(x_577.x, x_577.y)));
        let x_581 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_581.x, x_581.x, x_581.y, x_581.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_586 : vec4<f32> = u_xlat6;
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_586.x, x_586.x, x_586.z, x_586.z) * vec4<f32>(x_588.x, x_588.x, x_588.z, x_588.z));
        let x_591 : vec4<f32> = u_xlat7;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.y, x_591.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_596.y, x_595.y, x_596.w);
        let x_598 : vec4<f32> = u_xlat7;
        let x_601 : vec2<f32> = u_xlat51;
        let x_603 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_601));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_607) + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec2<f32> = u_xlat51;
        let x_614 : vec2<f32> = min(x_612, vec2<f32>(0.0f, 0.0f));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat8;
        let x_620 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = u_xlat53;
        let x_624 : vec2<f32> = ((-(vec2<f32>(x_617.x, x_617.y)) * vec2<f32>(x_620.x, x_620.y)) + x_623);
        let x_625 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_627, vec2<f32>(0.0f, 0.0f));
        let x_629 : vec2<f32> = u_xlat51;
        let x_631 : vec2<f32> = u_xlat51;
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_629) * x_631) + vec2<f32>(x_633.y, x_633.w));
        let x_636 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = (vec2<f32>(x_636.x, x_636.y) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_641 + vec2<f32>(1.0f, 1.0f));
        let x_644 : vec4<f32> = u_xlat7;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec2<f32> = u_xlat53;
        let x_652 : vec2<f32> = (x_651 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_661 : vec2<f32> = u_xlat51;
        let x_662 : vec2<f32> = (x_661 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_663 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : f32 = u_xlat8.x;
        u_xlat9.z = x_669;
        let x_672 : f32 = u_xlat51.x;
        u_xlat9.w = x_672;
        let x_675 : f32 = u_xlat10.x;
        u_xlat7.z = x_675;
        let x_678 : f32 = u_xlat6.x;
        u_xlat7.w = x_678;
        let x_681 : vec4<f32> = u_xlat7;
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_681.z, x_681.w, x_681.x, x_681.z) + vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.z));
        let x_687 : f32 = u_xlat9.y;
        u_xlat8.z = x_687;
        let x_690 : f32 = u_xlat51.y;
        u_xlat8.w = x_690;
        let x_693 : f32 = u_xlat7.y;
        u_xlat10.z = x_693;
        let x_696 : f32 = u_xlat6.z;
        u_xlat10.w = x_696;
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec4<f32> = u_xlat10;
        let x_702 : vec3<f32> = (vec3<f32>(x_698.z, x_698.y, x_698.w) + vec3<f32>(x_700.z, x_700.y, x_700.w));
        let x_703 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        let x_707 : vec4<f32> = u_xlat11;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.z, x_705.w) / vec3<f32>(x_707.z, x_707.w, x_707.y));
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat7;
        let x_718 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat10;
        let x_723 : vec4<f32> = u_xlat6;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) / vec3<f32>(x_723.x, x_723.y, x_723.z));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat7;
        let x_736 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_738 : vec3<f32> = (vec3<f32>(x_733.y, x_733.x, x_733.z) * vec3<f32>(x_736.x, x_736.x, x_736.x));
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat8;
        let x_744 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_744.y, x_744.y, x_744.y));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_750 : f32 = u_xlat8.x;
        u_xlat7.w = x_750;
        let x_752 : vec4<f32> = u_xlat5;
        let x_755 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.y, x_758.w, x_758.x, x_758.w));
        let x_761 : vec4<f32> = u_xlat5;
        let x_764 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_764.x, x_764.y)) + vec2<f32>(x_767.z, x_767.w));
        let x_771 : f32 = u_xlat7.y;
        u_xlat8.w = x_771;
        let x_773 : vec4<f32> = u_xlat8;
        let x_774 : vec2<f32> = vec2<f32>(x_773.y, x_773.z);
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_775.x, x_774.x, x_775.z, x_774.y);
        let x_777 : vec4<f32> = u_xlat5;
        let x_780 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) * vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y)) + vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.y));
        let x_786 : vec4<f32> = u_xlat5;
        let x_789 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.w, x_792.y, x_792.w, x_792.z));
        let x_795 : vec4<f32> = u_xlat5;
        let x_798 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.x, x_801.w, x_801.z, x_801.w));
        let x_805 : vec4<f32> = u_xlat6;
        let x_807 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_805.x, x_805.x, x_805.x, x_805.y) * vec4<f32>(x_807.z, x_807.w, x_807.y, x_807.z));
        let x_811 : vec4<f32> = u_xlat6;
        let x_813 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_811.y, x_811.y, x_811.z, x_811.z) * x_813);
        let x_816 : f32 = u_xlat6.z;
        let x_818 : f32 = u_xlat11.y;
        u_xlat69 = (x_816 * x_818);
        let x_821 : vec4<f32> = u_xlat9;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_832 : vec3<f32> = txVec4;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat70 = x_834;
        let x_836 : vec4<f32> = u_xlat9;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_847 : vec3<f32> = txVec5;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat71 = x_849;
        let x_850 : f32 = u_xlat71;
        let x_852 : f32 = u_xlat12.y;
        u_xlat71 = (x_850 * x_852);
        let x_855 : f32 = u_xlat12.x;
        let x_856 : f32 = u_xlat70;
        let x_858 : f32 = u_xlat71;
        u_xlat70 = ((x_855 * x_856) + x_858);
        let x_861 : vec2<f32> = u_xlat51;
        let x_863 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec6;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat71 = x_872;
        let x_874 : f32 = u_xlat12.z;
        let x_875 : f32 = u_xlat71;
        let x_877 : f32 = u_xlat70;
        u_xlat70 = ((x_874 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat8;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec7;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat71 = x_892;
        let x_894 : f32 = u_xlat12.w;
        let x_895 : f32 = u_xlat71;
        let x_897 : f32 = u_xlat70;
        u_xlat70 = ((x_894 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat10;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec8;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat71 = x_912;
        let x_914 : f32 = u_xlat13.x;
        let x_915 : f32 = u_xlat71;
        let x_917 : f32 = u_xlat70;
        u_xlat70 = ((x_914 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat10;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec9;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat71 = x_932;
        let x_934 : f32 = u_xlat13.y;
        let x_935 : f32 = u_xlat71;
        let x_937 : f32 = u_xlat70;
        u_xlat70 = ((x_934 * x_935) + x_937);
        let x_940 : vec4<f32> = u_xlat8;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec10;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_950.xy, x_950.z);
        u_xlat71 = x_952;
        let x_954 : f32 = u_xlat13.z;
        let x_955 : f32 = u_xlat71;
        let x_957 : f32 = u_xlat70;
        u_xlat70 = ((x_954 * x_955) + x_957);
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
        let x_963 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec11;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_970.xy, x_970.z);
        u_xlat71 = x_972;
        let x_974 : f32 = u_xlat13.w;
        let x_975 : f32 = u_xlat71;
        let x_977 : f32 = u_xlat70;
        u_xlat70 = ((x_974 * x_975) + x_977);
        let x_980 : vec4<f32> = u_xlat7;
        let x_981 : vec2<f32> = vec2<f32>(x_980.z, x_980.w);
        let x_983 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec12;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat71 = x_992;
        let x_993 : f32 = u_xlat69;
        let x_994 : f32 = u_xlat71;
        let x_996 : f32 = u_xlat70;
        u_xlat0.x = ((x_993 * x_994) + x_996);
      } else {
        let x_1000 : vec4<f32> = u_xlat3;
        let x_1003 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat5;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat3;
        let x_1017 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = u_xlat51;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat51;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat53;
        let x_1056 : vec2<f32> = u_xlat53;
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1067 : vec2<f32> = u_xlat53;
        let x_1069 : vec2<f32> = u_xlat53;
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1073 : vec2<f32> = ((-(x_1067) * x_1069) + vec2<f32>(x_1071.y, x_1071.w));
        let x_1074 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1073.x, x_1074.y, x_1073.y);
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1079 : vec2<f32> = (vec2<f32>(x_1076.x, x_1076.y) + vec2<f32>(2.0f, 2.0f));
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec3<f32> = u_xlat29;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.z) + vec2<f32>(2.0f, 2.0f));
        let x_1085 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1085.x, x_1084.x, x_1085.z, x_1084.y);
        let x_1088 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1088 * 0.08163200318813323975f);
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1092.z, x_1092.x, x_1092.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1105 : f32 = u_xlat10.y;
        u_xlat9.x = x_1105;
        let x_1107 : vec2<f32> = u_xlat51;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1115.x, x_1114.x, x_1115.z, x_1114.y);
        let x_1117 : vec2<f32> = u_xlat51;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1122.w);
        let x_1125 : f32 = u_xlat6.x;
        u_xlat7.y = x_1125;
        let x_1128 : f32 = u_xlat8.y;
        u_xlat7.w = x_1128;
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1130 + x_1131);
        let x_1133 : vec2<f32> = u_xlat51;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1133.y, x_1133.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec2<f32> = u_xlat51;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1146 : f32 = u_xlat6.y;
        u_xlat8.y = x_1146;
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1148 + x_1149);
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1151 / x_1152);
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1154 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1160 / x_1161);
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1163 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1168 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1165.w, x_1165.x, x_1165.y, x_1165.z) * vec4<f32>(x_1168.x, x_1168.x, x_1168.x, x_1168.x));
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1174 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1171.x, x_1171.w, x_1171.y, x_1171.z) * vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1178 : vec3<f32> = vec3<f32>(x_1177.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
        let x_1182 : f32 = u_xlat8.x;
        u_xlat10.y = x_1182;
        let x_1184 : vec4<f32> = u_xlat5;
        let x_1187 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y) * vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y)) + vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1196 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.w, x_1199.y));
        let x_1203 : f32 = u_xlat10.y;
        u_xlat7.y = x_1203;
        let x_1206 : f32 = u_xlat8.z;
        u_xlat10.y = x_1206;
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.w, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat10.y;
        u_xlat7.z = x_1229;
        let x_1232 : vec4<f32> = u_xlat5;
        let x_1235 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.z));
        let x_1242 : f32 = u_xlat8.w;
        u_xlat10.y = x_1242;
        let x_1245 : vec4<f32> = u_xlat5;
        let x_1248 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.w, x_1261.y));
        let x_1265 : f32 = u_xlat10.y;
        u_xlat7.w = x_1265;
        let x_1268 : vec4<f32> = u_xlat5;
        let x_1271 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.x, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1278 : vec3<f32> = vec3<f32>(x_1277.x, x_1277.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
        let x_1281 : vec4<f32> = u_xlat5;
        let x_1284 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1287.y));
        let x_1291 : vec4<f32> = u_xlat5;
        let x_1294 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1301 : f32 = u_xlat7.x;
        u_xlat8.x = x_1301;
        let x_1303 : vec4<f32> = u_xlat5;
        let x_1306 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x) * x_1317);
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.y) * x_1322);
        let x_1325 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1325.z, x_1325.z, x_1325.z, x_1325.z) * x_1327);
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1329.w, x_1329.w, x_1329.w, x_1329.w) * x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec13;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat69 = x_1346;
        let x_1348 : vec4<f32> = u_xlat11;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.z, x_1348.w);
        let x_1351 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec14;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat70 = x_1360;
        let x_1361 : f32 = u_xlat70;
        let x_1363 : f32 = u_xlat16.y;
        u_xlat70 = (x_1361 * x_1363);
        let x_1366 : f32 = u_xlat16.x;
        let x_1367 : f32 = u_xlat69;
        let x_1369 : f32 = u_xlat70;
        u_xlat69 = ((x_1366 * x_1367) + x_1369);
        let x_1372 : vec2<f32> = u_xlat51;
        let x_1374 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec15;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat70 = x_1383;
        let x_1385 : f32 = u_xlat16.z;
        let x_1386 : f32 = u_xlat70;
        let x_1388 : f32 = u_xlat69;
        u_xlat69 = ((x_1385 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat14;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec16;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat70 = x_1403;
        let x_1405 : f32 = u_xlat16.w;
        let x_1406 : f32 = u_xlat70;
        let x_1408 : f32 = u_xlat69;
        u_xlat69 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec17;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat70 = x_1423;
        let x_1425 : f32 = u_xlat17.x;
        let x_1426 : f32 = u_xlat70;
        let x_1428 : f32 = u_xlat69;
        u_xlat69 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec18;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat70 = x_1443;
        let x_1445 : f32 = u_xlat17.y;
        let x_1446 : f32 = u_xlat70;
        let x_1448 : f32 = u_xlat69;
        u_xlat69 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat13;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec19;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat70 = x_1463;
        let x_1465 : f32 = u_xlat17.z;
        let x_1466 : f32 = u_xlat70;
        let x_1468 : f32 = u_xlat69;
        u_xlat69 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat14;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec20;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat70 = x_1483;
        let x_1485 : f32 = u_xlat17.w;
        let x_1486 : f32 = u_xlat70;
        let x_1488 : f32 = u_xlat69;
        u_xlat69 = ((x_1485 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat15;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec21;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat70 = x_1503;
        let x_1505 : f32 = u_xlat18.x;
        let x_1506 : f32 = u_xlat70;
        let x_1508 : f32 = u_xlat69;
        u_xlat69 = ((x_1505 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat15;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec22;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat70 = x_1523;
        let x_1525 : f32 = u_xlat18.y;
        let x_1526 : f32 = u_xlat70;
        let x_1528 : f32 = u_xlat69;
        u_xlat69 = ((x_1525 * x_1526) + x_1528);
        let x_1531 : vec2<f32> = u_xlat30;
        let x_1533 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec23;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat70 = x_1542;
        let x_1544 : f32 = u_xlat18.z;
        let x_1545 : f32 = u_xlat70;
        let x_1547 : f32 = u_xlat69;
        u_xlat69 = ((x_1544 * x_1545) + x_1547);
        let x_1550 : vec2<f32> = u_xlat59;
        let x_1552 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec24;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat70 = x_1561;
        let x_1563 : f32 = u_xlat18.w;
        let x_1564 : f32 = u_xlat70;
        let x_1566 : f32 = u_xlat69;
        u_xlat69 = ((x_1563 * x_1564) + x_1566);
        let x_1569 : vec4<f32> = u_xlat10;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
        let x_1572 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec25;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat70 = x_1581;
        let x_1583 : f32 = u_xlat6.x;
        let x_1584 : f32 = u_xlat70;
        let x_1586 : f32 = u_xlat69;
        u_xlat69 = ((x_1583 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat10;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec26;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat70 = x_1601;
        let x_1603 : f32 = u_xlat6.y;
        let x_1604 : f32 = u_xlat70;
        let x_1606 : f32 = u_xlat69;
        u_xlat69 = ((x_1603 * x_1604) + x_1606);
        let x_1609 : vec2<f32> = u_xlat54;
        let x_1611 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec27;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat70 = x_1620;
        let x_1622 : f32 = u_xlat6.z;
        let x_1623 : f32 = u_xlat70;
        let x_1625 : f32 = u_xlat69;
        u_xlat69 = ((x_1622 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat5;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.x, x_1628.y);
        let x_1631 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec28;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat70 = x_1640;
        let x_1642 : f32 = u_xlat6.w;
        let x_1643 : f32 = u_xlat70;
        let x_1645 : f32 = u_xlat69;
        u_xlat0.x = ((x_1642 * x_1643) + x_1645);
      }
    }
  } else {
    let x_1650 : vec4<f32> = u_xlat3;
    let x_1651 : vec2<f32> = vec2<f32>(x_1650.x, x_1650.y);
    let x_1653 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
    let x_1660 : vec3<f32> = txVec29;
    let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
    u_xlat0.x = x_1662;
  }
  let x_1665 : f32 = x_163.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1665) + 1.0f);
  let x_1669 : f32 = u_xlat0.x;
  let x_1671 : f32 = x_163.x_MainLightShadowParams.x;
  let x_1673 : f32 = u_xlat69;
  u_xlat0.x = ((x_1669 * x_1671) + x_1673);
  let x_1677 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1677);
  let x_1681 : f32 = u_xlat3.z;
  u_xlatb70 = (x_1681 >= 1.0f);
  let x_1683 : bool = u_xlatb69;
  let x_1684 : bool = u_xlatb70;
  u_xlatb69 = (x_1683 | x_1684);
  let x_1686 : bool = u_xlatb69;
  if (x_1686) {
    x_1687 = 1.0f;
  } else {
    let x_1692 : f32 = u_xlat0.x;
    x_1687 = x_1692;
  }
  let x_1693 : f32 = x_1687;
  u_xlat0.x = x_1693;
  let x_1695 : vec4<f32> = vs_TEXCOORD2;
  let x_1699 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1695.x, x_1695.y, x_1695.z) + -(x_1699));
  let x_1702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat3;
  let x_1706 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : f32 = u_xlat69;
  let x_1711 : f32 = x_163.x_MainLightShadowParams.z;
  let x_1714 : f32 = x_163.x_MainLightShadowParams.w;
  u_xlat70 = ((x_1709 * x_1711) + x_1714);
  let x_1716 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1716, 0.0f, 1.0f);
  let x_1719 : f32 = u_xlat0.x;
  u_xlat71 = (-(x_1719) + 1.0f);
  let x_1722 : f32 = u_xlat70;
  let x_1723 : f32 = u_xlat71;
  let x_1726 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1722 * x_1723) + x_1726);
  let x_1736 : f32 = x_1734.x_MainLightCookieTextureFormat;
  u_xlatb70 = !((x_1736 == -1.0f));
  let x_1738 : bool = u_xlatb70;
  if (x_1738) {
    let x_1741 : vec4<f32> = vs_TEXCOORD2;
    let x_1744 : vec4<f32> = x_1734.x_MainLightWorldToLight[1i];
    let x_1746 : vec2<f32> = (vec2<f32>(x_1741.y, x_1741.y) * vec2<f32>(x_1744.x, x_1744.y));
    let x_1747 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1746.x, x_1746.y, x_1747.z, x_1747.w);
    let x_1750 : vec4<f32> = x_1734.x_MainLightWorldToLight[0i];
    let x_1752 : vec4<f32> = vs_TEXCOORD2;
    let x_1755 : vec4<f32> = u_xlat3;
    let x_1757 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1752.x, x_1752.x)) + vec2<f32>(x_1755.x, x_1755.y));
    let x_1758 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1757.x, x_1757.y, x_1758.z, x_1758.w);
    let x_1761 : vec4<f32> = x_1734.x_MainLightWorldToLight[2i];
    let x_1763 : vec4<f32> = vs_TEXCOORD2;
    let x_1766 : vec4<f32> = u_xlat3;
    let x_1768 : vec2<f32> = ((vec2<f32>(x_1761.x, x_1761.y) * vec2<f32>(x_1763.z, x_1763.z)) + vec2<f32>(x_1766.x, x_1766.y));
    let x_1769 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1768.x, x_1768.y, x_1769.z, x_1769.w);
    let x_1771 : vec4<f32> = u_xlat3;
    let x_1774 : vec4<f32> = x_1734.x_MainLightWorldToLight[3i];
    let x_1776 : vec2<f32> = (vec2<f32>(x_1771.x, x_1771.y) + vec2<f32>(x_1774.x, x_1774.y));
    let x_1777 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1776.x, x_1776.y, x_1777.z, x_1777.w);
    let x_1779 : vec4<f32> = u_xlat3;
    let x_1782 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1783 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
    let x_1790 : vec4<f32> = u_xlat3;
    let x_1793 : f32 = x_27.x_GlobalMipBias.x;
    let x_1794 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1790.x, x_1790.y), x_1793);
    u_xlat3 = x_1794;
    let x_1799 : f32 = x_1734.x_MainLightCookieTextureFormat;
    let x_1801 : f32 = x_1734.x_MainLightCookieTextureFormat;
    let x_1803 : f32 = x_1734.x_MainLightCookieTextureFormat;
    let x_1805 : f32 = x_1734.x_MainLightCookieTextureFormat;
    let x_1806 : vec4<f32> = vec4<f32>(x_1799, x_1801, x_1803, x_1805);
    let x_1813 : vec4<bool> = (vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1806.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1813.x, x_1813.y);
    let x_1816 : bool = u_xlatb5.y;
    if (x_1816) {
      let x_1821 : f32 = u_xlat3.w;
      x_1817 = x_1821;
    } else {
      let x_1824 : f32 = u_xlat3.x;
      x_1817 = x_1824;
    }
    let x_1825 : f32 = x_1817;
    u_xlat70 = x_1825;
    let x_1827 : bool = u_xlatb5.x;
    if (x_1827) {
      let x_1831 : vec4<f32> = u_xlat3;
      x_1828 = vec3<f32>(x_1831.x, x_1831.y, x_1831.z);
    } else {
      let x_1834 : f32 = u_xlat70;
      x_1828 = vec3<f32>(x_1834, x_1834, x_1834);
    }
    let x_1836 : vec3<f32> = x_1828;
    let x_1837 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1843 : vec4<f32> = u_xlat3;
  let x_1846 : vec4<f32> = x_27.x_MainLightColor;
  let x_1848 : vec3<f32> = (vec3<f32>(x_1843.x, x_1843.y, x_1843.z) * vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1852 : f32 = u_xlat0.x;
  let x_1854 : f32 = x_367.unity_LightData.z;
  u_xlat0.x = (x_1852 * x_1854);
  let x_1857 : vec4<f32> = u_xlat0;
  let x_1859 : vec4<f32> = u_xlat3;
  let x_1861 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.x, x_1857.x) * vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
  let x_1862 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  let x_1864 : vec4<f32> = u_xlat2;
  let x_1867 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1864.x, x_1864.y, x_1864.z), vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1872 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1872, 0.0f, 1.0f);
  let x_1875 : vec4<f32> = u_xlat0;
  let x_1877 : vec4<f32> = u_xlat3;
  let x_1879 : vec3<f32> = (vec3<f32>(x_1875.x, x_1875.x, x_1875.x) * vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : vec4<f32> = u_xlat1;
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1890 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1892 : f32 = x_367.unity_LightData.y;
  u_xlat0.x = min(x_1890, x_1892);
  let x_1896 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1896));
  let x_1899 : f32 = u_xlat69;
  let x_1902 : f32 = x_163.x_AdditionalShadowFadeParams.x;
  let x_1905 : f32 = x_163.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1899 * x_1902) + x_1905);
  let x_1907 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1907, 0.0f, 1.0f);
  let x_1910 : f32 = x_1734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1912 : f32 = x_1734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1914 : f32 = x_1734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1916 : f32 = x_1734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1917 : vec4<f32> = vec4<f32>(x_1910, x_1912, x_1914, x_1916);
  let x_1923 : vec4<bool> = (vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1917.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1923.x, x_1923.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1935 : u32 = u_xlatu_loop_1;
    let x_1936 : u32 = u_xlatu0;
    if ((x_1935 < x_1936)) {
    } else {
      break;
    }
    let x_1939 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1939 >> 2u);
    let x_1942 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1942 & 3u));
    let x_1945 : u32 = u_xlatu71;
    let x_1948 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_1945)];
    let x_1958 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1963 : vec4<u32> = indexable[x_1958];
    u_xlat71 = dot(x_1948, bitcast<vec4<f32>>(x_1963));
    let x_1967 : f32 = u_xlat71;
    u_xlati71 = i32(x_1967);
    let x_1969 : vec4<f32> = vs_TEXCOORD2;
    let x_1981 : i32 = u_xlati71;
    let x_1983 : vec4<f32> = x_1980.x_AdditionalLightsPosition[x_1981];
    let x_1986 : i32 = u_xlati71;
    let x_1988 : vec4<f32> = x_1980.x_AdditionalLightsPosition[x_1986];
    let x_1990 : vec3<f32> = ((-(vec3<f32>(x_1969.x, x_1969.y, x_1969.z)) * vec3<f32>(x_1983.w, x_1983.w, x_1983.w)) + vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
    let x_1994 : vec4<f32> = u_xlat7;
    let x_1996 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
    let x_1999 : f32 = u_xlat72;
    u_xlat72 = max(x_1999, 0.00006103515625f);
    let x_2003 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2003);
    let x_2005 : f32 = u_xlat73;
    let x_2007 : vec4<f32> = u_xlat7;
    let x_2009 : vec3<f32> = (vec3<f32>(x_2005, x_2005, x_2005) * vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
    let x_2010 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
    let x_2012 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2012);
    let x_2014 : f32 = u_xlat72;
    let x_2015 : i32 = u_xlati71;
    let x_2017 : f32 = x_1980.x_AdditionalLightsAttenuation[x_2015].x;
    u_xlat72 = (x_2014 * x_2017);
    let x_2019 : f32 = u_xlat72;
    let x_2021 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2019) * x_2021) + 1.0f);
    let x_2024 : f32 = u_xlat72;
    u_xlat72 = max(x_2024, 0.0f);
    let x_2026 : f32 = u_xlat72;
    let x_2027 : f32 = u_xlat72;
    u_xlat72 = (x_2026 * x_2027);
    let x_2029 : f32 = u_xlat72;
    let x_2030 : f32 = u_xlat73;
    u_xlat72 = (x_2029 * x_2030);
    let x_2032 : i32 = u_xlati71;
    let x_2034 : vec4<f32> = x_1980.x_AdditionalLightsSpotDir[x_2032];
    let x_2036 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2034.x, x_2034.y, x_2034.z), vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : f32 = u_xlat73;
    let x_2040 : i32 = u_xlati71;
    let x_2042 : f32 = x_1980.x_AdditionalLightsAttenuation[x_2040].z;
    let x_2044 : i32 = u_xlati71;
    let x_2046 : f32 = x_1980.x_AdditionalLightsAttenuation[x_2044].w;
    u_xlat73 = ((x_2039 * x_2042) + x_2046);
    let x_2048 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2048, 0.0f, 1.0f);
    let x_2050 : f32 = u_xlat73;
    let x_2051 : f32 = u_xlat73;
    u_xlat73 = (x_2050 * x_2051);
    let x_2053 : f32 = u_xlat72;
    let x_2054 : f32 = u_xlat73;
    u_xlat72 = (x_2053 * x_2054);
    let x_2058 : i32 = u_xlati71;
    let x_2060 : f32 = x_163.x_AdditionalShadowParams[x_2058].w;
    u_xlati73 = i32(x_2060);
    let x_2063 : i32 = u_xlati73;
    u_xlatb51 = (x_2063 >= 0i);
    let x_2065 : bool = u_xlatb51;
    if (x_2065) {
      let x_2069 : i32 = u_xlati71;
      let x_2071 : f32 = x_163.x_AdditionalShadowParams[x_2069].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2071, x_2071, x_2071, x_2071))));
      let x_2075 : bool = u_xlatb51;
      if (x_2075) {
        let x_2079 : vec4<f32> = u_xlat7;
        let x_2082 : vec4<f32> = u_xlat7;
        let x_2085 : vec4<bool> = (abs(vec4<f32>(x_2079.z, x_2079.z, x_2079.y, x_2079.z)) >= abs(vec4<f32>(x_2082.x, x_2082.y, x_2082.x, x_2082.x)));
        let x_2087 : vec3<bool> = vec3<bool>(x_2085.x, x_2085.y, x_2085.z);
        let x_2088 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
        let x_2091 : bool = u_xlatb8.y;
        let x_2093 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2091 & x_2093);
        let x_2095 : vec4<f32> = u_xlat7;
        let x_2098 : vec4<bool> = (-(vec4<f32>(x_2095.z, x_2095.y, x_2095.z, x_2095.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2099 : vec3<bool> = vec3<bool>(x_2098.x, x_2098.y, x_2098.w);
        let x_2100 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2099.x, x_2099.y, x_2100.z, x_2099.z);
        let x_2103 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2103);
        let x_2108 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2108);
        let x_2113 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2113);
        let x_2116 : bool = u_xlatb8.z;
        if (x_2116) {
          let x_2121 : f32 = u_xlat8.y;
          x_2117 = x_2121;
        } else {
          let x_2123 : f32 = u_xlat74;
          x_2117 = x_2123;
        }
        let x_2124 : f32 = x_2117;
        u_xlat74 = x_2124;
        let x_2125 : bool = u_xlatb51;
        if (x_2125) {
          let x_2130 : f32 = u_xlat8.x;
          x_2126 = x_2130;
        } else {
          let x_2132 : f32 = u_xlat74;
          x_2126 = x_2132;
        }
        let x_2133 : f32 = x_2126;
        u_xlat51.x = x_2133;
        let x_2135 : i32 = u_xlati71;
        let x_2137 : f32 = x_163.x_AdditionalShadowParams[x_2135].w;
        u_xlat74 = trunc(x_2137);
        let x_2140 : f32 = u_xlat51.x;
        let x_2141 : f32 = u_xlat74;
        u_xlat51.x = (x_2140 + x_2141);
        let x_2145 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2145);
      }
      let x_2147 : i32 = u_xlati73;
      u_xlati73 = (x_2147 << bitcast<u32>(2i));
      let x_2149 : vec4<f32> = vs_TEXCOORD2;
      let x_2152 : i32 = u_xlati73;
      let x_2155 : i32 = u_xlati73;
      let x_2159 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2152 + 1i) / 4i)][((x_2155 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2149.y, x_2149.y, x_2149.y, x_2149.y) * x_2159);
      let x_2161 : i32 = u_xlati73;
      let x_2163 : i32 = u_xlati73;
      let x_2166 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[(x_2161 / 4i)][(x_2163 % 4i)];
      let x_2167 : vec4<f32> = vs_TEXCOORD2;
      let x_2170 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2166 * vec4<f32>(x_2167.x, x_2167.x, x_2167.x, x_2167.x)) + x_2170);
      let x_2172 : i32 = u_xlati73;
      let x_2175 : i32 = u_xlati73;
      let x_2179 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2172 + 2i) / 4i)][((x_2175 + 2i) % 4i)];
      let x_2180 : vec4<f32> = vs_TEXCOORD2;
      let x_2183 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2179 * vec4<f32>(x_2180.z, x_2180.z, x_2180.z, x_2180.z)) + x_2183);
      let x_2185 : vec4<f32> = u_xlat8;
      let x_2186 : i32 = u_xlati73;
      let x_2189 : i32 = u_xlati73;
      let x_2193 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2186 + 3i) / 4i)][((x_2189 + 3i) % 4i)];
      u_xlat8 = (x_2185 + x_2193);
      let x_2195 : vec4<f32> = u_xlat8;
      let x_2197 : vec4<f32> = u_xlat8;
      let x_2199 : vec3<f32> = (vec3<f32>(x_2195.x, x_2195.y, x_2195.z) / vec3<f32>(x_2197.w, x_2197.w, x_2197.w));
      let x_2200 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
      let x_2203 : i32 = u_xlati71;
      let x_2205 : f32 = x_163.x_AdditionalShadowParams[x_2203].y;
      u_xlatb73 = (0.0f < x_2205);
      let x_2207 : bool = u_xlatb73;
      if (x_2207) {
        let x_2210 : i32 = u_xlati71;
        let x_2212 : f32 = x_163.x_AdditionalShadowParams[x_2210].y;
        u_xlatb73 = (1.0f == x_2212);
        let x_2214 : bool = u_xlatb73;
        if (x_2214) {
          let x_2217 : vec4<f32> = u_xlat8;
          let x_2221 : vec4<f32> = x_163.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2217.x, x_2217.y, x_2217.x, x_2217.y) + x_2221);
          let x_2224 : vec4<f32> = u_xlat9;
          let x_2225 : vec2<f32> = vec2<f32>(x_2224.x, x_2224.y);
          let x_2227 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2225.x, x_2225.y, x_2227);
          let x_2235 : vec3<f32> = txVec30;
          let x_2237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2235.xy, x_2235.z);
          u_xlat10.x = x_2237;
          let x_2240 : vec4<f32> = u_xlat9;
          let x_2241 : vec2<f32> = vec2<f32>(x_2240.z, x_2240.w);
          let x_2243 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2241.x, x_2241.y, x_2243);
          let x_2250 : vec3<f32> = txVec31;
          let x_2252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2250.xy, x_2250.z);
          u_xlat10.y = x_2252;
          let x_2254 : vec4<f32> = u_xlat8;
          let x_2258 : vec4<f32> = x_163.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2254.x, x_2254.y, x_2254.x, x_2254.y) + x_2258);
          let x_2261 : vec4<f32> = u_xlat9;
          let x_2262 : vec2<f32> = vec2<f32>(x_2261.x, x_2261.y);
          let x_2264 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2262.x, x_2262.y, x_2264);
          let x_2271 : vec3<f32> = txVec32;
          let x_2273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2271.xy, x_2271.z);
          u_xlat10.z = x_2273;
          let x_2276 : vec4<f32> = u_xlat9;
          let x_2277 : vec2<f32> = vec2<f32>(x_2276.z, x_2276.w);
          let x_2279 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2277.x, x_2277.y, x_2279);
          let x_2286 : vec3<f32> = txVec33;
          let x_2288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2286.xy, x_2286.z);
          u_xlat10.w = x_2288;
          let x_2290 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2290, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2293 : i32 = u_xlati71;
          let x_2295 : f32 = x_163.x_AdditionalShadowParams[x_2293].y;
          u_xlatb51 = (2.0f == x_2295);
          let x_2297 : bool = u_xlatb51;
          if (x_2297) {
            let x_2300 : vec4<f32> = u_xlat8;
            let x_2304 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2300.x, x_2300.y) * vec2<f32>(x_2304.z, x_2304.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2308 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2308);
            let x_2310 : vec4<f32> = u_xlat8;
            let x_2313 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2316 : vec2<f32> = u_xlat51;
            let x_2318 : vec2<f32> = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2313.z, x_2313.w)) + -(x_2316));
            let x_2319 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
            let x_2321 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2321.x, x_2321.x, x_2321.y, x_2321.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2324 : vec4<f32> = u_xlat10;
            let x_2326 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2324.x, x_2324.x, x_2324.z, x_2324.z) * vec4<f32>(x_2326.x, x_2326.x, x_2326.z, x_2326.z));
            let x_2330 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2330.y, x_2330.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2333 : vec4<f32> = u_xlat11;
            let x_2336 : vec4<f32> = u_xlat9;
            let x_2339 : vec2<f32> = ((vec2<f32>(x_2333.x, x_2333.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2336.x, x_2336.y)));
            let x_2340 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2339.x, x_2340.y, x_2339.y, x_2340.w);
            let x_2342 : vec4<f32> = u_xlat9;
            let x_2345 : vec2<f32> = (-(vec2<f32>(x_2342.x, x_2342.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2346 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2349 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2349.x, x_2349.y), vec2<f32>(0.0f, 0.0f));
            let x_2352 : vec2<f32> = u_xlat57;
            let x_2354 : vec2<f32> = u_xlat57;
            let x_2356 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2352) * x_2354) + vec2<f32>(x_2356.x, x_2356.y));
            let x_2359 : vec4<f32> = u_xlat9;
            let x_2361 : vec2<f32> = max(vec2<f32>(x_2359.x, x_2359.y), vec2<f32>(0.0f, 0.0f));
            let x_2362 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2361.x, x_2361.y, x_2362.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat9;
            let x_2367 : vec4<f32> = u_xlat9;
            let x_2370 : vec4<f32> = u_xlat10;
            let x_2372 : vec2<f32> = ((-(vec2<f32>(x_2364.x, x_2364.y)) * vec2<f32>(x_2367.x, x_2367.y)) + vec2<f32>(x_2370.y, x_2370.w));
            let x_2373 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2372.x, x_2372.y, x_2373.z, x_2373.w);
            let x_2375 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2375 + vec2<f32>(1.0f, 1.0f));
            let x_2377 : vec4<f32> = u_xlat9;
            let x_2379 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) + vec2<f32>(1.0f, 1.0f));
            let x_2380 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec4<f32> = u_xlat10;
            let x_2384 : vec2<f32> = (vec2<f32>(x_2382.x, x_2382.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2385 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat11;
            let x_2389 : vec2<f32> = (vec2<f32>(x_2387.x, x_2387.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2390 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2392 : vec2<f32> = u_xlat57;
            let x_2393 : vec2<f32> = (x_2392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2394 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat9;
            let x_2398 : vec2<f32> = (vec2<f32>(x_2396.x, x_2396.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2399 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2398.x, x_2398.y, x_2399.z, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat10;
            let x_2403 : vec2<f32> = (vec2<f32>(x_2401.y, x_2401.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2404 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2407 : f32 = u_xlat11.x;
            u_xlat12.z = x_2407;
            let x_2410 : f32 = u_xlat9.x;
            u_xlat12.w = x_2410;
            let x_2413 : f32 = u_xlat14.x;
            u_xlat13.z = x_2413;
            let x_2416 : f32 = u_xlat55.x;
            u_xlat13.w = x_2416;
            let x_2418 : vec4<f32> = u_xlat12;
            let x_2420 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2418.z, x_2418.w, x_2418.x, x_2418.z) + vec4<f32>(x_2420.z, x_2420.w, x_2420.x, x_2420.z));
            let x_2424 : f32 = u_xlat12.y;
            u_xlat11.z = x_2424;
            let x_2427 : f32 = u_xlat9.y;
            u_xlat11.w = x_2427;
            let x_2430 : f32 = u_xlat13.y;
            u_xlat14.z = x_2430;
            let x_2433 : f32 = u_xlat55.y;
            u_xlat14.w = x_2433;
            let x_2435 : vec4<f32> = u_xlat11;
            let x_2437 : vec4<f32> = u_xlat14;
            let x_2439 : vec3<f32> = (vec3<f32>(x_2435.z, x_2435.y, x_2435.w) + vec3<f32>(x_2437.z, x_2437.y, x_2437.w));
            let x_2440 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
            let x_2442 : vec4<f32> = u_xlat13;
            let x_2444 : vec4<f32> = u_xlat10;
            let x_2446 : vec3<f32> = (vec3<f32>(x_2442.x, x_2442.z, x_2442.w) / vec3<f32>(x_2444.z, x_2444.w, x_2444.y));
            let x_2447 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
            let x_2449 : vec4<f32> = u_xlat11;
            let x_2451 : vec3<f32> = (vec3<f32>(x_2449.x, x_2449.y, x_2449.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2452 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
            let x_2454 : vec4<f32> = u_xlat14;
            let x_2456 : vec4<f32> = u_xlat9;
            let x_2458 : vec3<f32> = (vec3<f32>(x_2454.z, x_2454.y, x_2454.w) / vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
            let x_2459 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat12;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.y, x_2461.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2464 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat11;
            let x_2469 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2471 : vec3<f32> = (vec3<f32>(x_2466.y, x_2466.x, x_2466.z) * vec3<f32>(x_2469.x, x_2469.x, x_2469.x));
            let x_2472 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
            let x_2474 : vec4<f32> = u_xlat12;
            let x_2477 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2479 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * vec3<f32>(x_2477.y, x_2477.y, x_2477.y));
            let x_2480 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
            let x_2483 : f32 = u_xlat12.x;
            u_xlat11.w = x_2483;
            let x_2485 : vec2<f32> = u_xlat51;
            let x_2488 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2491 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2485.x, x_2485.y, x_2485.x, x_2485.y) * vec4<f32>(x_2488.x, x_2488.y, x_2488.x, x_2488.y)) + vec4<f32>(x_2491.y, x_2491.w, x_2491.x, x_2491.w));
            let x_2494 : vec2<f32> = u_xlat51;
            let x_2496 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2499 : vec4<f32> = u_xlat11;
            let x_2501 : vec2<f32> = ((x_2494 * vec2<f32>(x_2496.x, x_2496.y)) + vec2<f32>(x_2499.z, x_2499.w));
            let x_2502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
            let x_2505 : f32 = u_xlat11.y;
            u_xlat12.w = x_2505;
            let x_2507 : vec4<f32> = u_xlat12;
            let x_2508 : vec2<f32> = vec2<f32>(x_2507.y, x_2507.z);
            let x_2509 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2509.x, x_2508.x, x_2509.z, x_2508.y);
            let x_2511 : vec2<f32> = u_xlat51;
            let x_2514 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2517 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y) * vec4<f32>(x_2514.x, x_2514.y, x_2514.x, x_2514.y)) + vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2517.y));
            let x_2520 : vec2<f32> = u_xlat51;
            let x_2523 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2526 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2520.x, x_2520.y, x_2520.x, x_2520.y) * vec4<f32>(x_2523.x, x_2523.y, x_2523.x, x_2523.y)) + vec4<f32>(x_2526.w, x_2526.y, x_2526.w, x_2526.z));
            let x_2529 : vec2<f32> = u_xlat51;
            let x_2532 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2535 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2529.x, x_2529.y, x_2529.x, x_2529.y) * vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y)) + vec4<f32>(x_2535.x, x_2535.w, x_2535.z, x_2535.w));
            let x_2538 : vec4<f32> = u_xlat9;
            let x_2540 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2538.x, x_2538.x, x_2538.x, x_2538.y) * vec4<f32>(x_2540.z, x_2540.w, x_2540.y, x_2540.z));
            let x_2543 : vec4<f32> = u_xlat9;
            let x_2545 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2543.y, x_2543.y, x_2543.z, x_2543.z) * x_2545);
            let x_2548 : f32 = u_xlat9.z;
            let x_2550 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2548 * x_2550);
            let x_2554 : vec4<f32> = u_xlat13;
            let x_2555 : vec2<f32> = vec2<f32>(x_2554.x, x_2554.y);
            let x_2557 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
            let x_2564 : vec3<f32> = txVec34;
            let x_2566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
            u_xlat74 = x_2566;
            let x_2568 : vec4<f32> = u_xlat13;
            let x_2569 : vec2<f32> = vec2<f32>(x_2568.z, x_2568.w);
            let x_2571 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2569.x, x_2569.y, x_2571);
            let x_2579 : vec3<f32> = txVec35;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat75 = x_2581;
            let x_2582 : f32 = u_xlat75;
            let x_2584 : f32 = u_xlat16.y;
            u_xlat75 = (x_2582 * x_2584);
            let x_2587 : f32 = u_xlat16.x;
            let x_2588 : f32 = u_xlat74;
            let x_2590 : f32 = u_xlat75;
            u_xlat74 = ((x_2587 * x_2588) + x_2590);
            let x_2593 : vec4<f32> = u_xlat14;
            let x_2594 : vec2<f32> = vec2<f32>(x_2593.x, x_2593.y);
            let x_2596 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2594.x, x_2594.y, x_2596);
            let x_2603 : vec3<f32> = txVec36;
            let x_2605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2603.xy, x_2603.z);
            u_xlat75 = x_2605;
            let x_2607 : f32 = u_xlat16.z;
            let x_2608 : f32 = u_xlat75;
            let x_2610 : f32 = u_xlat74;
            u_xlat74 = ((x_2607 * x_2608) + x_2610);
            let x_2613 : vec4<f32> = u_xlat12;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.x, x_2613.y);
            let x_2616 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec37;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat75 = x_2625;
            let x_2627 : f32 = u_xlat16.w;
            let x_2628 : f32 = u_xlat75;
            let x_2630 : f32 = u_xlat74;
            u_xlat74 = ((x_2627 * x_2628) + x_2630);
            let x_2633 : vec4<f32> = u_xlat15;
            let x_2634 : vec2<f32> = vec2<f32>(x_2633.x, x_2633.y);
            let x_2636 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2634.x, x_2634.y, x_2636);
            let x_2643 : vec3<f32> = txVec38;
            let x_2645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2643.xy, x_2643.z);
            u_xlat75 = x_2645;
            let x_2647 : f32 = u_xlat17.x;
            let x_2648 : f32 = u_xlat75;
            let x_2650 : f32 = u_xlat74;
            u_xlat74 = ((x_2647 * x_2648) + x_2650);
            let x_2653 : vec4<f32> = u_xlat15;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.z, x_2653.w);
            let x_2656 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec39;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat75 = x_2665;
            let x_2667 : f32 = u_xlat17.y;
            let x_2668 : f32 = u_xlat75;
            let x_2670 : f32 = u_xlat74;
            u_xlat74 = ((x_2667 * x_2668) + x_2670);
            let x_2673 : vec4<f32> = u_xlat12;
            let x_2674 : vec2<f32> = vec2<f32>(x_2673.z, x_2673.w);
            let x_2676 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2674.x, x_2674.y, x_2676);
            let x_2683 : vec3<f32> = txVec40;
            let x_2685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2683.xy, x_2683.z);
            u_xlat75 = x_2685;
            let x_2687 : f32 = u_xlat17.z;
            let x_2688 : f32 = u_xlat75;
            let x_2690 : f32 = u_xlat74;
            u_xlat74 = ((x_2687 * x_2688) + x_2690);
            let x_2693 : vec4<f32> = u_xlat11;
            let x_2694 : vec2<f32> = vec2<f32>(x_2693.x, x_2693.y);
            let x_2696 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
            let x_2703 : vec3<f32> = txVec41;
            let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
            u_xlat75 = x_2705;
            let x_2707 : f32 = u_xlat17.w;
            let x_2708 : f32 = u_xlat75;
            let x_2710 : f32 = u_xlat74;
            u_xlat74 = ((x_2707 * x_2708) + x_2710);
            let x_2713 : vec4<f32> = u_xlat11;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.z, x_2713.w);
            let x_2716 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2723 : vec3<f32> = txVec42;
            let x_2725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2723.xy, x_2723.z);
            u_xlat75 = x_2725;
            let x_2727 : f32 = u_xlat51.x;
            let x_2728 : f32 = u_xlat75;
            let x_2730 : f32 = u_xlat74;
            u_xlat73 = ((x_2727 * x_2728) + x_2730);
          } else {
            let x_2733 : vec4<f32> = u_xlat8;
            let x_2736 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2733.x, x_2733.y) * vec2<f32>(x_2736.z, x_2736.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2740 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2740);
            let x_2742 : vec4<f32> = u_xlat8;
            let x_2745 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2748 : vec2<f32> = u_xlat51;
            let x_2750 : vec2<f32> = ((vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(x_2745.z, x_2745.w)) + -(x_2748));
            let x_2751 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2753.x, x_2753.x, x_2753.y, x_2753.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2756 : vec4<f32> = u_xlat10;
            let x_2758 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2756.x, x_2756.x, x_2756.z, x_2756.z) * vec4<f32>(x_2758.x, x_2758.x, x_2758.z, x_2758.z));
            let x_2761 : vec4<f32> = u_xlat11;
            let x_2763 : vec2<f32> = (vec2<f32>(x_2761.y, x_2761.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2764 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2764.x, x_2763.x, x_2764.z, x_2763.y);
            let x_2766 : vec4<f32> = u_xlat11;
            let x_2769 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2766.x, x_2766.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2769.x, x_2769.y)));
            let x_2773 : vec4<f32> = u_xlat9;
            let x_2776 : vec2<f32> = (-(vec2<f32>(x_2773.x, x_2773.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2777 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2776.x, x_2777.y, x_2776.y, x_2777.w);
            let x_2779 : vec4<f32> = u_xlat9;
            let x_2781 : vec2<f32> = min(vec2<f32>(x_2779.x, x_2779.y), vec2<f32>(0.0f, 0.0f));
            let x_2782 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
            let x_2784 : vec4<f32> = u_xlat11;
            let x_2787 : vec4<f32> = u_xlat11;
            let x_2790 : vec4<f32> = u_xlat10;
            let x_2792 : vec2<f32> = ((-(vec2<f32>(x_2784.x, x_2784.y)) * vec2<f32>(x_2787.x, x_2787.y)) + vec2<f32>(x_2790.x, x_2790.z));
            let x_2793 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2792.x, x_2793.y, x_2792.y, x_2793.w);
            let x_2795 : vec4<f32> = u_xlat9;
            let x_2797 : vec2<f32> = max(vec2<f32>(x_2795.x, x_2795.y), vec2<f32>(0.0f, 0.0f));
            let x_2798 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
            let x_2800 : vec4<f32> = u_xlat11;
            let x_2803 : vec4<f32> = u_xlat11;
            let x_2806 : vec4<f32> = u_xlat10;
            let x_2808 : vec2<f32> = ((-(vec2<f32>(x_2800.x, x_2800.y)) * vec2<f32>(x_2803.x, x_2803.y)) + vec2<f32>(x_2806.y, x_2806.w));
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2809.x, x_2808.x, x_2809.z, x_2808.y);
            let x_2811 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2811 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2815 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2815 * 0.08163200318813323975f);
            let x_2818 : vec2<f32> = u_xlat55;
            let x_2820 : vec2<f32> = (vec2<f32>(x_2818.y, x_2818.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2820.x, x_2820.y, x_2821.z, x_2821.w);
            let x_2823 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2823.x, x_2823.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2827 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2827 * 0.08163200318813323975f);
            let x_2831 : f32 = u_xlat13.y;
            u_xlat11.x = x_2831;
            let x_2833 : vec4<f32> = u_xlat9;
            let x_2836 : vec2<f32> = ((vec2<f32>(x_2833.x, x_2833.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2837 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2837.x, x_2836.x, x_2837.z, x_2836.y);
            let x_2839 : vec4<f32> = u_xlat9;
            let x_2842 : vec2<f32> = ((vec2<f32>(x_2839.x, x_2839.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2843 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2842.x, x_2843.y, x_2842.y, x_2843.w);
            let x_2846 : f32 = u_xlat55.x;
            u_xlat10.y = x_2846;
            let x_2849 : f32 = u_xlat12.y;
            u_xlat10.w = x_2849;
            let x_2851 : vec4<f32> = u_xlat10;
            let x_2852 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2851 + x_2852);
            let x_2854 : vec4<f32> = u_xlat9;
            let x_2857 : vec2<f32> = ((vec2<f32>(x_2854.y, x_2854.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2858 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2858.x, x_2857.x, x_2858.z, x_2857.y);
            let x_2860 : vec4<f32> = u_xlat9;
            let x_2863 : vec2<f32> = ((vec2<f32>(x_2860.y, x_2860.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2864 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2863.x, x_2864.y, x_2863.y, x_2864.w);
            let x_2867 : f32 = u_xlat55.y;
            u_xlat12.y = x_2867;
            let x_2869 : vec4<f32> = u_xlat12;
            let x_2870 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2869 + x_2870);
            let x_2872 : vec4<f32> = u_xlat10;
            let x_2873 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2872 / x_2873);
            let x_2875 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2877 : vec4<f32> = u_xlat12;
            let x_2878 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2877 / x_2878);
            let x_2880 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2880 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2882 : vec4<f32> = u_xlat10;
            let x_2885 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2882.w, x_2882.x, x_2882.y, x_2882.z) * vec4<f32>(x_2885.x, x_2885.x, x_2885.x, x_2885.x));
            let x_2888 : vec4<f32> = u_xlat12;
            let x_2891 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2888.x, x_2888.w, x_2888.y, x_2888.z) * vec4<f32>(x_2891.y, x_2891.y, x_2891.y, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat10;
            let x_2895 : vec3<f32> = vec3<f32>(x_2894.y, x_2894.z, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2895.z);
            let x_2899 : f32 = u_xlat12.x;
            u_xlat13.y = x_2899;
            let x_2901 : vec2<f32> = u_xlat51;
            let x_2904 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y) * vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y)) + vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2907.y));
            let x_2910 : vec2<f32> = u_xlat51;
            let x_2912 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat13;
            let x_2917 : vec2<f32> = ((x_2910 * vec2<f32>(x_2912.x, x_2912.y)) + vec2<f32>(x_2915.w, x_2915.y));
            let x_2918 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2917.x, x_2917.y, x_2918.z, x_2918.w);
            let x_2921 : f32 = u_xlat13.y;
            u_xlat10.y = x_2921;
            let x_2924 : f32 = u_xlat12.z;
            u_xlat13.y = x_2924;
            let x_2926 : vec2<f32> = u_xlat51;
            let x_2929 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2926.x, x_2926.y, x_2926.x, x_2926.y) * vec4<f32>(x_2929.x, x_2929.y, x_2929.x, x_2929.y)) + vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2932.y));
            let x_2936 : vec2<f32> = u_xlat51;
            let x_2938 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2936 * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
            let x_2945 : f32 = u_xlat13.y;
            u_xlat10.z = x_2945;
            let x_2947 : vec2<f32> = u_xlat51;
            let x_2950 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2953 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y) * vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y)) + vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.z));
            let x_2957 : f32 = u_xlat12.w;
            u_xlat13.y = x_2957;
            let x_2959 : vec2<f32> = u_xlat51;
            let x_2962 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y) * vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y)) + vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2965.y));
            let x_2969 : vec2<f32> = u_xlat51;
            let x_2971 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2974 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2969 * vec2<f32>(x_2971.x, x_2971.y)) + vec2<f32>(x_2974.w, x_2974.y));
            let x_2978 : f32 = u_xlat13.y;
            u_xlat10.w = x_2978;
            let x_2981 : vec2<f32> = u_xlat51;
            let x_2983 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2981 * vec2<f32>(x_2983.x, x_2983.y)) + vec2<f32>(x_2986.x, x_2986.w));
            let x_2989 : vec4<f32> = u_xlat13;
            let x_2990 : vec3<f32> = vec3<f32>(x_2989.x, x_2989.z, x_2989.w);
            let x_2991 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2990.x, x_2991.y, x_2990.y, x_2990.z);
            let x_2993 : vec2<f32> = u_xlat51;
            let x_2996 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) * vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y)) + vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_2999.y));
            let x_3003 : vec2<f32> = u_xlat51;
            let x_3005 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_3008 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3003 * vec2<f32>(x_3005.x, x_3005.y)) + vec2<f32>(x_3008.w, x_3008.y));
            let x_3012 : f32 = u_xlat10.x;
            u_xlat12.x = x_3012;
            let x_3014 : vec2<f32> = u_xlat51;
            let x_3016 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3014 * vec2<f32>(x_3016.x, x_3016.y)) + vec2<f32>(x_3019.x, x_3019.y));
            let x_3023 : vec4<f32> = u_xlat9;
            let x_3025 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3023.x, x_3023.x, x_3023.x, x_3023.x) * x_3025);
            let x_3028 : vec4<f32> = u_xlat9;
            let x_3030 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3028.y, x_3028.y, x_3028.y, x_3028.y) * x_3030);
            let x_3033 : vec4<f32> = u_xlat9;
            let x_3035 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3033.z, x_3033.z, x_3033.z, x_3033.z) * x_3035);
            let x_3037 : vec4<f32> = u_xlat9;
            let x_3039 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3037.w, x_3037.w, x_3037.w, x_3037.w) * x_3039);
            let x_3042 : vec4<f32> = u_xlat14;
            let x_3043 : vec2<f32> = vec2<f32>(x_3042.x, x_3042.y);
            let x_3045 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec43;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat75 = x_3054;
            let x_3056 : vec4<f32> = u_xlat14;
            let x_3057 : vec2<f32> = vec2<f32>(x_3056.z, x_3056.w);
            let x_3059 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3067 : vec3<f32> = txVec44;
            let x_3069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3067.xy, x_3067.z);
            u_xlat76 = x_3069;
            let x_3070 : f32 = u_xlat76;
            let x_3072 : f32 = u_xlat20.y;
            u_xlat76 = (x_3070 * x_3072);
            let x_3075 : f32 = u_xlat20.x;
            let x_3076 : f32 = u_xlat75;
            let x_3078 : f32 = u_xlat76;
            u_xlat75 = ((x_3075 * x_3076) + x_3078);
            let x_3081 : vec4<f32> = u_xlat15;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
            let x_3084 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec45;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat76 = x_3093;
            let x_3095 : f32 = u_xlat20.z;
            let x_3096 : f32 = u_xlat76;
            let x_3098 : f32 = u_xlat75;
            u_xlat75 = ((x_3095 * x_3096) + x_3098);
            let x_3101 : vec4<f32> = u_xlat17;
            let x_3102 : vec2<f32> = vec2<f32>(x_3101.x, x_3101.y);
            let x_3104 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec46;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat76 = x_3113;
            let x_3115 : f32 = u_xlat20.w;
            let x_3116 : f32 = u_xlat76;
            let x_3118 : f32 = u_xlat75;
            u_xlat75 = ((x_3115 * x_3116) + x_3118);
            let x_3121 : vec4<f32> = u_xlat16;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
            let x_3124 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec47;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat76 = x_3133;
            let x_3135 : f32 = u_xlat21.x;
            let x_3136 : f32 = u_xlat76;
            let x_3138 : f32 = u_xlat75;
            u_xlat75 = ((x_3135 * x_3136) + x_3138);
            let x_3141 : vec4<f32> = u_xlat16;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.z, x_3141.w);
            let x_3144 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec48;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat76 = x_3153;
            let x_3155 : f32 = u_xlat21.y;
            let x_3156 : f32 = u_xlat76;
            let x_3158 : f32 = u_xlat75;
            u_xlat75 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec2<f32> = u_xlat61;
            let x_3163 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec49;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat76 = x_3172;
            let x_3174 : f32 = u_xlat21.z;
            let x_3175 : f32 = u_xlat76;
            let x_3177 : f32 = u_xlat75;
            u_xlat75 = ((x_3174 * x_3175) + x_3177);
            let x_3180 : vec4<f32> = u_xlat17;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.z, x_3180.w);
            let x_3183 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec50;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat76 = x_3192;
            let x_3194 : f32 = u_xlat21.w;
            let x_3195 : f32 = u_xlat76;
            let x_3197 : f32 = u_xlat75;
            u_xlat75 = ((x_3194 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat18;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.x, x_3200.y);
            let x_3203 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec51;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat76 = x_3212;
            let x_3214 : f32 = u_xlat22.x;
            let x_3215 : f32 = u_xlat76;
            let x_3217 : f32 = u_xlat75;
            u_xlat75 = ((x_3214 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.z, x_3220.w);
            let x_3223 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec52;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat76 = x_3232;
            let x_3234 : f32 = u_xlat22.y;
            let x_3235 : f32 = u_xlat76;
            let x_3237 : f32 = u_xlat75;
            u_xlat75 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec2<f32> = u_xlat33;
            let x_3242 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3240.x, x_3240.y, x_3242);
            let x_3249 : vec3<f32> = txVec53;
            let x_3251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3249.xy, x_3249.z);
            u_xlat76 = x_3251;
            let x_3253 : f32 = u_xlat22.z;
            let x_3254 : f32 = u_xlat76;
            let x_3256 : f32 = u_xlat75;
            u_xlat75 = ((x_3253 * x_3254) + x_3256);
            let x_3259 : vec2<f32> = u_xlat19;
            let x_3261 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3268 : vec3<f32> = txVec54;
            let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
            u_xlat76 = x_3270;
            let x_3272 : f32 = u_xlat22.w;
            let x_3273 : f32 = u_xlat76;
            let x_3275 : f32 = u_xlat75;
            u_xlat75 = ((x_3272 * x_3273) + x_3275);
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3279 : vec2<f32> = vec2<f32>(x_3278.x, x_3278.y);
            let x_3281 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
            let x_3288 : vec3<f32> = txVec55;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat76 = x_3290;
            let x_3292 : f32 = u_xlat9.x;
            let x_3293 : f32 = u_xlat76;
            let x_3295 : f32 = u_xlat75;
            u_xlat75 = ((x_3292 * x_3293) + x_3295);
            let x_3298 : vec4<f32> = u_xlat13;
            let x_3299 : vec2<f32> = vec2<f32>(x_3298.z, x_3298.w);
            let x_3301 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec56;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat76 = x_3310;
            let x_3312 : f32 = u_xlat9.y;
            let x_3313 : f32 = u_xlat76;
            let x_3315 : f32 = u_xlat75;
            u_xlat75 = ((x_3312 * x_3313) + x_3315);
            let x_3318 : vec2<f32> = u_xlat58;
            let x_3320 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec57;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat76 = x_3329;
            let x_3331 : f32 = u_xlat9.z;
            let x_3332 : f32 = u_xlat76;
            let x_3334 : f32 = u_xlat75;
            u_xlat75 = ((x_3331 * x_3332) + x_3334);
            let x_3337 : vec2<f32> = u_xlat51;
            let x_3339 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec58;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat51.x = x_3348;
            let x_3351 : f32 = u_xlat9.w;
            let x_3353 : f32 = u_xlat51.x;
            let x_3355 : f32 = u_xlat75;
            u_xlat73 = ((x_3351 * x_3353) + x_3355);
          }
        }
      } else {
        let x_3359 : vec4<f32> = u_xlat8;
        let x_3360 : vec2<f32> = vec2<f32>(x_3359.x, x_3359.y);
        let x_3362 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
        let x_3369 : vec3<f32> = txVec59;
        let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
        u_xlat73 = x_3371;
      }
      let x_3372 : i32 = u_xlati71;
      let x_3374 : f32 = x_163.x_AdditionalShadowParams[x_3372].x;
      u_xlat51.x = (1.0f + -(x_3374));
      let x_3378 : f32 = u_xlat73;
      let x_3379 : i32 = u_xlati71;
      let x_3381 : f32 = x_163.x_AdditionalShadowParams[x_3379].x;
      let x_3384 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3378 * x_3381) + x_3384);
      let x_3387 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3387);
      let x_3391 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3391 >= 1.0f);
      let x_3393 : bool = u_xlatb74;
      let x_3394 : bool = u_xlatb51;
      u_xlatb51 = (x_3393 | x_3394);
      let x_3396 : bool = u_xlatb51;
      let x_3397 : f32 = u_xlat73;
      u_xlat73 = select(x_3397, 1.0f, x_3396);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3400 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3400) + 1.0f);
    let x_3404 : f32 = u_xlat69;
    let x_3406 : f32 = u_xlat51.x;
    let x_3408 : f32 = u_xlat73;
    u_xlat73 = ((x_3404 * x_3406) + x_3408);
    let x_3411 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3411 & 31i)));
    let x_3415 : i32 = u_xlati51;
    let x_3418 : f32 = x_1734.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3415) & bitcast<u32>(x_3418)));
    let x_3422 : i32 = u_xlati51;
    if ((x_3422 != 0i)) {
      let x_3426 : i32 = u_xlati71;
      let x_3428 : f32 = x_1734.x_AdditionalLightsLightTypes[x_3426].el;
      u_xlati51 = i32(x_3428);
      let x_3431 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3431 != 0i));
      let x_3435 : i32 = u_xlati71;
      u_xlati75 = (x_3435 << bitcast<u32>(2i));
      let x_3437 : i32 = u_xlati74;
      if ((x_3437 != 0i)) {
        let x_3441 : vec4<f32> = vs_TEXCOORD2;
        let x_3443 : i32 = u_xlati75;
        let x_3446 : i32 = u_xlati75;
        let x_3450 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3443 + 1i) / 4i)][((x_3446 + 1i) % 4i)];
        let x_3452 : vec3<f32> = (vec3<f32>(x_3441.y, x_3441.y, x_3441.y) * vec3<f32>(x_3450.x, x_3450.y, x_3450.w));
        let x_3453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3453.w);
        let x_3455 : i32 = u_xlati75;
        let x_3457 : i32 = u_xlati75;
        let x_3460 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[(x_3455 / 4i)][(x_3457 % 4i)];
        let x_3462 : vec4<f32> = vs_TEXCOORD2;
        let x_3465 : vec4<f32> = u_xlat8;
        let x_3467 : vec3<f32> = ((vec3<f32>(x_3460.x, x_3460.y, x_3460.w) * vec3<f32>(x_3462.x, x_3462.x, x_3462.x)) + vec3<f32>(x_3465.x, x_3465.y, x_3465.z));
        let x_3468 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
        let x_3470 : i32 = u_xlati75;
        let x_3473 : i32 = u_xlati75;
        let x_3477 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3470 + 2i) / 4i)][((x_3473 + 2i) % 4i)];
        let x_3479 : vec4<f32> = vs_TEXCOORD2;
        let x_3482 : vec4<f32> = u_xlat8;
        let x_3484 : vec3<f32> = ((vec3<f32>(x_3477.x, x_3477.y, x_3477.w) * vec3<f32>(x_3479.z, x_3479.z, x_3479.z)) + vec3<f32>(x_3482.x, x_3482.y, x_3482.z));
        let x_3485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);
        let x_3487 : vec4<f32> = u_xlat8;
        let x_3489 : i32 = u_xlati75;
        let x_3492 : i32 = u_xlati75;
        let x_3496 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3489 + 3i) / 4i)][((x_3492 + 3i) % 4i)];
        let x_3498 : vec3<f32> = (vec3<f32>(x_3487.x, x_3487.y, x_3487.z) + vec3<f32>(x_3496.x, x_3496.y, x_3496.w));
        let x_3499 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3498.x, x_3498.y, x_3498.z, x_3499.w);
        let x_3501 : vec4<f32> = u_xlat8;
        let x_3503 : vec4<f32> = u_xlat8;
        let x_3505 : vec2<f32> = (vec2<f32>(x_3501.x, x_3501.y) / vec2<f32>(x_3503.z, x_3503.z));
        let x_3506 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3505.x, x_3505.y, x_3506.z, x_3506.w);
        let x_3508 : vec4<f32> = u_xlat8;
        let x_3511 : vec2<f32> = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3511.x, x_3511.y, x_3512.z, x_3512.w);
        let x_3514 : vec4<f32> = u_xlat8;
        let x_3518 : vec2<f32> = clamp(vec2<f32>(x_3514.x, x_3514.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3518.x, x_3518.y, x_3519.z, x_3519.w);
        let x_3521 : i32 = u_xlati71;
        let x_3523 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3521];
        let x_3525 : vec4<f32> = u_xlat8;
        let x_3528 : i32 = u_xlati71;
        let x_3530 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3528];
        let x_3532 : vec2<f32> = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3525.x, x_3525.y)) + vec2<f32>(x_3530.z, x_3530.w));
        let x_3533 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3532.x, x_3532.y, x_3533.z, x_3533.w);
      } else {
        let x_3536 : i32 = u_xlati51;
        u_xlatb51 = (x_3536 == 1i);
        let x_3538 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3538);
        let x_3540 : i32 = u_xlati51;
        if ((x_3540 != 0i)) {
          let x_3544 : vec4<f32> = vs_TEXCOORD2;
          let x_3546 : i32 = u_xlati75;
          let x_3549 : i32 = u_xlati75;
          let x_3553 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3546 + 1i) / 4i)][((x_3549 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3544.y, x_3544.y) * vec2<f32>(x_3553.x, x_3553.y));
          let x_3556 : i32 = u_xlati75;
          let x_3558 : i32 = u_xlati75;
          let x_3561 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[(x_3556 / 4i)][(x_3558 % 4i)];
          let x_3563 : vec4<f32> = vs_TEXCOORD2;
          let x_3566 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3561.x, x_3561.y) * vec2<f32>(x_3563.x, x_3563.x)) + x_3566);
          let x_3568 : i32 = u_xlati75;
          let x_3571 : i32 = u_xlati75;
          let x_3575 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3568 + 2i) / 4i)][((x_3571 + 2i) % 4i)];
          let x_3577 : vec4<f32> = vs_TEXCOORD2;
          let x_3580 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3575.x, x_3575.y) * vec2<f32>(x_3577.z, x_3577.z)) + x_3580);
          let x_3582 : vec2<f32> = u_xlat51;
          let x_3583 : i32 = u_xlati75;
          let x_3586 : i32 = u_xlati75;
          let x_3590 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3583 + 3i) / 4i)][((x_3586 + 3i) % 4i)];
          u_xlat51 = (x_3582 + vec2<f32>(x_3590.x, x_3590.y));
          let x_3593 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3593 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3596 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3596);
          let x_3598 : i32 = u_xlati71;
          let x_3600 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3598];
          let x_3602 : vec2<f32> = u_xlat51;
          let x_3604 : i32 = u_xlati71;
          let x_3606 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3604];
          let x_3608 : vec2<f32> = ((vec2<f32>(x_3600.x, x_3600.y) * x_3602) + vec2<f32>(x_3606.z, x_3606.w));
          let x_3609 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3608.x, x_3608.y, x_3609.z, x_3609.w);
        } else {
          let x_3612 : vec4<f32> = vs_TEXCOORD2;
          let x_3614 : i32 = u_xlati75;
          let x_3617 : i32 = u_xlati75;
          let x_3621 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3614 + 1i) / 4i)][((x_3617 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3612.y, x_3612.y, x_3612.y, x_3612.y) * x_3621);
          let x_3623 : i32 = u_xlati75;
          let x_3625 : i32 = u_xlati75;
          let x_3628 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[(x_3623 / 4i)][(x_3625 % 4i)];
          let x_3629 : vec4<f32> = vs_TEXCOORD2;
          let x_3632 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3628 * vec4<f32>(x_3629.x, x_3629.x, x_3629.x, x_3629.x)) + x_3632);
          let x_3634 : i32 = u_xlati75;
          let x_3637 : i32 = u_xlati75;
          let x_3641 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3634 + 2i) / 4i)][((x_3637 + 2i) % 4i)];
          let x_3642 : vec4<f32> = vs_TEXCOORD2;
          let x_3645 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3641 * vec4<f32>(x_3642.z, x_3642.z, x_3642.z, x_3642.z)) + x_3645);
          let x_3647 : vec4<f32> = u_xlat9;
          let x_3648 : i32 = u_xlati75;
          let x_3651 : i32 = u_xlati75;
          let x_3655 : vec4<f32> = x_1734.x_AdditionalLightsWorldToLights[((x_3648 + 3i) / 4i)][((x_3651 + 3i) % 4i)];
          u_xlat9 = (x_3647 + x_3655);
          let x_3657 : vec4<f32> = u_xlat9;
          let x_3659 : vec4<f32> = u_xlat9;
          let x_3661 : vec3<f32> = (vec3<f32>(x_3657.x, x_3657.y, x_3657.z) / vec3<f32>(x_3659.w, x_3659.w, x_3659.w));
          let x_3662 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3661.x, x_3661.y, x_3661.z, x_3662.w);
          let x_3664 : vec4<f32> = u_xlat9;
          let x_3666 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3664.x, x_3664.y, x_3664.z), vec3<f32>(x_3666.x, x_3666.y, x_3666.z));
          let x_3671 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3671);
          let x_3674 : vec2<f32> = u_xlat51;
          let x_3676 : vec4<f32> = u_xlat9;
          let x_3678 : vec3<f32> = (vec3<f32>(x_3674.x, x_3674.x, x_3674.x) * vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
          let x_3679 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3679.w);
          let x_3681 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3681.x, x_3681.y, x_3681.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3688 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3688, 0.00000099999999747524f);
          let x_3693 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3693);
          let x_3696 : vec2<f32> = u_xlat51;
          let x_3698 : vec4<f32> = u_xlat9;
          let x_3700 : vec3<f32> = (vec3<f32>(x_3696.x, x_3696.x, x_3696.x) * vec3<f32>(x_3698.z, x_3698.x, x_3698.y));
          let x_3701 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3700.x, x_3700.y, x_3700.z, x_3701.w);
          let x_3704 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3704);
          let x_3708 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3708, 0.0f, 1.0f);
          let x_3712 : vec4<f32> = u_xlat10;
          let x_3714 : vec4<bool> = (vec4<f32>(x_3712.y, x_3712.z, x_3712.y, x_3712.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3714.x, x_3714.y);
          let x_3717 : bool = u_xlatb54.x;
          if (x_3717) {
            let x_3722 : f32 = u_xlat10.x;
            x_3718 = x_3722;
          } else {
            let x_3725 : f32 = u_xlat10.x;
            x_3718 = -(x_3725);
          }
          let x_3727 : f32 = x_3718;
          u_xlat54.x = x_3727;
          let x_3730 : bool = u_xlatb54.y;
          if (x_3730) {
            let x_3735 : f32 = u_xlat10.x;
            x_3731 = x_3735;
          } else {
            let x_3738 : f32 = u_xlat10.x;
            x_3731 = -(x_3738);
          }
          let x_3740 : f32 = x_3731;
          u_xlat54.y = x_3740;
          let x_3742 : vec4<f32> = u_xlat9;
          let x_3744 : vec2<f32> = u_xlat51;
          let x_3747 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3742.x, x_3742.y) * vec2<f32>(x_3744.x, x_3744.x)) + x_3747);
          let x_3749 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3749 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3752 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3752, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3756 : i32 = u_xlati71;
          let x_3758 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3756];
          let x_3760 : vec2<f32> = u_xlat51;
          let x_3762 : i32 = u_xlati71;
          let x_3764 : vec4<f32> = x_1734.x_AdditionalLightsCookieAtlasUVRects[x_3762];
          let x_3766 : vec2<f32> = ((vec2<f32>(x_3758.x, x_3758.y) * x_3760) + vec2<f32>(x_3764.z, x_3764.w));
          let x_3767 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3766.x, x_3766.y, x_3767.z, x_3767.w);
        }
      }
      let x_3774 : vec4<f32> = u_xlat8;
      let x_3776 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3774.x, x_3774.y), 0.0f);
      u_xlat8 = x_3776;
      let x_3778 : bool = u_xlatb5.y;
      if (x_3778) {
        let x_3783 : f32 = u_xlat8.w;
        x_3779 = x_3783;
      } else {
        let x_3786 : f32 = u_xlat8.x;
        x_3779 = x_3786;
      }
      let x_3787 : f32 = x_3779;
      u_xlat51.x = x_3787;
      let x_3790 : bool = u_xlatb5.x;
      if (x_3790) {
        let x_3794 : vec4<f32> = u_xlat8;
        x_3791 = vec3<f32>(x_3794.x, x_3794.y, x_3794.z);
      } else {
        let x_3797 : vec2<f32> = u_xlat51;
        x_3791 = vec3<f32>(x_3797.x, x_3797.x, x_3797.x);
      }
      let x_3799 : vec3<f32> = x_3791;
      let x_3800 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3799.x, x_3799.y, x_3799.z, x_3800.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3806 : vec4<f32> = u_xlat8;
    let x_3808 : i32 = u_xlati71;
    let x_3810 : vec4<f32> = x_1980.x_AdditionalLightsColor[x_3808];
    let x_3812 : vec3<f32> = (vec3<f32>(x_3806.x, x_3806.y, x_3806.z) * vec3<f32>(x_3810.x, x_3810.y, x_3810.z));
    let x_3813 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3812.x, x_3812.y, x_3812.z, x_3813.w);
    let x_3815 : f32 = u_xlat72;
    let x_3816 : f32 = u_xlat73;
    u_xlat71 = (x_3815 * x_3816);
    let x_3818 : f32 = u_xlat71;
    let x_3820 : vec4<f32> = u_xlat8;
    let x_3822 : vec3<f32> = (vec3<f32>(x_3818, x_3818, x_3818) * vec3<f32>(x_3820.x, x_3820.y, x_3820.z));
    let x_3823 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3822.x, x_3822.y, x_3822.z, x_3823.w);
    let x_3825 : vec4<f32> = u_xlat2;
    let x_3827 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3825.x, x_3825.y, x_3825.z), vec3<f32>(x_3827.x, x_3827.y, x_3827.z));
    let x_3830 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3830, 0.0f, 1.0f);
    let x_3832 : f32 = u_xlat71;
    let x_3834 : vec4<f32> = u_xlat8;
    let x_3836 : vec3<f32> = (vec3<f32>(x_3832, x_3832, x_3832) * vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
    let x_3837 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
    let x_3839 : vec4<f32> = u_xlat7;
    let x_3841 : vec4<f32> = u_xlat1;
    let x_3844 : vec4<f32> = u_xlat6;
    let x_3846 : vec3<f32> = ((vec3<f32>(x_3839.x, x_3839.y, x_3839.z) * vec3<f32>(x_3841.x, x_3841.y, x_3841.z)) + vec3<f32>(x_3844.x, x_3844.y, x_3844.z));
    let x_3847 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3846.x, x_3846.y, x_3846.z, x_3847.w);

    continuing {
      let x_3849 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3849 + bitcast<u32>(1i));
    }
  }
  let x_3851 : vec4<f32> = u_xlat4;
  let x_3853 : vec4<f32> = u_xlat1;
  let x_3856 : vec4<f32> = u_xlat3;
  let x_3858 : vec3<f32> = ((vec3<f32>(x_3851.x, x_3851.y, x_3851.z) * vec3<f32>(x_3853.x, x_3853.y, x_3853.z)) + vec3<f32>(x_3856.x, x_3856.y, x_3856.z));
  let x_3859 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3858.x, x_3858.y, x_3858.z, x_3859.w);
  let x_3863 : vec4<f32> = u_xlat6;
  let x_3865 : vec4<f32> = u_xlat1;
  let x_3867 : vec3<f32> = (vec3<f32>(x_3863.x, x_3863.y, x_3863.z) + vec3<f32>(x_3865.x, x_3865.y, x_3865.z));
  let x_3868 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
  let x_3870 : bool = u_xlatb46;
  let x_3871 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3871, x_3870);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


