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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb69 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb70 : bool;

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

var<private> u_xlat72 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(5) var<uniform> x_1730 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1851 : UnityPerDraw;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_1973 : AdditionalLights;

var<private> u_xlat73 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb74 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat75 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatb51 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb75 : bool;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlati76 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatb72 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
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
  var x_1813 : f32;
  var x_1824 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2121 : f32;
  var x_2131 : f32;
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
  var x_3400 : f32;
  var x_3721 : f32;
  var x_3734 : f32;
  var x_3782 : f32;
  var x_3793 : vec3<f32>;
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
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat23 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat69;
  let x_101 : f32 = u_xlat46;
  u_xlat46 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat46;
  u_xlat46 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat23;
  let x_108 : f32 = u_xlat46;
  u_xlat23 = (x_107 / x_108);
  let x_110 : f32 = u_xlat23;
  u_xlat23 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat23;
  u_xlat23 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb46;
  if (x_120) {
    let x_124 : f32 = u_xlat23;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  let x_202 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_212 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_221.x, x_221.y, x_221.z), vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_235 : vec4<f32> = u_xlat6;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_244 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_244 < x_247);
  let x_250 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_262);
  let x_266 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_266);
  let x_272 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_272);
  let x_276 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_276);
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat4;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(x_281.y, x_281.z, x_281.w));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat3;
  let x_289 : vec3<f32> = max(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_292, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_300) + 4.0f);
  let x_307 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_307);
  let x_311 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_311) << bitcast<u32>(2i));
  let x_314 : vec4<f32> = vs_TEXCOORD2;
  let x_316 : i32 = u_xlati0;
  let x_319 : i32 = u_xlati0;
  let x_323 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_316 + 1i) / 4i)][((x_319 + 1i) % 4i)];
  let x_325 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati0;
  let x_330 : i32 = u_xlati0;
  let x_333 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_328 / 4i)][(x_330 % 4i)];
  let x_335 : vec4<f32> = vs_TEXCOORD2;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : i32 = u_xlati0;
  let x_346 : i32 = u_xlati0;
  let x_350 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_343 + 2i) / 4i)][((x_346 + 2i) % 4i)];
  let x_352 : vec4<f32> = vs_TEXCOORD2;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : i32 = u_xlati0;
  let x_365 : i32 = u_xlati0;
  let x_369 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_362 + 3i) / 4i)][((x_365 + 3i) % 4i)];
  let x_371 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = hlslcc_FragCoord.w;
  let x_377 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat0.x;
  let x_384 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_381 / x_384);
  let x_388 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_388) + 1.0f);
  let x_393 : f32 = u_xlat0.x;
  let x_395 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_393 * x_395);
  let x_399 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_399, 0.0f);
  let x_403 : f32 = u_xlat0.x;
  let x_406 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_403 * x_406);
  let x_415 : vec2<f32> = vs_TEXCOORD1;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_415, x_417);
  u_xlat4 = x_418;
  let x_423 : vec2<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_44.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_423, x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.z);
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec3<f32> = u_xlat2;
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(x_437, vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : f32 = u_xlat69;
  u_xlat69 = (x_441 + 0.5f);
  let x_443 : f32 = u_xlat69;
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = (vec3<f32>(x_443, x_443, x_443) * vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = u_xlat4.w;
  u_xlat69 = max(x_451, 0.00009999999747378752f);
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : f32 = u_xlat69;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) / vec3<f32>(x_455, x_455, x_455));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_463 : f32 = x_174.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_463);
  let x_465 : bool = u_xlatb69;
  if (x_465) {
    let x_469 : f32 = x_174.x_MainLightShadowParams.y;
    u_xlatb69 = (x_469 == 1.0f);
    let x_471 : bool = u_xlatb69;
    if (x_471) {
      let x_474 : vec4<f32> = u_xlat3;
      let x_477 : vec4<f32> = x_174.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_477);
      let x_481 : vec4<f32> = u_xlat5;
      let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
      let x_484 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat6.x = x_498;
      let x_501 : vec4<f32> = u_xlat5;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_511.xy, x_511.z);
      u_xlat6.y = x_513;
      let x_515 : vec4<f32> = u_xlat3;
      let x_518 : vec4<f32> = x_174.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_518);
      let x_521 : vec4<f32> = u_xlat5;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec2;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
      u_xlat6.z = x_533;
      let x_536 : vec4<f32> = u_xlat5;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec3;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_546.xy, x_546.z);
      u_xlat6.w = x_548;
      let x_550 : vec4<f32> = u_xlat6;
      u_xlat69 = dot(x_550, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_557 : f32 = x_174.x_MainLightShadowParams.y;
      u_xlatb70 = (x_557 == 2.0f);
      let x_559 : bool = u_xlatb70;
      if (x_559) {
        let x_562 : vec4<f32> = u_xlat3;
        let x_566 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_570 : vec2<f32> = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_566.z, x_566.w)) + vec2<f32>(0.5f, 0.5f));
        let x_571 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat5;
        let x_575 : vec2<f32> = floor(vec2<f32>(x_573.x, x_573.y));
        let x_576 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_580 : vec4<f32> = u_xlat3;
        let x_583 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.z, x_583.w)) + -(vec2<f32>(x_586.x, x_586.y)));
        let x_590 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_590.x, x_590.x, x_590.y, x_590.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_595 : vec4<f32> = u_xlat6;
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_595.x, x_595.x, x_595.z, x_595.z) * vec4<f32>(x_597.x, x_597.x, x_597.z, x_597.z));
        let x_600 : vec4<f32> = u_xlat7;
        let x_604 : vec2<f32> = (vec2<f32>(x_600.y, x_600.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_604.x, x_605.y, x_604.y, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = u_xlat51;
        let x_612 : vec2<f32> = ((vec2<f32>(x_607.x, x_607.z) * vec2<f32>(0.5f, 0.5f)) + -(x_610));
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_616 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_616) + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec2<f32> = u_xlat51;
        let x_623 : vec2<f32> = min(x_621, vec2<f32>(0.0f, 0.0f));
        let x_624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat8;
        let x_629 : vec4<f32> = u_xlat8;
        let x_632 : vec2<f32> = u_xlat53;
        let x_633 : vec2<f32> = ((-(vec2<f32>(x_626.x, x_626.y)) * vec2<f32>(x_629.x, x_629.y)) + x_632);
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_636, vec2<f32>(0.0f, 0.0f));
        let x_638 : vec2<f32> = u_xlat51;
        let x_640 : vec2<f32> = u_xlat51;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_638) * x_640) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat8;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) + vec2<f32>(1.0f, 1.0f));
        let x_648 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_650 + vec2<f32>(1.0f, 1.0f));
        let x_653 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec2<f32> = u_xlat53;
        let x_661 : vec2<f32> = (x_660 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = (vec2<f32>(x_664.x, x_664.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec2<f32> = u_xlat51;
        let x_671 : vec2<f32> = (x_670 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_674.y, x_674.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_678 : f32 = u_xlat8.x;
        u_xlat9.z = x_678;
        let x_681 : f32 = u_xlat51.x;
        u_xlat9.w = x_681;
        let x_684 : f32 = u_xlat10.x;
        u_xlat7.z = x_684;
        let x_687 : f32 = u_xlat6.x;
        u_xlat7.w = x_687;
        let x_690 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_690.z, x_690.w, x_690.x, x_690.z) + vec4<f32>(x_692.z, x_692.w, x_692.x, x_692.z));
        let x_696 : f32 = u_xlat9.y;
        u_xlat8.z = x_696;
        let x_699 : f32 = u_xlat51.y;
        u_xlat8.w = x_699;
        let x_702 : f32 = u_xlat7.y;
        u_xlat10.z = x_702;
        let x_705 : f32 = u_xlat6.z;
        u_xlat10.w = x_705;
        let x_707 : vec4<f32> = u_xlat8;
        let x_709 : vec4<f32> = u_xlat10;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.z, x_707.y, x_707.w) + vec3<f32>(x_709.z, x_709.y, x_709.w));
        let x_712 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat7;
        let x_716 : vec4<f32> = u_xlat11;
        let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.z, x_714.w) / vec3<f32>(x_716.z, x_716.w, x_716.y));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat7;
        let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat10;
        let x_731 : vec4<f32> = u_xlat6;
        let x_733 : vec3<f32> = (vec3<f32>(x_729.z, x_729.y, x_729.w) / vec3<f32>(x_731.x, x_731.y, x_731.z));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat8;
        let x_738 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_739 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat7;
        let x_744 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.y, x_741.x, x_741.z) * vec3<f32>(x_744.x, x_744.x, x_744.x));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_752 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_752.y, x_752.y, x_752.y));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_758 : f32 = u_xlat8.x;
        u_xlat7.w = x_758;
        let x_760 : vec4<f32> = u_xlat5;
        let x_763 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y) * vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y)) + vec4<f32>(x_766.y, x_766.w, x_766.x, x_766.w));
        let x_769 : vec4<f32> = u_xlat5;
        let x_772 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(x_772.x, x_772.y)) + vec2<f32>(x_775.z, x_775.w));
        let x_779 : f32 = u_xlat7.y;
        u_xlat8.w = x_779;
        let x_781 : vec4<f32> = u_xlat8;
        let x_782 : vec2<f32> = vec2<f32>(x_781.y, x_781.z);
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat5;
        let x_788 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.y));
        let x_794 : vec4<f32> = u_xlat5;
        let x_797 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) * vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y)) + vec4<f32>(x_800.w, x_800.y, x_800.w, x_800.z));
        let x_803 : vec4<f32> = u_xlat5;
        let x_806 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) * vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y)) + vec4<f32>(x_809.x, x_809.w, x_809.z, x_809.w));
        let x_813 : vec4<f32> = u_xlat6;
        let x_815 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_813.x, x_813.x, x_813.x, x_813.y) * vec4<f32>(x_815.z, x_815.w, x_815.y, x_815.z));
        let x_819 : vec4<f32> = u_xlat6;
        let x_821 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_819.y, x_819.y, x_819.z, x_819.z) * x_821);
        let x_825 : f32 = u_xlat6.z;
        let x_827 : f32 = u_xlat11.y;
        u_xlat70 = (x_825 * x_827);
        let x_830 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_841 : vec3<f32> = txVec4;
        let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_841.xy, x_841.z);
        u_xlat71 = x_843;
        let x_845 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_856 : vec3<f32> = txVec5;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat72 = x_858;
        let x_859 : f32 = u_xlat72;
        let x_861 : f32 = u_xlat12.y;
        u_xlat72 = (x_859 * x_861);
        let x_864 : f32 = u_xlat12.x;
        let x_865 : f32 = u_xlat71;
        let x_867 : f32 = u_xlat72;
        u_xlat71 = ((x_864 * x_865) + x_867);
        let x_870 : vec2<f32> = u_xlat51;
        let x_872 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec6;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_879.xy, x_879.z);
        u_xlat72 = x_881;
        let x_883 : f32 = u_xlat12.z;
        let x_884 : f32 = u_xlat72;
        let x_886 : f32 = u_xlat71;
        u_xlat71 = ((x_883 * x_884) + x_886);
        let x_889 : vec4<f32> = u_xlat8;
        let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
        let x_892 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec7;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_899.xy, x_899.z);
        u_xlat72 = x_901;
        let x_903 : f32 = u_xlat12.w;
        let x_904 : f32 = u_xlat72;
        let x_906 : f32 = u_xlat71;
        u_xlat71 = ((x_903 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat10;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec8;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat72 = x_921;
        let x_923 : f32 = u_xlat13.x;
        let x_924 : f32 = u_xlat72;
        let x_926 : f32 = u_xlat71;
        u_xlat71 = ((x_923 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = vec2<f32>(x_929.z, x_929.w);
        let x_932 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec9;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat72 = x_941;
        let x_943 : f32 = u_xlat13.y;
        let x_944 : f32 = u_xlat72;
        let x_946 : f32 = u_xlat71;
        u_xlat71 = ((x_943 * x_944) + x_946);
        let x_949 : vec4<f32> = u_xlat8;
        let x_950 : vec2<f32> = vec2<f32>(x_949.z, x_949.w);
        let x_952 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_959 : vec3<f32> = txVec10;
        let x_961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_959.xy, x_959.z);
        u_xlat72 = x_961;
        let x_963 : f32 = u_xlat13.z;
        let x_964 : f32 = u_xlat72;
        let x_966 : f32 = u_xlat71;
        u_xlat71 = ((x_963 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = vec2<f32>(x_969.x, x_969.y);
        let x_972 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec11;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_979.xy, x_979.z);
        u_xlat72 = x_981;
        let x_983 : f32 = u_xlat13.w;
        let x_984 : f32 = u_xlat72;
        let x_986 : f32 = u_xlat71;
        u_xlat71 = ((x_983 * x_984) + x_986);
        let x_989 : vec4<f32> = u_xlat7;
        let x_990 : vec2<f32> = vec2<f32>(x_989.z, x_989.w);
        let x_992 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec12;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_999.xy, x_999.z);
        u_xlat72 = x_1001;
        let x_1002 : f32 = u_xlat70;
        let x_1003 : f32 = u_xlat72;
        let x_1005 : f32 = u_xlat71;
        u_xlat69 = ((x_1002 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat5;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1037 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z) * vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.y, x_1040.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec2<f32> = u_xlat51;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1050));
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat51;
        let x_1057 : vec2<f32> = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1060, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat53;
        let x_1064 : vec2<f32> = u_xlat53;
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.x, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1074 : vec2<f32> = u_xlat53;
        let x_1076 : vec2<f32> = u_xlat53;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((-(x_1074) * x_1076) + vec2<f32>(x_1078.y, x_1078.w));
        let x_1081 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(2.0f, 2.0f));
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec3<f32> = u_xlat29;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.z) + vec2<f32>(2.0f, 2.0f));
        let x_1092 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1095 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1095 * 0.08163200318813323975f);
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1099.z, x_1099.x, x_1099.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1109 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat10.y;
        u_xlat9.x = x_1112;
        let x_1114 : vec2<f32> = u_xlat51;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec2<f32> = u_xlat51;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat6.x;
        u_xlat7.y = x_1132;
        let x_1135 : f32 = u_xlat8.y;
        u_xlat7.w = x_1135;
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1137 + x_1138);
        let x_1140 : vec2<f32> = u_xlat51;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec2<f32> = u_xlat51;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1146.y, x_1146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1153 : f32 = u_xlat6.y;
        u_xlat8.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1155 + x_1156);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1168 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1175 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1172.w, x_1172.x, x_1172.y, x_1172.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x));
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1178.x, x_1178.w, x_1178.y, x_1178.z) * vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1189 : f32 = u_xlat8.x;
        u_xlat10.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1194 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1203 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat10.y;
        u_xlat7.y = x_1210;
        let x_1213 : f32 = u_xlat8.z;
        u_xlat10.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : f32 = u_xlat10.y;
        u_xlat7.z = x_1236;
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.z));
        let x_1249 : f32 = u_xlat8.w;
        u_xlat10.y = x_1249;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec4<f32> = u_xlat5;
        let x_1265 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat10.y;
        u_xlat7.w = x_1272;
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.x, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.x, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1288 : vec4<f32> = u_xlat5;
        let x_1291 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat7.x;
        u_xlat8.x = x_1308;
        let x_1310 : vec4<f32> = u_xlat5;
        let x_1313 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat8;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.y));
        let x_1319 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1322.x, x_1322.x, x_1322.x, x_1322.x) * x_1324);
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.y, x_1327.y) * x_1329);
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1332.z, x_1332.z, x_1332.z, x_1332.z) * x_1334);
        let x_1336 : vec4<f32> = u_xlat6;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1336.w, x_1336.w, x_1336.w, x_1336.w) * x_1338);
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec13;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat70 = x_1353;
        let x_1355 : vec4<f32> = u_xlat11;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.z, x_1355.w);
        let x_1358 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec14;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat71 = x_1367;
        let x_1368 : f32 = u_xlat71;
        let x_1370 : f32 = u_xlat16.y;
        u_xlat71 = (x_1368 * x_1370);
        let x_1373 : f32 = u_xlat16.x;
        let x_1374 : f32 = u_xlat70;
        let x_1376 : f32 = u_xlat71;
        u_xlat70 = ((x_1373 * x_1374) + x_1376);
        let x_1379 : vec2<f32> = u_xlat51;
        let x_1381 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec15;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat71 = x_1390;
        let x_1392 : f32 = u_xlat16.z;
        let x_1393 : f32 = u_xlat71;
        let x_1395 : f32 = u_xlat70;
        u_xlat70 = ((x_1392 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat14;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec16;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat71 = x_1410;
        let x_1412 : f32 = u_xlat16.w;
        let x_1413 : f32 = u_xlat71;
        let x_1415 : f32 = u_xlat70;
        u_xlat70 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat12;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec17;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat71 = x_1430;
        let x_1432 : f32 = u_xlat17.x;
        let x_1433 : f32 = u_xlat71;
        let x_1435 : f32 = u_xlat70;
        u_xlat70 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat12;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec18;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat71 = x_1450;
        let x_1452 : f32 = u_xlat17.y;
        let x_1453 : f32 = u_xlat71;
        let x_1455 : f32 = u_xlat70;
        u_xlat70 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat13;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec19;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat71 = x_1470;
        let x_1472 : f32 = u_xlat17.z;
        let x_1473 : f32 = u_xlat71;
        let x_1475 : f32 = u_xlat70;
        u_xlat70 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat14;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec20;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat71 = x_1490;
        let x_1492 : f32 = u_xlat17.w;
        let x_1493 : f32 = u_xlat71;
        let x_1495 : f32 = u_xlat70;
        u_xlat70 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat15;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.x, x_1498.y);
        let x_1501 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec21;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1508.xy, x_1508.z);
        u_xlat71 = x_1510;
        let x_1512 : f32 = u_xlat18.x;
        let x_1513 : f32 = u_xlat71;
        let x_1515 : f32 = u_xlat70;
        u_xlat70 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat15;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.z, x_1518.w);
        let x_1521 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec22;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat71 = x_1530;
        let x_1532 : f32 = u_xlat18.y;
        let x_1533 : f32 = u_xlat71;
        let x_1535 : f32 = u_xlat70;
        u_xlat70 = ((x_1532 * x_1533) + x_1535);
        let x_1538 : vec2<f32> = u_xlat30;
        let x_1540 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec23;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat71 = x_1549;
        let x_1551 : f32 = u_xlat18.z;
        let x_1552 : f32 = u_xlat71;
        let x_1554 : f32 = u_xlat70;
        u_xlat70 = ((x_1551 * x_1552) + x_1554);
        let x_1557 : vec2<f32> = u_xlat59;
        let x_1559 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec24;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat71 = x_1568;
        let x_1570 : f32 = u_xlat18.w;
        let x_1571 : f32 = u_xlat71;
        let x_1573 : f32 = u_xlat70;
        u_xlat70 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat10;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat71 = x_1588;
        let x_1590 : f32 = u_xlat6.x;
        let x_1591 : f32 = u_xlat71;
        let x_1593 : f32 = u_xlat70;
        u_xlat70 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec26;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat71 = x_1608;
        let x_1610 : f32 = u_xlat6.y;
        let x_1611 : f32 = u_xlat71;
        let x_1613 : f32 = u_xlat70;
        u_xlat70 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec2<f32> = u_xlat54;
        let x_1618 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec27;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat71 = x_1627;
        let x_1629 : f32 = u_xlat6.z;
        let x_1630 : f32 = u_xlat71;
        let x_1632 : f32 = u_xlat70;
        u_xlat70 = ((x_1629 * x_1630) + x_1632);
        let x_1635 : vec4<f32> = u_xlat5;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.x, x_1635.y);
        let x_1638 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec28;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat71 = x_1647;
        let x_1649 : f32 = u_xlat6.w;
        let x_1650 : f32 = u_xlat71;
        let x_1652 : f32 = u_xlat70;
        u_xlat69 = ((x_1649 * x_1650) + x_1652);
      }
    }
  } else {
    let x_1656 : vec4<f32> = u_xlat3;
    let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
    let x_1659 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
    let x_1666 : vec3<f32> = txVec29;
    let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
    u_xlat69 = x_1668;
  }
  let x_1670 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat70 = (-(x_1670) + 1.0f);
  let x_1673 : f32 = u_xlat69;
  let x_1675 : f32 = x_174.x_MainLightShadowParams.x;
  let x_1677 : f32 = u_xlat70;
  u_xlat69 = ((x_1673 * x_1675) + x_1677);
  let x_1680 : f32 = u_xlat3.z;
  u_xlatb70 = (0.0f >= x_1680);
  let x_1684 : f32 = u_xlat3.z;
  u_xlatb71 = (x_1684 >= 1.0f);
  let x_1686 : bool = u_xlatb70;
  let x_1687 : bool = u_xlatb71;
  u_xlatb70 = (x_1686 | x_1687);
  let x_1689 : bool = u_xlatb70;
  let x_1690 : f32 = u_xlat69;
  u_xlat69 = select(x_1690, 1.0f, x_1689);
  let x_1692 : vec4<f32> = vs_TEXCOORD2;
  let x_1696 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1698 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) + -(x_1696));
  let x_1699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : vec4<f32> = u_xlat3;
  let x_1703 : vec4<f32> = u_xlat3;
  u_xlat70 = dot(vec3<f32>(x_1701.x, x_1701.y, x_1701.z), vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : f32 = u_xlat70;
  let x_1708 : f32 = x_174.x_MainLightShadowParams.z;
  let x_1711 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1706 * x_1708) + x_1711);
  let x_1713 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1713, 0.0f, 1.0f);
  let x_1715 : f32 = u_xlat69;
  u_xlat3.x = (-(x_1715) + 1.0f);
  let x_1719 : f32 = u_xlat71;
  let x_1721 : f32 = u_xlat3.x;
  let x_1723 : f32 = u_xlat69;
  u_xlat69 = ((x_1719 * x_1721) + x_1723);
  let x_1732 : f32 = x_1730.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1732 == -1.0f));
  let x_1734 : bool = u_xlatb71;
  if (x_1734) {
    let x_1737 : vec4<f32> = vs_TEXCOORD2;
    let x_1740 : vec4<f32> = x_1730.x_MainLightWorldToLight[1i];
    let x_1742 : vec2<f32> = (vec2<f32>(x_1737.y, x_1737.y) * vec2<f32>(x_1740.x, x_1740.y));
    let x_1743 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
    let x_1746 : vec4<f32> = x_1730.x_MainLightWorldToLight[0i];
    let x_1748 : vec4<f32> = vs_TEXCOORD2;
    let x_1751 : vec4<f32> = u_xlat3;
    let x_1753 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1748.x, x_1748.x)) + vec2<f32>(x_1751.x, x_1751.y));
    let x_1754 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
    let x_1757 : vec4<f32> = x_1730.x_MainLightWorldToLight[2i];
    let x_1759 : vec4<f32> = vs_TEXCOORD2;
    let x_1762 : vec4<f32> = u_xlat3;
    let x_1764 : vec2<f32> = ((vec2<f32>(x_1757.x, x_1757.y) * vec2<f32>(x_1759.z, x_1759.z)) + vec2<f32>(x_1762.x, x_1762.y));
    let x_1765 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
    let x_1767 : vec4<f32> = u_xlat3;
    let x_1770 : vec4<f32> = x_1730.x_MainLightWorldToLight[3i];
    let x_1772 : vec2<f32> = (vec2<f32>(x_1767.x, x_1767.y) + vec2<f32>(x_1770.x, x_1770.y));
    let x_1773 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
    let x_1775 : vec4<f32> = u_xlat3;
    let x_1778 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1779 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
    let x_1786 : vec4<f32> = u_xlat3;
    let x_1789 : f32 = x_44.x_GlobalMipBias.x;
    let x_1790 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1786.x, x_1786.y), x_1789);
    u_xlat3 = x_1790;
    let x_1795 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1797 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1799 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1801 : f32 = x_1730.x_MainLightCookieTextureFormat;
    let x_1802 : vec4<f32> = vec4<f32>(x_1795, x_1797, x_1799, x_1801);
    let x_1809 : vec4<bool> = (vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1802.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1809.x, x_1809.y);
    let x_1812 : bool = u_xlatb5.y;
    if (x_1812) {
      let x_1817 : f32 = u_xlat3.w;
      x_1813 = x_1817;
    } else {
      let x_1820 : f32 = u_xlat3.x;
      x_1813 = x_1820;
    }
    let x_1821 : f32 = x_1813;
    u_xlat71 = x_1821;
    let x_1823 : bool = u_xlatb5.x;
    if (x_1823) {
      let x_1827 : vec4<f32> = u_xlat3;
      x_1824 = vec3<f32>(x_1827.x, x_1827.y, x_1827.z);
    } else {
      let x_1830 : f32 = u_xlat71;
      x_1824 = vec3<f32>(x_1830, x_1830, x_1830);
    }
    let x_1832 : vec3<f32> = x_1824;
    let x_1833 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1839 : vec4<f32> = u_xlat3;
  let x_1842 : vec4<f32> = x_44.x_MainLightColor;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1839.x, x_1839.y, x_1839.z) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1847 : f32 = u_xlat69;
  let x_1853 : f32 = x_1851.unity_LightData.z;
  u_xlat69 = (x_1847 * x_1853);
  let x_1855 : f32 = u_xlat69;
  let x_1857 : vec4<f32> = u_xlat3;
  let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
  let x_1862 : vec3<f32> = u_xlat2;
  let x_1864 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(x_1862, vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
  let x_1867 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1867, 0.0f, 1.0f);
  let x_1869 : f32 = u_xlat69;
  let x_1871 : vec4<f32> = u_xlat3;
  let x_1873 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
  let x_1874 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
  let x_1876 : vec4<f32> = u_xlat1;
  let x_1878 : vec4<f32> = u_xlat3;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1884 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1886 : f32 = x_1851.unity_LightData.y;
  u_xlat69 = min(x_1884, x_1886);
  let x_1889 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1889));
  let x_1892 : f32 = u_xlat70;
  let x_1895 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_1898 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat70 = ((x_1892 * x_1895) + x_1898);
  let x_1900 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1900, 0.0f, 1.0f);
  let x_1903 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1905 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1907 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1909 : f32 = x_1730.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1910 : vec4<f32> = vec4<f32>(x_1903, x_1905, x_1907, x_1909);
  let x_1916 : vec4<bool> = (vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1910.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1916.x, x_1916.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1928 : u32 = u_xlatu_loop_1;
    let x_1929 : u32 = u_xlatu69;
    if ((x_1928 < x_1929)) {
    } else {
      break;
    }
    let x_1932 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1932 >> 2u);
    let x_1935 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1935 & 3u));
    let x_1938 : u32 = u_xlatu72;
    let x_1941 : vec4<f32> = x_1851.unity_LightIndices[bitcast<i32>(x_1938)];
    let x_1951 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1956 : vec4<u32> = indexable[x_1951];
    u_xlat72 = dot(x_1941, bitcast<vec4<f32>>(x_1956));
    let x_1960 : f32 = u_xlat72;
    u_xlati72 = i32(x_1960);
    let x_1962 : vec4<f32> = vs_TEXCOORD2;
    let x_1974 : i32 = u_xlati72;
    let x_1976 : vec4<f32> = x_1973.x_AdditionalLightsPosition[x_1974];
    let x_1979 : i32 = u_xlati72;
    let x_1981 : vec4<f32> = x_1973.x_AdditionalLightsPosition[x_1979];
    let x_1983 : vec3<f32> = ((-(vec3<f32>(x_1962.x, x_1962.y, x_1962.z)) * vec3<f32>(x_1976.w, x_1976.w, x_1976.w)) + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1984 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
    let x_1987 : vec4<f32> = u_xlat7;
    let x_1989 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : f32 = u_xlat73;
    u_xlat73 = max(x_1992, 0.00006103515625f);
    let x_1995 : f32 = u_xlat73;
    u_xlat51.x = inverseSqrt(x_1995);
    let x_1998 : vec2<f32> = u_xlat51;
    let x_2000 : vec4<f32> = u_xlat7;
    let x_2002 : vec3<f32> = (vec3<f32>(x_1998.x, x_1998.x, x_1998.x) * vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
    let x_2003 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
    let x_2005 : f32 = u_xlat73;
    u_xlat51.x = (1.0f / x_2005);
    let x_2008 : f32 = u_xlat73;
    let x_2009 : i32 = u_xlati72;
    let x_2011 : f32 = x_1973.x_AdditionalLightsAttenuation[x_2009].x;
    u_xlat73 = (x_2008 * x_2011);
    let x_2013 : f32 = u_xlat73;
    let x_2015 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2013) * x_2015) + 1.0f);
    let x_2018 : f32 = u_xlat73;
    u_xlat73 = max(x_2018, 0.0f);
    let x_2020 : f32 = u_xlat73;
    let x_2021 : f32 = u_xlat73;
    u_xlat73 = (x_2020 * x_2021);
    let x_2023 : f32 = u_xlat73;
    let x_2025 : f32 = u_xlat51.x;
    u_xlat73 = (x_2023 * x_2025);
    let x_2027 : i32 = u_xlati72;
    let x_2029 : vec4<f32> = x_1973.x_AdditionalLightsSpotDir[x_2027];
    let x_2031 : vec4<f32> = u_xlat7;
    u_xlat51.x = dot(vec3<f32>(x_2029.x, x_2029.y, x_2029.z), vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2036 : f32 = u_xlat51.x;
    let x_2037 : i32 = u_xlati72;
    let x_2039 : f32 = x_1973.x_AdditionalLightsAttenuation[x_2037].z;
    let x_2041 : i32 = u_xlati72;
    let x_2043 : f32 = x_1973.x_AdditionalLightsAttenuation[x_2041].w;
    u_xlat51.x = ((x_2036 * x_2039) + x_2043);
    let x_2047 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2047, 0.0f, 1.0f);
    let x_2051 : f32 = u_xlat51.x;
    let x_2053 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2051 * x_2053);
    let x_2056 : f32 = u_xlat73;
    let x_2058 : f32 = u_xlat51.x;
    u_xlat73 = (x_2056 * x_2058);
    let x_2062 : i32 = u_xlati72;
    let x_2064 : f32 = x_174.x_AdditionalShadowParams[x_2062].w;
    u_xlati51 = i32(x_2064);
    let x_2067 : i32 = u_xlati51;
    u_xlatb74 = (x_2067 >= 0i);
    let x_2069 : bool = u_xlatb74;
    if (x_2069) {
      let x_2073 : i32 = u_xlati72;
      let x_2075 : f32 = x_174.x_AdditionalShadowParams[x_2073].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2075, x_2075, x_2075, x_2075))));
      let x_2079 : bool = u_xlatb74;
      if (x_2079) {
        let x_2083 : vec4<f32> = u_xlat7;
        let x_2086 : vec4<f32> = u_xlat7;
        let x_2089 : vec4<bool> = (abs(vec4<f32>(x_2083.z, x_2083.z, x_2083.y, x_2083.z)) >= abs(vec4<f32>(x_2086.x, x_2086.y, x_2086.x, x_2086.x)));
        let x_2091 : vec3<bool> = vec3<bool>(x_2089.x, x_2089.y, x_2089.z);
        let x_2092 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
        let x_2095 : bool = u_xlatb8.y;
        let x_2097 : bool = u_xlatb8.x;
        u_xlatb74 = (x_2095 & x_2097);
        let x_2099 : vec4<f32> = u_xlat7;
        let x_2102 : vec4<bool> = (-(vec4<f32>(x_2099.z, x_2099.y, x_2099.z, x_2099.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2103 : vec3<bool> = vec3<bool>(x_2102.x, x_2102.y, x_2102.w);
        let x_2104 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2103.x, x_2103.y, x_2104.z, x_2103.z);
        let x_2107 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2107);
        let x_2112 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2112);
        let x_2117 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_2117);
        let x_2120 : bool = u_xlatb8.z;
        if (x_2120) {
          let x_2125 : f32 = u_xlat8.y;
          x_2121 = x_2125;
        } else {
          let x_2127 : f32 = u_xlat75;
          x_2121 = x_2127;
        }
        let x_2128 : f32 = x_2121;
        u_xlat75 = x_2128;
        let x_2130 : bool = u_xlatb74;
        if (x_2130) {
          let x_2135 : f32 = u_xlat8.x;
          x_2131 = x_2135;
        } else {
          let x_2137 : f32 = u_xlat75;
          x_2131 = x_2137;
        }
        let x_2138 : f32 = x_2131;
        u_xlat74 = x_2138;
        let x_2139 : i32 = u_xlati72;
        let x_2141 : f32 = x_174.x_AdditionalShadowParams[x_2139].w;
        u_xlat75 = trunc(x_2141);
        let x_2143 : f32 = u_xlat74;
        let x_2144 : f32 = u_xlat75;
        u_xlat74 = (x_2143 + x_2144);
        let x_2146 : f32 = u_xlat74;
        u_xlati51 = i32(x_2146);
      }
      let x_2148 : i32 = u_xlati51;
      u_xlati51 = (x_2148 << bitcast<u32>(2i));
      let x_2150 : vec4<f32> = vs_TEXCOORD2;
      let x_2153 : i32 = u_xlati51;
      let x_2156 : i32 = u_xlati51;
      let x_2160 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2153 + 1i) / 4i)][((x_2156 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2150.y, x_2150.y, x_2150.y, x_2150.y) * x_2160);
      let x_2162 : i32 = u_xlati51;
      let x_2164 : i32 = u_xlati51;
      let x_2167 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_2162 / 4i)][(x_2164 % 4i)];
      let x_2168 : vec4<f32> = vs_TEXCOORD2;
      let x_2171 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2167 * vec4<f32>(x_2168.x, x_2168.x, x_2168.x, x_2168.x)) + x_2171);
      let x_2173 : i32 = u_xlati51;
      let x_2176 : i32 = u_xlati51;
      let x_2180 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2173 + 2i) / 4i)][((x_2176 + 2i) % 4i)];
      let x_2181 : vec4<f32> = vs_TEXCOORD2;
      let x_2184 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2180 * vec4<f32>(x_2181.z, x_2181.z, x_2181.z, x_2181.z)) + x_2184);
      let x_2186 : vec4<f32> = u_xlat8;
      let x_2187 : i32 = u_xlati51;
      let x_2190 : i32 = u_xlati51;
      let x_2194 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2187 + 3i) / 4i)][((x_2190 + 3i) % 4i)];
      u_xlat8 = (x_2186 + x_2194);
      let x_2196 : vec4<f32> = u_xlat8;
      let x_2198 : vec4<f32> = u_xlat8;
      let x_2200 : vec3<f32> = (vec3<f32>(x_2196.x, x_2196.y, x_2196.z) / vec3<f32>(x_2198.w, x_2198.w, x_2198.w));
      let x_2201 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
      let x_2204 : i32 = u_xlati72;
      let x_2206 : f32 = x_174.x_AdditionalShadowParams[x_2204].y;
      u_xlatb51 = (0.0f < x_2206);
      let x_2208 : bool = u_xlatb51;
      if (x_2208) {
        let x_2211 : i32 = u_xlati72;
        let x_2213 : f32 = x_174.x_AdditionalShadowParams[x_2211].y;
        u_xlatb51 = (1.0f == x_2213);
        let x_2215 : bool = u_xlatb51;
        if (x_2215) {
          let x_2218 : vec4<f32> = u_xlat8;
          let x_2222 : vec4<f32> = x_174.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2218.x, x_2218.y, x_2218.x, x_2218.y) + x_2222);
          let x_2225 : vec4<f32> = u_xlat9;
          let x_2226 : vec2<f32> = vec2<f32>(x_2225.x, x_2225.y);
          let x_2228 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2226.x, x_2226.y, x_2228);
          let x_2236 : vec3<f32> = txVec30;
          let x_2238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
          u_xlat10.x = x_2238;
          let x_2241 : vec4<f32> = u_xlat9;
          let x_2242 : vec2<f32> = vec2<f32>(x_2241.z, x_2241.w);
          let x_2244 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
          let x_2251 : vec3<f32> = txVec31;
          let x_2253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2251.xy, x_2251.z);
          u_xlat10.y = x_2253;
          let x_2255 : vec4<f32> = u_xlat8;
          let x_2259 : vec4<f32> = x_174.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2255.x, x_2255.y, x_2255.x, x_2255.y) + x_2259);
          let x_2262 : vec4<f32> = u_xlat9;
          let x_2263 : vec2<f32> = vec2<f32>(x_2262.x, x_2262.y);
          let x_2265 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
          let x_2272 : vec3<f32> = txVec32;
          let x_2274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2272.xy, x_2272.z);
          u_xlat10.z = x_2274;
          let x_2277 : vec4<f32> = u_xlat9;
          let x_2278 : vec2<f32> = vec2<f32>(x_2277.z, x_2277.w);
          let x_2280 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2278.x, x_2278.y, x_2280);
          let x_2287 : vec3<f32> = txVec33;
          let x_2289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2287.xy, x_2287.z);
          u_xlat10.w = x_2289;
          let x_2291 : vec4<f32> = u_xlat10;
          u_xlat51.x = dot(x_2291, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2295 : i32 = u_xlati72;
          let x_2297 : f32 = x_174.x_AdditionalShadowParams[x_2295].y;
          u_xlatb74 = (2.0f == x_2297);
          let x_2299 : bool = u_xlatb74;
          if (x_2299) {
            let x_2302 : vec4<f32> = u_xlat8;
            let x_2306 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2309 : vec2<f32> = ((vec2<f32>(x_2302.x, x_2302.y) * vec2<f32>(x_2306.z, x_2306.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2310 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2309.x, x_2309.y, x_2310.z, x_2310.w);
            let x_2312 : vec4<f32> = u_xlat9;
            let x_2314 : vec2<f32> = floor(vec2<f32>(x_2312.x, x_2312.y));
            let x_2315 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2314.x, x_2314.y, x_2315.z, x_2315.w);
            let x_2318 : vec4<f32> = u_xlat8;
            let x_2321 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2324 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(x_2321.z, x_2321.w)) + -(vec2<f32>(x_2324.x, x_2324.y)));
            let x_2328 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2328.x, x_2328.x, x_2328.y, x_2328.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2331 : vec4<f32> = u_xlat10;
            let x_2333 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2331.x, x_2331.x, x_2331.z, x_2331.z) * vec4<f32>(x_2333.x, x_2333.x, x_2333.z, x_2333.z));
            let x_2336 : vec4<f32> = u_xlat11;
            let x_2338 : vec2<f32> = (vec2<f32>(x_2336.y, x_2336.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2338.x, x_2339.y, x_2338.y, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat11;
            let x_2344 : vec2<f32> = u_xlat55;
            let x_2346 : vec2<f32> = ((vec2<f32>(x_2341.x, x_2341.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2344));
            let x_2347 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
            let x_2350 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2350) + vec2<f32>(1.0f, 1.0f));
            let x_2353 : vec2<f32> = u_xlat55;
            let x_2354 : vec2<f32> = min(x_2353, vec2<f32>(0.0f, 0.0f));
            let x_2355 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2354.x, x_2354.y, x_2355.z, x_2355.w);
            let x_2357 : vec4<f32> = u_xlat12;
            let x_2360 : vec4<f32> = u_xlat12;
            let x_2363 : vec2<f32> = u_xlat57;
            let x_2364 : vec2<f32> = ((-(vec2<f32>(x_2357.x, x_2357.y)) * vec2<f32>(x_2360.x, x_2360.y)) + x_2363);
            let x_2365 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
            let x_2367 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2367, vec2<f32>(0.0f, 0.0f));
            let x_2369 : vec2<f32> = u_xlat55;
            let x_2371 : vec2<f32> = u_xlat55;
            let x_2373 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2369) * x_2371) + vec2<f32>(x_2373.y, x_2373.w));
            let x_2376 : vec4<f32> = u_xlat12;
            let x_2378 : vec2<f32> = (vec2<f32>(x_2376.x, x_2376.y) + vec2<f32>(1.0f, 1.0f));
            let x_2379 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2378.x, x_2378.y, x_2379.z, x_2379.w);
            let x_2381 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2381 + vec2<f32>(1.0f, 1.0f));
            let x_2383 : vec4<f32> = u_xlat11;
            let x_2385 : vec2<f32> = (vec2<f32>(x_2383.x, x_2383.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2386 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
            let x_2388 : vec2<f32> = u_xlat57;
            let x_2389 : vec2<f32> = (x_2388 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2390 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2392 : vec4<f32> = u_xlat12;
            let x_2394 : vec2<f32> = (vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2395 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
            let x_2397 : vec2<f32> = u_xlat55;
            let x_2398 : vec2<f32> = (x_2397 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2399 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2398.x, x_2398.y, x_2399.z, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2401.y, x_2401.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2405 : f32 = u_xlat12.x;
            u_xlat13.z = x_2405;
            let x_2408 : f32 = u_xlat55.x;
            u_xlat13.w = x_2408;
            let x_2411 : f32 = u_xlat14.x;
            u_xlat11.z = x_2411;
            let x_2414 : f32 = u_xlat10.x;
            u_xlat11.w = x_2414;
            let x_2416 : vec4<f32> = u_xlat11;
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2416.z, x_2416.w, x_2416.x, x_2416.z) + vec4<f32>(x_2418.z, x_2418.w, x_2418.x, x_2418.z));
            let x_2422 : f32 = u_xlat13.y;
            u_xlat12.z = x_2422;
            let x_2425 : f32 = u_xlat55.y;
            u_xlat12.w = x_2425;
            let x_2428 : f32 = u_xlat11.y;
            u_xlat14.z = x_2428;
            let x_2431 : f32 = u_xlat10.z;
            u_xlat14.w = x_2431;
            let x_2433 : vec4<f32> = u_xlat12;
            let x_2435 : vec4<f32> = u_xlat14;
            let x_2437 : vec3<f32> = (vec3<f32>(x_2433.z, x_2433.y, x_2433.w) + vec3<f32>(x_2435.z, x_2435.y, x_2435.w));
            let x_2438 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat11;
            let x_2442 : vec4<f32> = u_xlat15;
            let x_2444 : vec3<f32> = (vec3<f32>(x_2440.x, x_2440.z, x_2440.w) / vec3<f32>(x_2442.z, x_2442.w, x_2442.y));
            let x_2445 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat11;
            let x_2449 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.y, x_2447.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2450 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
            let x_2452 : vec4<f32> = u_xlat14;
            let x_2454 : vec4<f32> = u_xlat10;
            let x_2456 : vec3<f32> = (vec3<f32>(x_2452.z, x_2452.y, x_2452.w) / vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
            let x_2457 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
            let x_2459 : vec4<f32> = u_xlat12;
            let x_2461 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.y, x_2459.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2462 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
            let x_2464 : vec4<f32> = u_xlat11;
            let x_2467 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2469 : vec3<f32> = (vec3<f32>(x_2464.y, x_2464.x, x_2464.z) * vec3<f32>(x_2467.x, x_2467.x, x_2467.x));
            let x_2470 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat12;
            let x_2475 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2477 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.y, x_2472.z) * vec3<f32>(x_2475.y, x_2475.y, x_2475.y));
            let x_2478 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
            let x_2481 : f32 = u_xlat12.x;
            u_xlat11.w = x_2481;
            let x_2483 : vec4<f32> = u_xlat9;
            let x_2486 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2489 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2483.x, x_2483.y, x_2483.x, x_2483.y) * vec4<f32>(x_2486.x, x_2486.y, x_2486.x, x_2486.y)) + vec4<f32>(x_2489.y, x_2489.w, x_2489.x, x_2489.w));
            let x_2492 : vec4<f32> = u_xlat9;
            let x_2495 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2498 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2492.x, x_2492.y) * vec2<f32>(x_2495.x, x_2495.y)) + vec2<f32>(x_2498.z, x_2498.w));
            let x_2502 : f32 = u_xlat11.y;
            u_xlat12.w = x_2502;
            let x_2504 : vec4<f32> = u_xlat12;
            let x_2505 : vec2<f32> = vec2<f32>(x_2504.y, x_2504.z);
            let x_2506 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2506.x, x_2505.x, x_2506.z, x_2505.y);
            let x_2508 : vec4<f32> = u_xlat9;
            let x_2511 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2514 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y) * vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y)) + vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2514.y));
            let x_2517 : vec4<f32> = u_xlat9;
            let x_2520 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2523 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2517.x, x_2517.y, x_2517.x, x_2517.y) * vec4<f32>(x_2520.x, x_2520.y, x_2520.x, x_2520.y)) + vec4<f32>(x_2523.w, x_2523.y, x_2523.w, x_2523.z));
            let x_2526 : vec4<f32> = u_xlat9;
            let x_2529 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2532 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2526.x, x_2526.y, x_2526.x, x_2526.y) * vec4<f32>(x_2529.x, x_2529.y, x_2529.x, x_2529.y)) + vec4<f32>(x_2532.x, x_2532.w, x_2532.z, x_2532.w));
            let x_2535 : vec4<f32> = u_xlat10;
            let x_2537 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2535.x, x_2535.x, x_2535.x, x_2535.y) * vec4<f32>(x_2537.z, x_2537.w, x_2537.y, x_2537.z));
            let x_2540 : vec4<f32> = u_xlat10;
            let x_2542 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2540.y, x_2540.y, x_2540.z, x_2540.z) * x_2542);
            let x_2545 : f32 = u_xlat10.z;
            let x_2547 : f32 = u_xlat15.y;
            u_xlat74 = (x_2545 * x_2547);
            let x_2550 : vec4<f32> = u_xlat13;
            let x_2551 : vec2<f32> = vec2<f32>(x_2550.x, x_2550.y);
            let x_2553 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2551.x, x_2551.y, x_2553);
            let x_2560 : vec3<f32> = txVec34;
            let x_2562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2560.xy, x_2560.z);
            u_xlat75 = x_2562;
            let x_2564 : vec4<f32> = u_xlat13;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.z, x_2564.w);
            let x_2567 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
            let x_2575 : vec3<f32> = txVec35;
            let x_2577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2575.xy, x_2575.z);
            u_xlat76 = x_2577;
            let x_2578 : f32 = u_xlat76;
            let x_2580 : f32 = u_xlat16.y;
            u_xlat76 = (x_2578 * x_2580);
            let x_2583 : f32 = u_xlat16.x;
            let x_2584 : f32 = u_xlat75;
            let x_2586 : f32 = u_xlat76;
            u_xlat75 = ((x_2583 * x_2584) + x_2586);
            let x_2589 : vec2<f32> = u_xlat55;
            let x_2591 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2589.x, x_2589.y, x_2591);
            let x_2598 : vec3<f32> = txVec36;
            let x_2600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2598.xy, x_2598.z);
            u_xlat76 = x_2600;
            let x_2602 : f32 = u_xlat16.z;
            let x_2603 : f32 = u_xlat76;
            let x_2605 : f32 = u_xlat75;
            u_xlat75 = ((x_2602 * x_2603) + x_2605);
            let x_2608 : vec4<f32> = u_xlat12;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.x, x_2608.y);
            let x_2611 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2609.x, x_2609.y, x_2611);
            let x_2618 : vec3<f32> = txVec37;
            let x_2620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2618.xy, x_2618.z);
            u_xlat76 = x_2620;
            let x_2622 : f32 = u_xlat16.w;
            let x_2623 : f32 = u_xlat76;
            let x_2625 : f32 = u_xlat75;
            u_xlat75 = ((x_2622 * x_2623) + x_2625);
            let x_2628 : vec4<f32> = u_xlat14;
            let x_2629 : vec2<f32> = vec2<f32>(x_2628.x, x_2628.y);
            let x_2631 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2629.x, x_2629.y, x_2631);
            let x_2638 : vec3<f32> = txVec38;
            let x_2640 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2638.xy, x_2638.z);
            u_xlat76 = x_2640;
            let x_2642 : f32 = u_xlat17.x;
            let x_2643 : f32 = u_xlat76;
            let x_2645 : f32 = u_xlat75;
            u_xlat75 = ((x_2642 * x_2643) + x_2645);
            let x_2648 : vec4<f32> = u_xlat14;
            let x_2649 : vec2<f32> = vec2<f32>(x_2648.z, x_2648.w);
            let x_2651 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2649.x, x_2649.y, x_2651);
            let x_2658 : vec3<f32> = txVec39;
            let x_2660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2658.xy, x_2658.z);
            u_xlat76 = x_2660;
            let x_2662 : f32 = u_xlat17.y;
            let x_2663 : f32 = u_xlat76;
            let x_2665 : f32 = u_xlat75;
            u_xlat75 = ((x_2662 * x_2663) + x_2665);
            let x_2668 : vec4<f32> = u_xlat12;
            let x_2669 : vec2<f32> = vec2<f32>(x_2668.z, x_2668.w);
            let x_2671 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
            let x_2678 : vec3<f32> = txVec40;
            let x_2680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2678.xy, x_2678.z);
            u_xlat76 = x_2680;
            let x_2682 : f32 = u_xlat17.z;
            let x_2683 : f32 = u_xlat76;
            let x_2685 : f32 = u_xlat75;
            u_xlat75 = ((x_2682 * x_2683) + x_2685);
            let x_2688 : vec4<f32> = u_xlat11;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
            let x_2691 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2698 : vec3<f32> = txVec41;
            let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
            u_xlat76 = x_2700;
            let x_2702 : f32 = u_xlat17.w;
            let x_2703 : f32 = u_xlat76;
            let x_2705 : f32 = u_xlat75;
            u_xlat75 = ((x_2702 * x_2703) + x_2705);
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.z, x_2708.w);
            let x_2711 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
            let x_2718 : vec3<f32> = txVec42;
            let x_2720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
            u_xlat76 = x_2720;
            let x_2721 : f32 = u_xlat74;
            let x_2722 : f32 = u_xlat76;
            let x_2724 : f32 = u_xlat75;
            u_xlat51.x = ((x_2721 * x_2722) + x_2724);
          } else {
            let x_2728 : vec4<f32> = u_xlat8;
            let x_2731 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2734 : vec2<f32> = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.z, x_2731.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2735 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat9;
            let x_2739 : vec2<f32> = floor(vec2<f32>(x_2737.x, x_2737.y));
            let x_2740 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
            let x_2742 : vec4<f32> = u_xlat8;
            let x_2745 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(x_2745.z, x_2745.w)) + -(vec2<f32>(x_2748.x, x_2748.y)));
            let x_2752 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2752.x, x_2752.x, x_2752.y, x_2752.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2755 : vec4<f32> = u_xlat10;
            let x_2757 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2755.x, x_2755.x, x_2755.z, x_2755.z) * vec4<f32>(x_2757.x, x_2757.x, x_2757.z, x_2757.z));
            let x_2760 : vec4<f32> = u_xlat11;
            let x_2762 : vec2<f32> = (vec2<f32>(x_2760.y, x_2760.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2763 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2763.x, x_2762.x, x_2763.z, x_2762.y);
            let x_2765 : vec4<f32> = u_xlat11;
            let x_2768 : vec2<f32> = u_xlat55;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2765.x, x_2765.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2768));
            let x_2771 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2770.x, x_2771.y, x_2770.y, x_2771.w);
            let x_2773 : vec2<f32> = u_xlat55;
            let x_2775 : vec2<f32> = (-(x_2773) + vec2<f32>(1.0f, 1.0f));
            let x_2776 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2778, vec2<f32>(0.0f, 0.0f));
            let x_2780 : vec2<f32> = u_xlat57;
            let x_2782 : vec2<f32> = u_xlat57;
            let x_2784 : vec4<f32> = u_xlat11;
            let x_2786 : vec2<f32> = ((-(x_2780) * x_2782) + vec2<f32>(x_2784.x, x_2784.y));
            let x_2787 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
            let x_2789 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2789, vec2<f32>(0.0f, 0.0f));
            let x_2792 : vec2<f32> = u_xlat57;
            let x_2794 : vec2<f32> = u_xlat57;
            let x_2796 : vec4<f32> = u_xlat10;
            let x_2798 : vec2<f32> = ((-(x_2792) * x_2794) + vec2<f32>(x_2796.y, x_2796.w));
            let x_2799 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2798.x, x_2799.y, x_2798.y);
            let x_2801 : vec4<f32> = u_xlat11;
            let x_2803 : vec2<f32> = (vec2<f32>(x_2801.x, x_2801.y) + vec2<f32>(2.0f, 2.0f));
            let x_2804 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
            let x_2806 : vec3<f32> = u_xlat33;
            let x_2808 : vec2<f32> = (vec2<f32>(x_2806.x, x_2806.z) + vec2<f32>(2.0f, 2.0f));
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2809.x, x_2808.x, x_2809.z, x_2808.y);
            let x_2812 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2812 * 0.08163200318813323975f);
            let x_2815 : vec4<f32> = u_xlat10;
            let x_2817 : vec3<f32> = (vec3<f32>(x_2815.z, x_2815.x, x_2815.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2818 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat11;
            let x_2822 : vec2<f32> = (vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2823 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2826 : f32 = u_xlat14.y;
            u_xlat13.x = x_2826;
            let x_2828 : vec2<f32> = u_xlat55;
            let x_2831 : vec2<f32> = ((vec2<f32>(x_2828.x, x_2828.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2832 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2832.x, x_2831.x, x_2832.z, x_2831.y);
            let x_2834 : vec2<f32> = u_xlat55;
            let x_2837 : vec2<f32> = ((vec2<f32>(x_2834.x, x_2834.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2838 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2837.x, x_2838.y, x_2837.y, x_2838.w);
            let x_2841 : f32 = u_xlat10.x;
            u_xlat11.y = x_2841;
            let x_2844 : f32 = u_xlat12.y;
            u_xlat11.w = x_2844;
            let x_2846 : vec4<f32> = u_xlat11;
            let x_2847 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2846 + x_2847);
            let x_2849 : vec2<f32> = u_xlat55;
            let x_2852 : vec2<f32> = ((vec2<f32>(x_2849.y, x_2849.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2853 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2853.x, x_2852.x, x_2853.z, x_2852.y);
            let x_2855 : vec2<f32> = u_xlat55;
            let x_2858 : vec2<f32> = ((vec2<f32>(x_2855.y, x_2855.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2859 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2858.x, x_2859.y, x_2858.y, x_2859.w);
            let x_2862 : f32 = u_xlat10.y;
            u_xlat12.y = x_2862;
            let x_2864 : vec4<f32> = u_xlat12;
            let x_2865 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2864 + x_2865);
            let x_2867 : vec4<f32> = u_xlat11;
            let x_2868 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2867 / x_2868);
            let x_2870 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2870 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2872 : vec4<f32> = u_xlat12;
            let x_2873 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2872 / x_2873);
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2877 : vec4<f32> = u_xlat11;
            let x_2880 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2877.w, x_2877.x, x_2877.y, x_2877.z) * vec4<f32>(x_2880.x, x_2880.x, x_2880.x, x_2880.x));
            let x_2883 : vec4<f32> = u_xlat12;
            let x_2886 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2883.x, x_2883.w, x_2883.y, x_2883.z) * vec4<f32>(x_2886.y, x_2886.y, x_2886.y, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2890 : vec3<f32> = vec3<f32>(x_2889.y, x_2889.z, x_2889.w);
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2891.y, x_2890.y, x_2890.z);
            let x_2894 : f32 = u_xlat12.x;
            u_xlat14.y = x_2894;
            let x_2896 : vec4<f32> = u_xlat9;
            let x_2899 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2896.x, x_2896.y, x_2896.x, x_2896.y) * vec4<f32>(x_2899.x, x_2899.y, x_2899.x, x_2899.y)) + vec4<f32>(x_2902.x, x_2902.y, x_2902.z, x_2902.y));
            let x_2905 : vec4<f32> = u_xlat9;
            let x_2908 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2911 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2905.x, x_2905.y) * vec2<f32>(x_2908.x, x_2908.y)) + vec2<f32>(x_2911.w, x_2911.y));
            let x_2915 : f32 = u_xlat14.y;
            u_xlat11.y = x_2915;
            let x_2918 : f32 = u_xlat12.z;
            u_xlat14.y = x_2918;
            let x_2920 : vec4<f32> = u_xlat9;
            let x_2923 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2926 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y) * vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y)) + vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2926.y));
            let x_2929 : vec4<f32> = u_xlat9;
            let x_2932 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2937 : vec2<f32> = ((vec2<f32>(x_2929.x, x_2929.y) * vec2<f32>(x_2932.x, x_2932.y)) + vec2<f32>(x_2935.w, x_2935.y));
            let x_2938 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
            let x_2941 : f32 = u_xlat14.y;
            u_xlat11.z = x_2941;
            let x_2943 : vec4<f32> = u_xlat9;
            let x_2946 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2949 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y) * vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y)) + vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.z));
            let x_2953 : f32 = u_xlat12.w;
            u_xlat14.y = x_2953;
            let x_2956 : vec4<f32> = u_xlat9;
            let x_2959 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2962 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y) * vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y)) + vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2962.y));
            let x_2966 : vec4<f32> = u_xlat9;
            let x_2969 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.w, x_2972.y));
            let x_2976 : f32 = u_xlat14.y;
            u_xlat11.w = x_2976;
            let x_2979 : vec4<f32> = u_xlat9;
            let x_2982 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2979.x, x_2979.y) * vec2<f32>(x_2982.x, x_2982.y)) + vec2<f32>(x_2985.x, x_2985.w));
            let x_2988 : vec4<f32> = u_xlat14;
            let x_2989 : vec3<f32> = vec3<f32>(x_2988.x, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2989.x, x_2990.y, x_2989.y, x_2989.z);
            let x_2992 : vec4<f32> = u_xlat9;
            let x_2995 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2998 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y) * vec4<f32>(x_2995.x, x_2995.y, x_2995.x, x_2995.y)) + vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2998.y));
            let x_3002 : vec4<f32> = u_xlat9;
            let x_3005 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3008 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3002.x, x_3002.y) * vec2<f32>(x_3005.x, x_3005.y)) + vec2<f32>(x_3008.w, x_3008.y));
            let x_3012 : f32 = u_xlat11.x;
            u_xlat12.x = x_3012;
            let x_3014 : vec4<f32> = u_xlat9;
            let x_3017 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3020 : vec4<f32> = u_xlat12;
            let x_3022 : vec2<f32> = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(x_3017.x, x_3017.y)) + vec2<f32>(x_3020.x, x_3020.y));
            let x_3023 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
            let x_3026 : vec4<f32> = u_xlat10;
            let x_3028 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3026.x, x_3026.x, x_3026.x, x_3026.x) * x_3028);
            let x_3031 : vec4<f32> = u_xlat10;
            let x_3033 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3031.y, x_3031.y, x_3031.y, x_3031.y) * x_3033);
            let x_3036 : vec4<f32> = u_xlat10;
            let x_3038 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3036.z, x_3036.z, x_3036.z, x_3036.z) * x_3038);
            let x_3040 : vec4<f32> = u_xlat10;
            let x_3042 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3040.w, x_3040.w, x_3040.w, x_3040.w) * x_3042);
            let x_3045 : vec4<f32> = u_xlat15;
            let x_3046 : vec2<f32> = vec2<f32>(x_3045.x, x_3045.y);
            let x_3048 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3046.x, x_3046.y, x_3048);
            let x_3055 : vec3<f32> = txVec43;
            let x_3057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
            u_xlat74 = x_3057;
            let x_3059 : vec4<f32> = u_xlat15;
            let x_3060 : vec2<f32> = vec2<f32>(x_3059.z, x_3059.w);
            let x_3062 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
            let x_3069 : vec3<f32> = txVec44;
            let x_3071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
            u_xlat75 = x_3071;
            let x_3072 : f32 = u_xlat75;
            let x_3074 : f32 = u_xlat20.y;
            u_xlat75 = (x_3072 * x_3074);
            let x_3077 : f32 = u_xlat20.x;
            let x_3078 : f32 = u_xlat74;
            let x_3080 : f32 = u_xlat75;
            u_xlat74 = ((x_3077 * x_3078) + x_3080);
            let x_3083 : vec2<f32> = u_xlat55;
            let x_3085 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec45;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat75 = x_3094;
            let x_3096 : f32 = u_xlat20.z;
            let x_3097 : f32 = u_xlat75;
            let x_3099 : f32 = u_xlat74;
            u_xlat74 = ((x_3096 * x_3097) + x_3099);
            let x_3102 : vec4<f32> = u_xlat18;
            let x_3103 : vec2<f32> = vec2<f32>(x_3102.x, x_3102.y);
            let x_3105 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
            let x_3112 : vec3<f32> = txVec46;
            let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
            u_xlat75 = x_3114;
            let x_3116 : f32 = u_xlat20.w;
            let x_3117 : f32 = u_xlat75;
            let x_3119 : f32 = u_xlat74;
            u_xlat74 = ((x_3116 * x_3117) + x_3119);
            let x_3122 : vec4<f32> = u_xlat16;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.x, x_3122.y);
            let x_3125 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec47;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat75 = x_3134;
            let x_3136 : f32 = u_xlat21.x;
            let x_3137 : f32 = u_xlat75;
            let x_3139 : f32 = u_xlat74;
            u_xlat74 = ((x_3136 * x_3137) + x_3139);
            let x_3142 : vec4<f32> = u_xlat16;
            let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec48;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat75 = x_3154;
            let x_3156 : f32 = u_xlat21.y;
            let x_3157 : f32 = u_xlat75;
            let x_3159 : f32 = u_xlat74;
            u_xlat74 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec4<f32> = u_xlat17;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
            let x_3165 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec49;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat75 = x_3174;
            let x_3176 : f32 = u_xlat21.z;
            let x_3177 : f32 = u_xlat75;
            let x_3179 : f32 = u_xlat74;
            u_xlat74 = ((x_3176 * x_3177) + x_3179);
            let x_3182 : vec4<f32> = u_xlat18;
            let x_3183 : vec2<f32> = vec2<f32>(x_3182.z, x_3182.w);
            let x_3185 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
            let x_3192 : vec3<f32> = txVec50;
            let x_3194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
            u_xlat75 = x_3194;
            let x_3196 : f32 = u_xlat21.w;
            let x_3197 : f32 = u_xlat75;
            let x_3199 : f32 = u_xlat74;
            u_xlat74 = ((x_3196 * x_3197) + x_3199);
            let x_3202 : vec4<f32> = u_xlat19;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
            let x_3205 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec51;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat75 = x_3214;
            let x_3216 : f32 = u_xlat22.x;
            let x_3217 : f32 = u_xlat75;
            let x_3219 : f32 = u_xlat74;
            u_xlat74 = ((x_3216 * x_3217) + x_3219);
            let x_3222 : vec4<f32> = u_xlat19;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.z, x_3222.w);
            let x_3225 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec52;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat75 = x_3234;
            let x_3236 : f32 = u_xlat22.y;
            let x_3237 : f32 = u_xlat75;
            let x_3239 : f32 = u_xlat74;
            u_xlat74 = ((x_3236 * x_3237) + x_3239);
            let x_3242 : vec2<f32> = u_xlat34;
            let x_3244 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec53;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat75 = x_3253;
            let x_3255 : f32 = u_xlat22.z;
            let x_3256 : f32 = u_xlat75;
            let x_3258 : f32 = u_xlat74;
            u_xlat74 = ((x_3255 * x_3256) + x_3258);
            let x_3261 : vec2<f32> = u_xlat63;
            let x_3263 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec54;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat75 = x_3272;
            let x_3274 : f32 = u_xlat22.w;
            let x_3275 : f32 = u_xlat75;
            let x_3277 : f32 = u_xlat74;
            u_xlat74 = ((x_3274 * x_3275) + x_3277);
            let x_3280 : vec4<f32> = u_xlat14;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec55;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat75 = x_3292;
            let x_3294 : f32 = u_xlat10.x;
            let x_3295 : f32 = u_xlat75;
            let x_3297 : f32 = u_xlat74;
            u_xlat74 = ((x_3294 * x_3295) + x_3297);
            let x_3300 : vec4<f32> = u_xlat14;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.z, x_3300.w);
            let x_3303 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec56;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat75 = x_3312;
            let x_3314 : f32 = u_xlat10.y;
            let x_3315 : f32 = u_xlat75;
            let x_3317 : f32 = u_xlat74;
            u_xlat74 = ((x_3314 * x_3315) + x_3317);
            let x_3320 : vec2<f32> = u_xlat58;
            let x_3322 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec57;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat75 = x_3331;
            let x_3333 : f32 = u_xlat10.z;
            let x_3334 : f32 = u_xlat75;
            let x_3336 : f32 = u_xlat74;
            u_xlat74 = ((x_3333 * x_3334) + x_3336);
            let x_3339 : vec4<f32> = u_xlat9;
            let x_3340 : vec2<f32> = vec2<f32>(x_3339.x, x_3339.y);
            let x_3342 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3340.x, x_3340.y, x_3342);
            let x_3349 : vec3<f32> = txVec58;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat75 = x_3351;
            let x_3353 : f32 = u_xlat10.w;
            let x_3354 : f32 = u_xlat75;
            let x_3356 : f32 = u_xlat74;
            u_xlat51.x = ((x_3353 * x_3354) + x_3356);
          }
        }
      } else {
        let x_3361 : vec4<f32> = u_xlat8;
        let x_3362 : vec2<f32> = vec2<f32>(x_3361.x, x_3361.y);
        let x_3364 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
        let x_3371 : vec3<f32> = txVec59;
        let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
        u_xlat51.x = x_3373;
      }
      let x_3375 : i32 = u_xlati72;
      let x_3377 : f32 = x_174.x_AdditionalShadowParams[x_3375].x;
      u_xlat74 = (1.0f + -(x_3377));
      let x_3381 : f32 = u_xlat51.x;
      let x_3382 : i32 = u_xlati72;
      let x_3384 : f32 = x_174.x_AdditionalShadowParams[x_3382].x;
      let x_3386 : f32 = u_xlat74;
      u_xlat51.x = ((x_3381 * x_3384) + x_3386);
      let x_3390 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3390);
      let x_3394 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3394 >= 1.0f);
      let x_3396 : bool = u_xlatb74;
      let x_3397 : bool = u_xlatb75;
      u_xlatb74 = (x_3396 | x_3397);
      let x_3399 : bool = u_xlatb74;
      if (x_3399) {
        x_3400 = 1.0f;
      } else {
        let x_3405 : f32 = u_xlat51.x;
        x_3400 = x_3405;
      }
      let x_3406 : f32 = x_3400;
      u_xlat51.x = x_3406;
    } else {
      u_xlat51.x = 1.0f;
    }
    let x_3411 : f32 = u_xlat51.x;
    u_xlat74 = (-(x_3411) + 1.0f);
    let x_3414 : f32 = u_xlat70;
    let x_3415 : f32 = u_xlat74;
    let x_3418 : f32 = u_xlat51.x;
    u_xlat51.x = ((x_3414 * x_3415) + x_3418);
    let x_3422 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3422 & 31i)));
    let x_3426 : i32 = u_xlati74;
    let x_3429 : f32 = x_1730.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3426) & bitcast<u32>(x_3429)));
    let x_3433 : i32 = u_xlati74;
    if ((x_3433 != 0i)) {
      let x_3437 : i32 = u_xlati72;
      let x_3439 : f32 = x_1730.x_AdditionalLightsLightTypes[x_3437].el;
      u_xlati74 = i32(x_3439);
      let x_3442 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3442 != 0i));
      let x_3446 : i32 = u_xlati72;
      u_xlati76 = (x_3446 << bitcast<u32>(2i));
      let x_3448 : i32 = u_xlati75;
      if ((x_3448 != 0i)) {
        let x_3452 : vec4<f32> = vs_TEXCOORD2;
        let x_3454 : i32 = u_xlati76;
        let x_3457 : i32 = u_xlati76;
        let x_3461 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3454 + 1i) / 4i)][((x_3457 + 1i) % 4i)];
        let x_3463 : vec3<f32> = (vec3<f32>(x_3452.y, x_3452.y, x_3452.y) * vec3<f32>(x_3461.x, x_3461.y, x_3461.w));
        let x_3464 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3463.x, x_3463.y, x_3463.z, x_3464.w);
        let x_3466 : i32 = u_xlati76;
        let x_3468 : i32 = u_xlati76;
        let x_3471 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3466 / 4i)][(x_3468 % 4i)];
        let x_3473 : vec4<f32> = vs_TEXCOORD2;
        let x_3476 : vec4<f32> = u_xlat8;
        let x_3478 : vec3<f32> = ((vec3<f32>(x_3471.x, x_3471.y, x_3471.w) * vec3<f32>(x_3473.x, x_3473.x, x_3473.x)) + vec3<f32>(x_3476.x, x_3476.y, x_3476.z));
        let x_3479 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
        let x_3481 : i32 = u_xlati76;
        let x_3484 : i32 = u_xlati76;
        let x_3488 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3481 + 2i) / 4i)][((x_3484 + 2i) % 4i)];
        let x_3490 : vec4<f32> = vs_TEXCOORD2;
        let x_3493 : vec4<f32> = u_xlat8;
        let x_3495 : vec3<f32> = ((vec3<f32>(x_3488.x, x_3488.y, x_3488.w) * vec3<f32>(x_3490.z, x_3490.z, x_3490.z)) + vec3<f32>(x_3493.x, x_3493.y, x_3493.z));
        let x_3496 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3496.w);
        let x_3498 : vec4<f32> = u_xlat8;
        let x_3500 : i32 = u_xlati76;
        let x_3503 : i32 = u_xlati76;
        let x_3507 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3500 + 3i) / 4i)][((x_3503 + 3i) % 4i)];
        let x_3509 : vec3<f32> = (vec3<f32>(x_3498.x, x_3498.y, x_3498.z) + vec3<f32>(x_3507.x, x_3507.y, x_3507.w));
        let x_3510 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
        let x_3512 : vec4<f32> = u_xlat8;
        let x_3514 : vec4<f32> = u_xlat8;
        let x_3516 : vec2<f32> = (vec2<f32>(x_3512.x, x_3512.y) / vec2<f32>(x_3514.z, x_3514.z));
        let x_3517 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3516.x, x_3516.y, x_3517.z, x_3517.w);
        let x_3519 : vec4<f32> = u_xlat8;
        let x_3522 : vec2<f32> = ((vec2<f32>(x_3519.x, x_3519.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3523 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3522.x, x_3522.y, x_3523.z, x_3523.w);
        let x_3525 : vec4<f32> = u_xlat8;
        let x_3529 : vec2<f32> = clamp(vec2<f32>(x_3525.x, x_3525.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3530 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3529.x, x_3529.y, x_3530.z, x_3530.w);
        let x_3532 : i32 = u_xlati72;
        let x_3534 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3532];
        let x_3536 : vec4<f32> = u_xlat8;
        let x_3539 : i32 = u_xlati72;
        let x_3541 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3539];
        let x_3543 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(x_3536.x, x_3536.y)) + vec2<f32>(x_3541.z, x_3541.w));
        let x_3544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3543.x, x_3543.y, x_3544.z, x_3544.w);
      } else {
        let x_3547 : i32 = u_xlati74;
        u_xlatb74 = (x_3547 == 1i);
        let x_3549 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3549);
        let x_3551 : i32 = u_xlati74;
        if ((x_3551 != 0i)) {
          let x_3555 : vec4<f32> = vs_TEXCOORD2;
          let x_3557 : i32 = u_xlati76;
          let x_3560 : i32 = u_xlati76;
          let x_3564 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3557 + 1i) / 4i)][((x_3560 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3555.y, x_3555.y) * vec2<f32>(x_3564.x, x_3564.y));
          let x_3567 : i32 = u_xlati76;
          let x_3569 : i32 = u_xlati76;
          let x_3572 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3567 / 4i)][(x_3569 % 4i)];
          let x_3574 : vec4<f32> = vs_TEXCOORD2;
          let x_3577 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3572.x, x_3572.y) * vec2<f32>(x_3574.x, x_3574.x)) + x_3577);
          let x_3579 : i32 = u_xlati76;
          let x_3582 : i32 = u_xlati76;
          let x_3586 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3579 + 2i) / 4i)][((x_3582 + 2i) % 4i)];
          let x_3588 : vec4<f32> = vs_TEXCOORD2;
          let x_3591 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3586.x, x_3586.y) * vec2<f32>(x_3588.z, x_3588.z)) + x_3591);
          let x_3593 : vec2<f32> = u_xlat54;
          let x_3594 : i32 = u_xlati76;
          let x_3597 : i32 = u_xlati76;
          let x_3601 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3594 + 3i) / 4i)][((x_3597 + 3i) % 4i)];
          u_xlat54 = (x_3593 + vec2<f32>(x_3601.x, x_3601.y));
          let x_3604 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3604 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3607 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3607);
          let x_3609 : i32 = u_xlati72;
          let x_3611 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3609];
          let x_3613 : vec2<f32> = u_xlat54;
          let x_3615 : i32 = u_xlati72;
          let x_3617 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3615];
          let x_3619 : vec2<f32> = ((vec2<f32>(x_3611.x, x_3611.y) * x_3613) + vec2<f32>(x_3617.z, x_3617.w));
          let x_3620 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3619.x, x_3619.y, x_3620.z, x_3620.w);
        } else {
          let x_3623 : vec4<f32> = vs_TEXCOORD2;
          let x_3625 : i32 = u_xlati76;
          let x_3628 : i32 = u_xlati76;
          let x_3632 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3625 + 1i) / 4i)][((x_3628 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3623.y, x_3623.y, x_3623.y, x_3623.y) * x_3632);
          let x_3634 : i32 = u_xlati76;
          let x_3636 : i32 = u_xlati76;
          let x_3639 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[(x_3634 / 4i)][(x_3636 % 4i)];
          let x_3640 : vec4<f32> = vs_TEXCOORD2;
          let x_3643 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3639 * vec4<f32>(x_3640.x, x_3640.x, x_3640.x, x_3640.x)) + x_3643);
          let x_3645 : i32 = u_xlati76;
          let x_3648 : i32 = u_xlati76;
          let x_3652 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3645 + 2i) / 4i)][((x_3648 + 2i) % 4i)];
          let x_3653 : vec4<f32> = vs_TEXCOORD2;
          let x_3656 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3652 * vec4<f32>(x_3653.z, x_3653.z, x_3653.z, x_3653.z)) + x_3656);
          let x_3658 : vec4<f32> = u_xlat9;
          let x_3659 : i32 = u_xlati76;
          let x_3662 : i32 = u_xlati76;
          let x_3666 : vec4<f32> = x_1730.x_AdditionalLightsWorldToLights[((x_3659 + 3i) / 4i)][((x_3662 + 3i) % 4i)];
          u_xlat9 = (x_3658 + x_3666);
          let x_3668 : vec4<f32> = u_xlat9;
          let x_3670 : vec4<f32> = u_xlat9;
          let x_3672 : vec3<f32> = (vec3<f32>(x_3668.x, x_3668.y, x_3668.z) / vec3<f32>(x_3670.w, x_3670.w, x_3670.w));
          let x_3673 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3672.x, x_3672.y, x_3672.z, x_3673.w);
          let x_3675 : vec4<f32> = u_xlat9;
          let x_3677 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3675.x, x_3675.y, x_3675.z), vec3<f32>(x_3677.x, x_3677.y, x_3677.z));
          let x_3680 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3680);
          let x_3682 : f32 = u_xlat74;
          let x_3684 : vec4<f32> = u_xlat9;
          let x_3686 : vec3<f32> = (vec3<f32>(x_3682, x_3682, x_3682) * vec3<f32>(x_3684.x, x_3684.y, x_3684.z));
          let x_3687 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3686.x, x_3686.y, x_3686.z, x_3687.w);
          let x_3689 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3689.x, x_3689.y, x_3689.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3694 : f32 = u_xlat74;
          u_xlat74 = max(x_3694, 0.00000099999999747524f);
          let x_3697 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3697);
          let x_3699 : f32 = u_xlat74;
          let x_3701 : vec4<f32> = u_xlat9;
          let x_3703 : vec3<f32> = (vec3<f32>(x_3699, x_3699, x_3699) * vec3<f32>(x_3701.z, x_3701.x, x_3701.y));
          let x_3704 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3703.x, x_3703.y, x_3703.z, x_3704.w);
          let x_3707 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3707);
          let x_3711 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3711, 0.0f, 1.0f);
          let x_3715 : vec4<f32> = u_xlat10;
          let x_3717 : vec4<bool> = (vec4<f32>(x_3715.y, x_3715.z, x_3715.y, x_3715.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3717.x, x_3717.y);
          let x_3720 : bool = u_xlatb54.x;
          if (x_3720) {
            let x_3725 : f32 = u_xlat10.x;
            x_3721 = x_3725;
          } else {
            let x_3728 : f32 = u_xlat10.x;
            x_3721 = -(x_3728);
          }
          let x_3730 : f32 = x_3721;
          u_xlat54.x = x_3730;
          let x_3733 : bool = u_xlatb54.y;
          if (x_3733) {
            let x_3738 : f32 = u_xlat10.x;
            x_3734 = x_3738;
          } else {
            let x_3741 : f32 = u_xlat10.x;
            x_3734 = -(x_3741);
          }
          let x_3743 : f32 = x_3734;
          u_xlat54.y = x_3743;
          let x_3745 : vec4<f32> = u_xlat9;
          let x_3747 : f32 = u_xlat74;
          let x_3750 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3745.x, x_3745.y) * vec2<f32>(x_3747, x_3747)) + x_3750);
          let x_3752 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3752 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3755 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3755, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3759 : i32 = u_xlati72;
          let x_3761 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3759];
          let x_3763 : vec2<f32> = u_xlat54;
          let x_3765 : i32 = u_xlati72;
          let x_3767 : vec4<f32> = x_1730.x_AdditionalLightsCookieAtlasUVRects[x_3765];
          let x_3769 : vec2<f32> = ((vec2<f32>(x_3761.x, x_3761.y) * x_3763) + vec2<f32>(x_3767.z, x_3767.w));
          let x_3770 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
        }
      }
      let x_3777 : vec4<f32> = u_xlat8;
      let x_3779 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3777.x, x_3777.y), 0.0f);
      u_xlat8 = x_3779;
      let x_3781 : bool = u_xlatb5.y;
      if (x_3781) {
        let x_3786 : f32 = u_xlat8.w;
        x_3782 = x_3786;
      } else {
        let x_3789 : f32 = u_xlat8.x;
        x_3782 = x_3789;
      }
      let x_3790 : f32 = x_3782;
      u_xlat74 = x_3790;
      let x_3792 : bool = u_xlatb5.x;
      if (x_3792) {
        let x_3796 : vec4<f32> = u_xlat8;
        x_3793 = vec3<f32>(x_3796.x, x_3796.y, x_3796.z);
      } else {
        let x_3799 : f32 = u_xlat74;
        x_3793 = vec3<f32>(x_3799, x_3799, x_3799);
      }
      let x_3801 : vec3<f32> = x_3793;
      let x_3802 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3808 : vec4<f32> = u_xlat8;
    let x_3810 : i32 = u_xlati72;
    let x_3812 : vec4<f32> = x_1973.x_AdditionalLightsColor[x_3810];
    let x_3814 : vec3<f32> = (vec3<f32>(x_3808.x, x_3808.y, x_3808.z) * vec3<f32>(x_3812.x, x_3812.y, x_3812.z));
    let x_3815 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3814.x, x_3814.y, x_3814.z, x_3815.w);
    let x_3817 : f32 = u_xlat73;
    let x_3819 : f32 = u_xlat51.x;
    u_xlat72 = (x_3817 * x_3819);
    let x_3821 : f32 = u_xlat72;
    let x_3823 : vec4<f32> = u_xlat8;
    let x_3825 : vec3<f32> = (vec3<f32>(x_3821, x_3821, x_3821) * vec3<f32>(x_3823.x, x_3823.y, x_3823.z));
    let x_3826 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3825.x, x_3825.y, x_3825.z, x_3826.w);
    let x_3828 : vec3<f32> = u_xlat2;
    let x_3829 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(x_3828, vec3<f32>(x_3829.x, x_3829.y, x_3829.z));
    let x_3832 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3832, 0.0f, 1.0f);
    let x_3834 : f32 = u_xlat72;
    let x_3836 : vec4<f32> = u_xlat8;
    let x_3838 : vec3<f32> = (vec3<f32>(x_3834, x_3834, x_3834) * vec3<f32>(x_3836.x, x_3836.y, x_3836.z));
    let x_3839 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3838.x, x_3838.y, x_3838.z, x_3839.w);
    let x_3841 : vec4<f32> = u_xlat7;
    let x_3843 : vec4<f32> = u_xlat1;
    let x_3846 : vec4<f32> = u_xlat6;
    let x_3848 : vec3<f32> = ((vec3<f32>(x_3841.x, x_3841.y, x_3841.z) * vec3<f32>(x_3843.x, x_3843.y, x_3843.z)) + vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);

    continuing {
      let x_3851 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3851 + bitcast<u32>(1i));
    }
  }
  let x_3853 : vec4<f32> = u_xlat4;
  let x_3855 : vec4<f32> = u_xlat1;
  let x_3858 : vec4<f32> = u_xlat3;
  let x_3860 : vec3<f32> = ((vec3<f32>(x_3853.x, x_3853.y, x_3853.z) * vec3<f32>(x_3855.x, x_3855.y, x_3855.z)) + vec3<f32>(x_3858.x, x_3858.y, x_3858.z));
  let x_3861 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3860.x, x_3860.y, x_3860.z, x_3861.w);
  let x_3863 : vec4<f32> = u_xlat6;
  let x_3865 : vec4<f32> = u_xlat1;
  let x_3867 : vec3<f32> = (vec3<f32>(x_3863.x, x_3863.y, x_3863.z) + vec3<f32>(x_3865.x, x_3865.y, x_3865.z));
  let x_3868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
  let x_3871 : f32 = u_xlat0.x;
  let x_3873 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3871 * -(x_3873));
  let x_3878 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3878);
  let x_3881 : vec4<f32> = u_xlat1;
  let x_3884 : vec4<f32> = x_44.unity_FogColor;
  let x_3887 : vec3<f32> = (vec3<f32>(x_3881.x, x_3881.y, x_3881.z) + -(vec3<f32>(x_3884.x, x_3884.y, x_3884.z)));
  let x_3888 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3887.x, x_3887.y, x_3887.z, x_3888.w);
  let x_3892 : vec4<f32> = u_xlat0;
  let x_3894 : vec4<f32> = u_xlat1;
  let x_3898 : vec4<f32> = x_44.unity_FogColor;
  let x_3900 : vec3<f32> = ((vec3<f32>(x_3892.x, x_3892.x, x_3892.x) * vec3<f32>(x_3894.x, x_3894.y, x_3894.z)) + vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
  let x_3901 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
  let x_3903 : bool = u_xlatb46;
  let x_3904 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3904, x_3903);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


