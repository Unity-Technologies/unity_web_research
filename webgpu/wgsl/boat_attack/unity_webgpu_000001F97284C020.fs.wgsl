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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_207 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb69 : bool;

@group(1) @binding(4) var<uniform> x_292 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb70 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat70 : f32;

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

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1565 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_1811 : AdditionalLights;

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

@group(0) @binding(6) var sampler_LinearClamp : sampler;

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
  var x_1652 : f32;
  var x_1663 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1951 : f32;
  var x_1961 : f32;
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
  var x_3536 : f32;
  var x_3549 : f32;
  var x_3597 : f32;
  var x_3608 : vec3<f32>;
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
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : f32 = hlslcc_FragCoord.w;
  let x_167 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_164 * x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_175 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_171 / x_175);
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_184 * x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_190, 0.0f);
  let x_194 : f32 = u_xlat0.x;
  let x_197 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_194 * x_197);
  u_xlat2.w = 1.0f;
  let x_211 : vec4<f32> = x_207.unity_SHAr;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_207.unity_SHAg;
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_207.unity_SHAb;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_228.y, x_228.z, x_228.z, x_228.x) * vec4<f32>(x_230.x, x_230.y, x_230.z, x_230.z));
  let x_236 : vec4<f32> = x_207.unity_SHBr;
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_236, x_237);
  let x_242 : vec4<f32> = x_207.unity_SHBg;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_242, x_243);
  let x_248 : vec4<f32> = x_207.unity_SHBb;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_248, x_249);
  let x_253 : f32 = u_xlat2.y;
  let x_255 : f32 = u_xlat2.y;
  u_xlat69 = (x_253 * x_255);
  let x_258 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat69;
  u_xlat69 = ((x_258 * x_260) + -(x_262));
  let x_267 : vec4<f32> = x_207.unity_SHC;
  let x_269 : f32 = u_xlat69;
  let x_272 : vec4<f32> = u_xlat5;
  let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269, x_269, x_269)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec3<f32> = u_xlat3;
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_277 + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_281, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_295 : f32 = x_292.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_295);
  let x_297 : bool = u_xlatb69;
  if (x_297) {
    let x_301 : f32 = x_292.x_MainLightShadowParams.y;
    u_xlatb69 = (x_301 == 1.0f);
    let x_303 : bool = u_xlatb69;
    if (x_303) {
      let x_307 : vec4<f32> = vs_TEXCOORD6;
      let x_310 : vec4<f32> = x_292.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + x_310);
      let x_314 : vec4<f32> = u_xlat4;
      let x_315 : vec2<f32> = vec2<f32>(x_314.x, x_314.y);
      let x_317 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_315.x, x_315.y, x_317);
      let x_329 : vec3<f32> = txVec0;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat5.x = x_331;
      let x_334 : vec4<f32> = u_xlat4;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec1;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.y = x_346;
      let x_348 : vec4<f32> = vs_TEXCOORD6;
      let x_351 : vec4<f32> = x_292.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_348.x, x_348.y, x_348.x, x_348.y) + x_351);
      let x_354 : vec4<f32> = u_xlat4;
      let x_355 : vec2<f32> = vec2<f32>(x_354.x, x_354.y);
      let x_357 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_355.x, x_355.y, x_357);
      let x_364 : vec3<f32> = txVec2;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.z = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec3;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.w = x_381;
      let x_383 : vec4<f32> = u_xlat5;
      u_xlat69 = dot(x_383, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_390 : f32 = x_292.x_MainLightShadowParams.y;
      u_xlatb70 = (x_390 == 2.0f);
      let x_393 : bool = u_xlatb70;
      if (x_393) {
        let x_396 : vec4<f32> = vs_TEXCOORD6;
        let x_400 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_404 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_400.z, x_400.w)) + vec2<f32>(0.5f, 0.5f));
        let x_405 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_407 : vec4<f32> = u_xlat4;
        let x_409 : vec2<f32> = floor(vec2<f32>(x_407.x, x_407.y));
        let x_410 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
        let x_414 : vec4<f32> = vs_TEXCOORD6;
        let x_417 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_420 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_417.z, x_417.w)) + -(vec2<f32>(x_420.x, x_420.y)));
        let x_424 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_424.x, x_424.x, x_424.y, x_424.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_429 : vec4<f32> = u_xlat5;
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_429.x, x_429.x, x_429.z, x_429.z) * vec4<f32>(x_431.x, x_431.x, x_431.z, x_431.z));
        let x_434 : vec4<f32> = u_xlat6;
        let x_438 : vec2<f32> = (vec2<f32>(x_434.y, x_434.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_439.y, x_438.y, x_439.w);
        let x_441 : vec4<f32> = u_xlat6;
        let x_444 : vec2<f32> = u_xlat50;
        let x_446 : vec2<f32> = ((vec2<f32>(x_441.x, x_441.z) * vec2<f32>(0.5f, 0.5f)) + -(x_444));
        let x_447 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_450 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_450) + vec2<f32>(1.0f, 1.0f));
        let x_455 : vec2<f32> = u_xlat50;
        let x_457 : vec2<f32> = min(x_455, vec2<f32>(0.0f, 0.0f));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat7;
        let x_463 : vec4<f32> = u_xlat7;
        let x_466 : vec2<f32> = u_xlat52;
        let x_467 : vec2<f32> = ((-(vec2<f32>(x_460.x, x_460.y)) * vec2<f32>(x_463.x, x_463.y)) + x_466);
        let x_468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_470 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_470, vec2<f32>(0.0f, 0.0f));
        let x_472 : vec2<f32> = u_xlat50;
        let x_474 : vec2<f32> = u_xlat50;
        let x_476 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_472) * x_474) + vec2<f32>(x_476.y, x_476.w));
        let x_479 : vec4<f32> = u_xlat7;
        let x_481 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) + vec2<f32>(1.0f, 1.0f));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_484 + vec2<f32>(1.0f, 1.0f));
        let x_487 : vec4<f32> = u_xlat6;
        let x_491 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec2<f32> = u_xlat52;
        let x_495 : vec2<f32> = (x_494 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = (vec2<f32>(x_498.x, x_498.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_504 : vec2<f32> = u_xlat50;
        let x_505 : vec2<f32> = (x_504 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_506 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_508.y, x_508.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_512 : f32 = u_xlat7.x;
        u_xlat8.z = x_512;
        let x_515 : f32 = u_xlat50.x;
        u_xlat8.w = x_515;
        let x_518 : f32 = u_xlat9.x;
        u_xlat6.z = x_518;
        let x_521 : f32 = u_xlat5.x;
        u_xlat6.w = x_521;
        let x_524 : vec4<f32> = u_xlat6;
        let x_526 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_524.z, x_524.w, x_524.x, x_524.z) + vec4<f32>(x_526.z, x_526.w, x_526.x, x_526.z));
        let x_530 : f32 = u_xlat8.y;
        u_xlat7.z = x_530;
        let x_533 : f32 = u_xlat50.y;
        u_xlat7.w = x_533;
        let x_536 : f32 = u_xlat6.y;
        u_xlat9.z = x_536;
        let x_539 : f32 = u_xlat5.z;
        u_xlat9.w = x_539;
        let x_541 : vec4<f32> = u_xlat7;
        let x_543 : vec4<f32> = u_xlat9;
        let x_545 : vec3<f32> = (vec3<f32>(x_541.z, x_541.y, x_541.w) + vec3<f32>(x_543.z, x_543.y, x_543.w));
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat10;
        let x_552 : vec3<f32> = (vec3<f32>(x_548.x, x_548.z, x_548.w) / vec3<f32>(x_550.z, x_550.w, x_550.y));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_561 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat9;
        let x_566 : vec4<f32> = u_xlat5;
        let x_568 : vec3<f32> = (vec3<f32>(x_564.z, x_564.y, x_564.w) / vec3<f32>(x_566.x, x_566.y, x_566.z));
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat6;
        let x_579 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_581 : vec3<f32> = (vec3<f32>(x_576.y, x_576.x, x_576.z) * vec3<f32>(x_579.x, x_579.x, x_579.x));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat7;
        let x_587 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_589 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_587.y, x_587.y, x_587.y));
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_593 : f32 = u_xlat7.x;
        u_xlat6.w = x_593;
        let x_595 : vec4<f32> = u_xlat4;
        let x_598 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y) * vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y)) + vec4<f32>(x_601.y, x_601.w, x_601.x, x_601.w));
        let x_604 : vec4<f32> = u_xlat4;
        let x_607 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_604.x, x_604.y) * vec2<f32>(x_607.x, x_607.y)) + vec2<f32>(x_610.z, x_610.w));
        let x_614 : f32 = u_xlat6.y;
        u_xlat7.w = x_614;
        let x_616 : vec4<f32> = u_xlat7;
        let x_617 : vec2<f32> = vec2<f32>(x_616.y, x_616.z);
        let x_618 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_617.x, x_618.z, x_617.y);
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.y));
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.w, x_635.y, x_635.w, x_635.z));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y) * vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y)) + vec4<f32>(x_644.x, x_644.w, x_644.z, x_644.w));
        let x_648 : vec4<f32> = u_xlat5;
        let x_650 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_648.x, x_648.x, x_648.x, x_648.y) * vec4<f32>(x_650.z, x_650.w, x_650.y, x_650.z));
        let x_654 : vec4<f32> = u_xlat5;
        let x_656 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_654.y, x_654.y, x_654.z, x_654.z) * x_656);
        let x_660 : f32 = u_xlat5.z;
        let x_662 : f32 = u_xlat10.y;
        u_xlat70 = (x_660 * x_662);
        let x_665 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
        let x_668 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_666.x, x_666.y, x_668);
        let x_676 : vec3<f32> = txVec4;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_676.xy, x_676.z);
        u_xlat71 = x_678;
        let x_680 : vec4<f32> = u_xlat8;
        let x_681 : vec2<f32> = vec2<f32>(x_680.z, x_680.w);
        let x_683 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_681.x, x_681.y, x_683);
        let x_691 : vec3<f32> = txVec5;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat72 = x_693;
        let x_694 : f32 = u_xlat72;
        let x_696 : f32 = u_xlat11.y;
        u_xlat72 = (x_694 * x_696);
        let x_699 : f32 = u_xlat11.x;
        let x_700 : f32 = u_xlat71;
        let x_702 : f32 = u_xlat72;
        u_xlat71 = ((x_699 * x_700) + x_702);
        let x_705 : vec2<f32> = u_xlat50;
        let x_707 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec6;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat72 = x_716;
        let x_718 : f32 = u_xlat11.z;
        let x_719 : f32 = u_xlat72;
        let x_721 : f32 = u_xlat71;
        u_xlat71 = ((x_718 * x_719) + x_721);
        let x_724 : vec4<f32> = u_xlat7;
        let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
        let x_727 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_725.x, x_725.y, x_727);
        let x_734 : vec3<f32> = txVec7;
        let x_736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_734.xy, x_734.z);
        u_xlat72 = x_736;
        let x_738 : f32 = u_xlat11.w;
        let x_739 : f32 = u_xlat72;
        let x_741 : f32 = u_xlat71;
        u_xlat71 = ((x_738 * x_739) + x_741);
        let x_744 : vec4<f32> = u_xlat9;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec8;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat72 = x_756;
        let x_758 : f32 = u_xlat12.x;
        let x_759 : f32 = u_xlat72;
        let x_761 : f32 = u_xlat71;
        u_xlat71 = ((x_758 * x_759) + x_761);
        let x_764 : vec4<f32> = u_xlat9;
        let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec9;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
        u_xlat72 = x_776;
        let x_778 : f32 = u_xlat12.y;
        let x_779 : f32 = u_xlat72;
        let x_781 : f32 = u_xlat71;
        u_xlat71 = ((x_778 * x_779) + x_781);
        let x_784 : vec4<f32> = u_xlat7;
        let x_785 : vec2<f32> = vec2<f32>(x_784.z, x_784.w);
        let x_787 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_794 : vec3<f32> = txVec10;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_794.xy, x_794.z);
        u_xlat72 = x_796;
        let x_798 : f32 = u_xlat12.z;
        let x_799 : f32 = u_xlat72;
        let x_801 : f32 = u_xlat71;
        u_xlat71 = ((x_798 * x_799) + x_801);
        let x_804 : vec4<f32> = u_xlat6;
        let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
        let x_807 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_805.x, x_805.y, x_807);
        let x_814 : vec3<f32> = txVec11;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_814.xy, x_814.z);
        u_xlat72 = x_816;
        let x_818 : f32 = u_xlat12.w;
        let x_819 : f32 = u_xlat72;
        let x_821 : f32 = u_xlat71;
        u_xlat71 = ((x_818 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat6;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec12;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat72 = x_836;
        let x_837 : f32 = u_xlat70;
        let x_838 : f32 = u_xlat72;
        let x_840 : f32 = u_xlat71;
        u_xlat69 = ((x_837 * x_838) + x_840);
      } else {
        let x_843 : vec4<f32> = vs_TEXCOORD6;
        let x_846 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_849 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_846.z, x_846.w)) + vec2<f32>(0.5f, 0.5f));
        let x_850 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat4;
        let x_854 : vec2<f32> = floor(vec2<f32>(x_852.x, x_852.y));
        let x_855 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = vs_TEXCOORD6;
        let x_860 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_860.z, x_860.w)) + -(vec2<f32>(x_863.x, x_863.y)));
        let x_867 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_867.x, x_867.x, x_867.y, x_867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_870 : vec4<f32> = u_xlat5;
        let x_872 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z) * vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z));
        let x_875 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_875.y, x_875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat6;
        let x_885 : vec2<f32> = u_xlat50;
        let x_887 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.z) * vec2<f32>(0.5f, 0.5f)) + -(x_885));
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec2<f32> = u_xlat50;
        let x_892 : vec2<f32> = (-(x_890) + vec2<f32>(1.0f, 1.0f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_895, vec2<f32>(0.0f, 0.0f));
        let x_897 : vec2<f32> = u_xlat52;
        let x_899 : vec2<f32> = u_xlat52;
        let x_901 : vec4<f32> = u_xlat6;
        let x_903 : vec2<f32> = ((-(x_897) * x_899) + vec2<f32>(x_901.x, x_901.y));
        let x_904 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_906, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat52;
        let x_911 : vec2<f32> = u_xlat52;
        let x_913 : vec4<f32> = u_xlat5;
        let x_915 : vec2<f32> = ((-(x_909) * x_911) + vec2<f32>(x_913.y, x_913.w));
        let x_916 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_915.x, x_916.y, x_915.y);
        let x_918 : vec4<f32> = u_xlat6;
        let x_921 : vec2<f32> = (vec2<f32>(x_918.x, x_918.y) + vec2<f32>(2.0f, 2.0f));
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec3<f32> = u_xlat28;
        let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.z) + vec2<f32>(2.0f, 2.0f));
        let x_927 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_930 : f32 = u_xlat5.y;
        u_xlat8.z = (x_930 * 0.08163200318813323975f);
        let x_934 : vec4<f32> = u_xlat5;
        let x_937 : vec3<f32> = (vec3<f32>(x_934.z, x_934.x, x_934.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat6;
        let x_943 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_944 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_947 : f32 = u_xlat9.y;
        u_xlat8.x = x_947;
        let x_949 : vec2<f32> = u_xlat50;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec2<f32> = u_xlat50;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat5.x;
        u_xlat6.y = x_967;
        let x_970 : f32 = u_xlat7.y;
        u_xlat6.w = x_970;
        let x_972 : vec4<f32> = u_xlat6;
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_972 + x_973);
        let x_975 : vec2<f32> = u_xlat50;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec2<f32> = u_xlat50;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat5.y;
        u_xlat7.y = x_988;
        let x_990 : vec4<f32> = u_xlat7;
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat6;
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1003 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat6;
        let x_1010 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat7.x;
        u_xlat9.y = x_1024;
        let x_1026 : vec4<f32> = u_xlat4;
        let x_1029 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat4;
        let x_1038 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.w, x_1041.y));
        let x_1045 : f32 = u_xlat9.y;
        u_xlat6.y = x_1045;
        let x_1048 : f32 = u_xlat7.z;
        u_xlat9.y = x_1048;
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1053 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1068 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat9.y;
        u_xlat6.z = x_1071;
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat7.w;
        u_xlat9.y = x_1084;
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1090 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat9.y;
        u_xlat6.w = x_1107;
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec4<f32> = u_xlat4;
        let x_1126 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec4<f32> = u_xlat4;
        let x_1136 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat6.x;
        u_xlat7.x = x_1143;
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat70 = x_1188;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat71 = x_1202;
        let x_1203 : f32 = u_xlat71;
        let x_1205 : f32 = u_xlat15.y;
        u_xlat71 = (x_1203 * x_1205);
        let x_1208 : f32 = u_xlat15.x;
        let x_1209 : f32 = u_xlat70;
        let x_1211 : f32 = u_xlat71;
        u_xlat70 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec2<f32> = u_xlat50;
        let x_1216 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec15;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat71 = x_1225;
        let x_1227 : f32 = u_xlat15.z;
        let x_1228 : f32 = u_xlat71;
        let x_1230 : f32 = u_xlat70;
        u_xlat70 = ((x_1227 * x_1228) + x_1230);
        let x_1233 : vec4<f32> = u_xlat13;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec16;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat71 = x_1245;
        let x_1247 : f32 = u_xlat15.w;
        let x_1248 : f32 = u_xlat71;
        let x_1250 : f32 = u_xlat70;
        u_xlat70 = ((x_1247 * x_1248) + x_1250);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec17;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1263.xy, x_1263.z);
        u_xlat71 = x_1265;
        let x_1267 : f32 = u_xlat16.x;
        let x_1268 : f32 = u_xlat71;
        let x_1270 : f32 = u_xlat70;
        u_xlat70 = ((x_1267 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec18;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1283.xy, x_1283.z);
        u_xlat71 = x_1285;
        let x_1287 : f32 = u_xlat16.y;
        let x_1288 : f32 = u_xlat71;
        let x_1290 : f32 = u_xlat70;
        u_xlat70 = ((x_1287 * x_1288) + x_1290);
        let x_1293 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.x, x_1293.y);
        let x_1296 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec19;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1303.xy, x_1303.z);
        u_xlat71 = x_1305;
        let x_1307 : f32 = u_xlat16.z;
        let x_1308 : f32 = u_xlat71;
        let x_1310 : f32 = u_xlat70;
        u_xlat70 = ((x_1307 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat13;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec20;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat71 = x_1325;
        let x_1327 : f32 = u_xlat16.w;
        let x_1328 : f32 = u_xlat71;
        let x_1330 : f32 = u_xlat70;
        u_xlat70 = ((x_1327 * x_1328) + x_1330);
        let x_1333 : vec4<f32> = u_xlat14;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.x, x_1333.y);
        let x_1336 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec21;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat71 = x_1345;
        let x_1347 : f32 = u_xlat17.x;
        let x_1348 : f32 = u_xlat71;
        let x_1350 : f32 = u_xlat70;
        u_xlat70 = ((x_1347 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat14;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.z, x_1353.w);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec22;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat71 = x_1365;
        let x_1367 : f32 = u_xlat17.y;
        let x_1368 : f32 = u_xlat71;
        let x_1370 : f32 = u_xlat70;
        u_xlat70 = ((x_1367 * x_1368) + x_1370);
        let x_1373 : vec2<f32> = u_xlat29;
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec23;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat71 = x_1384;
        let x_1386 : f32 = u_xlat17.z;
        let x_1387 : f32 = u_xlat71;
        let x_1389 : f32 = u_xlat70;
        u_xlat70 = ((x_1386 * x_1387) + x_1389);
        let x_1392 : vec2<f32> = u_xlat58;
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec24;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat71 = x_1403;
        let x_1405 : f32 = u_xlat17.w;
        let x_1406 : f32 = u_xlat71;
        let x_1408 : f32 = u_xlat70;
        u_xlat70 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat9;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec25;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat71 = x_1423;
        let x_1425 : f32 = u_xlat5.x;
        let x_1426 : f32 = u_xlat71;
        let x_1428 : f32 = u_xlat70;
        u_xlat70 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec26;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat71 = x_1443;
        let x_1445 : f32 = u_xlat5.y;
        let x_1446 : f32 = u_xlat71;
        let x_1448 : f32 = u_xlat70;
        u_xlat70 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec2<f32> = u_xlat53;
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec27;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat71 = x_1462;
        let x_1464 : f32 = u_xlat5.z;
        let x_1465 : f32 = u_xlat71;
        let x_1467 : f32 = u_xlat70;
        u_xlat70 = ((x_1464 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat4;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
        let x_1473 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec28;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat71 = x_1482;
        let x_1484 : f32 = u_xlat5.w;
        let x_1485 : f32 = u_xlat71;
        let x_1487 : f32 = u_xlat70;
        u_xlat69 = ((x_1484 * x_1485) + x_1487);
      }
    }
  } else {
    let x_1491 : vec4<f32> = vs_TEXCOORD6;
    let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
    let x_1494 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
    let x_1501 : vec3<f32> = txVec29;
    let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
    u_xlat69 = x_1503;
  }
  let x_1505 : f32 = x_292.x_MainLightShadowParams.x;
  u_xlat70 = (-(x_1505) + 1.0f);
  let x_1508 : f32 = u_xlat69;
  let x_1510 : f32 = x_292.x_MainLightShadowParams.x;
  let x_1512 : f32 = u_xlat70;
  u_xlat69 = ((x_1508 * x_1510) + x_1512);
  let x_1515 : f32 = vs_TEXCOORD6.z;
  u_xlatb70 = (0.0f >= x_1515);
  let x_1519 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (x_1519 >= 1.0f);
  let x_1521 : bool = u_xlatb70;
  let x_1522 : bool = u_xlatb71;
  u_xlatb70 = (x_1521 | x_1522);
  let x_1524 : bool = u_xlatb70;
  let x_1525 : f32 = u_xlat69;
  u_xlat69 = select(x_1525, 1.0f, x_1524);
  let x_1528 : vec4<f32> = vs_TEXCOORD2;
  let x_1533 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1535 : vec3<f32> = (vec3<f32>(x_1528.x, x_1528.y, x_1528.z) + -(x_1533));
  let x_1536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
  let x_1538 : vec4<f32> = u_xlat4;
  let x_1540 : vec4<f32> = u_xlat4;
  u_xlat70 = dot(vec3<f32>(x_1538.x, x_1538.y, x_1538.z), vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
  let x_1543 : f32 = u_xlat70;
  let x_1545 : f32 = x_292.x_MainLightShadowParams.z;
  let x_1548 : f32 = x_292.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1543 * x_1545) + x_1548);
  let x_1550 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1550, 0.0f, 1.0f);
  let x_1552 : f32 = u_xlat69;
  u_xlat72 = (-(x_1552) + 1.0f);
  let x_1555 : f32 = u_xlat71;
  let x_1556 : f32 = u_xlat72;
  let x_1558 : f32 = u_xlat69;
  u_xlat69 = ((x_1555 * x_1556) + x_1558);
  let x_1568 : f32 = x_1565.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1568 == -1.0f));
  let x_1571 : bool = u_xlatb71;
  if (x_1571) {
    let x_1574 : vec4<f32> = vs_TEXCOORD2;
    let x_1577 : vec4<f32> = x_1565.x_MainLightWorldToLight[1i];
    let x_1579 : vec2<f32> = (vec2<f32>(x_1574.y, x_1574.y) * vec2<f32>(x_1577.x, x_1577.y));
    let x_1580 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
    let x_1583 : vec4<f32> = x_1565.x_MainLightWorldToLight[0i];
    let x_1585 : vec4<f32> = vs_TEXCOORD2;
    let x_1588 : vec4<f32> = u_xlat4;
    let x_1590 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1585.x, x_1585.x)) + vec2<f32>(x_1588.x, x_1588.y));
    let x_1591 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
    let x_1594 : vec4<f32> = x_1565.x_MainLightWorldToLight[2i];
    let x_1596 : vec4<f32> = vs_TEXCOORD2;
    let x_1599 : vec4<f32> = u_xlat4;
    let x_1601 : vec2<f32> = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1596.z, x_1596.z)) + vec2<f32>(x_1599.x, x_1599.y));
    let x_1602 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
    let x_1604 : vec4<f32> = u_xlat4;
    let x_1608 : vec4<f32> = x_1565.x_MainLightWorldToLight[3i];
    let x_1610 : vec2<f32> = (vec2<f32>(x_1604.x, x_1604.y) + vec2<f32>(x_1608.x, x_1608.y));
    let x_1611 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
    let x_1613 : vec4<f32> = u_xlat4;
    let x_1616 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1617 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
    let x_1624 : vec4<f32> = u_xlat4;
    let x_1627 : f32 = x_44.x_GlobalMipBias.x;
    let x_1628 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1624.x, x_1624.y), x_1627);
    u_xlat4 = x_1628;
    let x_1633 : f32 = x_1565.x_MainLightCookieTextureFormat;
    let x_1635 : f32 = x_1565.x_MainLightCookieTextureFormat;
    let x_1637 : f32 = x_1565.x_MainLightCookieTextureFormat;
    let x_1639 : f32 = x_1565.x_MainLightCookieTextureFormat;
    let x_1640 : vec4<f32> = vec4<f32>(x_1633, x_1635, x_1637, x_1639);
    let x_1648 : vec4<bool> = (vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1640.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1648.x, x_1648.y);
    let x_1651 : bool = u_xlatb5.y;
    if (x_1651) {
      let x_1656 : f32 = u_xlat4.w;
      x_1652 = x_1656;
    } else {
      let x_1659 : f32 = u_xlat4.x;
      x_1652 = x_1659;
    }
    let x_1660 : f32 = x_1652;
    u_xlat71 = x_1660;
    let x_1662 : bool = u_xlatb5.x;
    if (x_1662) {
      let x_1666 : vec4<f32> = u_xlat4;
      x_1663 = vec3<f32>(x_1666.x, x_1666.y, x_1666.z);
    } else {
      let x_1669 : f32 = u_xlat71;
      x_1663 = vec3<f32>(x_1669, x_1669, x_1669);
    }
    let x_1671 : vec3<f32> = x_1663;
    let x_1672 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1678 : vec4<f32> = u_xlat4;
  let x_1681 : vec4<f32> = x_44.x_MainLightColor;
  let x_1683 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
  let x_1684 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
  let x_1686 : f32 = u_xlat69;
  let x_1688 : f32 = x_207.unity_LightData.z;
  u_xlat69 = (x_1686 * x_1688);
  let x_1690 : f32 = u_xlat69;
  let x_1692 : vec4<f32> = u_xlat4;
  let x_1694 : vec3<f32> = (vec3<f32>(x_1690, x_1690, x_1690) * vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
  let x_1695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1697 : vec4<f32> = u_xlat2;
  let x_1700 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1697.x, x_1697.y, x_1697.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1703, 0.0f, 1.0f);
  let x_1705 : f32 = u_xlat69;
  let x_1707 : vec4<f32> = u_xlat4;
  let x_1709 : vec3<f32> = (vec3<f32>(x_1705, x_1705, x_1705) * vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1712 : vec4<f32> = u_xlat1;
  let x_1714 : vec4<f32> = u_xlat4;
  let x_1716 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) * vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
  let x_1717 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
  let x_1720 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1722 : f32 = x_207.unity_LightData.y;
  u_xlat69 = min(x_1720, x_1722);
  let x_1726 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1726));
  let x_1729 : f32 = u_xlat70;
  let x_1732 : f32 = x_292.x_AdditionalShadowFadeParams.x;
  let x_1735 : f32 = x_292.x_AdditionalShadowFadeParams.y;
  u_xlat70 = ((x_1729 * x_1732) + x_1735);
  let x_1737 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1737, 0.0f, 1.0f);
  let x_1740 : f32 = x_1565.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1742 : f32 = x_1565.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1744 : f32 = x_1565.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1746 : f32 = x_1565.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1747 : vec4<f32> = vec4<f32>(x_1740, x_1742, x_1744, x_1746);
  let x_1753 : vec4<bool> = (vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1753.x, x_1753.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1765 : u32 = u_xlatu_loop_1;
    let x_1766 : u32 = u_xlatu69;
    if ((x_1765 < x_1766)) {
    } else {
      break;
    }
    let x_1769 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1769 >> 2u);
    let x_1773 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1773 & 3u));
    let x_1776 : u32 = u_xlatu72;
    let x_1779 : vec4<f32> = x_207.unity_LightIndices[bitcast<i32>(x_1776)];
    let x_1789 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1794 : vec4<u32> = indexable[x_1789];
    u_xlat72 = dot(x_1779, bitcast<vec4<f32>>(x_1794));
    let x_1798 : f32 = u_xlat72;
    u_xlati72 = i32(x_1798);
    let x_1800 : vec4<f32> = vs_TEXCOORD2;
    let x_1812 : i32 = u_xlati72;
    let x_1814 : vec4<f32> = x_1811.x_AdditionalLightsPosition[x_1812];
    let x_1817 : i32 = u_xlati72;
    let x_1819 : vec4<f32> = x_1811.x_AdditionalLightsPosition[x_1817];
    let x_1821 : vec3<f32> = ((-(vec3<f32>(x_1800.x, x_1800.y, x_1800.z)) * vec3<f32>(x_1814.w, x_1814.w, x_1814.w)) + vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    let x_1825 : vec4<f32> = u_xlat7;
    let x_1827 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1825.x, x_1825.y, x_1825.z), vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : f32 = u_xlat73;
    u_xlat73 = max(x_1830, 0.00006103515625f);
    let x_1834 : f32 = u_xlat73;
    u_xlat51 = inverseSqrt(x_1834);
    let x_1836 : f32 = u_xlat51;
    let x_1838 : vec4<f32> = u_xlat7;
    let x_1840 : vec3<f32> = (vec3<f32>(x_1836, x_1836, x_1836) * vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
    let x_1843 : f32 = u_xlat73;
    u_xlat51 = (1.0f / x_1843);
    let x_1845 : f32 = u_xlat73;
    let x_1846 : i32 = u_xlati72;
    let x_1848 : f32 = x_1811.x_AdditionalLightsAttenuation[x_1846].x;
    u_xlat73 = (x_1845 * x_1848);
    let x_1850 : f32 = u_xlat73;
    let x_1852 : f32 = u_xlat73;
    u_xlat73 = ((-(x_1850) * x_1852) + 1.0f);
    let x_1855 : f32 = u_xlat73;
    u_xlat73 = max(x_1855, 0.0f);
    let x_1857 : f32 = u_xlat73;
    let x_1858 : f32 = u_xlat73;
    u_xlat73 = (x_1857 * x_1858);
    let x_1860 : f32 = u_xlat73;
    let x_1861 : f32 = u_xlat51;
    u_xlat73 = (x_1860 * x_1861);
    let x_1863 : i32 = u_xlati72;
    let x_1865 : vec4<f32> = x_1811.x_AdditionalLightsSpotDir[x_1863];
    let x_1867 : vec4<f32> = u_xlat7;
    u_xlat51 = dot(vec3<f32>(x_1865.x, x_1865.y, x_1865.z), vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : f32 = u_xlat51;
    let x_1871 : i32 = u_xlati72;
    let x_1873 : f32 = x_1811.x_AdditionalLightsAttenuation[x_1871].z;
    let x_1875 : i32 = u_xlati72;
    let x_1877 : f32 = x_1811.x_AdditionalLightsAttenuation[x_1875].w;
    u_xlat51 = ((x_1870 * x_1873) + x_1877);
    let x_1879 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1879, 0.0f, 1.0f);
    let x_1881 : f32 = u_xlat51;
    let x_1882 : f32 = u_xlat51;
    u_xlat51 = (x_1881 * x_1882);
    let x_1884 : f32 = u_xlat73;
    let x_1885 : f32 = u_xlat51;
    u_xlat73 = (x_1884 * x_1885);
    let x_1889 : i32 = u_xlati72;
    let x_1891 : f32 = x_292.x_AdditionalShadowParams[x_1889].w;
    u_xlati51 = i32(x_1891);
    let x_1894 : i32 = u_xlati51;
    u_xlatb74 = (x_1894 >= 0i);
    let x_1896 : bool = u_xlatb74;
    if (x_1896) {
      let x_1900 : i32 = u_xlati72;
      let x_1902 : f32 = x_292.x_AdditionalShadowParams[x_1900].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1902, x_1902, x_1902, x_1902))));
      let x_1906 : bool = u_xlatb74;
      if (x_1906) {
        let x_1911 : vec4<f32> = u_xlat7;
        let x_1914 : vec4<f32> = u_xlat7;
        let x_1917 : vec4<bool> = (abs(vec4<f32>(x_1911.z, x_1911.z, x_1911.y, x_1911.z)) >= abs(vec4<f32>(x_1914.x, x_1914.y, x_1914.x, x_1914.x)));
        let x_1919 : vec3<bool> = vec3<bool>(x_1917.x, x_1917.y, x_1917.z);
        let x_1920 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
        let x_1923 : bool = u_xlatb8.y;
        let x_1925 : bool = u_xlatb8.x;
        u_xlatb74 = (x_1923 & x_1925);
        let x_1927 : vec4<f32> = u_xlat7;
        let x_1930 : vec4<bool> = (-(vec4<f32>(x_1927.z, x_1927.y, x_1927.z, x_1927.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1931 : vec3<bool> = vec3<bool>(x_1930.x, x_1930.y, x_1930.w);
        let x_1932 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1931.x, x_1931.y, x_1932.z, x_1931.z);
        let x_1935 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1935);
        let x_1941 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1941);
        let x_1947 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_1947);
        let x_1950 : bool = u_xlatb8.z;
        if (x_1950) {
          let x_1955 : f32 = u_xlat8.y;
          x_1951 = x_1955;
        } else {
          let x_1957 : f32 = u_xlat75;
          x_1951 = x_1957;
        }
        let x_1958 : f32 = x_1951;
        u_xlat75 = x_1958;
        let x_1960 : bool = u_xlatb74;
        if (x_1960) {
          let x_1965 : f32 = u_xlat8.x;
          x_1961 = x_1965;
        } else {
          let x_1967 : f32 = u_xlat75;
          x_1961 = x_1967;
        }
        let x_1968 : f32 = x_1961;
        u_xlat74 = x_1968;
        let x_1969 : i32 = u_xlati72;
        let x_1971 : f32 = x_292.x_AdditionalShadowParams[x_1969].w;
        u_xlat75 = trunc(x_1971);
        let x_1973 : f32 = u_xlat74;
        let x_1974 : f32 = u_xlat75;
        u_xlat74 = (x_1973 + x_1974);
        let x_1976 : f32 = u_xlat74;
        u_xlati51 = i32(x_1976);
      }
      let x_1978 : i32 = u_xlati51;
      u_xlati51 = (x_1978 << bitcast<u32>(2i));
      let x_1980 : vec4<f32> = vs_TEXCOORD2;
      let x_1983 : i32 = u_xlati51;
      let x_1986 : i32 = u_xlati51;
      let x_1990 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_1983 + 1i) / 4i)][((x_1986 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1980.y, x_1980.y, x_1980.y, x_1980.y) * x_1990);
      let x_1992 : i32 = u_xlati51;
      let x_1994 : i32 = u_xlati51;
      let x_1997 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[(x_1992 / 4i)][(x_1994 % 4i)];
      let x_1998 : vec4<f32> = vs_TEXCOORD2;
      let x_2001 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1997 * vec4<f32>(x_1998.x, x_1998.x, x_1998.x, x_1998.x)) + x_2001);
      let x_2003 : i32 = u_xlati51;
      let x_2006 : i32 = u_xlati51;
      let x_2010 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_2003 + 2i) / 4i)][((x_2006 + 2i) % 4i)];
      let x_2011 : vec4<f32> = vs_TEXCOORD2;
      let x_2014 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2010 * vec4<f32>(x_2011.z, x_2011.z, x_2011.z, x_2011.z)) + x_2014);
      let x_2016 : vec4<f32> = u_xlat8;
      let x_2017 : i32 = u_xlati51;
      let x_2020 : i32 = u_xlati51;
      let x_2024 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_2017 + 3i) / 4i)][((x_2020 + 3i) % 4i)];
      u_xlat8 = (x_2016 + x_2024);
      let x_2026 : vec4<f32> = u_xlat8;
      let x_2028 : vec4<f32> = u_xlat8;
      let x_2030 : vec3<f32> = (vec3<f32>(x_2026.x, x_2026.y, x_2026.z) / vec3<f32>(x_2028.w, x_2028.w, x_2028.w));
      let x_2031 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
      let x_2034 : i32 = u_xlati72;
      let x_2036 : f32 = x_292.x_AdditionalShadowParams[x_2034].y;
      u_xlatb51 = (0.0f < x_2036);
      let x_2038 : bool = u_xlatb51;
      if (x_2038) {
        let x_2041 : i32 = u_xlati72;
        let x_2043 : f32 = x_292.x_AdditionalShadowParams[x_2041].y;
        u_xlatb51 = (1.0f == x_2043);
        let x_2045 : bool = u_xlatb51;
        if (x_2045) {
          let x_2048 : vec4<f32> = u_xlat8;
          let x_2052 : vec4<f32> = x_292.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2048.x, x_2048.y, x_2048.x, x_2048.y) + x_2052);
          let x_2055 : vec4<f32> = u_xlat9;
          let x_2056 : vec2<f32> = vec2<f32>(x_2055.x, x_2055.y);
          let x_2058 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
          let x_2066 : vec3<f32> = txVec30;
          let x_2068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
          u_xlat10.x = x_2068;
          let x_2071 : vec4<f32> = u_xlat9;
          let x_2072 : vec2<f32> = vec2<f32>(x_2071.z, x_2071.w);
          let x_2074 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
          let x_2081 : vec3<f32> = txVec31;
          let x_2083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
          u_xlat10.y = x_2083;
          let x_2085 : vec4<f32> = u_xlat8;
          let x_2089 : vec4<f32> = x_292.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2085.x, x_2085.y, x_2085.x, x_2085.y) + x_2089);
          let x_2092 : vec4<f32> = u_xlat9;
          let x_2093 : vec2<f32> = vec2<f32>(x_2092.x, x_2092.y);
          let x_2095 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2093.x, x_2093.y, x_2095);
          let x_2102 : vec3<f32> = txVec32;
          let x_2104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2102.xy, x_2102.z);
          u_xlat10.z = x_2104;
          let x_2107 : vec4<f32> = u_xlat9;
          let x_2108 : vec2<f32> = vec2<f32>(x_2107.z, x_2107.w);
          let x_2110 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2108.x, x_2108.y, x_2110);
          let x_2117 : vec3<f32> = txVec33;
          let x_2119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2117.xy, x_2117.z);
          u_xlat10.w = x_2119;
          let x_2121 : vec4<f32> = u_xlat10;
          u_xlat51 = dot(x_2121, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2124 : i32 = u_xlati72;
          let x_2126 : f32 = x_292.x_AdditionalShadowParams[x_2124].y;
          u_xlatb74 = (2.0f == x_2126);
          let x_2128 : bool = u_xlatb74;
          if (x_2128) {
            let x_2131 : vec4<f32> = u_xlat8;
            let x_2135 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2138 : vec2<f32> = ((vec2<f32>(x_2131.x, x_2131.y) * vec2<f32>(x_2135.z, x_2135.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2139 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2138.x, x_2138.y, x_2139.z, x_2139.w);
            let x_2141 : vec4<f32> = u_xlat9;
            let x_2143 : vec2<f32> = floor(vec2<f32>(x_2141.x, x_2141.y));
            let x_2144 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
            let x_2147 : vec4<f32> = u_xlat8;
            let x_2150 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2153 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2147.x, x_2147.y) * vec2<f32>(x_2150.z, x_2150.w)) + -(vec2<f32>(x_2153.x, x_2153.y)));
            let x_2157 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2157.x, x_2157.x, x_2157.y, x_2157.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2160 : vec4<f32> = u_xlat10;
            let x_2162 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2160.x, x_2160.x, x_2160.z, x_2160.z) * vec4<f32>(x_2162.x, x_2162.x, x_2162.z, x_2162.z));
            let x_2165 : vec4<f32> = u_xlat11;
            let x_2167 : vec2<f32> = (vec2<f32>(x_2165.y, x_2165.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2168 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2167.x, x_2168.y, x_2167.y, x_2168.w);
            let x_2170 : vec4<f32> = u_xlat11;
            let x_2173 : vec2<f32> = u_xlat55;
            let x_2175 : vec2<f32> = ((vec2<f32>(x_2170.x, x_2170.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2173));
            let x_2176 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
            let x_2179 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2179) + vec2<f32>(1.0f, 1.0f));
            let x_2182 : vec2<f32> = u_xlat55;
            let x_2183 : vec2<f32> = min(x_2182, vec2<f32>(0.0f, 0.0f));
            let x_2184 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
            let x_2186 : vec4<f32> = u_xlat12;
            let x_2189 : vec4<f32> = u_xlat12;
            let x_2192 : vec2<f32> = u_xlat57;
            let x_2193 : vec2<f32> = ((-(vec2<f32>(x_2186.x, x_2186.y)) * vec2<f32>(x_2189.x, x_2189.y)) + x_2192);
            let x_2194 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
            let x_2196 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2196, vec2<f32>(0.0f, 0.0f));
            let x_2198 : vec2<f32> = u_xlat55;
            let x_2200 : vec2<f32> = u_xlat55;
            let x_2202 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2198) * x_2200) + vec2<f32>(x_2202.y, x_2202.w));
            let x_2205 : vec4<f32> = u_xlat12;
            let x_2207 : vec2<f32> = (vec2<f32>(x_2205.x, x_2205.y) + vec2<f32>(1.0f, 1.0f));
            let x_2208 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
            let x_2210 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2210 + vec2<f32>(1.0f, 1.0f));
            let x_2212 : vec4<f32> = u_xlat11;
            let x_2214 : vec2<f32> = (vec2<f32>(x_2212.x, x_2212.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2215 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
            let x_2217 : vec2<f32> = u_xlat57;
            let x_2218 : vec2<f32> = (x_2217 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2219 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
            let x_2221 : vec4<f32> = u_xlat12;
            let x_2223 : vec2<f32> = (vec2<f32>(x_2221.x, x_2221.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2224 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2223.x, x_2223.y, x_2224.z, x_2224.w);
            let x_2226 : vec2<f32> = u_xlat55;
            let x_2227 : vec2<f32> = (x_2226 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2228 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
            let x_2230 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2230.y, x_2230.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2234 : f32 = u_xlat12.x;
            u_xlat13.z = x_2234;
            let x_2237 : f32 = u_xlat55.x;
            u_xlat13.w = x_2237;
            let x_2240 : f32 = u_xlat14.x;
            u_xlat11.z = x_2240;
            let x_2243 : f32 = u_xlat10.x;
            u_xlat11.w = x_2243;
            let x_2245 : vec4<f32> = u_xlat11;
            let x_2247 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2245.z, x_2245.w, x_2245.x, x_2245.z) + vec4<f32>(x_2247.z, x_2247.w, x_2247.x, x_2247.z));
            let x_2251 : f32 = u_xlat13.y;
            u_xlat12.z = x_2251;
            let x_2254 : f32 = u_xlat55.y;
            u_xlat12.w = x_2254;
            let x_2257 : f32 = u_xlat11.y;
            u_xlat14.z = x_2257;
            let x_2260 : f32 = u_xlat10.z;
            u_xlat14.w = x_2260;
            let x_2262 : vec4<f32> = u_xlat12;
            let x_2264 : vec4<f32> = u_xlat14;
            let x_2266 : vec3<f32> = (vec3<f32>(x_2262.z, x_2262.y, x_2262.w) + vec3<f32>(x_2264.z, x_2264.y, x_2264.w));
            let x_2267 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat11;
            let x_2271 : vec4<f32> = u_xlat15;
            let x_2273 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.z, x_2269.w) / vec3<f32>(x_2271.z, x_2271.w, x_2271.y));
            let x_2274 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
            let x_2276 : vec4<f32> = u_xlat11;
            let x_2278 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2279 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
            let x_2281 : vec4<f32> = u_xlat14;
            let x_2283 : vec4<f32> = u_xlat10;
            let x_2285 : vec3<f32> = (vec3<f32>(x_2281.z, x_2281.y, x_2281.w) / vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
            let x_2286 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
            let x_2288 : vec4<f32> = u_xlat12;
            let x_2290 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2291 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
            let x_2293 : vec4<f32> = u_xlat11;
            let x_2296 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2298 : vec3<f32> = (vec3<f32>(x_2293.y, x_2293.x, x_2293.z) * vec3<f32>(x_2296.x, x_2296.x, x_2296.x));
            let x_2299 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat12;
            let x_2304 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) * vec3<f32>(x_2304.y, x_2304.y, x_2304.y));
            let x_2307 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2310 : f32 = u_xlat12.x;
            u_xlat11.w = x_2310;
            let x_2312 : vec4<f32> = u_xlat9;
            let x_2315 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2318 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y) * vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y)) + vec4<f32>(x_2318.y, x_2318.w, x_2318.x, x_2318.w));
            let x_2321 : vec4<f32> = u_xlat9;
            let x_2324 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2327 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2321.x, x_2321.y) * vec2<f32>(x_2324.x, x_2324.y)) + vec2<f32>(x_2327.z, x_2327.w));
            let x_2331 : f32 = u_xlat11.y;
            u_xlat12.w = x_2331;
            let x_2333 : vec4<f32> = u_xlat12;
            let x_2334 : vec2<f32> = vec2<f32>(x_2333.y, x_2333.z);
            let x_2335 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2335.x, x_2334.x, x_2335.z, x_2334.y);
            let x_2337 : vec4<f32> = u_xlat9;
            let x_2340 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2343 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y) * vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y)) + vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2343.y));
            let x_2346 : vec4<f32> = u_xlat9;
            let x_2349 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2352 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.y) * vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y)) + vec4<f32>(x_2352.w, x_2352.y, x_2352.w, x_2352.z));
            let x_2355 : vec4<f32> = u_xlat9;
            let x_2358 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2361 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2355.x, x_2355.y, x_2355.x, x_2355.y) * vec4<f32>(x_2358.x, x_2358.y, x_2358.x, x_2358.y)) + vec4<f32>(x_2361.x, x_2361.w, x_2361.z, x_2361.w));
            let x_2364 : vec4<f32> = u_xlat10;
            let x_2366 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2364.x, x_2364.x, x_2364.x, x_2364.y) * vec4<f32>(x_2366.z, x_2366.w, x_2366.y, x_2366.z));
            let x_2369 : vec4<f32> = u_xlat10;
            let x_2371 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2369.y, x_2369.y, x_2369.z, x_2369.z) * x_2371);
            let x_2374 : f32 = u_xlat10.z;
            let x_2376 : f32 = u_xlat15.y;
            u_xlat74 = (x_2374 * x_2376);
            let x_2379 : vec4<f32> = u_xlat13;
            let x_2380 : vec2<f32> = vec2<f32>(x_2379.x, x_2379.y);
            let x_2382 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
            let x_2389 : vec3<f32> = txVec34;
            let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
            u_xlat75 = x_2391;
            let x_2393 : vec4<f32> = u_xlat13;
            let x_2394 : vec2<f32> = vec2<f32>(x_2393.z, x_2393.w);
            let x_2396 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
            let x_2404 : vec3<f32> = txVec35;
            let x_2406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2404.xy, x_2404.z);
            u_xlat76 = x_2406;
            let x_2407 : f32 = u_xlat76;
            let x_2409 : f32 = u_xlat16.y;
            u_xlat76 = (x_2407 * x_2409);
            let x_2412 : f32 = u_xlat16.x;
            let x_2413 : f32 = u_xlat75;
            let x_2415 : f32 = u_xlat76;
            u_xlat75 = ((x_2412 * x_2413) + x_2415);
            let x_2418 : vec2<f32> = u_xlat55;
            let x_2420 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
            let x_2427 : vec3<f32> = txVec36;
            let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
            u_xlat76 = x_2429;
            let x_2431 : f32 = u_xlat16.z;
            let x_2432 : f32 = u_xlat76;
            let x_2434 : f32 = u_xlat75;
            u_xlat75 = ((x_2431 * x_2432) + x_2434);
            let x_2437 : vec4<f32> = u_xlat12;
            let x_2438 : vec2<f32> = vec2<f32>(x_2437.x, x_2437.y);
            let x_2440 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2438.x, x_2438.y, x_2440);
            let x_2447 : vec3<f32> = txVec37;
            let x_2449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2447.xy, x_2447.z);
            u_xlat76 = x_2449;
            let x_2451 : f32 = u_xlat16.w;
            let x_2452 : f32 = u_xlat76;
            let x_2454 : f32 = u_xlat75;
            u_xlat75 = ((x_2451 * x_2452) + x_2454);
            let x_2457 : vec4<f32> = u_xlat14;
            let x_2458 : vec2<f32> = vec2<f32>(x_2457.x, x_2457.y);
            let x_2460 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
            let x_2467 : vec3<f32> = txVec38;
            let x_2469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
            u_xlat76 = x_2469;
            let x_2471 : f32 = u_xlat17.x;
            let x_2472 : f32 = u_xlat76;
            let x_2474 : f32 = u_xlat75;
            u_xlat75 = ((x_2471 * x_2472) + x_2474);
            let x_2477 : vec4<f32> = u_xlat14;
            let x_2478 : vec2<f32> = vec2<f32>(x_2477.z, x_2477.w);
            let x_2480 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
            let x_2487 : vec3<f32> = txVec39;
            let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
            u_xlat76 = x_2489;
            let x_2491 : f32 = u_xlat17.y;
            let x_2492 : f32 = u_xlat76;
            let x_2494 : f32 = u_xlat75;
            u_xlat75 = ((x_2491 * x_2492) + x_2494);
            let x_2497 : vec4<f32> = u_xlat12;
            let x_2498 : vec2<f32> = vec2<f32>(x_2497.z, x_2497.w);
            let x_2500 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
            let x_2507 : vec3<f32> = txVec40;
            let x_2509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
            u_xlat76 = x_2509;
            let x_2511 : f32 = u_xlat17.z;
            let x_2512 : f32 = u_xlat76;
            let x_2514 : f32 = u_xlat75;
            u_xlat75 = ((x_2511 * x_2512) + x_2514);
            let x_2517 : vec4<f32> = u_xlat11;
            let x_2518 : vec2<f32> = vec2<f32>(x_2517.x, x_2517.y);
            let x_2520 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
            let x_2527 : vec3<f32> = txVec41;
            let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
            u_xlat76 = x_2529;
            let x_2531 : f32 = u_xlat17.w;
            let x_2532 : f32 = u_xlat76;
            let x_2534 : f32 = u_xlat75;
            u_xlat75 = ((x_2531 * x_2532) + x_2534);
            let x_2537 : vec4<f32> = u_xlat11;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.z, x_2537.w);
            let x_2540 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2547 : vec3<f32> = txVec42;
            let x_2549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
            u_xlat76 = x_2549;
            let x_2550 : f32 = u_xlat74;
            let x_2551 : f32 = u_xlat76;
            let x_2553 : f32 = u_xlat75;
            u_xlat51 = ((x_2550 * x_2551) + x_2553);
          } else {
            let x_2556 : vec4<f32> = u_xlat8;
            let x_2559 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2562 : vec2<f32> = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2559.z, x_2559.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2563 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat9;
            let x_2567 : vec2<f32> = floor(vec2<f32>(x_2565.x, x_2565.y));
            let x_2568 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
            let x_2570 : vec4<f32> = u_xlat8;
            let x_2573 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2576 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2570.x, x_2570.y) * vec2<f32>(x_2573.z, x_2573.w)) + -(vec2<f32>(x_2576.x, x_2576.y)));
            let x_2580 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2580.x, x_2580.x, x_2580.y, x_2580.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2583 : vec4<f32> = u_xlat10;
            let x_2585 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2583.x, x_2583.x, x_2583.z, x_2583.z) * vec4<f32>(x_2585.x, x_2585.x, x_2585.z, x_2585.z));
            let x_2588 : vec4<f32> = u_xlat11;
            let x_2590 : vec2<f32> = (vec2<f32>(x_2588.y, x_2588.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2591 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2591.x, x_2590.x, x_2591.z, x_2590.y);
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2596 : vec2<f32> = u_xlat55;
            let x_2598 : vec2<f32> = ((vec2<f32>(x_2593.x, x_2593.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2596));
            let x_2599 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2598.x, x_2599.y, x_2598.y, x_2599.w);
            let x_2601 : vec2<f32> = u_xlat55;
            let x_2603 : vec2<f32> = (-(x_2601) + vec2<f32>(1.0f, 1.0f));
            let x_2604 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
            let x_2606 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2606, vec2<f32>(0.0f, 0.0f));
            let x_2608 : vec2<f32> = u_xlat57;
            let x_2610 : vec2<f32> = u_xlat57;
            let x_2612 : vec4<f32> = u_xlat11;
            let x_2614 : vec2<f32> = ((-(x_2608) * x_2610) + vec2<f32>(x_2612.x, x_2612.y));
            let x_2615 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
            let x_2617 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2617, vec2<f32>(0.0f, 0.0f));
            let x_2620 : vec2<f32> = u_xlat57;
            let x_2622 : vec2<f32> = u_xlat57;
            let x_2624 : vec4<f32> = u_xlat10;
            let x_2626 : vec2<f32> = ((-(x_2620) * x_2622) + vec2<f32>(x_2624.y, x_2624.w));
            let x_2627 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2626.x, x_2627.y, x_2626.y);
            let x_2629 : vec4<f32> = u_xlat11;
            let x_2631 : vec2<f32> = (vec2<f32>(x_2629.x, x_2629.y) + vec2<f32>(2.0f, 2.0f));
            let x_2632 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec3<f32> = u_xlat33;
            let x_2636 : vec2<f32> = (vec2<f32>(x_2634.x, x_2634.z) + vec2<f32>(2.0f, 2.0f));
            let x_2637 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2637.x, x_2636.x, x_2637.z, x_2636.y);
            let x_2640 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2640 * 0.08163200318813323975f);
            let x_2643 : vec4<f32> = u_xlat10;
            let x_2645 : vec3<f32> = (vec3<f32>(x_2643.z, x_2643.x, x_2643.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2646 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
            let x_2648 : vec4<f32> = u_xlat11;
            let x_2650 : vec2<f32> = (vec2<f32>(x_2648.x, x_2648.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2651 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2650.x, x_2650.y, x_2651.z, x_2651.w);
            let x_2654 : f32 = u_xlat14.y;
            u_xlat13.x = x_2654;
            let x_2656 : vec2<f32> = u_xlat55;
            let x_2659 : vec2<f32> = ((vec2<f32>(x_2656.x, x_2656.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2660 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2660.x, x_2659.x, x_2660.z, x_2659.y);
            let x_2662 : vec2<f32> = u_xlat55;
            let x_2665 : vec2<f32> = ((vec2<f32>(x_2662.x, x_2662.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2666 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2665.x, x_2666.y, x_2665.y, x_2666.w);
            let x_2669 : f32 = u_xlat10.x;
            u_xlat11.y = x_2669;
            let x_2672 : f32 = u_xlat12.y;
            u_xlat11.w = x_2672;
            let x_2674 : vec4<f32> = u_xlat11;
            let x_2675 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2674 + x_2675);
            let x_2677 : vec2<f32> = u_xlat55;
            let x_2680 : vec2<f32> = ((vec2<f32>(x_2677.y, x_2677.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2681.x, x_2680.x, x_2681.z, x_2680.y);
            let x_2683 : vec2<f32> = u_xlat55;
            let x_2686 : vec2<f32> = ((vec2<f32>(x_2683.y, x_2683.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2687 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2686.x, x_2687.y, x_2686.y, x_2687.w);
            let x_2690 : f32 = u_xlat10.y;
            u_xlat12.y = x_2690;
            let x_2692 : vec4<f32> = u_xlat12;
            let x_2693 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2692 + x_2693);
            let x_2695 : vec4<f32> = u_xlat11;
            let x_2696 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2695 / x_2696);
            let x_2698 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2700 : vec4<f32> = u_xlat12;
            let x_2701 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2700 / x_2701);
            let x_2703 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2703 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2705 : vec4<f32> = u_xlat11;
            let x_2708 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2705.w, x_2705.x, x_2705.y, x_2705.z) * vec4<f32>(x_2708.x, x_2708.x, x_2708.x, x_2708.x));
            let x_2711 : vec4<f32> = u_xlat12;
            let x_2714 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2711.x, x_2711.w, x_2711.y, x_2711.z) * vec4<f32>(x_2714.y, x_2714.y, x_2714.y, x_2714.y));
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2718 : vec3<f32> = vec3<f32>(x_2717.y, x_2717.z, x_2717.w);
            let x_2719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2718.x, x_2719.y, x_2718.y, x_2718.z);
            let x_2722 : f32 = u_xlat12.x;
            u_xlat14.y = x_2722;
            let x_2724 : vec4<f32> = u_xlat9;
            let x_2727 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2730.y));
            let x_2733 : vec4<f32> = u_xlat9;
            let x_2736 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2739 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2733.x, x_2733.y) * vec2<f32>(x_2736.x, x_2736.y)) + vec2<f32>(x_2739.w, x_2739.y));
            let x_2743 : f32 = u_xlat14.y;
            u_xlat11.y = x_2743;
            let x_2746 : f32 = u_xlat12.z;
            u_xlat14.y = x_2746;
            let x_2748 : vec4<f32> = u_xlat9;
            let x_2751 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2754 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y) * vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y)) + vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2754.y));
            let x_2757 : vec4<f32> = u_xlat9;
            let x_2760 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2763 : vec4<f32> = u_xlat14;
            let x_2765 : vec2<f32> = ((vec2<f32>(x_2757.x, x_2757.y) * vec2<f32>(x_2760.x, x_2760.y)) + vec2<f32>(x_2763.w, x_2763.y));
            let x_2766 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2765.x, x_2765.y, x_2766.z, x_2766.w);
            let x_2769 : f32 = u_xlat14.y;
            u_xlat11.z = x_2769;
            let x_2772 : vec4<f32> = u_xlat9;
            let x_2775 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y) * vec4<f32>(x_2775.x, x_2775.y, x_2775.x, x_2775.y)) + vec4<f32>(x_2778.x, x_2778.y, x_2778.x, x_2778.z));
            let x_2782 : f32 = u_xlat12.w;
            u_xlat14.y = x_2782;
            let x_2785 : vec4<f32> = u_xlat9;
            let x_2788 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y) * vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y)) + vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2791.y));
            let x_2795 : vec4<f32> = u_xlat9;
            let x_2798 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2801 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.x, x_2798.y)) + vec2<f32>(x_2801.w, x_2801.y));
            let x_2805 : f32 = u_xlat14.y;
            u_xlat11.w = x_2805;
            let x_2808 : vec4<f32> = u_xlat9;
            let x_2811 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2814 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2808.x, x_2808.y) * vec2<f32>(x_2811.x, x_2811.y)) + vec2<f32>(x_2814.x, x_2814.w));
            let x_2817 : vec4<f32> = u_xlat14;
            let x_2818 : vec3<f32> = vec3<f32>(x_2817.x, x_2817.z, x_2817.w);
            let x_2819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2818.x, x_2819.y, x_2818.y, x_2818.z);
            let x_2821 : vec4<f32> = u_xlat9;
            let x_2824 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) * vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y)) + vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat9;
            let x_2833 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2830.x, x_2830.y) * vec2<f32>(x_2833.x, x_2833.y)) + vec2<f32>(x_2836.w, x_2836.y));
            let x_2840 : f32 = u_xlat11.x;
            u_xlat12.x = x_2840;
            let x_2842 : vec4<f32> = u_xlat9;
            let x_2845 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2848 : vec4<f32> = u_xlat12;
            let x_2850 : vec2<f32> = ((vec2<f32>(x_2842.x, x_2842.y) * vec2<f32>(x_2845.x, x_2845.y)) + vec2<f32>(x_2848.x, x_2848.y));
            let x_2851 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2854 : vec4<f32> = u_xlat10;
            let x_2856 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2854.x, x_2854.x, x_2854.x, x_2854.x) * x_2856);
            let x_2859 : vec4<f32> = u_xlat10;
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2859.y, x_2859.y, x_2859.y, x_2859.y) * x_2861);
            let x_2864 : vec4<f32> = u_xlat10;
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2864.z, x_2864.z, x_2864.z, x_2864.z) * x_2866);
            let x_2868 : vec4<f32> = u_xlat10;
            let x_2870 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2868.w, x_2868.w, x_2868.w, x_2868.w) * x_2870);
            let x_2873 : vec4<f32> = u_xlat15;
            let x_2874 : vec2<f32> = vec2<f32>(x_2873.x, x_2873.y);
            let x_2876 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
            let x_2883 : vec3<f32> = txVec43;
            let x_2885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
            u_xlat74 = x_2885;
            let x_2887 : vec4<f32> = u_xlat15;
            let x_2888 : vec2<f32> = vec2<f32>(x_2887.z, x_2887.w);
            let x_2890 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
            let x_2897 : vec3<f32> = txVec44;
            let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
            u_xlat75 = x_2899;
            let x_2900 : f32 = u_xlat75;
            let x_2902 : f32 = u_xlat20.y;
            u_xlat75 = (x_2900 * x_2902);
            let x_2905 : f32 = u_xlat20.x;
            let x_2906 : f32 = u_xlat74;
            let x_2908 : f32 = u_xlat75;
            u_xlat74 = ((x_2905 * x_2906) + x_2908);
            let x_2911 : vec2<f32> = u_xlat55;
            let x_2913 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
            let x_2920 : vec3<f32> = txVec45;
            let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
            u_xlat75 = x_2922;
            let x_2924 : f32 = u_xlat20.z;
            let x_2925 : f32 = u_xlat75;
            let x_2927 : f32 = u_xlat74;
            u_xlat74 = ((x_2924 * x_2925) + x_2927);
            let x_2930 : vec4<f32> = u_xlat18;
            let x_2931 : vec2<f32> = vec2<f32>(x_2930.x, x_2930.y);
            let x_2933 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
            let x_2940 : vec3<f32> = txVec46;
            let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
            u_xlat75 = x_2942;
            let x_2944 : f32 = u_xlat20.w;
            let x_2945 : f32 = u_xlat75;
            let x_2947 : f32 = u_xlat74;
            u_xlat74 = ((x_2944 * x_2945) + x_2947);
            let x_2950 : vec4<f32> = u_xlat16;
            let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
            let x_2953 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec47;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat75 = x_2962;
            let x_2964 : f32 = u_xlat21.x;
            let x_2965 : f32 = u_xlat75;
            let x_2967 : f32 = u_xlat74;
            u_xlat74 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat16;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec48;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat75 = x_2982;
            let x_2984 : f32 = u_xlat21.y;
            let x_2985 : f32 = u_xlat75;
            let x_2987 : f32 = u_xlat74;
            u_xlat74 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat17;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec49;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat75 = x_3002;
            let x_3004 : f32 = u_xlat21.z;
            let x_3005 : f32 = u_xlat75;
            let x_3007 : f32 = u_xlat74;
            u_xlat74 = ((x_3004 * x_3005) + x_3007);
            let x_3010 : vec4<f32> = u_xlat18;
            let x_3011 : vec2<f32> = vec2<f32>(x_3010.z, x_3010.w);
            let x_3013 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec50;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat75 = x_3022;
            let x_3024 : f32 = u_xlat21.w;
            let x_3025 : f32 = u_xlat75;
            let x_3027 : f32 = u_xlat74;
            u_xlat74 = ((x_3024 * x_3025) + x_3027);
            let x_3030 : vec4<f32> = u_xlat19;
            let x_3031 : vec2<f32> = vec2<f32>(x_3030.x, x_3030.y);
            let x_3033 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3040 : vec3<f32> = txVec51;
            let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
            u_xlat75 = x_3042;
            let x_3044 : f32 = u_xlat22.x;
            let x_3045 : f32 = u_xlat75;
            let x_3047 : f32 = u_xlat74;
            u_xlat74 = ((x_3044 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat19;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.z, x_3050.w);
            let x_3053 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec52;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat75 = x_3062;
            let x_3064 : f32 = u_xlat22.y;
            let x_3065 : f32 = u_xlat75;
            let x_3067 : f32 = u_xlat74;
            u_xlat74 = ((x_3064 * x_3065) + x_3067);
            let x_3070 : vec2<f32> = u_xlat34;
            let x_3072 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3070.x, x_3070.y, x_3072);
            let x_3079 : vec3<f32> = txVec53;
            let x_3081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3079.xy, x_3079.z);
            u_xlat75 = x_3081;
            let x_3083 : f32 = u_xlat22.z;
            let x_3084 : f32 = u_xlat75;
            let x_3086 : f32 = u_xlat74;
            u_xlat74 = ((x_3083 * x_3084) + x_3086);
            let x_3089 : vec2<f32> = u_xlat63;
            let x_3091 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
            let x_3098 : vec3<f32> = txVec54;
            let x_3100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
            u_xlat75 = x_3100;
            let x_3102 : f32 = u_xlat22.w;
            let x_3103 : f32 = u_xlat75;
            let x_3105 : f32 = u_xlat74;
            u_xlat74 = ((x_3102 * x_3103) + x_3105);
            let x_3108 : vec4<f32> = u_xlat14;
            let x_3109 : vec2<f32> = vec2<f32>(x_3108.x, x_3108.y);
            let x_3111 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3118 : vec3<f32> = txVec55;
            let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
            u_xlat75 = x_3120;
            let x_3122 : f32 = u_xlat10.x;
            let x_3123 : f32 = u_xlat75;
            let x_3125 : f32 = u_xlat74;
            u_xlat74 = ((x_3122 * x_3123) + x_3125);
            let x_3128 : vec4<f32> = u_xlat14;
            let x_3129 : vec2<f32> = vec2<f32>(x_3128.z, x_3128.w);
            let x_3131 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
            let x_3138 : vec3<f32> = txVec56;
            let x_3140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
            u_xlat75 = x_3140;
            let x_3142 : f32 = u_xlat10.y;
            let x_3143 : f32 = u_xlat75;
            let x_3145 : f32 = u_xlat74;
            u_xlat74 = ((x_3142 * x_3143) + x_3145);
            let x_3148 : vec2<f32> = u_xlat58;
            let x_3150 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3148.x, x_3148.y, x_3150);
            let x_3157 : vec3<f32> = txVec57;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat75 = x_3159;
            let x_3161 : f32 = u_xlat10.z;
            let x_3162 : f32 = u_xlat75;
            let x_3164 : f32 = u_xlat74;
            u_xlat74 = ((x_3161 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat9;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.x, x_3167.y);
            let x_3170 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec58;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat75 = x_3179;
            let x_3181 : f32 = u_xlat10.w;
            let x_3182 : f32 = u_xlat75;
            let x_3184 : f32 = u_xlat74;
            u_xlat51 = ((x_3181 * x_3182) + x_3184);
          }
        }
      } else {
        let x_3188 : vec4<f32> = u_xlat8;
        let x_3189 : vec2<f32> = vec2<f32>(x_3188.x, x_3188.y);
        let x_3191 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
        let x_3198 : vec3<f32> = txVec59;
        let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
        u_xlat51 = x_3200;
      }
      let x_3201 : i32 = u_xlati72;
      let x_3203 : f32 = x_292.x_AdditionalShadowParams[x_3201].x;
      u_xlat74 = (1.0f + -(x_3203));
      let x_3206 : f32 = u_xlat51;
      let x_3207 : i32 = u_xlati72;
      let x_3209 : f32 = x_292.x_AdditionalShadowParams[x_3207].x;
      let x_3211 : f32 = u_xlat74;
      u_xlat51 = ((x_3206 * x_3209) + x_3211);
      let x_3214 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3214);
      let x_3218 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3218 >= 1.0f);
      let x_3220 : bool = u_xlatb74;
      let x_3221 : bool = u_xlatb75;
      u_xlatb74 = (x_3220 | x_3221);
      let x_3223 : bool = u_xlatb74;
      let x_3224 : f32 = u_xlat51;
      u_xlat51 = select(x_3224, 1.0f, x_3223);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_3227 : f32 = u_xlat51;
    u_xlat74 = (-(x_3227) + 1.0f);
    let x_3230 : f32 = u_xlat70;
    let x_3231 : f32 = u_xlat74;
    let x_3233 : f32 = u_xlat51;
    u_xlat51 = ((x_3230 * x_3231) + x_3233);
    let x_3236 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3236 & 31i)));
    let x_3240 : i32 = u_xlati74;
    let x_3243 : f32 = x_1565.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3240) & bitcast<u32>(x_3243)));
    let x_3247 : i32 = u_xlati74;
    if ((x_3247 != 0i)) {
      let x_3251 : i32 = u_xlati72;
      let x_3253 : f32 = x_1565.x_AdditionalLightsLightTypes[x_3251].el;
      u_xlati74 = i32(x_3253);
      let x_3256 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3256 != 0i));
      let x_3260 : i32 = u_xlati72;
      u_xlati76 = (x_3260 << bitcast<u32>(2i));
      let x_3262 : i32 = u_xlati75;
      if ((x_3262 != 0i)) {
        let x_3266 : vec4<f32> = vs_TEXCOORD2;
        let x_3268 : i32 = u_xlati76;
        let x_3271 : i32 = u_xlati76;
        let x_3275 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3268 + 1i) / 4i)][((x_3271 + 1i) % 4i)];
        let x_3277 : vec3<f32> = (vec3<f32>(x_3266.y, x_3266.y, x_3266.y) * vec3<f32>(x_3275.x, x_3275.y, x_3275.w));
        let x_3278 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);
        let x_3280 : i32 = u_xlati76;
        let x_3282 : i32 = u_xlati76;
        let x_3285 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[(x_3280 / 4i)][(x_3282 % 4i)];
        let x_3287 : vec4<f32> = vs_TEXCOORD2;
        let x_3290 : vec4<f32> = u_xlat8;
        let x_3292 : vec3<f32> = ((vec3<f32>(x_3285.x, x_3285.y, x_3285.w) * vec3<f32>(x_3287.x, x_3287.x, x_3287.x)) + vec3<f32>(x_3290.x, x_3290.y, x_3290.z));
        let x_3293 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3292.x, x_3292.y, x_3292.z, x_3293.w);
        let x_3295 : i32 = u_xlati76;
        let x_3298 : i32 = u_xlati76;
        let x_3302 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3295 + 2i) / 4i)][((x_3298 + 2i) % 4i)];
        let x_3304 : vec4<f32> = vs_TEXCOORD2;
        let x_3307 : vec4<f32> = u_xlat8;
        let x_3309 : vec3<f32> = ((vec3<f32>(x_3302.x, x_3302.y, x_3302.w) * vec3<f32>(x_3304.z, x_3304.z, x_3304.z)) + vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
        let x_3310 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
        let x_3312 : vec4<f32> = u_xlat8;
        let x_3314 : i32 = u_xlati76;
        let x_3317 : i32 = u_xlati76;
        let x_3321 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3314 + 3i) / 4i)][((x_3317 + 3i) % 4i)];
        let x_3323 : vec3<f32> = (vec3<f32>(x_3312.x, x_3312.y, x_3312.z) + vec3<f32>(x_3321.x, x_3321.y, x_3321.w));
        let x_3324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
        let x_3326 : vec4<f32> = u_xlat8;
        let x_3328 : vec4<f32> = u_xlat8;
        let x_3330 : vec2<f32> = (vec2<f32>(x_3326.x, x_3326.y) / vec2<f32>(x_3328.z, x_3328.z));
        let x_3331 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3330.x, x_3330.y, x_3331.z, x_3331.w);
        let x_3333 : vec4<f32> = u_xlat8;
        let x_3336 : vec2<f32> = ((vec2<f32>(x_3333.x, x_3333.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3337 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3336.x, x_3336.y, x_3337.z, x_3337.w);
        let x_3339 : vec4<f32> = u_xlat8;
        let x_3343 : vec2<f32> = clamp(vec2<f32>(x_3339.x, x_3339.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3344 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3343.x, x_3343.y, x_3344.z, x_3344.w);
        let x_3346 : i32 = u_xlati72;
        let x_3348 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3346];
        let x_3350 : vec4<f32> = u_xlat8;
        let x_3353 : i32 = u_xlati72;
        let x_3355 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3353];
        let x_3357 : vec2<f32> = ((vec2<f32>(x_3348.x, x_3348.y) * vec2<f32>(x_3350.x, x_3350.y)) + vec2<f32>(x_3355.z, x_3355.w));
        let x_3358 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3357.x, x_3357.y, x_3358.z, x_3358.w);
      } else {
        let x_3361 : i32 = u_xlati74;
        u_xlatb74 = (x_3361 == 1i);
        let x_3363 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3363);
        let x_3365 : i32 = u_xlati74;
        if ((x_3365 != 0i)) {
          let x_3370 : vec4<f32> = vs_TEXCOORD2;
          let x_3372 : i32 = u_xlati76;
          let x_3375 : i32 = u_xlati76;
          let x_3379 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3372 + 1i) / 4i)][((x_3375 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3370.y, x_3370.y) * vec2<f32>(x_3379.x, x_3379.y));
          let x_3382 : i32 = u_xlati76;
          let x_3384 : i32 = u_xlati76;
          let x_3387 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[(x_3382 / 4i)][(x_3384 % 4i)];
          let x_3389 : vec4<f32> = vs_TEXCOORD2;
          let x_3392 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3387.x, x_3387.y) * vec2<f32>(x_3389.x, x_3389.x)) + x_3392);
          let x_3394 : i32 = u_xlati76;
          let x_3397 : i32 = u_xlati76;
          let x_3401 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3394 + 2i) / 4i)][((x_3397 + 2i) % 4i)];
          let x_3403 : vec4<f32> = vs_TEXCOORD2;
          let x_3406 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3401.x, x_3401.y) * vec2<f32>(x_3403.z, x_3403.z)) + x_3406);
          let x_3408 : vec2<f32> = u_xlat54;
          let x_3409 : i32 = u_xlati76;
          let x_3412 : i32 = u_xlati76;
          let x_3416 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3409 + 3i) / 4i)][((x_3412 + 3i) % 4i)];
          u_xlat54 = (x_3408 + vec2<f32>(x_3416.x, x_3416.y));
          let x_3419 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3419 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3422 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3422);
          let x_3424 : i32 = u_xlati72;
          let x_3426 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3424];
          let x_3428 : vec2<f32> = u_xlat54;
          let x_3430 : i32 = u_xlati72;
          let x_3432 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3430];
          let x_3434 : vec2<f32> = ((vec2<f32>(x_3426.x, x_3426.y) * x_3428) + vec2<f32>(x_3432.z, x_3432.w));
          let x_3435 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3434.x, x_3434.y, x_3435.z, x_3435.w);
        } else {
          let x_3438 : vec4<f32> = vs_TEXCOORD2;
          let x_3440 : i32 = u_xlati76;
          let x_3443 : i32 = u_xlati76;
          let x_3447 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3440 + 1i) / 4i)][((x_3443 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3438.y, x_3438.y, x_3438.y, x_3438.y) * x_3447);
          let x_3449 : i32 = u_xlati76;
          let x_3451 : i32 = u_xlati76;
          let x_3454 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[(x_3449 / 4i)][(x_3451 % 4i)];
          let x_3455 : vec4<f32> = vs_TEXCOORD2;
          let x_3458 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3454 * vec4<f32>(x_3455.x, x_3455.x, x_3455.x, x_3455.x)) + x_3458);
          let x_3460 : i32 = u_xlati76;
          let x_3463 : i32 = u_xlati76;
          let x_3467 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3460 + 2i) / 4i)][((x_3463 + 2i) % 4i)];
          let x_3468 : vec4<f32> = vs_TEXCOORD2;
          let x_3471 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3467 * vec4<f32>(x_3468.z, x_3468.z, x_3468.z, x_3468.z)) + x_3471);
          let x_3473 : vec4<f32> = u_xlat9;
          let x_3474 : i32 = u_xlati76;
          let x_3477 : i32 = u_xlati76;
          let x_3481 : vec4<f32> = x_1565.x_AdditionalLightsWorldToLights[((x_3474 + 3i) / 4i)][((x_3477 + 3i) % 4i)];
          u_xlat9 = (x_3473 + x_3481);
          let x_3483 : vec4<f32> = u_xlat9;
          let x_3485 : vec4<f32> = u_xlat9;
          let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.y, x_3483.z) / vec3<f32>(x_3485.w, x_3485.w, x_3485.w));
          let x_3488 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
          let x_3490 : vec4<f32> = u_xlat9;
          let x_3492 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3490.x, x_3490.y, x_3490.z), vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
          let x_3495 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3495);
          let x_3497 : f32 = u_xlat74;
          let x_3499 : vec4<f32> = u_xlat9;
          let x_3501 : vec3<f32> = (vec3<f32>(x_3497, x_3497, x_3497) * vec3<f32>(x_3499.x, x_3499.y, x_3499.z));
          let x_3502 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3501.x, x_3501.y, x_3501.z, x_3502.w);
          let x_3504 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3504.x, x_3504.y, x_3504.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3509 : f32 = u_xlat74;
          u_xlat74 = max(x_3509, 0.00000099999999747524f);
          let x_3512 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3512);
          let x_3514 : f32 = u_xlat74;
          let x_3516 : vec4<f32> = u_xlat9;
          let x_3518 : vec3<f32> = (vec3<f32>(x_3514, x_3514, x_3514) * vec3<f32>(x_3516.z, x_3516.x, x_3516.y));
          let x_3519 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3519.w);
          let x_3522 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3522);
          let x_3526 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3526, 0.0f, 1.0f);
          let x_3530 : vec4<f32> = u_xlat10;
          let x_3532 : vec4<bool> = (vec4<f32>(x_3530.y, x_3530.z, x_3530.y, x_3530.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3532.x, x_3532.y);
          let x_3535 : bool = u_xlatb54.x;
          if (x_3535) {
            let x_3540 : f32 = u_xlat10.x;
            x_3536 = x_3540;
          } else {
            let x_3543 : f32 = u_xlat10.x;
            x_3536 = -(x_3543);
          }
          let x_3545 : f32 = x_3536;
          u_xlat54.x = x_3545;
          let x_3548 : bool = u_xlatb54.y;
          if (x_3548) {
            let x_3553 : f32 = u_xlat10.x;
            x_3549 = x_3553;
          } else {
            let x_3556 : f32 = u_xlat10.x;
            x_3549 = -(x_3556);
          }
          let x_3558 : f32 = x_3549;
          u_xlat54.y = x_3558;
          let x_3560 : vec4<f32> = u_xlat9;
          let x_3562 : f32 = u_xlat74;
          let x_3565 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3560.x, x_3560.y) * vec2<f32>(x_3562, x_3562)) + x_3565);
          let x_3567 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3567 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3570 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3570, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3574 : i32 = u_xlati72;
          let x_3576 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3574];
          let x_3578 : vec2<f32> = u_xlat54;
          let x_3580 : i32 = u_xlati72;
          let x_3582 : vec4<f32> = x_1565.x_AdditionalLightsCookieAtlasUVRects[x_3580];
          let x_3584 : vec2<f32> = ((vec2<f32>(x_3576.x, x_3576.y) * x_3578) + vec2<f32>(x_3582.z, x_3582.w));
          let x_3585 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3584.x, x_3584.y, x_3585.z, x_3585.w);
        }
      }
      let x_3592 : vec4<f32> = u_xlat8;
      let x_3594 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3592.x, x_3592.y), 0.0f);
      u_xlat8 = x_3594;
      let x_3596 : bool = u_xlatb5.y;
      if (x_3596) {
        let x_3601 : f32 = u_xlat8.w;
        x_3597 = x_3601;
      } else {
        let x_3604 : f32 = u_xlat8.x;
        x_3597 = x_3604;
      }
      let x_3605 : f32 = x_3597;
      u_xlat74 = x_3605;
      let x_3607 : bool = u_xlatb5.x;
      if (x_3607) {
        let x_3611 : vec4<f32> = u_xlat8;
        x_3608 = vec3<f32>(x_3611.x, x_3611.y, x_3611.z);
      } else {
        let x_3614 : f32 = u_xlat74;
        x_3608 = vec3<f32>(x_3614, x_3614, x_3614);
      }
      let x_3616 : vec3<f32> = x_3608;
      let x_3617 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3616.x, x_3616.y, x_3616.z, x_3617.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3623 : vec4<f32> = u_xlat8;
    let x_3625 : i32 = u_xlati72;
    let x_3627 : vec4<f32> = x_1811.x_AdditionalLightsColor[x_3625];
    let x_3629 : vec3<f32> = (vec3<f32>(x_3623.x, x_3623.y, x_3623.z) * vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3630 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
    let x_3632 : f32 = u_xlat73;
    let x_3633 : f32 = u_xlat51;
    u_xlat72 = (x_3632 * x_3633);
    let x_3635 : f32 = u_xlat72;
    let x_3637 : vec4<f32> = u_xlat8;
    let x_3639 : vec3<f32> = (vec3<f32>(x_3635, x_3635, x_3635) * vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
    let x_3640 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3640.w);
    let x_3642 : vec4<f32> = u_xlat2;
    let x_3644 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_3642.x, x_3642.y, x_3642.z), vec3<f32>(x_3644.x, x_3644.y, x_3644.z));
    let x_3647 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3647, 0.0f, 1.0f);
    let x_3649 : f32 = u_xlat72;
    let x_3651 : vec4<f32> = u_xlat8;
    let x_3653 : vec3<f32> = (vec3<f32>(x_3649, x_3649, x_3649) * vec3<f32>(x_3651.x, x_3651.y, x_3651.z));
    let x_3654 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3653.x, x_3653.y, x_3653.z, x_3654.w);
    let x_3656 : vec4<f32> = u_xlat7;
    let x_3658 : vec4<f32> = u_xlat1;
    let x_3661 : vec4<f32> = u_xlat6;
    let x_3663 : vec3<f32> = ((vec3<f32>(x_3656.x, x_3656.y, x_3656.z) * vec3<f32>(x_3658.x, x_3658.y, x_3658.z)) + vec3<f32>(x_3661.x, x_3661.y, x_3661.z));
    let x_3664 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3663.x, x_3663.y, x_3663.z, x_3664.w);

    continuing {
      let x_3666 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3666 + bitcast<u32>(1i));
    }
  }
  let x_3668 : vec3<f32> = u_xlat3;
  let x_3669 : vec4<f32> = u_xlat1;
  let x_3672 : vec4<f32> = u_xlat4;
  let x_3674 : vec3<f32> = ((x_3668 * vec3<f32>(x_3669.x, x_3669.y, x_3669.z)) + vec3<f32>(x_3672.x, x_3672.y, x_3672.z));
  let x_3675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3674.x, x_3674.y, x_3674.z, x_3675.w);
  let x_3677 : vec4<f32> = u_xlat6;
  let x_3679 : vec4<f32> = u_xlat1;
  let x_3681 : vec3<f32> = (vec3<f32>(x_3677.x, x_3677.y, x_3677.z) + vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
  let x_3682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
  let x_3685 : f32 = u_xlat0.x;
  let x_3687 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3685 * -(x_3687));
  let x_3692 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3692);
  let x_3695 : vec4<f32> = u_xlat1;
  let x_3698 : vec4<f32> = x_44.unity_FogColor;
  let x_3701 : vec3<f32> = (vec3<f32>(x_3695.x, x_3695.y, x_3695.z) + -(vec3<f32>(x_3698.x, x_3698.y, x_3698.z)));
  let x_3702 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3701.x, x_3701.y, x_3701.z, x_3702.w);
  let x_3706 : vec4<f32> = u_xlat0;
  let x_3708 : vec4<f32> = u_xlat1;
  let x_3712 : vec4<f32> = x_44.unity_FogColor;
  let x_3714 : vec3<f32> = ((vec3<f32>(x_3706.x, x_3706.x, x_3706.x) * vec3<f32>(x_3708.x, x_3708.y, x_3708.z)) + vec3<f32>(x_3712.x, x_3712.y, x_3712.z));
  let x_3715 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3715.w);
  let x_3717 : bool = u_xlatb46;
  let x_3718 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3718, x_3717);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


