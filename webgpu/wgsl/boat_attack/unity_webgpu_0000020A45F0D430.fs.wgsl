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

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_159 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_247 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

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

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb70 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1536 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1789 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb73 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

var<private> u_xlat54 : vec2<f32>;

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
  var x_1487 : f32;
  var x_1623 : f32;
  var x_1634 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1929 : f32;
  var x_1939 : f32;
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
  var x_3532 : f32;
  var x_3545 : f32;
  var x_3593 : f32;
  var x_3605 : vec3<f32>;
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
  u_xlat2.w = 1.0f;
  let x_163 : vec4<f32> = x_159.unity_SHAr;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_163, x_164);
  let x_169 : vec4<f32> = x_159.unity_SHAg;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_169, x_170);
  let x_176 : vec4<f32> = x_159.unity_SHAb;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_176, x_177);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_181.y, x_181.z, x_181.z, x_181.x) * vec4<f32>(x_183.x, x_183.y, x_183.z, x_183.z));
  let x_189 : vec4<f32> = x_159.unity_SHBr;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_189, x_190);
  let x_195 : vec4<f32> = x_159.unity_SHBg;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_159.unity_SHBb;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_201, x_202);
  let x_206 : f32 = u_xlat2.y;
  let x_208 : f32 = u_xlat2.y;
  u_xlat0.x = (x_206 * x_208);
  let x_212 : f32 = u_xlat2.x;
  let x_214 : f32 = u_xlat2.x;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_212 * x_214) + -(x_217));
  let x_223 : vec4<f32> = x_159.unity_SHC;
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec3<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_233 + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_237, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_250 : f32 = x_247.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_250);
  let x_252 : bool = u_xlatb0;
  if (x_252) {
    let x_256 : f32 = x_247.x_MainLightShadowParams.y;
    u_xlatb0 = (x_256 == 1.0f);
    let x_258 : bool = u_xlatb0;
    if (x_258) {
      let x_262 : vec4<f32> = vs_TEXCOORD6;
      let x_266 : vec4<f32> = x_247.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y) + x_266);
      let x_270 : vec4<f32> = u_xlat4;
      let x_271 : vec2<f32> = vec2<f32>(x_270.x, x_270.y);
      let x_273 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_271.x, x_271.y, x_273);
      let x_285 : vec3<f32> = txVec0;
      let x_287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_285.xy, x_285.z);
      u_xlat5.x = x_287;
      let x_290 : vec4<f32> = u_xlat4;
      let x_291 : vec2<f32> = vec2<f32>(x_290.z, x_290.w);
      let x_293 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_300 : vec3<f32> = txVec1;
      let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
      u_xlat5.y = x_302;
      let x_304 : vec4<f32> = vs_TEXCOORD6;
      let x_308 : vec4<f32> = x_247.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_304.x, x_304.y, x_304.x, x_304.y) + x_308);
      let x_311 : vec4<f32> = u_xlat4;
      let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
      let x_314 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec2;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat5.z = x_323;
      let x_326 : vec4<f32> = u_xlat4;
      let x_327 : vec2<f32> = vec2<f32>(x_326.z, x_326.w);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_327.x, x_327.y, x_329);
      let x_336 : vec3<f32> = txVec3;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat5.w = x_338;
      let x_340 : vec4<f32> = u_xlat5;
      u_xlat0.x = dot(x_340, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_348 : f32 = x_247.x_MainLightShadowParams.y;
      u_xlatb69 = (x_348 == 2.0f);
      let x_351 : bool = u_xlatb69;
      if (x_351) {
        let x_354 : vec4<f32> = vs_TEXCOORD6;
        let x_358 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_362 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_358.z, x_358.w)) + vec2<f32>(0.5f, 0.5f));
        let x_363 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
        let x_365 : vec4<f32> = u_xlat4;
        let x_367 : vec2<f32> = floor(vec2<f32>(x_365.x, x_365.y));
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
        let x_372 : vec4<f32> = vs_TEXCOORD6;
        let x_375 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_378 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(x_375.z, x_375.w)) + -(vec2<f32>(x_378.x, x_378.y)));
        let x_382 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_382.x, x_382.x, x_382.y, x_382.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_387 : vec4<f32> = u_xlat5;
        let x_389 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_387.x, x_387.x, x_387.z, x_387.z) * vec4<f32>(x_389.x, x_389.x, x_389.z, x_389.z));
        let x_392 : vec4<f32> = u_xlat6;
        let x_396 : vec2<f32> = (vec2<f32>(x_392.y, x_392.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_397 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_396.x, x_397.y, x_396.y, x_397.w);
        let x_399 : vec4<f32> = u_xlat6;
        let x_402 : vec2<f32> = u_xlat50;
        let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.z) * vec2<f32>(0.5f, 0.5f)) + -(x_402));
        let x_405 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_408 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_408) + vec2<f32>(1.0f, 1.0f));
        let x_413 : vec2<f32> = u_xlat50;
        let x_415 : vec2<f32> = min(x_413, vec2<f32>(0.0f, 0.0f));
        let x_416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_418 : vec4<f32> = u_xlat7;
        let x_421 : vec4<f32> = u_xlat7;
        let x_424 : vec2<f32> = u_xlat52;
        let x_425 : vec2<f32> = ((-(vec2<f32>(x_418.x, x_418.y)) * vec2<f32>(x_421.x, x_421.y)) + x_424);
        let x_426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_428, vec2<f32>(0.0f, 0.0f));
        let x_430 : vec2<f32> = u_xlat50;
        let x_432 : vec2<f32> = u_xlat50;
        let x_434 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_430) * x_432) + vec2<f32>(x_434.y, x_434.w));
        let x_437 : vec4<f32> = u_xlat7;
        let x_439 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) + vec2<f32>(1.0f, 1.0f));
        let x_440 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_442 + vec2<f32>(1.0f, 1.0f));
        let x_445 : vec4<f32> = u_xlat6;
        let x_449 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_450 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_452 : vec2<f32> = u_xlat52;
        let x_453 : vec2<f32> = (x_452 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_454 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat7;
        let x_458 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_459 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_462 : vec2<f32> = u_xlat50;
        let x_463 : vec2<f32> = (x_462 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_466.y, x_466.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : f32 = u_xlat7.x;
        u_xlat8.z = x_470;
        let x_473 : f32 = u_xlat50.x;
        u_xlat8.w = x_473;
        let x_476 : f32 = u_xlat9.x;
        u_xlat6.z = x_476;
        let x_479 : f32 = u_xlat5.x;
        u_xlat6.w = x_479;
        let x_482 : vec4<f32> = u_xlat6;
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_482.z, x_482.w, x_482.x, x_482.z) + vec4<f32>(x_484.z, x_484.w, x_484.x, x_484.z));
        let x_488 : f32 = u_xlat8.y;
        u_xlat7.z = x_488;
        let x_491 : f32 = u_xlat50.y;
        u_xlat7.w = x_491;
        let x_494 : f32 = u_xlat6.y;
        u_xlat9.z = x_494;
        let x_497 : f32 = u_xlat5.z;
        u_xlat9.w = x_497;
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec4<f32> = u_xlat9;
        let x_503 : vec3<f32> = (vec3<f32>(x_499.z, x_499.y, x_499.w) + vec3<f32>(x_501.z, x_501.y, x_501.w));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec4<f32> = u_xlat10;
        let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.z, x_506.w) / vec3<f32>(x_508.z, x_508.w, x_508.y));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat6;
        let x_519 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat9;
        let x_524 : vec4<f32> = u_xlat5;
        let x_526 : vec3<f32> = (vec3<f32>(x_522.z, x_522.y, x_522.w) / vec3<f32>(x_524.x, x_524.y, x_524.z));
        let x_527 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat7;
        let x_531 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat6;
        let x_537 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_539 : vec3<f32> = (vec3<f32>(x_534.y, x_534.x, x_534.z) * vec3<f32>(x_537.x, x_537.x, x_537.x));
        let x_540 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat7;
        let x_545 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_547 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_545.y, x_545.y, x_545.y));
        let x_548 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_551 : f32 = u_xlat7.x;
        u_xlat6.w = x_551;
        let x_553 : vec4<f32> = u_xlat4;
        let x_556 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) * vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y)) + vec4<f32>(x_559.y, x_559.w, x_559.x, x_559.w));
        let x_562 : vec4<f32> = u_xlat4;
        let x_565 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_565.x, x_565.y)) + vec2<f32>(x_568.z, x_568.w));
        let x_572 : f32 = u_xlat6.y;
        u_xlat7.w = x_572;
        let x_574 : vec4<f32> = u_xlat7;
        let x_575 : vec2<f32> = vec2<f32>(x_574.y, x_574.z);
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_575.x, x_576.z, x_575.y);
        let x_578 : vec4<f32> = u_xlat4;
        let x_581 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) * vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y)) + vec4<f32>(x_584.x, x_584.y, x_584.z, x_584.y));
        let x_587 : vec4<f32> = u_xlat4;
        let x_590 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y) * vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y)) + vec4<f32>(x_593.w, x_593.y, x_593.w, x_593.z));
        let x_596 : vec4<f32> = u_xlat4;
        let x_599 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y) * vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y)) + vec4<f32>(x_602.x, x_602.w, x_602.z, x_602.w));
        let x_606 : vec4<f32> = u_xlat5;
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_606.x, x_606.x, x_606.x, x_606.y) * vec4<f32>(x_608.z, x_608.w, x_608.y, x_608.z));
        let x_612 : vec4<f32> = u_xlat5;
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_612.y, x_612.y, x_612.z, x_612.z) * x_614);
        let x_617 : f32 = u_xlat5.z;
        let x_619 : f32 = u_xlat10.y;
        u_xlat69 = (x_617 * x_619);
        let x_622 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
        let x_625 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_623.x, x_623.y, x_625);
        let x_633 : vec3<f32> = txVec4;
        let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_633.xy, x_633.z);
        u_xlat70 = x_635;
        let x_637 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = vec2<f32>(x_637.z, x_637.w);
        let x_640 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_638.x, x_638.y, x_640);
        let x_648 : vec3<f32> = txVec5;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat71 = x_650;
        let x_651 : f32 = u_xlat71;
        let x_653 : f32 = u_xlat11.y;
        u_xlat71 = (x_651 * x_653);
        let x_656 : f32 = u_xlat11.x;
        let x_657 : f32 = u_xlat70;
        let x_659 : f32 = u_xlat71;
        u_xlat70 = ((x_656 * x_657) + x_659);
        let x_662 : vec2<f32> = u_xlat50;
        let x_664 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_662.x, x_662.y, x_664);
        let x_671 : vec3<f32> = txVec6;
        let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_671.xy, x_671.z);
        u_xlat71 = x_673;
        let x_675 : f32 = u_xlat11.z;
        let x_676 : f32 = u_xlat71;
        let x_678 : f32 = u_xlat70;
        u_xlat70 = ((x_675 * x_676) + x_678);
        let x_681 : vec4<f32> = u_xlat7;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec7;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat71 = x_693;
        let x_695 : f32 = u_xlat11.w;
        let x_696 : f32 = u_xlat71;
        let x_698 : f32 = u_xlat70;
        u_xlat70 = ((x_695 * x_696) + x_698);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec8;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_711.xy, x_711.z);
        u_xlat71 = x_713;
        let x_715 : f32 = u_xlat12.x;
        let x_716 : f32 = u_xlat71;
        let x_718 : f32 = u_xlat70;
        u_xlat70 = ((x_715 * x_716) + x_718);
        let x_721 : vec4<f32> = u_xlat9;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec9;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat71 = x_733;
        let x_735 : f32 = u_xlat12.y;
        let x_736 : f32 = u_xlat71;
        let x_738 : f32 = u_xlat70;
        u_xlat70 = ((x_735 * x_736) + x_738);
        let x_741 : vec4<f32> = u_xlat7;
        let x_742 : vec2<f32> = vec2<f32>(x_741.z, x_741.w);
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec10;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat71 = x_753;
        let x_755 : f32 = u_xlat12.z;
        let x_756 : f32 = u_xlat71;
        let x_758 : f32 = u_xlat70;
        u_xlat70 = ((x_755 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat6;
        let x_762 : vec2<f32> = vec2<f32>(x_761.x, x_761.y);
        let x_764 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec11;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat71 = x_773;
        let x_775 : f32 = u_xlat12.w;
        let x_776 : f32 = u_xlat71;
        let x_778 : f32 = u_xlat70;
        u_xlat70 = ((x_775 * x_776) + x_778);
        let x_781 : vec4<f32> = u_xlat6;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec12;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat71 = x_793;
        let x_794 : f32 = u_xlat69;
        let x_795 : f32 = u_xlat71;
        let x_797 : f32 = u_xlat70;
        u_xlat0.x = ((x_794 * x_795) + x_797);
      } else {
        let x_801 : vec4<f32> = vs_TEXCOORD6;
        let x_804 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_807 : vec2<f32> = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804.z, x_804.w)) + vec2<f32>(0.5f, 0.5f));
        let x_808 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec4<f32> = u_xlat4;
        let x_812 : vec2<f32> = floor(vec2<f32>(x_810.x, x_810.y));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = vs_TEXCOORD6;
        let x_818 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_821 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_815.x, x_815.y) * vec2<f32>(x_818.z, x_818.w)) + -(vec2<f32>(x_821.x, x_821.y)));
        let x_825 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_825.x, x_825.x, x_825.y, x_825.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_828 : vec4<f32> = u_xlat5;
        let x_830 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_828.x, x_828.x, x_828.z, x_828.z) * vec4<f32>(x_830.x, x_830.x, x_830.z, x_830.z));
        let x_833 : vec4<f32> = u_xlat6;
        let x_837 : vec2<f32> = (vec2<f32>(x_833.y, x_833.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_838 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_838.x, x_837.x, x_838.z, x_837.y);
        let x_840 : vec4<f32> = u_xlat6;
        let x_843 : vec2<f32> = u_xlat50;
        let x_845 : vec2<f32> = ((vec2<f32>(x_840.x, x_840.z) * vec2<f32>(0.5f, 0.5f)) + -(x_843));
        let x_846 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_845.x, x_846.y, x_845.y, x_846.w);
        let x_848 : vec2<f32> = u_xlat50;
        let x_850 : vec2<f32> = (-(x_848) + vec2<f32>(1.0f, 1.0f));
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_853, vec2<f32>(0.0f, 0.0f));
        let x_855 : vec2<f32> = u_xlat52;
        let x_857 : vec2<f32> = u_xlat52;
        let x_859 : vec4<f32> = u_xlat6;
        let x_861 : vec2<f32> = ((-(x_855) * x_857) + vec2<f32>(x_859.x, x_859.y));
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_864, vec2<f32>(0.0f, 0.0f));
        let x_867 : vec2<f32> = u_xlat52;
        let x_869 : vec2<f32> = u_xlat52;
        let x_871 : vec4<f32> = u_xlat5;
        let x_873 : vec2<f32> = ((-(x_867) * x_869) + vec2<f32>(x_871.y, x_871.w));
        let x_874 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_873.x, x_874.y, x_873.y);
        let x_876 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) + vec2<f32>(2.0f, 2.0f));
        let x_880 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec3<f32> = u_xlat28;
        let x_884 : vec2<f32> = (vec2<f32>(x_882.x, x_882.z) + vec2<f32>(2.0f, 2.0f));
        let x_885 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_884.x, x_885.z, x_884.y);
        let x_888 : f32 = u_xlat5.y;
        u_xlat8.z = (x_888 * 0.08163200318813323975f);
        let x_892 : vec4<f32> = u_xlat5;
        let x_895 : vec3<f32> = (vec3<f32>(x_892.z, x_892.x, x_892.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = (vec2<f32>(x_898.x, x_898.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_902 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_905 : f32 = u_xlat9.y;
        u_xlat8.x = x_905;
        let x_907 : vec2<f32> = u_xlat50;
        let x_914 : vec2<f32> = ((vec2<f32>(x_907.x, x_907.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec2<f32> = u_xlat50;
        let x_921 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_921.x, x_922.y, x_921.y, x_922.w);
        let x_925 : f32 = u_xlat5.x;
        u_xlat6.y = x_925;
        let x_928 : f32 = u_xlat7.y;
        u_xlat6.w = x_928;
        let x_930 : vec4<f32> = u_xlat6;
        let x_931 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_930 + x_931);
        let x_933 : vec2<f32> = u_xlat50;
        let x_936 : vec2<f32> = ((vec2<f32>(x_933.y, x_933.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_936.x, x_937.z, x_936.y);
        let x_939 : vec2<f32> = u_xlat50;
        let x_942 : vec2<f32> = ((vec2<f32>(x_939.y, x_939.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_942.x, x_943.y, x_942.y, x_943.w);
        let x_946 : f32 = u_xlat5.y;
        u_xlat7.y = x_946;
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_948 + x_949);
        let x_951 : vec4<f32> = u_xlat6;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_951 / x_952);
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_954 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_960 / x_961);
        let x_963 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_963 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_965 : vec4<f32> = u_xlat6;
        let x_968 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_965.w, x_965.x, x_965.y, x_965.z) * vec4<f32>(x_968.x, x_968.x, x_968.x, x_968.x));
        let x_971 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_971.x, x_971.w, x_971.y, x_971.z) * vec4<f32>(x_974.y, x_974.y, x_974.y, x_974.y));
        let x_977 : vec4<f32> = u_xlat6;
        let x_978 : vec3<f32> = vec3<f32>(x_977.y, x_977.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_978.z);
        let x_982 : f32 = u_xlat7.x;
        u_xlat9.y = x_982;
        let x_984 : vec4<f32> = u_xlat4;
        let x_987 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y)) + vec4<f32>(x_990.x, x_990.y, x_990.z, x_990.y));
        let x_993 : vec4<f32> = u_xlat4;
        let x_996 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.x, x_996.y)) + vec2<f32>(x_999.w, x_999.y));
        let x_1003 : f32 = u_xlat9.y;
        u_xlat6.y = x_1003;
        let x_1006 : f32 = u_xlat7.z;
        u_xlat9.y = x_1006;
        let x_1008 : vec4<f32> = u_xlat4;
        let x_1011 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y) * vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y)) + vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat4;
        let x_1020 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.y) * vec2<f32>(x_1020.x, x_1020.y)) + vec2<f32>(x_1023.w, x_1023.y));
        let x_1026 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1029 : f32 = u_xlat9.y;
        u_xlat6.z = x_1029;
        let x_1032 : vec4<f32> = u_xlat4;
        let x_1035 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) * vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y)) + vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.z));
        let x_1042 : f32 = u_xlat7.w;
        u_xlat9.y = x_1042;
        let x_1045 : vec4<f32> = u_xlat4;
        let x_1048 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1055 : vec4<f32> = u_xlat4;
        let x_1058 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1061.w, x_1061.y));
        let x_1065 : f32 = u_xlat9.y;
        u_xlat6.w = x_1065;
        let x_1068 : vec4<f32> = u_xlat4;
        let x_1071 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.x, x_1071.y)) + vec2<f32>(x_1074.x, x_1074.w));
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec3<f32> = vec3<f32>(x_1077.x, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1078.z);
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1091 : vec4<f32> = u_xlat4;
        let x_1094 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat6.x;
        u_xlat7.x = x_1101;
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.x) * x_1117);
        let x_1120 : vec4<f32> = u_xlat5;
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1120.y, x_1120.y, x_1120.y, x_1120.y) * x_1122);
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1127 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1125.z, x_1125.z, x_1125.z, x_1125.z) * x_1127);
        let x_1129 : vec4<f32> = u_xlat5;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1129.w, x_1129.w, x_1129.w, x_1129.w) * x_1131);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.x, x_1134.y);
        let x_1137 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec13;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat69 = x_1146;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec14;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
        u_xlat70 = x_1160;
        let x_1161 : f32 = u_xlat70;
        let x_1163 : f32 = u_xlat15.y;
        u_xlat70 = (x_1161 * x_1163);
        let x_1166 : f32 = u_xlat15.x;
        let x_1167 : f32 = u_xlat69;
        let x_1169 : f32 = u_xlat70;
        u_xlat69 = ((x_1166 * x_1167) + x_1169);
        let x_1172 : vec2<f32> = u_xlat50;
        let x_1174 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec15;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat70 = x_1183;
        let x_1185 : f32 = u_xlat15.z;
        let x_1186 : f32 = u_xlat70;
        let x_1188 : f32 = u_xlat69;
        u_xlat69 = ((x_1185 * x_1186) + x_1188);
        let x_1191 : vec4<f32> = u_xlat13;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec16;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat70 = x_1203;
        let x_1205 : f32 = u_xlat15.w;
        let x_1206 : f32 = u_xlat70;
        let x_1208 : f32 = u_xlat69;
        u_xlat69 = ((x_1205 * x_1206) + x_1208);
        let x_1211 : vec4<f32> = u_xlat11;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec17;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat70 = x_1223;
        let x_1225 : f32 = u_xlat16.x;
        let x_1226 : f32 = u_xlat70;
        let x_1228 : f32 = u_xlat69;
        u_xlat69 = ((x_1225 * x_1226) + x_1228);
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.z, x_1231.w);
        let x_1234 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec18;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1241.xy, x_1241.z);
        u_xlat70 = x_1243;
        let x_1245 : f32 = u_xlat16.y;
        let x_1246 : f32 = u_xlat70;
        let x_1248 : f32 = u_xlat69;
        u_xlat69 = ((x_1245 * x_1246) + x_1248);
        let x_1251 : vec4<f32> = u_xlat12;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.x, x_1251.y);
        let x_1254 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec19;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1261.xy, x_1261.z);
        u_xlat70 = x_1263;
        let x_1265 : f32 = u_xlat16.z;
        let x_1266 : f32 = u_xlat70;
        let x_1268 : f32 = u_xlat69;
        u_xlat69 = ((x_1265 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat13;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec20;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat70 = x_1283;
        let x_1285 : f32 = u_xlat16.w;
        let x_1286 : f32 = u_xlat70;
        let x_1288 : f32 = u_xlat69;
        u_xlat69 = ((x_1285 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat14;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec21;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat70 = x_1303;
        let x_1305 : f32 = u_xlat17.x;
        let x_1306 : f32 = u_xlat70;
        let x_1308 : f32 = u_xlat69;
        u_xlat69 = ((x_1305 * x_1306) + x_1308);
        let x_1311 : vec4<f32> = u_xlat14;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec22;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat70 = x_1323;
        let x_1325 : f32 = u_xlat17.y;
        let x_1326 : f32 = u_xlat70;
        let x_1328 : f32 = u_xlat69;
        u_xlat69 = ((x_1325 * x_1326) + x_1328);
        let x_1331 : vec2<f32> = u_xlat29;
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec23;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat70 = x_1342;
        let x_1344 : f32 = u_xlat17.z;
        let x_1345 : f32 = u_xlat70;
        let x_1347 : f32 = u_xlat69;
        u_xlat69 = ((x_1344 * x_1345) + x_1347);
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec24;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat70 = x_1361;
        let x_1363 : f32 = u_xlat17.w;
        let x_1364 : f32 = u_xlat70;
        let x_1366 : f32 = u_xlat69;
        u_xlat69 = ((x_1363 * x_1364) + x_1366);
        let x_1369 : vec4<f32> = u_xlat9;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec25;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat70 = x_1381;
        let x_1383 : f32 = u_xlat5.x;
        let x_1384 : f32 = u_xlat70;
        let x_1386 : f32 = u_xlat69;
        u_xlat69 = ((x_1383 * x_1384) + x_1386);
        let x_1389 : vec4<f32> = u_xlat9;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec26;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat70 = x_1401;
        let x_1403 : f32 = u_xlat5.y;
        let x_1404 : f32 = u_xlat70;
        let x_1406 : f32 = u_xlat69;
        u_xlat69 = ((x_1403 * x_1404) + x_1406);
        let x_1409 : vec2<f32> = u_xlat53;
        let x_1411 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec27;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat70 = x_1420;
        let x_1422 : f32 = u_xlat5.z;
        let x_1423 : f32 = u_xlat70;
        let x_1425 : f32 = u_xlat69;
        u_xlat69 = ((x_1422 * x_1423) + x_1425);
        let x_1428 : vec4<f32> = u_xlat4;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec28;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1438.xy, x_1438.z);
        u_xlat70 = x_1440;
        let x_1442 : f32 = u_xlat5.w;
        let x_1443 : f32 = u_xlat70;
        let x_1445 : f32 = u_xlat69;
        u_xlat0.x = ((x_1442 * x_1443) + x_1445);
      }
    }
  } else {
    let x_1450 : vec4<f32> = vs_TEXCOORD6;
    let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
    let x_1453 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
    let x_1460 : vec3<f32> = txVec29;
    let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
    u_xlat0.x = x_1462;
  }
  let x_1465 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1465) + 1.0f);
  let x_1469 : f32 = u_xlat0.x;
  let x_1471 : f32 = x_247.x_MainLightShadowParams.x;
  let x_1473 : f32 = u_xlat69;
  u_xlat0.x = ((x_1469 * x_1471) + x_1473);
  let x_1477 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1477);
  let x_1481 : f32 = vs_TEXCOORD6.z;
  u_xlatb70 = (x_1481 >= 1.0f);
  let x_1483 : bool = u_xlatb69;
  let x_1484 : bool = u_xlatb70;
  u_xlatb69 = (x_1483 | x_1484);
  let x_1486 : bool = u_xlatb69;
  if (x_1486) {
    x_1487 = 1.0f;
  } else {
    let x_1492 : f32 = u_xlat0.x;
    x_1487 = x_1492;
  }
  let x_1493 : f32 = x_1487;
  u_xlat0.x = x_1493;
  let x_1496 : vec4<f32> = vs_TEXCOORD2;
  let x_1501 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1503 : vec3<f32> = (vec3<f32>(x_1496.x, x_1496.y, x_1496.z) + -(x_1501));
  let x_1504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat4;
  let x_1508 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
  let x_1511 : f32 = u_xlat69;
  let x_1513 : f32 = x_247.x_MainLightShadowParams.z;
  let x_1516 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat70 = ((x_1511 * x_1513) + x_1516);
  let x_1518 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1518, 0.0f, 1.0f);
  let x_1521 : f32 = u_xlat0.x;
  u_xlat71 = (-(x_1521) + 1.0f);
  let x_1524 : f32 = u_xlat70;
  let x_1525 : f32 = u_xlat71;
  let x_1528 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1524 * x_1525) + x_1528);
  let x_1539 : f32 = x_1536.x_MainLightCookieTextureFormat;
  u_xlatb70 = !((x_1539 == -1.0f));
  let x_1542 : bool = u_xlatb70;
  if (x_1542) {
    let x_1545 : vec4<f32> = vs_TEXCOORD2;
    let x_1548 : vec4<f32> = x_1536.x_MainLightWorldToLight[1i];
    let x_1550 : vec2<f32> = (vec2<f32>(x_1545.y, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y));
    let x_1551 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
    let x_1554 : vec4<f32> = x_1536.x_MainLightWorldToLight[0i];
    let x_1556 : vec4<f32> = vs_TEXCOORD2;
    let x_1559 : vec4<f32> = u_xlat4;
    let x_1561 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1556.x, x_1556.x)) + vec2<f32>(x_1559.x, x_1559.y));
    let x_1562 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
    let x_1565 : vec4<f32> = x_1536.x_MainLightWorldToLight[2i];
    let x_1567 : vec4<f32> = vs_TEXCOORD2;
    let x_1570 : vec4<f32> = u_xlat4;
    let x_1572 : vec2<f32> = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1567.z, x_1567.z)) + vec2<f32>(x_1570.x, x_1570.y));
    let x_1573 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
    let x_1575 : vec4<f32> = u_xlat4;
    let x_1579 : vec4<f32> = x_1536.x_MainLightWorldToLight[3i];
    let x_1581 : vec2<f32> = (vec2<f32>(x_1575.x, x_1575.y) + vec2<f32>(x_1579.x, x_1579.y));
    let x_1582 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
    let x_1584 : vec4<f32> = u_xlat4;
    let x_1587 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1588 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1587.x, x_1587.y, x_1588.z, x_1588.w);
    let x_1595 : vec4<f32> = u_xlat4;
    let x_1598 : f32 = x_27.x_GlobalMipBias.x;
    let x_1599 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1595.x, x_1595.y), x_1598);
    u_xlat4 = x_1599;
    let x_1604 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1606 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1608 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1610 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1611 : vec4<f32> = vec4<f32>(x_1604, x_1606, x_1608, x_1610);
    let x_1619 : vec4<bool> = (vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1611.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1619.x, x_1619.y);
    let x_1622 : bool = u_xlatb5.y;
    if (x_1622) {
      let x_1627 : f32 = u_xlat4.w;
      x_1623 = x_1627;
    } else {
      let x_1630 : f32 = u_xlat4.x;
      x_1623 = x_1630;
    }
    let x_1631 : f32 = x_1623;
    u_xlat70 = x_1631;
    let x_1633 : bool = u_xlatb5.x;
    if (x_1633) {
      let x_1637 : vec4<f32> = u_xlat4;
      x_1634 = vec3<f32>(x_1637.x, x_1637.y, x_1637.z);
    } else {
      let x_1640 : f32 = u_xlat70;
      x_1634 = vec3<f32>(x_1640, x_1640, x_1640);
    }
    let x_1642 : vec3<f32> = x_1634;
    let x_1643 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1649 : vec4<f32> = u_xlat4;
  let x_1652 : vec4<f32> = x_27.x_MainLightColor;
  let x_1654 : vec3<f32> = (vec3<f32>(x_1649.x, x_1649.y, x_1649.z) * vec3<f32>(x_1652.x, x_1652.y, x_1652.z));
  let x_1655 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1655.w);
  let x_1658 : f32 = u_xlat0.x;
  let x_1660 : f32 = x_159.unity_LightData.z;
  u_xlat0.x = (x_1658 * x_1660);
  let x_1663 : vec4<f32> = u_xlat0;
  let x_1665 : vec4<f32> = u_xlat4;
  let x_1667 : vec3<f32> = (vec3<f32>(x_1663.x, x_1663.x, x_1663.x) * vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1670 : vec4<f32> = u_xlat2;
  let x_1673 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1678 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1678, 0.0f, 1.0f);
  let x_1681 : vec4<f32> = u_xlat0;
  let x_1683 : vec4<f32> = u_xlat4;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1681.x, x_1681.x, x_1681.x) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat1;
  let x_1690 : vec4<f32> = u_xlat4;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1688.x, x_1688.y, x_1688.z) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1696 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1698 : f32 = x_159.unity_LightData.y;
  u_xlat0.x = min(x_1696, x_1698);
  let x_1704 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1704));
  let x_1707 : f32 = u_xlat69;
  let x_1710 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_1713 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1707 * x_1710) + x_1713);
  let x_1715 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1715, 0.0f, 1.0f);
  let x_1718 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1720 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1722 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1724 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1725 : vec4<f32> = vec4<f32>(x_1718, x_1720, x_1722, x_1724);
  let x_1731 : vec4<bool> = (vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1731.x, x_1731.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1743 : u32 = u_xlatu_loop_1;
    let x_1744 : u32 = u_xlatu0;
    if ((x_1743 < x_1744)) {
    } else {
      break;
    }
    let x_1747 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1747 >> 2u);
    let x_1751 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1751 & 3u));
    let x_1754 : u32 = u_xlatu71;
    let x_1757 : vec4<f32> = x_159.unity_LightIndices[bitcast<i32>(x_1754)];
    let x_1767 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1772 : vec4<u32> = indexable[x_1767];
    u_xlat71 = dot(x_1757, bitcast<vec4<f32>>(x_1772));
    let x_1776 : f32 = u_xlat71;
    u_xlati71 = i32(x_1776);
    let x_1778 : vec4<f32> = vs_TEXCOORD2;
    let x_1790 : i32 = u_xlati71;
    let x_1792 : vec4<f32> = x_1789.x_AdditionalLightsPosition[x_1790];
    let x_1795 : i32 = u_xlati71;
    let x_1797 : vec4<f32> = x_1789.x_AdditionalLightsPosition[x_1795];
    let x_1799 : vec3<f32> = ((-(vec3<f32>(x_1778.x, x_1778.y, x_1778.z)) * vec3<f32>(x_1792.w, x_1792.w, x_1792.w)) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
    let x_1800 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
    let x_1803 : vec4<f32> = u_xlat7;
    let x_1805 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1803.x, x_1803.y, x_1803.z), vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : f32 = u_xlat72;
    u_xlat72 = max(x_1808, 0.00006103515625f);
    let x_1812 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1812);
    let x_1814 : f32 = u_xlat73;
    let x_1816 : vec4<f32> = u_xlat7;
    let x_1818 : vec3<f32> = (vec3<f32>(x_1814, x_1814, x_1814) * vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
    let x_1819 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
    let x_1821 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1821);
    let x_1823 : f32 = u_xlat72;
    let x_1824 : i32 = u_xlati71;
    let x_1826 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1824].x;
    u_xlat72 = (x_1823 * x_1826);
    let x_1828 : f32 = u_xlat72;
    let x_1830 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1828) * x_1830) + 1.0f);
    let x_1833 : f32 = u_xlat72;
    u_xlat72 = max(x_1833, 0.0f);
    let x_1835 : f32 = u_xlat72;
    let x_1836 : f32 = u_xlat72;
    u_xlat72 = (x_1835 * x_1836);
    let x_1838 : f32 = u_xlat72;
    let x_1839 : f32 = u_xlat73;
    u_xlat72 = (x_1838 * x_1839);
    let x_1841 : i32 = u_xlati71;
    let x_1843 : vec4<f32> = x_1789.x_AdditionalLightsSpotDir[x_1841];
    let x_1845 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1843.x, x_1843.y, x_1843.z), vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
    let x_1848 : f32 = u_xlat73;
    let x_1849 : i32 = u_xlati71;
    let x_1851 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1849].z;
    let x_1853 : i32 = u_xlati71;
    let x_1855 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1853].w;
    u_xlat73 = ((x_1848 * x_1851) + x_1855);
    let x_1857 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1857, 0.0f, 1.0f);
    let x_1859 : f32 = u_xlat73;
    let x_1860 : f32 = u_xlat73;
    u_xlat73 = (x_1859 * x_1860);
    let x_1862 : f32 = u_xlat72;
    let x_1863 : f32 = u_xlat73;
    u_xlat72 = (x_1862 * x_1863);
    let x_1867 : i32 = u_xlati71;
    let x_1869 : f32 = x_247.x_AdditionalShadowParams[x_1867].w;
    u_xlati73 = i32(x_1869);
    let x_1872 : i32 = u_xlati73;
    u_xlatb51 = (x_1872 >= 0i);
    let x_1874 : bool = u_xlatb51;
    if (x_1874) {
      let x_1878 : i32 = u_xlati71;
      let x_1880 : f32 = x_247.x_AdditionalShadowParams[x_1878].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1880, x_1880, x_1880, x_1880))));
      let x_1884 : bool = u_xlatb51;
      if (x_1884) {
        let x_1889 : vec4<f32> = u_xlat7;
        let x_1892 : vec4<f32> = u_xlat7;
        let x_1895 : vec4<bool> = (abs(vec4<f32>(x_1889.z, x_1889.z, x_1889.y, x_1889.z)) >= abs(vec4<f32>(x_1892.x, x_1892.y, x_1892.x, x_1892.x)));
        let x_1897 : vec3<bool> = vec3<bool>(x_1895.x, x_1895.y, x_1895.z);
        let x_1898 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
        let x_1901 : bool = u_xlatb8.y;
        let x_1903 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1901 & x_1903);
        let x_1905 : vec4<f32> = u_xlat7;
        let x_1908 : vec4<bool> = (-(vec4<f32>(x_1905.z, x_1905.y, x_1905.z, x_1905.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1909 : vec3<bool> = vec3<bool>(x_1908.x, x_1908.y, x_1908.w);
        let x_1910 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1909.x, x_1909.y, x_1910.z, x_1909.z);
        let x_1913 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1913);
        let x_1919 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1919);
        let x_1925 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1925);
        let x_1928 : bool = u_xlatb8.z;
        if (x_1928) {
          let x_1933 : f32 = u_xlat8.y;
          x_1929 = x_1933;
        } else {
          let x_1935 : f32 = u_xlat74;
          x_1929 = x_1935;
        }
        let x_1936 : f32 = x_1929;
        u_xlat74 = x_1936;
        let x_1938 : bool = u_xlatb51;
        if (x_1938) {
          let x_1943 : f32 = u_xlat8.x;
          x_1939 = x_1943;
        } else {
          let x_1945 : f32 = u_xlat74;
          x_1939 = x_1945;
        }
        let x_1946 : f32 = x_1939;
        u_xlat51.x = x_1946;
        let x_1948 : i32 = u_xlati71;
        let x_1950 : f32 = x_247.x_AdditionalShadowParams[x_1948].w;
        u_xlat74 = trunc(x_1950);
        let x_1953 : f32 = u_xlat51.x;
        let x_1954 : f32 = u_xlat74;
        u_xlat51.x = (x_1953 + x_1954);
        let x_1958 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1958);
      }
      let x_1960 : i32 = u_xlati73;
      u_xlati73 = (x_1960 << bitcast<u32>(2i));
      let x_1962 : vec4<f32> = vs_TEXCOORD2;
      let x_1965 : i32 = u_xlati73;
      let x_1968 : i32 = u_xlati73;
      let x_1972 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1965 + 1i) / 4i)][((x_1968 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1962.y, x_1962.y, x_1962.y, x_1962.y) * x_1972);
      let x_1974 : i32 = u_xlati73;
      let x_1976 : i32 = u_xlati73;
      let x_1979 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_1974 / 4i)][(x_1976 % 4i)];
      let x_1980 : vec4<f32> = vs_TEXCOORD2;
      let x_1983 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1979 * vec4<f32>(x_1980.x, x_1980.x, x_1980.x, x_1980.x)) + x_1983);
      let x_1985 : i32 = u_xlati73;
      let x_1988 : i32 = u_xlati73;
      let x_1992 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1985 + 2i) / 4i)][((x_1988 + 2i) % 4i)];
      let x_1993 : vec4<f32> = vs_TEXCOORD2;
      let x_1996 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1992 * vec4<f32>(x_1993.z, x_1993.z, x_1993.z, x_1993.z)) + x_1996);
      let x_1998 : vec4<f32> = u_xlat8;
      let x_1999 : i32 = u_xlati73;
      let x_2002 : i32 = u_xlati73;
      let x_2006 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1999 + 3i) / 4i)][((x_2002 + 3i) % 4i)];
      u_xlat8 = (x_1998 + x_2006);
      let x_2008 : vec4<f32> = u_xlat8;
      let x_2010 : vec4<f32> = u_xlat8;
      let x_2012 : vec3<f32> = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) / vec3<f32>(x_2010.w, x_2010.w, x_2010.w));
      let x_2013 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
      let x_2016 : i32 = u_xlati71;
      let x_2018 : f32 = x_247.x_AdditionalShadowParams[x_2016].y;
      u_xlatb73 = (0.0f < x_2018);
      let x_2020 : bool = u_xlatb73;
      if (x_2020) {
        let x_2023 : i32 = u_xlati71;
        let x_2025 : f32 = x_247.x_AdditionalShadowParams[x_2023].y;
        u_xlatb73 = (1.0f == x_2025);
        let x_2027 : bool = u_xlatb73;
        if (x_2027) {
          let x_2030 : vec4<f32> = u_xlat8;
          let x_2034 : vec4<f32> = x_247.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2030.x, x_2030.y, x_2030.x, x_2030.y) + x_2034);
          let x_2037 : vec4<f32> = u_xlat9;
          let x_2038 : vec2<f32> = vec2<f32>(x_2037.x, x_2037.y);
          let x_2040 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2038.x, x_2038.y, x_2040);
          let x_2048 : vec3<f32> = txVec30;
          let x_2050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2048.xy, x_2048.z);
          u_xlat10.x = x_2050;
          let x_2053 : vec4<f32> = u_xlat9;
          let x_2054 : vec2<f32> = vec2<f32>(x_2053.z, x_2053.w);
          let x_2056 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
          let x_2063 : vec3<f32> = txVec31;
          let x_2065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
          u_xlat10.y = x_2065;
          let x_2067 : vec4<f32> = u_xlat8;
          let x_2071 : vec4<f32> = x_247.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2067.x, x_2067.y, x_2067.x, x_2067.y) + x_2071);
          let x_2074 : vec4<f32> = u_xlat9;
          let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
          let x_2077 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
          let x_2084 : vec3<f32> = txVec32;
          let x_2086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
          u_xlat10.z = x_2086;
          let x_2089 : vec4<f32> = u_xlat9;
          let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
          let x_2092 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
          let x_2099 : vec3<f32> = txVec33;
          let x_2101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
          u_xlat10.w = x_2101;
          let x_2103 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2103, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2106 : i32 = u_xlati71;
          let x_2108 : f32 = x_247.x_AdditionalShadowParams[x_2106].y;
          u_xlatb51 = (2.0f == x_2108);
          let x_2110 : bool = u_xlatb51;
          if (x_2110) {
            let x_2113 : vec4<f32> = u_xlat8;
            let x_2117 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(x_2117.z, x_2117.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2121 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2121);
            let x_2123 : vec4<f32> = u_xlat8;
            let x_2126 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2129 : vec2<f32> = u_xlat51;
            let x_2131 : vec2<f32> = ((vec2<f32>(x_2123.x, x_2123.y) * vec2<f32>(x_2126.z, x_2126.w)) + -(x_2129));
            let x_2132 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
            let x_2134 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2134.x, x_2134.x, x_2134.y, x_2134.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2137 : vec4<f32> = u_xlat10;
            let x_2139 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2137.x, x_2137.x, x_2137.z, x_2137.z) * vec4<f32>(x_2139.x, x_2139.x, x_2139.z, x_2139.z));
            let x_2143 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2143.y, x_2143.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2146 : vec4<f32> = u_xlat11;
            let x_2149 : vec4<f32> = u_xlat9;
            let x_2152 : vec2<f32> = ((vec2<f32>(x_2146.x, x_2146.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2149.x, x_2149.y)));
            let x_2153 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2152.x, x_2153.y, x_2152.y, x_2153.w);
            let x_2155 : vec4<f32> = u_xlat9;
            let x_2158 : vec2<f32> = (-(vec2<f32>(x_2155.x, x_2155.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2159 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2158.x, x_2158.y, x_2159.z, x_2159.w);
            let x_2162 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2162.x, x_2162.y), vec2<f32>(0.0f, 0.0f));
            let x_2165 : vec2<f32> = u_xlat57;
            let x_2167 : vec2<f32> = u_xlat57;
            let x_2169 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2165) * x_2167) + vec2<f32>(x_2169.x, x_2169.y));
            let x_2172 : vec4<f32> = u_xlat9;
            let x_2174 : vec2<f32> = max(vec2<f32>(x_2172.x, x_2172.y), vec2<f32>(0.0f, 0.0f));
            let x_2175 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2174.x, x_2174.y, x_2175.z, x_2175.w);
            let x_2177 : vec4<f32> = u_xlat9;
            let x_2180 : vec4<f32> = u_xlat9;
            let x_2183 : vec4<f32> = u_xlat10;
            let x_2185 : vec2<f32> = ((-(vec2<f32>(x_2177.x, x_2177.y)) * vec2<f32>(x_2180.x, x_2180.y)) + vec2<f32>(x_2183.y, x_2183.w));
            let x_2186 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
            let x_2188 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2188 + vec2<f32>(1.0f, 1.0f));
            let x_2190 : vec4<f32> = u_xlat9;
            let x_2192 : vec2<f32> = (vec2<f32>(x_2190.x, x_2190.y) + vec2<f32>(1.0f, 1.0f));
            let x_2193 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2192.x, x_2192.y, x_2193.z, x_2193.w);
            let x_2195 : vec4<f32> = u_xlat10;
            let x_2197 : vec2<f32> = (vec2<f32>(x_2195.x, x_2195.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2198 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
            let x_2200 : vec4<f32> = u_xlat11;
            let x_2202 : vec2<f32> = (vec2<f32>(x_2200.x, x_2200.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2203 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
            let x_2205 : vec2<f32> = u_xlat57;
            let x_2206 : vec2<f32> = (x_2205 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2207 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2206.x, x_2206.y, x_2207.z, x_2207.w);
            let x_2209 : vec4<f32> = u_xlat9;
            let x_2211 : vec2<f32> = (vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2212 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
            let x_2214 : vec4<f32> = u_xlat10;
            let x_2216 : vec2<f32> = (vec2<f32>(x_2214.y, x_2214.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2217 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
            let x_2220 : f32 = u_xlat11.x;
            u_xlat12.z = x_2220;
            let x_2223 : f32 = u_xlat9.x;
            u_xlat12.w = x_2223;
            let x_2226 : f32 = u_xlat14.x;
            u_xlat13.z = x_2226;
            let x_2229 : f32 = u_xlat55.x;
            u_xlat13.w = x_2229;
            let x_2231 : vec4<f32> = u_xlat12;
            let x_2233 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2231.z, x_2231.w, x_2231.x, x_2231.z) + vec4<f32>(x_2233.z, x_2233.w, x_2233.x, x_2233.z));
            let x_2237 : f32 = u_xlat12.y;
            u_xlat11.z = x_2237;
            let x_2240 : f32 = u_xlat9.y;
            u_xlat11.w = x_2240;
            let x_2243 : f32 = u_xlat13.y;
            u_xlat14.z = x_2243;
            let x_2246 : f32 = u_xlat55.y;
            u_xlat14.w = x_2246;
            let x_2248 : vec4<f32> = u_xlat11;
            let x_2250 : vec4<f32> = u_xlat14;
            let x_2252 : vec3<f32> = (vec3<f32>(x_2248.z, x_2248.y, x_2248.w) + vec3<f32>(x_2250.z, x_2250.y, x_2250.w));
            let x_2253 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
            let x_2255 : vec4<f32> = u_xlat13;
            let x_2257 : vec4<f32> = u_xlat10;
            let x_2259 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.z, x_2255.w) / vec3<f32>(x_2257.z, x_2257.w, x_2257.y));
            let x_2260 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
            let x_2262 : vec4<f32> = u_xlat11;
            let x_2264 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2265 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
            let x_2267 : vec4<f32> = u_xlat14;
            let x_2269 : vec4<f32> = u_xlat9;
            let x_2271 : vec3<f32> = (vec3<f32>(x_2267.z, x_2267.y, x_2267.w) / vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
            let x_2272 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
            let x_2274 : vec4<f32> = u_xlat12;
            let x_2276 : vec3<f32> = (vec3<f32>(x_2274.x, x_2274.y, x_2274.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2277 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
            let x_2279 : vec4<f32> = u_xlat11;
            let x_2282 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2284 : vec3<f32> = (vec3<f32>(x_2279.y, x_2279.x, x_2279.z) * vec3<f32>(x_2282.x, x_2282.x, x_2282.x));
            let x_2285 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
            let x_2287 : vec4<f32> = u_xlat12;
            let x_2290 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2292 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.y, x_2287.z) * vec3<f32>(x_2290.y, x_2290.y, x_2290.y));
            let x_2293 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
            let x_2296 : f32 = u_xlat12.x;
            u_xlat11.w = x_2296;
            let x_2298 : vec2<f32> = u_xlat51;
            let x_2301 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2304 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2298.x, x_2298.y, x_2298.x, x_2298.y) * vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y)) + vec4<f32>(x_2304.y, x_2304.w, x_2304.x, x_2304.w));
            let x_2307 : vec2<f32> = u_xlat51;
            let x_2309 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2312 : vec4<f32> = u_xlat11;
            let x_2314 : vec2<f32> = ((x_2307 * vec2<f32>(x_2309.x, x_2309.y)) + vec2<f32>(x_2312.z, x_2312.w));
            let x_2315 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2314.x, x_2314.y, x_2315.z, x_2315.w);
            let x_2318 : f32 = u_xlat11.y;
            u_xlat12.w = x_2318;
            let x_2320 : vec4<f32> = u_xlat12;
            let x_2321 : vec2<f32> = vec2<f32>(x_2320.y, x_2320.z);
            let x_2322 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2322.x, x_2321.x, x_2322.z, x_2321.y);
            let x_2324 : vec2<f32> = u_xlat51;
            let x_2327 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2330 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y) * vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y)) + vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2330.y));
            let x_2333 : vec2<f32> = u_xlat51;
            let x_2336 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2339 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) * vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y)) + vec4<f32>(x_2339.w, x_2339.y, x_2339.w, x_2339.z));
            let x_2342 : vec2<f32> = u_xlat51;
            let x_2345 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2348 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2342.x, x_2342.y, x_2342.x, x_2342.y) * vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y)) + vec4<f32>(x_2348.x, x_2348.w, x_2348.z, x_2348.w));
            let x_2351 : vec4<f32> = u_xlat9;
            let x_2353 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2351.x, x_2351.x, x_2351.x, x_2351.y) * vec4<f32>(x_2353.z, x_2353.w, x_2353.y, x_2353.z));
            let x_2356 : vec4<f32> = u_xlat9;
            let x_2358 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2356.y, x_2356.y, x_2356.z, x_2356.z) * x_2358);
            let x_2361 : f32 = u_xlat9.z;
            let x_2363 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2361 * x_2363);
            let x_2367 : vec4<f32> = u_xlat13;
            let x_2368 : vec2<f32> = vec2<f32>(x_2367.x, x_2367.y);
            let x_2370 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2368.x, x_2368.y, x_2370);
            let x_2377 : vec3<f32> = txVec34;
            let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
            u_xlat74 = x_2379;
            let x_2381 : vec4<f32> = u_xlat13;
            let x_2382 : vec2<f32> = vec2<f32>(x_2381.z, x_2381.w);
            let x_2384 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
            let x_2392 : vec3<f32> = txVec35;
            let x_2394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2392.xy, x_2392.z);
            u_xlat75 = x_2394;
            let x_2395 : f32 = u_xlat75;
            let x_2397 : f32 = u_xlat16.y;
            u_xlat75 = (x_2395 * x_2397);
            let x_2400 : f32 = u_xlat16.x;
            let x_2401 : f32 = u_xlat74;
            let x_2403 : f32 = u_xlat75;
            u_xlat74 = ((x_2400 * x_2401) + x_2403);
            let x_2406 : vec4<f32> = u_xlat14;
            let x_2407 : vec2<f32> = vec2<f32>(x_2406.x, x_2406.y);
            let x_2409 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2407.x, x_2407.y, x_2409);
            let x_2416 : vec3<f32> = txVec36;
            let x_2418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2416.xy, x_2416.z);
            u_xlat75 = x_2418;
            let x_2420 : f32 = u_xlat16.z;
            let x_2421 : f32 = u_xlat75;
            let x_2423 : f32 = u_xlat74;
            u_xlat74 = ((x_2420 * x_2421) + x_2423);
            let x_2426 : vec4<f32> = u_xlat12;
            let x_2427 : vec2<f32> = vec2<f32>(x_2426.x, x_2426.y);
            let x_2429 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2427.x, x_2427.y, x_2429);
            let x_2436 : vec3<f32> = txVec37;
            let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
            u_xlat75 = x_2438;
            let x_2440 : f32 = u_xlat16.w;
            let x_2441 : f32 = u_xlat75;
            let x_2443 : f32 = u_xlat74;
            u_xlat74 = ((x_2440 * x_2441) + x_2443);
            let x_2446 : vec4<f32> = u_xlat15;
            let x_2447 : vec2<f32> = vec2<f32>(x_2446.x, x_2446.y);
            let x_2449 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
            let x_2456 : vec3<f32> = txVec38;
            let x_2458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
            u_xlat75 = x_2458;
            let x_2460 : f32 = u_xlat17.x;
            let x_2461 : f32 = u_xlat75;
            let x_2463 : f32 = u_xlat74;
            u_xlat74 = ((x_2460 * x_2461) + x_2463);
            let x_2466 : vec4<f32> = u_xlat15;
            let x_2467 : vec2<f32> = vec2<f32>(x_2466.z, x_2466.w);
            let x_2469 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2467.x, x_2467.y, x_2469);
            let x_2476 : vec3<f32> = txVec39;
            let x_2478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2476.xy, x_2476.z);
            u_xlat75 = x_2478;
            let x_2480 : f32 = u_xlat17.y;
            let x_2481 : f32 = u_xlat75;
            let x_2483 : f32 = u_xlat74;
            u_xlat74 = ((x_2480 * x_2481) + x_2483);
            let x_2486 : vec4<f32> = u_xlat12;
            let x_2487 : vec2<f32> = vec2<f32>(x_2486.z, x_2486.w);
            let x_2489 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2487.x, x_2487.y, x_2489);
            let x_2496 : vec3<f32> = txVec40;
            let x_2498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2496.xy, x_2496.z);
            u_xlat75 = x_2498;
            let x_2500 : f32 = u_xlat17.z;
            let x_2501 : f32 = u_xlat75;
            let x_2503 : f32 = u_xlat74;
            u_xlat74 = ((x_2500 * x_2501) + x_2503);
            let x_2506 : vec4<f32> = u_xlat11;
            let x_2507 : vec2<f32> = vec2<f32>(x_2506.x, x_2506.y);
            let x_2509 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2507.x, x_2507.y, x_2509);
            let x_2516 : vec3<f32> = txVec41;
            let x_2518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2516.xy, x_2516.z);
            u_xlat75 = x_2518;
            let x_2520 : f32 = u_xlat17.w;
            let x_2521 : f32 = u_xlat75;
            let x_2523 : f32 = u_xlat74;
            u_xlat74 = ((x_2520 * x_2521) + x_2523);
            let x_2526 : vec4<f32> = u_xlat11;
            let x_2527 : vec2<f32> = vec2<f32>(x_2526.z, x_2526.w);
            let x_2529 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2527.x, x_2527.y, x_2529);
            let x_2536 : vec3<f32> = txVec42;
            let x_2538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2536.xy, x_2536.z);
            u_xlat75 = x_2538;
            let x_2540 : f32 = u_xlat51.x;
            let x_2541 : f32 = u_xlat75;
            let x_2543 : f32 = u_xlat74;
            u_xlat73 = ((x_2540 * x_2541) + x_2543);
          } else {
            let x_2546 : vec4<f32> = u_xlat8;
            let x_2549 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(x_2549.z, x_2549.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2553 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2553);
            let x_2555 : vec4<f32> = u_xlat8;
            let x_2558 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2561 : vec2<f32> = u_xlat51;
            let x_2563 : vec2<f32> = ((vec2<f32>(x_2555.x, x_2555.y) * vec2<f32>(x_2558.z, x_2558.w)) + -(x_2561));
            let x_2564 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2566.x, x_2566.x, x_2566.y, x_2566.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2569 : vec4<f32> = u_xlat10;
            let x_2571 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2569.x, x_2569.x, x_2569.z, x_2569.z) * vec4<f32>(x_2571.x, x_2571.x, x_2571.z, x_2571.z));
            let x_2574 : vec4<f32> = u_xlat11;
            let x_2576 : vec2<f32> = (vec2<f32>(x_2574.y, x_2574.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2577 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2577.x, x_2576.x, x_2577.z, x_2576.y);
            let x_2579 : vec4<f32> = u_xlat11;
            let x_2582 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2579.x, x_2579.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2582.x, x_2582.y)));
            let x_2586 : vec4<f32> = u_xlat9;
            let x_2589 : vec2<f32> = (-(vec2<f32>(x_2586.x, x_2586.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2590 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2589.x, x_2590.y, x_2589.y, x_2590.w);
            let x_2592 : vec4<f32> = u_xlat9;
            let x_2594 : vec2<f32> = min(vec2<f32>(x_2592.x, x_2592.y), vec2<f32>(0.0f, 0.0f));
            let x_2595 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
            let x_2597 : vec4<f32> = u_xlat11;
            let x_2600 : vec4<f32> = u_xlat11;
            let x_2603 : vec4<f32> = u_xlat10;
            let x_2605 : vec2<f32> = ((-(vec2<f32>(x_2597.x, x_2597.y)) * vec2<f32>(x_2600.x, x_2600.y)) + vec2<f32>(x_2603.x, x_2603.z));
            let x_2606 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2605.x, x_2606.y, x_2605.y, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat9;
            let x_2610 : vec2<f32> = max(vec2<f32>(x_2608.x, x_2608.y), vec2<f32>(0.0f, 0.0f));
            let x_2611 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat11;
            let x_2616 : vec4<f32> = u_xlat11;
            let x_2619 : vec4<f32> = u_xlat10;
            let x_2621 : vec2<f32> = ((-(vec2<f32>(x_2613.x, x_2613.y)) * vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(x_2619.y, x_2619.w));
            let x_2622 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2622.x, x_2621.x, x_2622.z, x_2621.y);
            let x_2624 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2624 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2628 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2628 * 0.08163200318813323975f);
            let x_2631 : vec2<f32> = u_xlat55;
            let x_2633 : vec2<f32> = (vec2<f32>(x_2631.y, x_2631.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2634 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2633.x, x_2633.y, x_2634.z, x_2634.w);
            let x_2636 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2636.x, x_2636.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2640 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2640 * 0.08163200318813323975f);
            let x_2644 : f32 = u_xlat13.y;
            u_xlat11.x = x_2644;
            let x_2646 : vec4<f32> = u_xlat9;
            let x_2649 : vec2<f32> = ((vec2<f32>(x_2646.x, x_2646.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2650 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2650.x, x_2649.x, x_2650.z, x_2649.y);
            let x_2652 : vec4<f32> = u_xlat9;
            let x_2655 : vec2<f32> = ((vec2<f32>(x_2652.x, x_2652.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2656 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2655.x, x_2656.y, x_2655.y, x_2656.w);
            let x_2659 : f32 = u_xlat55.x;
            u_xlat10.y = x_2659;
            let x_2662 : f32 = u_xlat12.y;
            u_xlat10.w = x_2662;
            let x_2664 : vec4<f32> = u_xlat10;
            let x_2665 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2664 + x_2665);
            let x_2667 : vec4<f32> = u_xlat9;
            let x_2670 : vec2<f32> = ((vec2<f32>(x_2667.y, x_2667.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2671 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2671.x, x_2670.x, x_2671.z, x_2670.y);
            let x_2673 : vec4<f32> = u_xlat9;
            let x_2676 : vec2<f32> = ((vec2<f32>(x_2673.y, x_2673.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2677 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2676.x, x_2677.y, x_2676.y, x_2677.w);
            let x_2680 : f32 = u_xlat55.y;
            u_xlat12.y = x_2680;
            let x_2682 : vec4<f32> = u_xlat12;
            let x_2683 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2682 + x_2683);
            let x_2685 : vec4<f32> = u_xlat10;
            let x_2686 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2685 / x_2686);
            let x_2688 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2688 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2690 : vec4<f32> = u_xlat12;
            let x_2691 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2690 / x_2691);
            let x_2693 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2695 : vec4<f32> = u_xlat10;
            let x_2698 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2695.w, x_2695.x, x_2695.y, x_2695.z) * vec4<f32>(x_2698.x, x_2698.x, x_2698.x, x_2698.x));
            let x_2701 : vec4<f32> = u_xlat12;
            let x_2704 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2701.x, x_2701.w, x_2701.y, x_2701.z) * vec4<f32>(x_2704.y, x_2704.y, x_2704.y, x_2704.y));
            let x_2707 : vec4<f32> = u_xlat10;
            let x_2708 : vec3<f32> = vec3<f32>(x_2707.y, x_2707.z, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2708.x, x_2709.y, x_2708.y, x_2708.z);
            let x_2712 : f32 = u_xlat12.x;
            u_xlat13.y = x_2712;
            let x_2714 : vec2<f32> = u_xlat51;
            let x_2717 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2720 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2714.x, x_2714.y, x_2714.x, x_2714.y) * vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y)) + vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2720.y));
            let x_2723 : vec2<f32> = u_xlat51;
            let x_2725 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2728 : vec4<f32> = u_xlat13;
            let x_2730 : vec2<f32> = ((x_2723 * vec2<f32>(x_2725.x, x_2725.y)) + vec2<f32>(x_2728.w, x_2728.y));
            let x_2731 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2730.x, x_2730.y, x_2731.z, x_2731.w);
            let x_2734 : f32 = u_xlat13.y;
            u_xlat10.y = x_2734;
            let x_2737 : f32 = u_xlat12.z;
            u_xlat13.y = x_2737;
            let x_2739 : vec2<f32> = u_xlat51;
            let x_2742 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2745 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2739.x, x_2739.y, x_2739.x, x_2739.y) * vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y)) + vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2745.y));
            let x_2749 : vec2<f32> = u_xlat51;
            let x_2751 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2754 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2749 * vec2<f32>(x_2751.x, x_2751.y)) + vec2<f32>(x_2754.w, x_2754.y));
            let x_2758 : f32 = u_xlat13.y;
            u_xlat10.z = x_2758;
            let x_2760 : vec2<f32> = u_xlat51;
            let x_2763 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2766 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y) * vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y)) + vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.z));
            let x_2770 : f32 = u_xlat12.w;
            u_xlat13.y = x_2770;
            let x_2773 : vec2<f32> = u_xlat51;
            let x_2776 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2779 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
            let x_2783 : vec2<f32> = u_xlat51;
            let x_2785 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2783 * vec2<f32>(x_2785.x, x_2785.y)) + vec2<f32>(x_2788.w, x_2788.y));
            let x_2792 : f32 = u_xlat13.y;
            u_xlat10.w = x_2792;
            let x_2795 : vec2<f32> = u_xlat51;
            let x_2797 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2800 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2795 * vec2<f32>(x_2797.x, x_2797.y)) + vec2<f32>(x_2800.x, x_2800.w));
            let x_2803 : vec4<f32> = u_xlat13;
            let x_2804 : vec3<f32> = vec3<f32>(x_2803.x, x_2803.z, x_2803.w);
            let x_2805 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2804.x, x_2805.y, x_2804.y, x_2804.z);
            let x_2807 : vec2<f32> = u_xlat51;
            let x_2810 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2813 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2807.x, x_2807.y, x_2807.x, x_2807.y) * vec4<f32>(x_2810.x, x_2810.y, x_2810.x, x_2810.y)) + vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2813.y));
            let x_2816 : vec2<f32> = u_xlat51;
            let x_2818 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2816 * vec2<f32>(x_2818.x, x_2818.y)) + vec2<f32>(x_2821.w, x_2821.y));
            let x_2825 : f32 = u_xlat10.x;
            u_xlat12.x = x_2825;
            let x_2827 : vec2<f32> = u_xlat51;
            let x_2829 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2827 * vec2<f32>(x_2829.x, x_2829.y)) + vec2<f32>(x_2832.x, x_2832.y));
            let x_2836 : vec4<f32> = u_xlat9;
            let x_2838 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2836.x, x_2836.x, x_2836.x, x_2836.x) * x_2838);
            let x_2841 : vec4<f32> = u_xlat9;
            let x_2843 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2841.y, x_2841.y, x_2841.y, x_2841.y) * x_2843);
            let x_2846 : vec4<f32> = u_xlat9;
            let x_2848 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2846.z, x_2846.z, x_2846.z, x_2846.z) * x_2848);
            let x_2850 : vec4<f32> = u_xlat9;
            let x_2852 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2850.w, x_2850.w, x_2850.w, x_2850.w) * x_2852);
            let x_2855 : vec4<f32> = u_xlat14;
            let x_2856 : vec2<f32> = vec2<f32>(x_2855.x, x_2855.y);
            let x_2858 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2856.x, x_2856.y, x_2858);
            let x_2865 : vec3<f32> = txVec43;
            let x_2867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2865.xy, x_2865.z);
            u_xlat75 = x_2867;
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = vec2<f32>(x_2869.z, x_2869.w);
            let x_2872 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2870.x, x_2870.y, x_2872);
            let x_2880 : vec3<f32> = txVec44;
            let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
            u_xlat76 = x_2882;
            let x_2883 : f32 = u_xlat76;
            let x_2885 : f32 = u_xlat20.y;
            u_xlat76 = (x_2883 * x_2885);
            let x_2888 : f32 = u_xlat20.x;
            let x_2889 : f32 = u_xlat75;
            let x_2891 : f32 = u_xlat76;
            u_xlat75 = ((x_2888 * x_2889) + x_2891);
            let x_2894 : vec4<f32> = u_xlat15;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
            let x_2897 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec45;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat76 = x_2906;
            let x_2908 : f32 = u_xlat20.z;
            let x_2909 : f32 = u_xlat76;
            let x_2911 : f32 = u_xlat75;
            u_xlat75 = ((x_2908 * x_2909) + x_2911);
            let x_2914 : vec4<f32> = u_xlat17;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.x, x_2914.y);
            let x_2917 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec46;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat76 = x_2926;
            let x_2928 : f32 = u_xlat20.w;
            let x_2929 : f32 = u_xlat76;
            let x_2931 : f32 = u_xlat75;
            u_xlat75 = ((x_2928 * x_2929) + x_2931);
            let x_2934 : vec4<f32> = u_xlat16;
            let x_2935 : vec2<f32> = vec2<f32>(x_2934.x, x_2934.y);
            let x_2937 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
            let x_2944 : vec3<f32> = txVec47;
            let x_2946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
            u_xlat76 = x_2946;
            let x_2948 : f32 = u_xlat21.x;
            let x_2949 : f32 = u_xlat76;
            let x_2951 : f32 = u_xlat75;
            u_xlat75 = ((x_2948 * x_2949) + x_2951);
            let x_2954 : vec4<f32> = u_xlat16;
            let x_2955 : vec2<f32> = vec2<f32>(x_2954.z, x_2954.w);
            let x_2957 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
            let x_2964 : vec3<f32> = txVec48;
            let x_2966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
            u_xlat76 = x_2966;
            let x_2968 : f32 = u_xlat21.y;
            let x_2969 : f32 = u_xlat76;
            let x_2971 : f32 = u_xlat75;
            u_xlat75 = ((x_2968 * x_2969) + x_2971);
            let x_2974 : vec2<f32> = u_xlat61;
            let x_2976 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
            let x_2983 : vec3<f32> = txVec49;
            let x_2985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
            u_xlat76 = x_2985;
            let x_2987 : f32 = u_xlat21.z;
            let x_2988 : f32 = u_xlat76;
            let x_2990 : f32 = u_xlat75;
            u_xlat75 = ((x_2987 * x_2988) + x_2990);
            let x_2993 : vec4<f32> = u_xlat17;
            let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
            let x_2996 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
            let x_3003 : vec3<f32> = txVec50;
            let x_3005 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
            u_xlat76 = x_3005;
            let x_3007 : f32 = u_xlat21.w;
            let x_3008 : f32 = u_xlat76;
            let x_3010 : f32 = u_xlat75;
            u_xlat75 = ((x_3007 * x_3008) + x_3010);
            let x_3013 : vec4<f32> = u_xlat18;
            let x_3014 : vec2<f32> = vec2<f32>(x_3013.x, x_3013.y);
            let x_3016 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3014.x, x_3014.y, x_3016);
            let x_3023 : vec3<f32> = txVec51;
            let x_3025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3023.xy, x_3023.z);
            u_xlat76 = x_3025;
            let x_3027 : f32 = u_xlat22.x;
            let x_3028 : f32 = u_xlat76;
            let x_3030 : f32 = u_xlat75;
            u_xlat75 = ((x_3027 * x_3028) + x_3030);
            let x_3033 : vec4<f32> = u_xlat18;
            let x_3034 : vec2<f32> = vec2<f32>(x_3033.z, x_3033.w);
            let x_3036 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
            let x_3043 : vec3<f32> = txVec52;
            let x_3045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
            u_xlat76 = x_3045;
            let x_3047 : f32 = u_xlat22.y;
            let x_3048 : f32 = u_xlat76;
            let x_3050 : f32 = u_xlat75;
            u_xlat75 = ((x_3047 * x_3048) + x_3050);
            let x_3053 : vec2<f32> = u_xlat33;
            let x_3055 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3062 : vec3<f32> = txVec53;
            let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
            u_xlat76 = x_3064;
            let x_3066 : f32 = u_xlat22.z;
            let x_3067 : f32 = u_xlat76;
            let x_3069 : f32 = u_xlat75;
            u_xlat75 = ((x_3066 * x_3067) + x_3069);
            let x_3072 : vec2<f32> = u_xlat19;
            let x_3074 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec54;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat76 = x_3083;
            let x_3085 : f32 = u_xlat22.w;
            let x_3086 : f32 = u_xlat76;
            let x_3088 : f32 = u_xlat75;
            u_xlat75 = ((x_3085 * x_3086) + x_3088);
            let x_3091 : vec4<f32> = u_xlat13;
            let x_3092 : vec2<f32> = vec2<f32>(x_3091.x, x_3091.y);
            let x_3094 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3092.x, x_3092.y, x_3094);
            let x_3101 : vec3<f32> = txVec55;
            let x_3103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3101.xy, x_3101.z);
            u_xlat76 = x_3103;
            let x_3105 : f32 = u_xlat9.x;
            let x_3106 : f32 = u_xlat76;
            let x_3108 : f32 = u_xlat75;
            u_xlat75 = ((x_3105 * x_3106) + x_3108);
            let x_3111 : vec4<f32> = u_xlat13;
            let x_3112 : vec2<f32> = vec2<f32>(x_3111.z, x_3111.w);
            let x_3114 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3112.x, x_3112.y, x_3114);
            let x_3121 : vec3<f32> = txVec56;
            let x_3123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3121.xy, x_3121.z);
            u_xlat76 = x_3123;
            let x_3125 : f32 = u_xlat9.y;
            let x_3126 : f32 = u_xlat76;
            let x_3128 : f32 = u_xlat75;
            u_xlat75 = ((x_3125 * x_3126) + x_3128);
            let x_3131 : vec2<f32> = u_xlat58;
            let x_3133 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec57;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat76 = x_3142;
            let x_3144 : f32 = u_xlat9.z;
            let x_3145 : f32 = u_xlat76;
            let x_3147 : f32 = u_xlat75;
            u_xlat75 = ((x_3144 * x_3145) + x_3147);
            let x_3150 : vec2<f32> = u_xlat51;
            let x_3152 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec58;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat51.x = x_3161;
            let x_3164 : f32 = u_xlat9.w;
            let x_3166 : f32 = u_xlat51.x;
            let x_3168 : f32 = u_xlat75;
            u_xlat73 = ((x_3164 * x_3166) + x_3168);
          }
        }
      } else {
        let x_3172 : vec4<f32> = u_xlat8;
        let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
        let x_3175 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
        let x_3182 : vec3<f32> = txVec59;
        let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
        u_xlat73 = x_3184;
      }
      let x_3185 : i32 = u_xlati71;
      let x_3187 : f32 = x_247.x_AdditionalShadowParams[x_3185].x;
      u_xlat51.x = (1.0f + -(x_3187));
      let x_3191 : f32 = u_xlat73;
      let x_3192 : i32 = u_xlati71;
      let x_3194 : f32 = x_247.x_AdditionalShadowParams[x_3192].x;
      let x_3197 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3191 * x_3194) + x_3197);
      let x_3200 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3200);
      let x_3204 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3204 >= 1.0f);
      let x_3206 : bool = u_xlatb74;
      let x_3207 : bool = u_xlatb51;
      u_xlatb51 = (x_3206 | x_3207);
      let x_3209 : bool = u_xlatb51;
      let x_3210 : f32 = u_xlat73;
      u_xlat73 = select(x_3210, 1.0f, x_3209);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3213 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3213) + 1.0f);
    let x_3217 : f32 = u_xlat69;
    let x_3219 : f32 = u_xlat51.x;
    let x_3221 : f32 = u_xlat73;
    u_xlat73 = ((x_3217 * x_3219) + x_3221);
    let x_3224 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3224 & 31i)));
    let x_3228 : i32 = u_xlati51;
    let x_3231 : f32 = x_1536.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3228) & bitcast<u32>(x_3231)));
    let x_3235 : i32 = u_xlati51;
    if ((x_3235 != 0i)) {
      let x_3239 : i32 = u_xlati71;
      let x_3241 : f32 = x_1536.x_AdditionalLightsLightTypes[x_3239].el;
      u_xlati51 = i32(x_3241);
      let x_3244 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3244 != 0i));
      let x_3248 : i32 = u_xlati71;
      u_xlati75 = (x_3248 << bitcast<u32>(2i));
      let x_3250 : i32 = u_xlati74;
      if ((x_3250 != 0i)) {
        let x_3254 : vec4<f32> = vs_TEXCOORD2;
        let x_3256 : i32 = u_xlati75;
        let x_3259 : i32 = u_xlati75;
        let x_3263 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3256 + 1i) / 4i)][((x_3259 + 1i) % 4i)];
        let x_3265 : vec3<f32> = (vec3<f32>(x_3254.y, x_3254.y, x_3254.y) * vec3<f32>(x_3263.x, x_3263.y, x_3263.w));
        let x_3266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
        let x_3268 : i32 = u_xlati75;
        let x_3270 : i32 = u_xlati75;
        let x_3273 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3268 / 4i)][(x_3270 % 4i)];
        let x_3275 : vec4<f32> = vs_TEXCOORD2;
        let x_3278 : vec4<f32> = u_xlat8;
        let x_3280 : vec3<f32> = ((vec3<f32>(x_3273.x, x_3273.y, x_3273.w) * vec3<f32>(x_3275.x, x_3275.x, x_3275.x)) + vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
        let x_3281 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
        let x_3283 : i32 = u_xlati75;
        let x_3286 : i32 = u_xlati75;
        let x_3290 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3283 + 2i) / 4i)][((x_3286 + 2i) % 4i)];
        let x_3292 : vec4<f32> = vs_TEXCOORD2;
        let x_3295 : vec4<f32> = u_xlat8;
        let x_3297 : vec3<f32> = ((vec3<f32>(x_3290.x, x_3290.y, x_3290.w) * vec3<f32>(x_3292.z, x_3292.z, x_3292.z)) + vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
        let x_3298 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
        let x_3300 : vec4<f32> = u_xlat8;
        let x_3302 : i32 = u_xlati75;
        let x_3305 : i32 = u_xlati75;
        let x_3309 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3302 + 3i) / 4i)][((x_3305 + 3i) % 4i)];
        let x_3311 : vec3<f32> = (vec3<f32>(x_3300.x, x_3300.y, x_3300.z) + vec3<f32>(x_3309.x, x_3309.y, x_3309.w));
        let x_3312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
        let x_3314 : vec4<f32> = u_xlat8;
        let x_3316 : vec4<f32> = u_xlat8;
        let x_3318 : vec2<f32> = (vec2<f32>(x_3314.x, x_3314.y) / vec2<f32>(x_3316.z, x_3316.z));
        let x_3319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3318.x, x_3318.y, x_3319.z, x_3319.w);
        let x_3321 : vec4<f32> = u_xlat8;
        let x_3324 : vec2<f32> = ((vec2<f32>(x_3321.x, x_3321.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3325 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3324.x, x_3324.y, x_3325.z, x_3325.w);
        let x_3327 : vec4<f32> = u_xlat8;
        let x_3331 : vec2<f32> = clamp(vec2<f32>(x_3327.x, x_3327.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3331.x, x_3331.y, x_3332.z, x_3332.w);
        let x_3334 : i32 = u_xlati71;
        let x_3336 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3334];
        let x_3338 : vec4<f32> = u_xlat8;
        let x_3341 : i32 = u_xlati71;
        let x_3343 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3341];
        let x_3345 : vec2<f32> = ((vec2<f32>(x_3336.x, x_3336.y) * vec2<f32>(x_3338.x, x_3338.y)) + vec2<f32>(x_3343.z, x_3343.w));
        let x_3346 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
      } else {
        let x_3349 : i32 = u_xlati51;
        u_xlatb51 = (x_3349 == 1i);
        let x_3351 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3351);
        let x_3353 : i32 = u_xlati51;
        if ((x_3353 != 0i)) {
          let x_3357 : vec4<f32> = vs_TEXCOORD2;
          let x_3359 : i32 = u_xlati75;
          let x_3362 : i32 = u_xlati75;
          let x_3366 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3359 + 1i) / 4i)][((x_3362 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3357.y, x_3357.y) * vec2<f32>(x_3366.x, x_3366.y));
          let x_3369 : i32 = u_xlati75;
          let x_3371 : i32 = u_xlati75;
          let x_3374 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3369 / 4i)][(x_3371 % 4i)];
          let x_3376 : vec4<f32> = vs_TEXCOORD2;
          let x_3379 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(x_3376.x, x_3376.x)) + x_3379);
          let x_3381 : i32 = u_xlati75;
          let x_3384 : i32 = u_xlati75;
          let x_3388 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3381 + 2i) / 4i)][((x_3384 + 2i) % 4i)];
          let x_3390 : vec4<f32> = vs_TEXCOORD2;
          let x_3393 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3388.x, x_3388.y) * vec2<f32>(x_3390.z, x_3390.z)) + x_3393);
          let x_3395 : vec2<f32> = u_xlat51;
          let x_3396 : i32 = u_xlati75;
          let x_3399 : i32 = u_xlati75;
          let x_3403 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3396 + 3i) / 4i)][((x_3399 + 3i) % 4i)];
          u_xlat51 = (x_3395 + vec2<f32>(x_3403.x, x_3403.y));
          let x_3406 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3406 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3409 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3409);
          let x_3411 : i32 = u_xlati71;
          let x_3413 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3411];
          let x_3415 : vec2<f32> = u_xlat51;
          let x_3417 : i32 = u_xlati71;
          let x_3419 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3417];
          let x_3421 : vec2<f32> = ((vec2<f32>(x_3413.x, x_3413.y) * x_3415) + vec2<f32>(x_3419.z, x_3419.w));
          let x_3422 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3421.x, x_3421.y, x_3422.z, x_3422.w);
        } else {
          let x_3425 : vec4<f32> = vs_TEXCOORD2;
          let x_3427 : i32 = u_xlati75;
          let x_3430 : i32 = u_xlati75;
          let x_3434 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3427 + 1i) / 4i)][((x_3430 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3425.y, x_3425.y, x_3425.y, x_3425.y) * x_3434);
          let x_3436 : i32 = u_xlati75;
          let x_3438 : i32 = u_xlati75;
          let x_3441 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3436 / 4i)][(x_3438 % 4i)];
          let x_3442 : vec4<f32> = vs_TEXCOORD2;
          let x_3445 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3441 * vec4<f32>(x_3442.x, x_3442.x, x_3442.x, x_3442.x)) + x_3445);
          let x_3447 : i32 = u_xlati75;
          let x_3450 : i32 = u_xlati75;
          let x_3454 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3447 + 2i) / 4i)][((x_3450 + 2i) % 4i)];
          let x_3455 : vec4<f32> = vs_TEXCOORD2;
          let x_3458 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3454 * vec4<f32>(x_3455.z, x_3455.z, x_3455.z, x_3455.z)) + x_3458);
          let x_3460 : vec4<f32> = u_xlat9;
          let x_3461 : i32 = u_xlati75;
          let x_3464 : i32 = u_xlati75;
          let x_3468 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3461 + 3i) / 4i)][((x_3464 + 3i) % 4i)];
          u_xlat9 = (x_3460 + x_3468);
          let x_3470 : vec4<f32> = u_xlat9;
          let x_3472 : vec4<f32> = u_xlat9;
          let x_3474 : vec3<f32> = (vec3<f32>(x_3470.x, x_3470.y, x_3470.z) / vec3<f32>(x_3472.w, x_3472.w, x_3472.w));
          let x_3475 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3474.x, x_3474.y, x_3474.z, x_3475.w);
          let x_3477 : vec4<f32> = u_xlat9;
          let x_3479 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3477.x, x_3477.y, x_3477.z), vec3<f32>(x_3479.x, x_3479.y, x_3479.z));
          let x_3484 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3484);
          let x_3487 : vec2<f32> = u_xlat51;
          let x_3489 : vec4<f32> = u_xlat9;
          let x_3491 : vec3<f32> = (vec3<f32>(x_3487.x, x_3487.x, x_3487.x) * vec3<f32>(x_3489.x, x_3489.y, x_3489.z));
          let x_3492 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3492.w);
          let x_3494 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3494.x, x_3494.y, x_3494.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3501 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3501, 0.00000099999999747524f);
          let x_3506 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3506);
          let x_3509 : vec2<f32> = u_xlat51;
          let x_3511 : vec4<f32> = u_xlat9;
          let x_3513 : vec3<f32> = (vec3<f32>(x_3509.x, x_3509.x, x_3509.x) * vec3<f32>(x_3511.z, x_3511.x, x_3511.y));
          let x_3514 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3513.x, x_3513.y, x_3513.z, x_3514.w);
          let x_3517 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3517);
          let x_3521 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3521, 0.0f, 1.0f);
          let x_3525 : vec4<f32> = u_xlat10;
          let x_3527 : vec4<bool> = (vec4<f32>(x_3525.y, x_3525.z, x_3525.y, x_3525.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3527.x, x_3527.y);
          let x_3531 : bool = u_xlatb54.x;
          if (x_3531) {
            let x_3536 : f32 = u_xlat10.x;
            x_3532 = x_3536;
          } else {
            let x_3539 : f32 = u_xlat10.x;
            x_3532 = -(x_3539);
          }
          let x_3541 : f32 = x_3532;
          u_xlat54.x = x_3541;
          let x_3544 : bool = u_xlatb54.y;
          if (x_3544) {
            let x_3549 : f32 = u_xlat10.x;
            x_3545 = x_3549;
          } else {
            let x_3552 : f32 = u_xlat10.x;
            x_3545 = -(x_3552);
          }
          let x_3554 : f32 = x_3545;
          u_xlat54.y = x_3554;
          let x_3556 : vec4<f32> = u_xlat9;
          let x_3558 : vec2<f32> = u_xlat51;
          let x_3561 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3556.x, x_3556.y) * vec2<f32>(x_3558.x, x_3558.x)) + x_3561);
          let x_3563 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3563 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3566 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3566, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3570 : i32 = u_xlati71;
          let x_3572 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3570];
          let x_3574 : vec2<f32> = u_xlat51;
          let x_3576 : i32 = u_xlati71;
          let x_3578 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3576];
          let x_3580 : vec2<f32> = ((vec2<f32>(x_3572.x, x_3572.y) * x_3574) + vec2<f32>(x_3578.z, x_3578.w));
          let x_3581 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3580.x, x_3580.y, x_3581.z, x_3581.w);
        }
      }
      let x_3588 : vec4<f32> = u_xlat8;
      let x_3590 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3588.x, x_3588.y), 0.0f);
      u_xlat8 = x_3590;
      let x_3592 : bool = u_xlatb5.y;
      if (x_3592) {
        let x_3597 : f32 = u_xlat8.w;
        x_3593 = x_3597;
      } else {
        let x_3600 : f32 = u_xlat8.x;
        x_3593 = x_3600;
      }
      let x_3601 : f32 = x_3593;
      u_xlat51.x = x_3601;
      let x_3604 : bool = u_xlatb5.x;
      if (x_3604) {
        let x_3608 : vec4<f32> = u_xlat8;
        x_3605 = vec3<f32>(x_3608.x, x_3608.y, x_3608.z);
      } else {
        let x_3611 : vec2<f32> = u_xlat51;
        x_3605 = vec3<f32>(x_3611.x, x_3611.x, x_3611.x);
      }
      let x_3613 : vec3<f32> = x_3605;
      let x_3614 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3620 : vec4<f32> = u_xlat8;
    let x_3622 : i32 = u_xlati71;
    let x_3624 : vec4<f32> = x_1789.x_AdditionalLightsColor[x_3622];
    let x_3626 : vec3<f32> = (vec3<f32>(x_3620.x, x_3620.y, x_3620.z) * vec3<f32>(x_3624.x, x_3624.y, x_3624.z));
    let x_3627 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3626.x, x_3626.y, x_3626.z, x_3627.w);
    let x_3629 : f32 = u_xlat72;
    let x_3630 : f32 = u_xlat73;
    u_xlat71 = (x_3629 * x_3630);
    let x_3632 : f32 = u_xlat71;
    let x_3634 : vec4<f32> = u_xlat8;
    let x_3636 : vec3<f32> = (vec3<f32>(x_3632, x_3632, x_3632) * vec3<f32>(x_3634.x, x_3634.y, x_3634.z));
    let x_3637 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
    let x_3639 : vec4<f32> = u_xlat2;
    let x_3641 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3639.x, x_3639.y, x_3639.z), vec3<f32>(x_3641.x, x_3641.y, x_3641.z));
    let x_3644 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3644, 0.0f, 1.0f);
    let x_3646 : f32 = u_xlat71;
    let x_3648 : vec4<f32> = u_xlat8;
    let x_3650 : vec3<f32> = (vec3<f32>(x_3646, x_3646, x_3646) * vec3<f32>(x_3648.x, x_3648.y, x_3648.z));
    let x_3651 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3650.x, x_3650.y, x_3650.z, x_3651.w);
    let x_3653 : vec4<f32> = u_xlat7;
    let x_3655 : vec4<f32> = u_xlat1;
    let x_3658 : vec4<f32> = u_xlat6;
    let x_3660 : vec3<f32> = ((vec3<f32>(x_3653.x, x_3653.y, x_3653.z) * vec3<f32>(x_3655.x, x_3655.y, x_3655.z)) + vec3<f32>(x_3658.x, x_3658.y, x_3658.z));
    let x_3661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3661.w);

    continuing {
      let x_3663 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3663 + bitcast<u32>(1i));
    }
  }
  let x_3665 : vec3<f32> = u_xlat3;
  let x_3666 : vec4<f32> = u_xlat1;
  let x_3669 : vec4<f32> = u_xlat4;
  let x_3671 : vec3<f32> = ((x_3665 * vec3<f32>(x_3666.x, x_3666.y, x_3666.z)) + vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
  let x_3672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3671.x, x_3671.y, x_3671.z, x_3672.w);
  let x_3676 : vec4<f32> = u_xlat6;
  let x_3678 : vec4<f32> = u_xlat1;
  let x_3680 : vec3<f32> = (vec3<f32>(x_3676.x, x_3676.y, x_3676.z) + vec3<f32>(x_3678.x, x_3678.y, x_3678.z));
  let x_3681 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
  let x_3683 : bool = u_xlatb46;
  let x_3684 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3684, x_3683);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


