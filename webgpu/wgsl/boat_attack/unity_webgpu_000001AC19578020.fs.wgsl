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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb69 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_327 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

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

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1664 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1923 : AdditionalLights;

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

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
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
  var x_1612 : f32;
  var x_1750 : f32;
  var x_1762 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2063 : f32;
  var x_2073 : f32;
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
  var x_3666 : f32;
  var x_3679 : f32;
  var x_3727 : f32;
  var x_3739 : vec3<f32>;
  var x_3831 : f32;
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
  u_xlat23.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat69;
  let x_107 : f32 = u_xlat46;
  u_xlat46 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat46;
  u_xlat46 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat23.x;
  let x_115 : f32 = u_xlat46;
  u_xlat23.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat23.x;
  u_xlat23.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb46;
  if (x_131) {
    let x_136 : f32 = u_xlat23.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat23.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat23.x;
  u_xlatb23 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb23;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat23;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat23.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb69 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb69;
  if (x_191) {
    let x_196 : f32 = u_xlat23.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat23.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat23.x = x_203;
  let x_206 : f32 = u_xlat23.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat23.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat23.x;
  u_xlatb23 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb23;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat23;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  u_xlat2.w = 1.0f;
  let x_243 : vec4<f32> = x_186.unity_SHAr;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_186.unity_SHAg;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_249, x_250);
  let x_256 : vec4<f32> = x_186.unity_SHAb;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_256, x_257);
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_261.y, x_261.z, x_261.z, x_261.x) * vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.z));
  let x_269 : vec4<f32> = x_186.unity_SHBr;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_186.unity_SHBg;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_275, x_276);
  let x_281 : vec4<f32> = x_186.unity_SHBb;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_281, x_282);
  let x_286 : f32 = u_xlat2.y;
  let x_288 : f32 = u_xlat2.y;
  u_xlat23.x = (x_286 * x_288);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_292 * x_294) + -(x_297));
  let x_303 : vec4<f32> = x_186.unity_SHC;
  let x_305 : vec3<f32> = u_xlat23;
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec3<f32> = u_xlat3;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_313 + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_317, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_330 : f32 = x_327.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_330);
  let x_332 : bool = u_xlatb23;
  if (x_332) {
    let x_336 : f32 = x_327.x_MainLightShadowParams.y;
    u_xlatb23 = (x_336 == 1.0f);
    let x_338 : bool = u_xlatb23;
    if (x_338) {
      let x_342 : vec4<f32> = vs_TEXCOORD6;
      let x_345 : vec4<f32> = x_327.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_342.x, x_342.y, x_342.x, x_342.y) + x_345);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = vs_TEXCOORD6;
      let x_387 : vec4<f32> = x_327.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_387);
      let x_390 : vec4<f32> = u_xlat4;
      let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
      let x_393 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec2;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
      u_xlat5.z = x_402;
      let x_405 : vec4<f32> = u_xlat4;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec3;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_415.xy, x_415.z);
      u_xlat5.w = x_417;
      let x_419 : vec4<f32> = u_xlat5;
      u_xlat23.x = dot(x_419, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_426 : f32 = x_327.x_MainLightShadowParams.y;
      u_xlatb69 = (x_426 == 2.0f);
      let x_429 : bool = u_xlatb69;
      if (x_429) {
        let x_432 : vec4<f32> = vs_TEXCOORD6;
        let x_436 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_440 : vec2<f32> = ((vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_436.z, x_436.w)) + vec2<f32>(0.5f, 0.5f));
        let x_441 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_443 : vec4<f32> = u_xlat4;
        let x_445 : vec2<f32> = floor(vec2<f32>(x_443.x, x_443.y));
        let x_446 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_450 : vec4<f32> = vs_TEXCOORD6;
        let x_453 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_456 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_453.z, x_453.w)) + -(vec2<f32>(x_456.x, x_456.y)));
        let x_460 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_460.x, x_460.x, x_460.y, x_460.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_465 : vec4<f32> = u_xlat5;
        let x_467 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z) * vec4<f32>(x_467.x, x_467.x, x_467.z, x_467.z));
        let x_470 : vec4<f32> = u_xlat6;
        let x_474 : vec2<f32> = (vec2<f32>(x_470.y, x_470.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_475 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_474.x, x_475.y, x_474.y, x_475.w);
        let x_477 : vec4<f32> = u_xlat6;
        let x_480 : vec2<f32> = u_xlat50;
        let x_482 : vec2<f32> = ((vec2<f32>(x_477.x, x_477.z) * vec2<f32>(0.5f, 0.5f)) + -(x_480));
        let x_483 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_486 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_486) + vec2<f32>(1.0f, 1.0f));
        let x_491 : vec2<f32> = u_xlat50;
        let x_493 : vec2<f32> = min(x_491, vec2<f32>(0.0f, 0.0f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec4<f32> = u_xlat7;
        let x_499 : vec4<f32> = u_xlat7;
        let x_502 : vec2<f32> = u_xlat52;
        let x_503 : vec2<f32> = ((-(vec2<f32>(x_496.x, x_496.y)) * vec2<f32>(x_499.x, x_499.y)) + x_502);
        let x_504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_506, vec2<f32>(0.0f, 0.0f));
        let x_508 : vec2<f32> = u_xlat50;
        let x_510 : vec2<f32> = u_xlat50;
        let x_512 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_508) * x_510) + vec2<f32>(x_512.y, x_512.w));
        let x_515 : vec4<f32> = u_xlat7;
        let x_517 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) + vec2<f32>(1.0f, 1.0f));
        let x_518 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_520 + vec2<f32>(1.0f, 1.0f));
        let x_523 : vec4<f32> = u_xlat6;
        let x_527 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec2<f32> = u_xlat52;
        let x_531 : vec2<f32> = (x_530 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat7;
        let x_536 : vec2<f32> = (vec2<f32>(x_534.x, x_534.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_540 : vec2<f32> = u_xlat50;
        let x_541 : vec2<f32> = (x_540 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_542 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_544.y, x_544.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_548 : f32 = u_xlat7.x;
        u_xlat8.z = x_548;
        let x_551 : f32 = u_xlat50.x;
        u_xlat8.w = x_551;
        let x_554 : f32 = u_xlat9.x;
        u_xlat6.z = x_554;
        let x_557 : f32 = u_xlat5.x;
        u_xlat6.w = x_557;
        let x_560 : vec4<f32> = u_xlat6;
        let x_562 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z) + vec4<f32>(x_562.z, x_562.w, x_562.x, x_562.z));
        let x_566 : f32 = u_xlat8.y;
        u_xlat7.z = x_566;
        let x_569 : f32 = u_xlat50.y;
        u_xlat7.w = x_569;
        let x_572 : f32 = u_xlat6.y;
        u_xlat9.z = x_572;
        let x_575 : f32 = u_xlat5.z;
        u_xlat9.w = x_575;
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat9;
        let x_581 : vec3<f32> = (vec3<f32>(x_577.z, x_577.y, x_577.w) + vec3<f32>(x_579.z, x_579.y, x_579.w));
        let x_582 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat10;
        let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.z, x_584.w) / vec3<f32>(x_586.z, x_586.w, x_586.y));
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat6;
        let x_597 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat9;
        let x_602 : vec4<f32> = u_xlat5;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.z, x_600.y, x_600.w) / vec3<f32>(x_602.x, x_602.y, x_602.z));
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_609 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_615 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_617 : vec3<f32> = (vec3<f32>(x_612.y, x_612.x, x_612.z) * vec3<f32>(x_615.x, x_615.x, x_615.x));
        let x_618 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat7;
        let x_623 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_623.y, x_623.y, x_623.y));
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_629 : f32 = u_xlat7.x;
        u_xlat6.w = x_629;
        let x_631 : vec4<f32> = u_xlat4;
        let x_634 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.y, x_637.w, x_637.x, x_637.w));
        let x_640 : vec4<f32> = u_xlat4;
        let x_643 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.x, x_643.y)) + vec2<f32>(x_646.z, x_646.w));
        let x_650 : f32 = u_xlat6.y;
        u_xlat7.w = x_650;
        let x_652 : vec4<f32> = u_xlat7;
        let x_653 : vec2<f32> = vec2<f32>(x_652.y, x_652.z);
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_654.x, x_653.x, x_654.z, x_653.y);
        let x_656 : vec4<f32> = u_xlat4;
        let x_659 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) * vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y)) + vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.y));
        let x_665 : vec4<f32> = u_xlat4;
        let x_668 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.w, x_671.y, x_671.w, x_671.z));
        let x_674 : vec4<f32> = u_xlat4;
        let x_677 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) * vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y)) + vec4<f32>(x_680.x, x_680.w, x_680.z, x_680.w));
        let x_684 : vec4<f32> = u_xlat5;
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_684.x, x_684.x, x_684.x, x_684.y) * vec4<f32>(x_686.z, x_686.w, x_686.y, x_686.z));
        let x_690 : vec4<f32> = u_xlat5;
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_690.y, x_690.y, x_690.z, x_690.z) * x_692);
        let x_695 : f32 = u_xlat5.z;
        let x_697 : f32 = u_xlat10.y;
        u_xlat69 = (x_695 * x_697);
        let x_700 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
        let x_703 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat1.x = x_712;
        let x_715 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_726 : vec3<f32> = txVec5;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_726.xy, x_726.z);
        u_xlat71 = x_728;
        let x_729 : f32 = u_xlat71;
        let x_731 : f32 = u_xlat11.y;
        u_xlat71 = (x_729 * x_731);
        let x_734 : f32 = u_xlat11.x;
        let x_736 : f32 = u_xlat1.x;
        let x_738 : f32 = u_xlat71;
        u_xlat1.x = ((x_734 * x_736) + x_738);
        let x_742 : vec2<f32> = u_xlat50;
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec6;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat71 = x_753;
        let x_755 : f32 = u_xlat11.z;
        let x_756 : f32 = u_xlat71;
        let x_759 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_755 * x_756) + x_759);
        let x_763 : vec4<f32> = u_xlat7;
        let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
        let x_766 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_764.x, x_764.y, x_766);
        let x_773 : vec3<f32> = txVec7;
        let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
        u_xlat71 = x_775;
        let x_777 : f32 = u_xlat11.w;
        let x_778 : f32 = u_xlat71;
        let x_781 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_777 * x_778) + x_781);
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_788 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_795 : vec3<f32> = txVec8;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat71 = x_797;
        let x_799 : f32 = u_xlat12.x;
        let x_800 : f32 = u_xlat71;
        let x_803 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_799 * x_800) + x_803);
        let x_807 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec9;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat71 = x_819;
        let x_821 : f32 = u_xlat12.y;
        let x_822 : f32 = u_xlat71;
        let x_825 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_821 * x_822) + x_825);
        let x_829 : vec4<f32> = u_xlat7;
        let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
        let x_832 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec10;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
        u_xlat71 = x_841;
        let x_843 : f32 = u_xlat12.z;
        let x_844 : f32 = u_xlat71;
        let x_847 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_843 * x_844) + x_847);
        let x_851 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec11;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat71 = x_863;
        let x_865 : f32 = u_xlat12.w;
        let x_866 : f32 = u_xlat71;
        let x_869 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_865 * x_866) + x_869);
        let x_873 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec12;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat71 = x_885;
        let x_886 : f32 = u_xlat69;
        let x_887 : f32 = u_xlat71;
        let x_890 : f32 = u_xlat1.x;
        u_xlat23.x = ((x_886 * x_887) + x_890);
      } else {
        let x_894 : vec4<f32> = vs_TEXCOORD6;
        let x_897 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = vs_TEXCOORD6;
        let x_911 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = u_xlat50;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat50;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat52;
        let x_950 : vec2<f32> = u_xlat52;
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat52;
        let x_962 : vec2<f32> = u_xlat52;
        let x_964 : vec4<f32> = u_xlat5;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat28;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat5.y;
        u_xlat8.z = (x_981 * 0.08163200318813323975f);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat6;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat9.y;
        u_xlat8.x = x_998;
        let x_1000 : vec2<f32> = u_xlat50;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat50;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat5.x;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat6.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat50;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat50;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat5.y;
        u_xlat7.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat9.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat9.y;
        u_xlat6.y = x_1096;
        let x_1099 : f32 = u_xlat7.z;
        u_xlat9.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1104 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat9.y;
        u_xlat6.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat7.w;
        u_xlat9.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat4;
        let x_1141 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat4;
        let x_1177 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat6.x;
        u_xlat7.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat69 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat1.x = x_1253;
        let x_1256 : f32 = u_xlat1.x;
        let x_1258 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1256 * x_1258);
        let x_1262 : f32 = u_xlat15.x;
        let x_1263 : f32 = u_xlat69;
        let x_1266 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1262 * x_1263) + x_1266);
        let x_1269 : vec2<f32> = u_xlat50;
        let x_1271 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec15;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
        u_xlat1.x = x_1280;
        let x_1283 : f32 = u_xlat15.z;
        let x_1285 : f32 = u_xlat1.x;
        let x_1287 : f32 = u_xlat69;
        u_xlat69 = ((x_1283 * x_1285) + x_1287);
        let x_1290 : vec4<f32> = u_xlat13;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec16;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat1.x = x_1302;
        let x_1305 : f32 = u_xlat15.w;
        let x_1307 : f32 = u_xlat1.x;
        let x_1309 : f32 = u_xlat69;
        u_xlat69 = ((x_1305 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec17;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat1.x = x_1324;
        let x_1327 : f32 = u_xlat16.x;
        let x_1329 : f32 = u_xlat1.x;
        let x_1331 : f32 = u_xlat69;
        u_xlat69 = ((x_1327 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec18;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat1.x = x_1346;
        let x_1349 : f32 = u_xlat16.y;
        let x_1351 : f32 = u_xlat1.x;
        let x_1353 : f32 = u_xlat69;
        u_xlat69 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat12;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec19;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat1.x = x_1368;
        let x_1371 : f32 = u_xlat16.z;
        let x_1373 : f32 = u_xlat1.x;
        let x_1375 : f32 = u_xlat69;
        u_xlat69 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat13;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.z, x_1378.w);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec20;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat1.x = x_1390;
        let x_1393 : f32 = u_xlat16.w;
        let x_1395 : f32 = u_xlat1.x;
        let x_1397 : f32 = u_xlat69;
        u_xlat69 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat14;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec21;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat1.x = x_1412;
        let x_1415 : f32 = u_xlat17.x;
        let x_1417 : f32 = u_xlat1.x;
        let x_1419 : f32 = u_xlat69;
        u_xlat69 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat14;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec22;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat1.x = x_1434;
        let x_1437 : f32 = u_xlat17.y;
        let x_1439 : f32 = u_xlat1.x;
        let x_1441 : f32 = u_xlat69;
        u_xlat69 = ((x_1437 * x_1439) + x_1441);
        let x_1444 : vec2<f32> = u_xlat29;
        let x_1446 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec23;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat1.x = x_1455;
        let x_1458 : f32 = u_xlat17.z;
        let x_1460 : f32 = u_xlat1.x;
        let x_1462 : f32 = u_xlat69;
        u_xlat69 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec2<f32> = u_xlat58;
        let x_1467 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec24;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat1.x = x_1476;
        let x_1479 : f32 = u_xlat17.w;
        let x_1481 : f32 = u_xlat1.x;
        let x_1483 : f32 = u_xlat69;
        u_xlat69 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec25;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat1.x = x_1498;
        let x_1501 : f32 = u_xlat5.x;
        let x_1503 : f32 = u_xlat1.x;
        let x_1505 : f32 = u_xlat69;
        u_xlat69 = ((x_1501 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.z, x_1508.w);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec26;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat1.x = x_1520;
        let x_1523 : f32 = u_xlat5.y;
        let x_1525 : f32 = u_xlat1.x;
        let x_1527 : f32 = u_xlat69;
        u_xlat69 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec2<f32> = u_xlat53;
        let x_1532 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec27;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat1.x = x_1541;
        let x_1544 : f32 = u_xlat5.z;
        let x_1546 : f32 = u_xlat1.x;
        let x_1548 : f32 = u_xlat69;
        u_xlat69 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec28;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat1.x = x_1563;
        let x_1566 : f32 = u_xlat5.w;
        let x_1568 : f32 = u_xlat1.x;
        let x_1570 : f32 = u_xlat69;
        u_xlat23.x = ((x_1566 * x_1568) + x_1570);
      }
    }
  } else {
    let x_1575 : vec4<f32> = vs_TEXCOORD6;
    let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
    let x_1578 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
    let x_1585 : vec3<f32> = txVec29;
    let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
    u_xlat23.x = x_1587;
  }
  let x_1590 : f32 = x_327.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1590) + 1.0f);
  let x_1594 : f32 = u_xlat23.x;
  let x_1596 : f32 = x_327.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat69;
  u_xlat23.x = ((x_1594 * x_1596) + x_1598);
  let x_1602 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1602);
  let x_1606 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1606 >= 1.0f);
  let x_1608 : bool = u_xlatb69;
  let x_1609 : bool = u_xlatb1;
  u_xlatb69 = (x_1608 | x_1609);
  let x_1611 : bool = u_xlatb69;
  if (x_1611) {
    x_1612 = 1.0f;
  } else {
    let x_1617 : f32 = u_xlat23.x;
    x_1612 = x_1617;
  }
  let x_1618 : f32 = x_1612;
  u_xlat23.x = x_1618;
  let x_1621 : vec3<f32> = vs_TEXCOORD1;
  let x_1625 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1627 : vec3<f32> = (x_1621 + -(x_1625));
  let x_1628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1630 : vec4<f32> = u_xlat4;
  let x_1632 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : f32 = u_xlat69;
  let x_1637 : f32 = x_327.x_MainLightShadowParams.z;
  let x_1640 : f32 = x_327.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1635 * x_1637) + x_1640);
  let x_1644 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1644, 0.0f, 1.0f);
  let x_1648 : f32 = u_xlat23.x;
  u_xlat71 = (-(x_1648) + 1.0f);
  let x_1652 : f32 = u_xlat1.x;
  let x_1653 : f32 = u_xlat71;
  let x_1656 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1652 * x_1653) + x_1656);
  let x_1666 : f32 = x_1664.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1666 == -1.0f));
  let x_1669 : bool = u_xlatb1;
  if (x_1669) {
    let x_1672 : vec3<f32> = vs_TEXCOORD1;
    let x_1675 : vec4<f32> = x_1664.x_MainLightWorldToLight[1i];
    let x_1677 : vec2<f32> = (vec2<f32>(x_1672.y, x_1672.y) * vec2<f32>(x_1675.x, x_1675.y));
    let x_1678 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
    let x_1681 : vec4<f32> = x_1664.x_MainLightWorldToLight[0i];
    let x_1683 : vec3<f32> = vs_TEXCOORD1;
    let x_1686 : vec4<f32> = u_xlat4;
    let x_1688 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(x_1683.x, x_1683.x)) + vec2<f32>(x_1686.x, x_1686.y));
    let x_1689 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
    let x_1692 : vec4<f32> = x_1664.x_MainLightWorldToLight[2i];
    let x_1694 : vec3<f32> = vs_TEXCOORD1;
    let x_1697 : vec4<f32> = u_xlat4;
    let x_1699 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(x_1694.z, x_1694.z)) + vec2<f32>(x_1697.x, x_1697.y));
    let x_1700 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
    let x_1702 : vec4<f32> = u_xlat4;
    let x_1706 : vec4<f32> = x_1664.x_MainLightWorldToLight[3i];
    let x_1708 : vec2<f32> = (vec2<f32>(x_1702.x, x_1702.y) + vec2<f32>(x_1706.x, x_1706.y));
    let x_1709 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
    let x_1711 : vec4<f32> = u_xlat4;
    let x_1714 : vec2<f32> = ((vec2<f32>(x_1711.x, x_1711.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1715 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
    let x_1722 : vec4<f32> = u_xlat4;
    let x_1725 : f32 = x_44.x_GlobalMipBias.x;
    let x_1726 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1722.x, x_1722.y), x_1725);
    u_xlat4 = x_1726;
    let x_1731 : f32 = x_1664.x_MainLightCookieTextureFormat;
    let x_1733 : f32 = x_1664.x_MainLightCookieTextureFormat;
    let x_1735 : f32 = x_1664.x_MainLightCookieTextureFormat;
    let x_1737 : f32 = x_1664.x_MainLightCookieTextureFormat;
    let x_1738 : vec4<f32> = vec4<f32>(x_1731, x_1733, x_1735, x_1737);
    let x_1746 : vec4<bool> = (vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1746.x, x_1746.y);
    let x_1749 : bool = u_xlatb5.y;
    if (x_1749) {
      let x_1754 : f32 = u_xlat4.w;
      x_1750 = x_1754;
    } else {
      let x_1757 : f32 = u_xlat4.x;
      x_1750 = x_1757;
    }
    let x_1758 : f32 = x_1750;
    u_xlat1.x = x_1758;
    let x_1761 : bool = u_xlatb5.x;
    if (x_1761) {
      let x_1765 : vec4<f32> = u_xlat4;
      x_1762 = vec3<f32>(x_1765.x, x_1765.y, x_1765.z);
    } else {
      let x_1768 : vec4<f32> = u_xlat1;
      x_1762 = vec3<f32>(x_1768.x, x_1768.x, x_1768.x);
    }
    let x_1770 : vec3<f32> = x_1762;
    let x_1771 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1777 : vec4<f32> = u_xlat4;
  let x_1780 : vec4<f32> = x_44.x_MainLightColor;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1786 : f32 = u_xlat23.x;
  let x_1788 : f32 = x_186.unity_LightData.z;
  u_xlat23.x = (x_1786 * x_1788);
  let x_1791 : vec3<f32> = u_xlat23;
  let x_1793 : vec4<f32> = u_xlat4;
  let x_1795 : vec3<f32> = (vec3<f32>(x_1791.x, x_1791.x, x_1791.x) * vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat2;
  let x_1801 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
  let x_1806 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1806, 0.0f, 1.0f);
  let x_1809 : vec3<f32> = u_xlat23;
  let x_1811 : vec4<f32> = u_xlat4;
  let x_1813 : vec3<f32> = (vec3<f32>(x_1809.x, x_1809.x, x_1809.x) * vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat1;
  let x_1818 : vec4<f32> = u_xlat4;
  let x_1820 : vec3<f32> = (vec3<f32>(x_1816.y, x_1816.z, x_1816.w) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat0;
  let x_1825 : vec4<f32> = u_xlat4;
  let x_1827 : vec3<f32> = (vec3<f32>(x_1823.x, x_1823.x, x_1823.x) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1831 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1833 : f32 = x_186.unity_LightData.y;
  u_xlat23.x = min(x_1831, x_1833);
  let x_1839 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1839));
  let x_1842 : f32 = u_xlat69;
  let x_1845 : f32 = x_327.x_AdditionalShadowFadeParams.x;
  let x_1848 : f32 = x_327.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1842 * x_1845) + x_1848);
  let x_1850 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1850, 0.0f, 1.0f);
  let x_1853 : f32 = x_1664.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1855 : f32 = x_1664.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1857 : f32 = x_1664.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1859 : f32 = x_1664.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1860 : vec4<f32> = vec4<f32>(x_1853, x_1855, x_1857, x_1859);
  let x_1866 : vec4<bool> = (vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1860.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1866.x, x_1866.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1878 : u32 = u_xlatu_loop_1;
    let x_1879 : u32 = u_xlatu23;
    if ((x_1878 < x_1879)) {
    } else {
      break;
    }
    let x_1882 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1882 >> 2u);
    let x_1886 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1886 & 3u));
    let x_1889 : u32 = u_xlatu71;
    let x_1892 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1889)];
    let x_1902 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1907 : vec4<u32> = indexable[x_1902];
    u_xlat71 = dot(x_1892, bitcast<vec4<f32>>(x_1907));
    let x_1911 : f32 = u_xlat71;
    u_xlati71 = i32(x_1911);
    let x_1913 : vec3<f32> = vs_TEXCOORD1;
    let x_1924 : i32 = u_xlati71;
    let x_1926 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1924];
    let x_1929 : i32 = u_xlati71;
    let x_1931 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1929];
    let x_1933 : vec3<f32> = ((-(x_1913) * vec3<f32>(x_1926.w, x_1926.w, x_1926.w)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1937 : vec4<f32> = u_xlat7;
    let x_1939 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
    let x_1942 : f32 = u_xlat72;
    u_xlat72 = max(x_1942, 0.00006103515625f);
    let x_1946 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1946);
    let x_1948 : f32 = u_xlat73;
    let x_1950 : vec4<f32> = u_xlat7;
    let x_1952 : vec3<f32> = (vec3<f32>(x_1948, x_1948, x_1948) * vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
    let x_1953 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
    let x_1955 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1955);
    let x_1957 : f32 = u_xlat72;
    let x_1958 : i32 = u_xlati71;
    let x_1960 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1958].x;
    u_xlat72 = (x_1957 * x_1960);
    let x_1962 : f32 = u_xlat72;
    let x_1964 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1962) * x_1964) + 1.0f);
    let x_1967 : f32 = u_xlat72;
    u_xlat72 = max(x_1967, 0.0f);
    let x_1969 : f32 = u_xlat72;
    let x_1970 : f32 = u_xlat72;
    u_xlat72 = (x_1969 * x_1970);
    let x_1972 : f32 = u_xlat72;
    let x_1973 : f32 = u_xlat73;
    u_xlat72 = (x_1972 * x_1973);
    let x_1975 : i32 = u_xlati71;
    let x_1977 : vec4<f32> = x_1923.x_AdditionalLightsSpotDir[x_1975];
    let x_1979 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1977.x, x_1977.y, x_1977.z), vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
    let x_1982 : f32 = u_xlat73;
    let x_1983 : i32 = u_xlati71;
    let x_1985 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1983].z;
    let x_1987 : i32 = u_xlati71;
    let x_1989 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1987].w;
    u_xlat73 = ((x_1982 * x_1985) + x_1989);
    let x_1991 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1991, 0.0f, 1.0f);
    let x_1993 : f32 = u_xlat73;
    let x_1994 : f32 = u_xlat73;
    u_xlat73 = (x_1993 * x_1994);
    let x_1996 : f32 = u_xlat72;
    let x_1997 : f32 = u_xlat73;
    u_xlat72 = (x_1996 * x_1997);
    let x_2001 : i32 = u_xlati71;
    let x_2003 : f32 = x_327.x_AdditionalShadowParams[x_2001].w;
    u_xlati73 = i32(x_2003);
    let x_2006 : i32 = u_xlati73;
    u_xlatb51 = (x_2006 >= 0i);
    let x_2008 : bool = u_xlatb51;
    if (x_2008) {
      let x_2012 : i32 = u_xlati71;
      let x_2014 : f32 = x_327.x_AdditionalShadowParams[x_2012].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2014, x_2014, x_2014, x_2014))));
      let x_2018 : bool = u_xlatb51;
      if (x_2018) {
        let x_2023 : vec4<f32> = u_xlat7;
        let x_2026 : vec4<f32> = u_xlat7;
        let x_2029 : vec4<bool> = (abs(vec4<f32>(x_2023.z, x_2023.z, x_2023.y, x_2023.z)) >= abs(vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.x)));
        let x_2031 : vec3<bool> = vec3<bool>(x_2029.x, x_2029.y, x_2029.z);
        let x_2032 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
        let x_2035 : bool = u_xlatb8.y;
        let x_2037 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2035 & x_2037);
        let x_2039 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<bool> = (-(vec4<f32>(x_2039.z, x_2039.y, x_2039.z, x_2039.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2043 : vec3<bool> = vec3<bool>(x_2042.x, x_2042.y, x_2042.w);
        let x_2044 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2043.x, x_2043.y, x_2044.z, x_2043.z);
        let x_2047 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2047);
        let x_2053 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2053);
        let x_2059 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2059);
        let x_2062 : bool = u_xlatb8.z;
        if (x_2062) {
          let x_2067 : f32 = u_xlat8.y;
          x_2063 = x_2067;
        } else {
          let x_2069 : f32 = u_xlat74;
          x_2063 = x_2069;
        }
        let x_2070 : f32 = x_2063;
        u_xlat74 = x_2070;
        let x_2072 : bool = u_xlatb51;
        if (x_2072) {
          let x_2077 : f32 = u_xlat8.x;
          x_2073 = x_2077;
        } else {
          let x_2079 : f32 = u_xlat74;
          x_2073 = x_2079;
        }
        let x_2080 : f32 = x_2073;
        u_xlat51.x = x_2080;
        let x_2082 : i32 = u_xlati71;
        let x_2084 : f32 = x_327.x_AdditionalShadowParams[x_2082].w;
        u_xlat74 = trunc(x_2084);
        let x_2087 : f32 = u_xlat51.x;
        let x_2088 : f32 = u_xlat74;
        u_xlat51.x = (x_2087 + x_2088);
        let x_2092 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2092);
      }
      let x_2094 : i32 = u_xlati73;
      u_xlati73 = (x_2094 << bitcast<u32>(2i));
      let x_2096 : vec3<f32> = vs_TEXCOORD1;
      let x_2099 : i32 = u_xlati73;
      let x_2102 : i32 = u_xlati73;
      let x_2106 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_2099 + 1i) / 4i)][((x_2102 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2096.y, x_2096.y, x_2096.y, x_2096.y) * x_2106);
      let x_2108 : i32 = u_xlati73;
      let x_2110 : i32 = u_xlati73;
      let x_2113 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[(x_2108 / 4i)][(x_2110 % 4i)];
      let x_2114 : vec3<f32> = vs_TEXCOORD1;
      let x_2117 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2113 * vec4<f32>(x_2114.x, x_2114.x, x_2114.x, x_2114.x)) + x_2117);
      let x_2119 : i32 = u_xlati73;
      let x_2122 : i32 = u_xlati73;
      let x_2126 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_2119 + 2i) / 4i)][((x_2122 + 2i) % 4i)];
      let x_2127 : vec3<f32> = vs_TEXCOORD1;
      let x_2130 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2126 * vec4<f32>(x_2127.z, x_2127.z, x_2127.z, x_2127.z)) + x_2130);
      let x_2132 : vec4<f32> = u_xlat8;
      let x_2133 : i32 = u_xlati73;
      let x_2136 : i32 = u_xlati73;
      let x_2140 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_2133 + 3i) / 4i)][((x_2136 + 3i) % 4i)];
      u_xlat8 = (x_2132 + x_2140);
      let x_2142 : vec4<f32> = u_xlat8;
      let x_2144 : vec4<f32> = u_xlat8;
      let x_2146 : vec3<f32> = (vec3<f32>(x_2142.x, x_2142.y, x_2142.z) / vec3<f32>(x_2144.w, x_2144.w, x_2144.w));
      let x_2147 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
      let x_2150 : i32 = u_xlati71;
      let x_2152 : f32 = x_327.x_AdditionalShadowParams[x_2150].y;
      u_xlatb73 = (0.0f < x_2152);
      let x_2154 : bool = u_xlatb73;
      if (x_2154) {
        let x_2157 : i32 = u_xlati71;
        let x_2159 : f32 = x_327.x_AdditionalShadowParams[x_2157].y;
        u_xlatb73 = (1.0f == x_2159);
        let x_2161 : bool = u_xlatb73;
        if (x_2161) {
          let x_2164 : vec4<f32> = u_xlat8;
          let x_2168 : vec4<f32> = x_327.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2164.x, x_2164.y, x_2164.x, x_2164.y) + x_2168);
          let x_2171 : vec4<f32> = u_xlat9;
          let x_2172 : vec2<f32> = vec2<f32>(x_2171.x, x_2171.y);
          let x_2174 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2172.x, x_2172.y, x_2174);
          let x_2182 : vec3<f32> = txVec30;
          let x_2184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2182.xy, x_2182.z);
          u_xlat10.x = x_2184;
          let x_2187 : vec4<f32> = u_xlat9;
          let x_2188 : vec2<f32> = vec2<f32>(x_2187.z, x_2187.w);
          let x_2190 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
          let x_2197 : vec3<f32> = txVec31;
          let x_2199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
          u_xlat10.y = x_2199;
          let x_2201 : vec4<f32> = u_xlat8;
          let x_2205 : vec4<f32> = x_327.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2201.x, x_2201.y, x_2201.x, x_2201.y) + x_2205);
          let x_2208 : vec4<f32> = u_xlat9;
          let x_2209 : vec2<f32> = vec2<f32>(x_2208.x, x_2208.y);
          let x_2211 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
          let x_2218 : vec3<f32> = txVec32;
          let x_2220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
          u_xlat10.z = x_2220;
          let x_2223 : vec4<f32> = u_xlat9;
          let x_2224 : vec2<f32> = vec2<f32>(x_2223.z, x_2223.w);
          let x_2226 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
          let x_2233 : vec3<f32> = txVec33;
          let x_2235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2233.xy, x_2233.z);
          u_xlat10.w = x_2235;
          let x_2237 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2237, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2240 : i32 = u_xlati71;
          let x_2242 : f32 = x_327.x_AdditionalShadowParams[x_2240].y;
          u_xlatb51 = (2.0f == x_2242);
          let x_2244 : bool = u_xlatb51;
          if (x_2244) {
            let x_2247 : vec4<f32> = u_xlat8;
            let x_2251 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2247.x, x_2247.y) * vec2<f32>(x_2251.z, x_2251.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2255 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2255);
            let x_2257 : vec4<f32> = u_xlat8;
            let x_2260 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2263 : vec2<f32> = u_xlat51;
            let x_2265 : vec2<f32> = ((vec2<f32>(x_2257.x, x_2257.y) * vec2<f32>(x_2260.z, x_2260.w)) + -(x_2263));
            let x_2266 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2265.x, x_2265.y, x_2266.z, x_2266.w);
            let x_2268 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2268.x, x_2268.x, x_2268.y, x_2268.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2271 : vec4<f32> = u_xlat10;
            let x_2273 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2271.x, x_2271.x, x_2271.z, x_2271.z) * vec4<f32>(x_2273.x, x_2273.x, x_2273.z, x_2273.z));
            let x_2277 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2277.y, x_2277.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2280 : vec4<f32> = u_xlat11;
            let x_2283 : vec4<f32> = u_xlat9;
            let x_2286 : vec2<f32> = ((vec2<f32>(x_2280.x, x_2280.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2283.x, x_2283.y)));
            let x_2287 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2286.x, x_2287.y, x_2286.y, x_2287.w);
            let x_2289 : vec4<f32> = u_xlat9;
            let x_2292 : vec2<f32> = (-(vec2<f32>(x_2289.x, x_2289.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2293 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2292.x, x_2292.y, x_2293.z, x_2293.w);
            let x_2296 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2296.x, x_2296.y), vec2<f32>(0.0f, 0.0f));
            let x_2299 : vec2<f32> = u_xlat57;
            let x_2301 : vec2<f32> = u_xlat57;
            let x_2303 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2299) * x_2301) + vec2<f32>(x_2303.x, x_2303.y));
            let x_2306 : vec4<f32> = u_xlat9;
            let x_2308 : vec2<f32> = max(vec2<f32>(x_2306.x, x_2306.y), vec2<f32>(0.0f, 0.0f));
            let x_2309 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2308.x, x_2308.y, x_2309.z, x_2309.w);
            let x_2311 : vec4<f32> = u_xlat9;
            let x_2314 : vec4<f32> = u_xlat9;
            let x_2317 : vec4<f32> = u_xlat10;
            let x_2319 : vec2<f32> = ((-(vec2<f32>(x_2311.x, x_2311.y)) * vec2<f32>(x_2314.x, x_2314.y)) + vec2<f32>(x_2317.y, x_2317.w));
            let x_2320 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
            let x_2322 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2322 + vec2<f32>(1.0f, 1.0f));
            let x_2324 : vec4<f32> = u_xlat9;
            let x_2326 : vec2<f32> = (vec2<f32>(x_2324.x, x_2324.y) + vec2<f32>(1.0f, 1.0f));
            let x_2327 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
            let x_2329 : vec4<f32> = u_xlat10;
            let x_2331 : vec2<f32> = (vec2<f32>(x_2329.x, x_2329.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2332 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2334 : vec4<f32> = u_xlat11;
            let x_2336 : vec2<f32> = (vec2<f32>(x_2334.x, x_2334.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2337 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
            let x_2339 : vec2<f32> = u_xlat57;
            let x_2340 : vec2<f32> = (x_2339 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2341 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec4<f32> = u_xlat9;
            let x_2345 : vec2<f32> = (vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2348 : vec4<f32> = u_xlat10;
            let x_2350 : vec2<f32> = (vec2<f32>(x_2348.y, x_2348.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2351 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
            let x_2354 : f32 = u_xlat11.x;
            u_xlat12.z = x_2354;
            let x_2357 : f32 = u_xlat9.x;
            u_xlat12.w = x_2357;
            let x_2360 : f32 = u_xlat14.x;
            u_xlat13.z = x_2360;
            let x_2363 : f32 = u_xlat55.x;
            u_xlat13.w = x_2363;
            let x_2365 : vec4<f32> = u_xlat12;
            let x_2367 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2365.z, x_2365.w, x_2365.x, x_2365.z) + vec4<f32>(x_2367.z, x_2367.w, x_2367.x, x_2367.z));
            let x_2371 : f32 = u_xlat12.y;
            u_xlat11.z = x_2371;
            let x_2374 : f32 = u_xlat9.y;
            u_xlat11.w = x_2374;
            let x_2377 : f32 = u_xlat13.y;
            u_xlat14.z = x_2377;
            let x_2380 : f32 = u_xlat55.y;
            u_xlat14.w = x_2380;
            let x_2382 : vec4<f32> = u_xlat11;
            let x_2384 : vec4<f32> = u_xlat14;
            let x_2386 : vec3<f32> = (vec3<f32>(x_2382.z, x_2382.y, x_2382.w) + vec3<f32>(x_2384.z, x_2384.y, x_2384.w));
            let x_2387 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
            let x_2389 : vec4<f32> = u_xlat13;
            let x_2391 : vec4<f32> = u_xlat10;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2389.x, x_2389.z, x_2389.w) / vec3<f32>(x_2391.z, x_2391.w, x_2391.y));
            let x_2394 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat11;
            let x_2398 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.y, x_2396.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat14;
            let x_2403 : vec4<f32> = u_xlat9;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2401.z, x_2401.y, x_2401.w) / vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
            let x_2406 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2410 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2411 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
            let x_2413 : vec4<f32> = u_xlat11;
            let x_2416 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2418 : vec3<f32> = (vec3<f32>(x_2413.y, x_2413.x, x_2413.z) * vec3<f32>(x_2416.x, x_2416.x, x_2416.x));
            let x_2419 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
            let x_2421 : vec4<f32> = u_xlat12;
            let x_2424 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2426 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.y, x_2421.z) * vec3<f32>(x_2424.y, x_2424.y, x_2424.y));
            let x_2427 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
            let x_2430 : f32 = u_xlat12.x;
            u_xlat11.w = x_2430;
            let x_2432 : vec2<f32> = u_xlat51;
            let x_2435 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y) * vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y)) + vec4<f32>(x_2438.y, x_2438.w, x_2438.x, x_2438.w));
            let x_2441 : vec2<f32> = u_xlat51;
            let x_2443 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2446 : vec4<f32> = u_xlat11;
            let x_2448 : vec2<f32> = ((x_2441 * vec2<f32>(x_2443.x, x_2443.y)) + vec2<f32>(x_2446.z, x_2446.w));
            let x_2449 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
            let x_2452 : f32 = u_xlat11.y;
            u_xlat12.w = x_2452;
            let x_2454 : vec4<f32> = u_xlat12;
            let x_2455 : vec2<f32> = vec2<f32>(x_2454.y, x_2454.z);
            let x_2456 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2456.x, x_2455.x, x_2456.z, x_2455.y);
            let x_2458 : vec2<f32> = u_xlat51;
            let x_2461 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2464 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2458.x, x_2458.y, x_2458.x, x_2458.y) * vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y)) + vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2464.y));
            let x_2467 : vec2<f32> = u_xlat51;
            let x_2470 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2473 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2467.x, x_2467.y, x_2467.x, x_2467.y) * vec4<f32>(x_2470.x, x_2470.y, x_2470.x, x_2470.y)) + vec4<f32>(x_2473.w, x_2473.y, x_2473.w, x_2473.z));
            let x_2476 : vec2<f32> = u_xlat51;
            let x_2479 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2482 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y) * vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y)) + vec4<f32>(x_2482.x, x_2482.w, x_2482.z, x_2482.w));
            let x_2485 : vec4<f32> = u_xlat9;
            let x_2487 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2485.x, x_2485.x, x_2485.x, x_2485.y) * vec4<f32>(x_2487.z, x_2487.w, x_2487.y, x_2487.z));
            let x_2490 : vec4<f32> = u_xlat9;
            let x_2492 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2490.y, x_2490.y, x_2490.z, x_2490.z) * x_2492);
            let x_2495 : f32 = u_xlat9.z;
            let x_2497 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2495 * x_2497);
            let x_2501 : vec4<f32> = u_xlat13;
            let x_2502 : vec2<f32> = vec2<f32>(x_2501.x, x_2501.y);
            let x_2504 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2502.x, x_2502.y, x_2504);
            let x_2511 : vec3<f32> = txVec34;
            let x_2513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2511.xy, x_2511.z);
            u_xlat74 = x_2513;
            let x_2515 : vec4<f32> = u_xlat13;
            let x_2516 : vec2<f32> = vec2<f32>(x_2515.z, x_2515.w);
            let x_2518 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
            let x_2526 : vec3<f32> = txVec35;
            let x_2528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2526.xy, x_2526.z);
            u_xlat75 = x_2528;
            let x_2529 : f32 = u_xlat75;
            let x_2531 : f32 = u_xlat16.y;
            u_xlat75 = (x_2529 * x_2531);
            let x_2534 : f32 = u_xlat16.x;
            let x_2535 : f32 = u_xlat74;
            let x_2537 : f32 = u_xlat75;
            u_xlat74 = ((x_2534 * x_2535) + x_2537);
            let x_2540 : vec4<f32> = u_xlat14;
            let x_2541 : vec2<f32> = vec2<f32>(x_2540.x, x_2540.y);
            let x_2543 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2541.x, x_2541.y, x_2543);
            let x_2550 : vec3<f32> = txVec36;
            let x_2552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2550.xy, x_2550.z);
            u_xlat75 = x_2552;
            let x_2554 : f32 = u_xlat16.z;
            let x_2555 : f32 = u_xlat75;
            let x_2557 : f32 = u_xlat74;
            u_xlat74 = ((x_2554 * x_2555) + x_2557);
            let x_2560 : vec4<f32> = u_xlat12;
            let x_2561 : vec2<f32> = vec2<f32>(x_2560.x, x_2560.y);
            let x_2563 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2561.x, x_2561.y, x_2563);
            let x_2570 : vec3<f32> = txVec37;
            let x_2572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2570.xy, x_2570.z);
            u_xlat75 = x_2572;
            let x_2574 : f32 = u_xlat16.w;
            let x_2575 : f32 = u_xlat75;
            let x_2577 : f32 = u_xlat74;
            u_xlat74 = ((x_2574 * x_2575) + x_2577);
            let x_2580 : vec4<f32> = u_xlat15;
            let x_2581 : vec2<f32> = vec2<f32>(x_2580.x, x_2580.y);
            let x_2583 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
            let x_2590 : vec3<f32> = txVec38;
            let x_2592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
            u_xlat75 = x_2592;
            let x_2594 : f32 = u_xlat17.x;
            let x_2595 : f32 = u_xlat75;
            let x_2597 : f32 = u_xlat74;
            u_xlat74 = ((x_2594 * x_2595) + x_2597);
            let x_2600 : vec4<f32> = u_xlat15;
            let x_2601 : vec2<f32> = vec2<f32>(x_2600.z, x_2600.w);
            let x_2603 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2601.x, x_2601.y, x_2603);
            let x_2610 : vec3<f32> = txVec39;
            let x_2612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2610.xy, x_2610.z);
            u_xlat75 = x_2612;
            let x_2614 : f32 = u_xlat17.y;
            let x_2615 : f32 = u_xlat75;
            let x_2617 : f32 = u_xlat74;
            u_xlat74 = ((x_2614 * x_2615) + x_2617);
            let x_2620 : vec4<f32> = u_xlat12;
            let x_2621 : vec2<f32> = vec2<f32>(x_2620.z, x_2620.w);
            let x_2623 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2621.x, x_2621.y, x_2623);
            let x_2630 : vec3<f32> = txVec40;
            let x_2632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2630.xy, x_2630.z);
            u_xlat75 = x_2632;
            let x_2634 : f32 = u_xlat17.z;
            let x_2635 : f32 = u_xlat75;
            let x_2637 : f32 = u_xlat74;
            u_xlat74 = ((x_2634 * x_2635) + x_2637);
            let x_2640 : vec4<f32> = u_xlat11;
            let x_2641 : vec2<f32> = vec2<f32>(x_2640.x, x_2640.y);
            let x_2643 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
            let x_2650 : vec3<f32> = txVec41;
            let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
            u_xlat75 = x_2652;
            let x_2654 : f32 = u_xlat17.w;
            let x_2655 : f32 = u_xlat75;
            let x_2657 : f32 = u_xlat74;
            u_xlat74 = ((x_2654 * x_2655) + x_2657);
            let x_2660 : vec4<f32> = u_xlat11;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.z, x_2660.w);
            let x_2663 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec42;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat75 = x_2672;
            let x_2674 : f32 = u_xlat51.x;
            let x_2675 : f32 = u_xlat75;
            let x_2677 : f32 = u_xlat74;
            u_xlat73 = ((x_2674 * x_2675) + x_2677);
          } else {
            let x_2680 : vec4<f32> = u_xlat8;
            let x_2683 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(x_2683.z, x_2683.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2687 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2687);
            let x_2689 : vec4<f32> = u_xlat8;
            let x_2692 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2695 : vec2<f32> = u_xlat51;
            let x_2697 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2692.z, x_2692.w)) + -(x_2695));
            let x_2698 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2697.x, x_2697.y, x_2698.z, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2700.x, x_2700.x, x_2700.y, x_2700.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2703 : vec4<f32> = u_xlat10;
            let x_2705 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2703.x, x_2703.x, x_2703.z, x_2703.z) * vec4<f32>(x_2705.x, x_2705.x, x_2705.z, x_2705.z));
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2710 : vec2<f32> = (vec2<f32>(x_2708.y, x_2708.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2711 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2711.x, x_2710.x, x_2711.z, x_2710.y);
            let x_2713 : vec4<f32> = u_xlat11;
            let x_2716 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2713.x, x_2713.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2716.x, x_2716.y)));
            let x_2720 : vec4<f32> = u_xlat9;
            let x_2723 : vec2<f32> = (-(vec2<f32>(x_2720.x, x_2720.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2724 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2723.x, x_2724.y, x_2723.y, x_2724.w);
            let x_2726 : vec4<f32> = u_xlat9;
            let x_2728 : vec2<f32> = min(vec2<f32>(x_2726.x, x_2726.y), vec2<f32>(0.0f, 0.0f));
            let x_2729 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
            let x_2731 : vec4<f32> = u_xlat11;
            let x_2734 : vec4<f32> = u_xlat11;
            let x_2737 : vec4<f32> = u_xlat10;
            let x_2739 : vec2<f32> = ((-(vec2<f32>(x_2731.x, x_2731.y)) * vec2<f32>(x_2734.x, x_2734.y)) + vec2<f32>(x_2737.x, x_2737.z));
            let x_2740 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2739.x, x_2740.y, x_2739.y, x_2740.w);
            let x_2742 : vec4<f32> = u_xlat9;
            let x_2744 : vec2<f32> = max(vec2<f32>(x_2742.x, x_2742.y), vec2<f32>(0.0f, 0.0f));
            let x_2745 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat11;
            let x_2750 : vec4<f32> = u_xlat11;
            let x_2753 : vec4<f32> = u_xlat10;
            let x_2755 : vec2<f32> = ((-(vec2<f32>(x_2747.x, x_2747.y)) * vec2<f32>(x_2750.x, x_2750.y)) + vec2<f32>(x_2753.y, x_2753.w));
            let x_2756 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2756.x, x_2755.x, x_2756.z, x_2755.y);
            let x_2758 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2758 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2762 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2762 * 0.08163200318813323975f);
            let x_2765 : vec2<f32> = u_xlat55;
            let x_2767 : vec2<f32> = (vec2<f32>(x_2765.y, x_2765.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2768 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2767.x, x_2767.y, x_2768.z, x_2768.w);
            let x_2770 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2770.x, x_2770.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2774 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2774 * 0.08163200318813323975f);
            let x_2778 : f32 = u_xlat13.y;
            u_xlat11.x = x_2778;
            let x_2780 : vec4<f32> = u_xlat9;
            let x_2783 : vec2<f32> = ((vec2<f32>(x_2780.x, x_2780.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2784 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2784.x, x_2783.x, x_2784.z, x_2783.y);
            let x_2786 : vec4<f32> = u_xlat9;
            let x_2789 : vec2<f32> = ((vec2<f32>(x_2786.x, x_2786.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2790 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2789.x, x_2790.y, x_2789.y, x_2790.w);
            let x_2793 : f32 = u_xlat55.x;
            u_xlat10.y = x_2793;
            let x_2796 : f32 = u_xlat12.y;
            u_xlat10.w = x_2796;
            let x_2798 : vec4<f32> = u_xlat10;
            let x_2799 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2798 + x_2799);
            let x_2801 : vec4<f32> = u_xlat9;
            let x_2804 : vec2<f32> = ((vec2<f32>(x_2801.y, x_2801.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2805 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2805.x, x_2804.x, x_2805.z, x_2804.y);
            let x_2807 : vec4<f32> = u_xlat9;
            let x_2810 : vec2<f32> = ((vec2<f32>(x_2807.y, x_2807.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2811 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2810.x, x_2811.y, x_2810.y, x_2811.w);
            let x_2814 : f32 = u_xlat55.y;
            u_xlat12.y = x_2814;
            let x_2816 : vec4<f32> = u_xlat12;
            let x_2817 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2816 + x_2817);
            let x_2819 : vec4<f32> = u_xlat10;
            let x_2820 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2819 / x_2820);
            let x_2822 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2822 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2824 : vec4<f32> = u_xlat12;
            let x_2825 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2824 / x_2825);
            let x_2827 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2827 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2829 : vec4<f32> = u_xlat10;
            let x_2832 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2829.w, x_2829.x, x_2829.y, x_2829.z) * vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.x));
            let x_2835 : vec4<f32> = u_xlat12;
            let x_2838 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2835.x, x_2835.w, x_2835.y, x_2835.z) * vec4<f32>(x_2838.y, x_2838.y, x_2838.y, x_2838.y));
            let x_2841 : vec4<f32> = u_xlat10;
            let x_2842 : vec3<f32> = vec3<f32>(x_2841.y, x_2841.z, x_2841.w);
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2842.x, x_2843.y, x_2842.y, x_2842.z);
            let x_2846 : f32 = u_xlat12.x;
            u_xlat13.y = x_2846;
            let x_2848 : vec2<f32> = u_xlat51;
            let x_2851 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) * vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y)) + vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2854.y));
            let x_2857 : vec2<f32> = u_xlat51;
            let x_2859 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2862 : vec4<f32> = u_xlat13;
            let x_2864 : vec2<f32> = ((x_2857 * vec2<f32>(x_2859.x, x_2859.y)) + vec2<f32>(x_2862.w, x_2862.y));
            let x_2865 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
            let x_2868 : f32 = u_xlat13.y;
            u_xlat10.y = x_2868;
            let x_2871 : f32 = u_xlat12.z;
            u_xlat13.y = x_2871;
            let x_2873 : vec2<f32> = u_xlat51;
            let x_2876 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2873.x, x_2873.y, x_2873.x, x_2873.y) * vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y)) + vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2879.y));
            let x_2883 : vec2<f32> = u_xlat51;
            let x_2885 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2883 * vec2<f32>(x_2885.x, x_2885.y)) + vec2<f32>(x_2888.w, x_2888.y));
            let x_2892 : f32 = u_xlat13.y;
            u_xlat10.z = x_2892;
            let x_2894 : vec2<f32> = u_xlat51;
            let x_2897 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2894.x, x_2894.y, x_2894.x, x_2894.y) * vec4<f32>(x_2897.x, x_2897.y, x_2897.x, x_2897.y)) + vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.z));
            let x_2904 : f32 = u_xlat12.w;
            u_xlat13.y = x_2904;
            let x_2907 : vec2<f32> = u_xlat51;
            let x_2910 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y) * vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y)) + vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2913.y));
            let x_2917 : vec2<f32> = u_xlat51;
            let x_2919 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2917 * vec2<f32>(x_2919.x, x_2919.y)) + vec2<f32>(x_2922.w, x_2922.y));
            let x_2926 : f32 = u_xlat13.y;
            u_xlat10.w = x_2926;
            let x_2929 : vec2<f32> = u_xlat51;
            let x_2931 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2929 * vec2<f32>(x_2931.x, x_2931.y)) + vec2<f32>(x_2934.x, x_2934.w));
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2938 : vec3<f32> = vec3<f32>(x_2937.x, x_2937.z, x_2937.w);
            let x_2939 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2938.x, x_2939.y, x_2938.y, x_2938.z);
            let x_2941 : vec2<f32> = u_xlat51;
            let x_2944 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2947 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.y) * vec4<f32>(x_2944.x, x_2944.y, x_2944.x, x_2944.y)) + vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2947.y));
            let x_2950 : vec2<f32> = u_xlat51;
            let x_2952 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2955 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2950 * vec2<f32>(x_2952.x, x_2952.y)) + vec2<f32>(x_2955.w, x_2955.y));
            let x_2959 : f32 = u_xlat10.x;
            u_xlat12.x = x_2959;
            let x_2961 : vec2<f32> = u_xlat51;
            let x_2963 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2961 * vec2<f32>(x_2963.x, x_2963.y)) + vec2<f32>(x_2966.x, x_2966.y));
            let x_2970 : vec4<f32> = u_xlat9;
            let x_2972 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2970.x, x_2970.x, x_2970.x, x_2970.x) * x_2972);
            let x_2975 : vec4<f32> = u_xlat9;
            let x_2977 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2975.y, x_2975.y, x_2975.y, x_2975.y) * x_2977);
            let x_2980 : vec4<f32> = u_xlat9;
            let x_2982 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2980.z, x_2980.z, x_2980.z, x_2980.z) * x_2982);
            let x_2984 : vec4<f32> = u_xlat9;
            let x_2986 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2984.w, x_2984.w, x_2984.w, x_2984.w) * x_2986);
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.x, x_2989.y);
            let x_2992 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec43;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat75 = x_3001;
            let x_3003 : vec4<f32> = u_xlat14;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.z, x_3003.w);
            let x_3006 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3014 : vec3<f32> = txVec44;
            let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
            u_xlat76 = x_3016;
            let x_3017 : f32 = u_xlat76;
            let x_3019 : f32 = u_xlat20.y;
            u_xlat76 = (x_3017 * x_3019);
            let x_3022 : f32 = u_xlat20.x;
            let x_3023 : f32 = u_xlat75;
            let x_3025 : f32 = u_xlat76;
            u_xlat75 = ((x_3022 * x_3023) + x_3025);
            let x_3028 : vec4<f32> = u_xlat15;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
            let x_3031 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec45;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat76 = x_3040;
            let x_3042 : f32 = u_xlat20.z;
            let x_3043 : f32 = u_xlat76;
            let x_3045 : f32 = u_xlat75;
            u_xlat75 = ((x_3042 * x_3043) + x_3045);
            let x_3048 : vec4<f32> = u_xlat17;
            let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
            let x_3051 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
            let x_3058 : vec3<f32> = txVec46;
            let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
            u_xlat76 = x_3060;
            let x_3062 : f32 = u_xlat20.w;
            let x_3063 : f32 = u_xlat76;
            let x_3065 : f32 = u_xlat75;
            u_xlat75 = ((x_3062 * x_3063) + x_3065);
            let x_3068 : vec4<f32> = u_xlat16;
            let x_3069 : vec2<f32> = vec2<f32>(x_3068.x, x_3068.y);
            let x_3071 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
            let x_3078 : vec3<f32> = txVec47;
            let x_3080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
            u_xlat76 = x_3080;
            let x_3082 : f32 = u_xlat21.x;
            let x_3083 : f32 = u_xlat76;
            let x_3085 : f32 = u_xlat75;
            u_xlat75 = ((x_3082 * x_3083) + x_3085);
            let x_3088 : vec4<f32> = u_xlat16;
            let x_3089 : vec2<f32> = vec2<f32>(x_3088.z, x_3088.w);
            let x_3091 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
            let x_3098 : vec3<f32> = txVec48;
            let x_3100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
            u_xlat76 = x_3100;
            let x_3102 : f32 = u_xlat21.y;
            let x_3103 : f32 = u_xlat76;
            let x_3105 : f32 = u_xlat75;
            u_xlat75 = ((x_3102 * x_3103) + x_3105);
            let x_3108 : vec2<f32> = u_xlat61;
            let x_3110 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec49;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat76 = x_3119;
            let x_3121 : f32 = u_xlat21.z;
            let x_3122 : f32 = u_xlat76;
            let x_3124 : f32 = u_xlat75;
            u_xlat75 = ((x_3121 * x_3122) + x_3124);
            let x_3127 : vec4<f32> = u_xlat17;
            let x_3128 : vec2<f32> = vec2<f32>(x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec50;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat76 = x_3139;
            let x_3141 : f32 = u_xlat21.w;
            let x_3142 : f32 = u_xlat76;
            let x_3144 : f32 = u_xlat75;
            u_xlat75 = ((x_3141 * x_3142) + x_3144);
            let x_3147 : vec4<f32> = u_xlat18;
            let x_3148 : vec2<f32> = vec2<f32>(x_3147.x, x_3147.y);
            let x_3150 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3148.x, x_3148.y, x_3150);
            let x_3157 : vec3<f32> = txVec51;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat76 = x_3159;
            let x_3161 : f32 = u_xlat22.x;
            let x_3162 : f32 = u_xlat76;
            let x_3164 : f32 = u_xlat75;
            u_xlat75 = ((x_3161 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat18;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
            let x_3170 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec52;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat76 = x_3179;
            let x_3181 : f32 = u_xlat22.y;
            let x_3182 : f32 = u_xlat76;
            let x_3184 : f32 = u_xlat75;
            u_xlat75 = ((x_3181 * x_3182) + x_3184);
            let x_3187 : vec2<f32> = u_xlat33;
            let x_3189 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec53;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat76 = x_3198;
            let x_3200 : f32 = u_xlat22.z;
            let x_3201 : f32 = u_xlat76;
            let x_3203 : f32 = u_xlat75;
            u_xlat75 = ((x_3200 * x_3201) + x_3203);
            let x_3206 : vec2<f32> = u_xlat19;
            let x_3208 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec54;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat76 = x_3217;
            let x_3219 : f32 = u_xlat22.w;
            let x_3220 : f32 = u_xlat76;
            let x_3222 : f32 = u_xlat75;
            u_xlat75 = ((x_3219 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat13;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.x, x_3225.y);
            let x_3228 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec55;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat76 = x_3237;
            let x_3239 : f32 = u_xlat9.x;
            let x_3240 : f32 = u_xlat76;
            let x_3242 : f32 = u_xlat75;
            u_xlat75 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat13;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.z, x_3245.w);
            let x_3248 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec56;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat76 = x_3257;
            let x_3259 : f32 = u_xlat9.y;
            let x_3260 : f32 = u_xlat76;
            let x_3262 : f32 = u_xlat75;
            u_xlat75 = ((x_3259 * x_3260) + x_3262);
            let x_3265 : vec2<f32> = u_xlat58;
            let x_3267 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec57;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat76 = x_3276;
            let x_3278 : f32 = u_xlat9.z;
            let x_3279 : f32 = u_xlat76;
            let x_3281 : f32 = u_xlat75;
            u_xlat75 = ((x_3278 * x_3279) + x_3281);
            let x_3284 : vec2<f32> = u_xlat51;
            let x_3286 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec58;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat51.x = x_3295;
            let x_3298 : f32 = u_xlat9.w;
            let x_3300 : f32 = u_xlat51.x;
            let x_3302 : f32 = u_xlat75;
            u_xlat73 = ((x_3298 * x_3300) + x_3302);
          }
        }
      } else {
        let x_3306 : vec4<f32> = u_xlat8;
        let x_3307 : vec2<f32> = vec2<f32>(x_3306.x, x_3306.y);
        let x_3309 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
        let x_3316 : vec3<f32> = txVec59;
        let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
        u_xlat73 = x_3318;
      }
      let x_3319 : i32 = u_xlati71;
      let x_3321 : f32 = x_327.x_AdditionalShadowParams[x_3319].x;
      u_xlat51.x = (1.0f + -(x_3321));
      let x_3325 : f32 = u_xlat73;
      let x_3326 : i32 = u_xlati71;
      let x_3328 : f32 = x_327.x_AdditionalShadowParams[x_3326].x;
      let x_3331 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3325 * x_3328) + x_3331);
      let x_3334 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3334);
      let x_3338 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3338 >= 1.0f);
      let x_3340 : bool = u_xlatb74;
      let x_3341 : bool = u_xlatb51;
      u_xlatb51 = (x_3340 | x_3341);
      let x_3343 : bool = u_xlatb51;
      let x_3344 : f32 = u_xlat73;
      u_xlat73 = select(x_3344, 1.0f, x_3343);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3347 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3347) + 1.0f);
    let x_3351 : f32 = u_xlat69;
    let x_3353 : f32 = u_xlat51.x;
    let x_3355 : f32 = u_xlat73;
    u_xlat73 = ((x_3351 * x_3353) + x_3355);
    let x_3358 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3358 & 31i)));
    let x_3362 : i32 = u_xlati51;
    let x_3365 : f32 = x_1664.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3362) & bitcast<u32>(x_3365)));
    let x_3369 : i32 = u_xlati51;
    if ((x_3369 != 0i)) {
      let x_3373 : i32 = u_xlati71;
      let x_3375 : f32 = x_1664.x_AdditionalLightsLightTypes[x_3373].el;
      u_xlati51 = i32(x_3375);
      let x_3378 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3378 != 0i));
      let x_3382 : i32 = u_xlati71;
      u_xlati75 = (x_3382 << bitcast<u32>(2i));
      let x_3384 : i32 = u_xlati74;
      if ((x_3384 != 0i)) {
        let x_3388 : vec3<f32> = vs_TEXCOORD1;
        let x_3390 : i32 = u_xlati75;
        let x_3393 : i32 = u_xlati75;
        let x_3397 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3390 + 1i) / 4i)][((x_3393 + 1i) % 4i)];
        let x_3399 : vec3<f32> = (vec3<f32>(x_3388.y, x_3388.y, x_3388.y) * vec3<f32>(x_3397.x, x_3397.y, x_3397.w));
        let x_3400 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3399.x, x_3399.y, x_3399.z, x_3400.w);
        let x_3402 : i32 = u_xlati75;
        let x_3404 : i32 = u_xlati75;
        let x_3407 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[(x_3402 / 4i)][(x_3404 % 4i)];
        let x_3409 : vec3<f32> = vs_TEXCOORD1;
        let x_3412 : vec4<f32> = u_xlat8;
        let x_3414 : vec3<f32> = ((vec3<f32>(x_3407.x, x_3407.y, x_3407.w) * vec3<f32>(x_3409.x, x_3409.x, x_3409.x)) + vec3<f32>(x_3412.x, x_3412.y, x_3412.z));
        let x_3415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3415.w);
        let x_3417 : i32 = u_xlati75;
        let x_3420 : i32 = u_xlati75;
        let x_3424 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3417 + 2i) / 4i)][((x_3420 + 2i) % 4i)];
        let x_3426 : vec3<f32> = vs_TEXCOORD1;
        let x_3429 : vec4<f32> = u_xlat8;
        let x_3431 : vec3<f32> = ((vec3<f32>(x_3424.x, x_3424.y, x_3424.w) * vec3<f32>(x_3426.z, x_3426.z, x_3426.z)) + vec3<f32>(x_3429.x, x_3429.y, x_3429.z));
        let x_3432 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3432.w);
        let x_3434 : vec4<f32> = u_xlat8;
        let x_3436 : i32 = u_xlati75;
        let x_3439 : i32 = u_xlati75;
        let x_3443 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3436 + 3i) / 4i)][((x_3439 + 3i) % 4i)];
        let x_3445 : vec3<f32> = (vec3<f32>(x_3434.x, x_3434.y, x_3434.z) + vec3<f32>(x_3443.x, x_3443.y, x_3443.w));
        let x_3446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3445.x, x_3445.y, x_3445.z, x_3446.w);
        let x_3448 : vec4<f32> = u_xlat8;
        let x_3450 : vec4<f32> = u_xlat8;
        let x_3452 : vec2<f32> = (vec2<f32>(x_3448.x, x_3448.y) / vec2<f32>(x_3450.z, x_3450.z));
        let x_3453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3452.x, x_3452.y, x_3453.z, x_3453.w);
        let x_3455 : vec4<f32> = u_xlat8;
        let x_3458 : vec2<f32> = ((vec2<f32>(x_3455.x, x_3455.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3458.x, x_3458.y, x_3459.z, x_3459.w);
        let x_3461 : vec4<f32> = u_xlat8;
        let x_3465 : vec2<f32> = clamp(vec2<f32>(x_3461.x, x_3461.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3466.z, x_3466.w);
        let x_3468 : i32 = u_xlati71;
        let x_3470 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3468];
        let x_3472 : vec4<f32> = u_xlat8;
        let x_3475 : i32 = u_xlati71;
        let x_3477 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3475];
        let x_3479 : vec2<f32> = ((vec2<f32>(x_3470.x, x_3470.y) * vec2<f32>(x_3472.x, x_3472.y)) + vec2<f32>(x_3477.z, x_3477.w));
        let x_3480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3479.x, x_3479.y, x_3480.z, x_3480.w);
      } else {
        let x_3483 : i32 = u_xlati51;
        u_xlatb51 = (x_3483 == 1i);
        let x_3485 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3485);
        let x_3487 : i32 = u_xlati51;
        if ((x_3487 != 0i)) {
          let x_3491 : vec3<f32> = vs_TEXCOORD1;
          let x_3493 : i32 = u_xlati75;
          let x_3496 : i32 = u_xlati75;
          let x_3500 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3493 + 1i) / 4i)][((x_3496 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3491.y, x_3491.y) * vec2<f32>(x_3500.x, x_3500.y));
          let x_3503 : i32 = u_xlati75;
          let x_3505 : i32 = u_xlati75;
          let x_3508 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[(x_3503 / 4i)][(x_3505 % 4i)];
          let x_3510 : vec3<f32> = vs_TEXCOORD1;
          let x_3513 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(x_3510.x, x_3510.x)) + x_3513);
          let x_3515 : i32 = u_xlati75;
          let x_3518 : i32 = u_xlati75;
          let x_3522 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3515 + 2i) / 4i)][((x_3518 + 2i) % 4i)];
          let x_3524 : vec3<f32> = vs_TEXCOORD1;
          let x_3527 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3522.x, x_3522.y) * vec2<f32>(x_3524.z, x_3524.z)) + x_3527);
          let x_3529 : vec2<f32> = u_xlat51;
          let x_3530 : i32 = u_xlati75;
          let x_3533 : i32 = u_xlati75;
          let x_3537 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3530 + 3i) / 4i)][((x_3533 + 3i) % 4i)];
          u_xlat51 = (x_3529 + vec2<f32>(x_3537.x, x_3537.y));
          let x_3540 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3540 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3543 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3543);
          let x_3545 : i32 = u_xlati71;
          let x_3547 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3545];
          let x_3549 : vec2<f32> = u_xlat51;
          let x_3551 : i32 = u_xlati71;
          let x_3553 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3551];
          let x_3555 : vec2<f32> = ((vec2<f32>(x_3547.x, x_3547.y) * x_3549) + vec2<f32>(x_3553.z, x_3553.w));
          let x_3556 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3555.x, x_3555.y, x_3556.z, x_3556.w);
        } else {
          let x_3559 : vec3<f32> = vs_TEXCOORD1;
          let x_3561 : i32 = u_xlati75;
          let x_3564 : i32 = u_xlati75;
          let x_3568 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3561 + 1i) / 4i)][((x_3564 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3559.y, x_3559.y, x_3559.y, x_3559.y) * x_3568);
          let x_3570 : i32 = u_xlati75;
          let x_3572 : i32 = u_xlati75;
          let x_3575 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[(x_3570 / 4i)][(x_3572 % 4i)];
          let x_3576 : vec3<f32> = vs_TEXCOORD1;
          let x_3579 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3575 * vec4<f32>(x_3576.x, x_3576.x, x_3576.x, x_3576.x)) + x_3579);
          let x_3581 : i32 = u_xlati75;
          let x_3584 : i32 = u_xlati75;
          let x_3588 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3581 + 2i) / 4i)][((x_3584 + 2i) % 4i)];
          let x_3589 : vec3<f32> = vs_TEXCOORD1;
          let x_3592 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3588 * vec4<f32>(x_3589.z, x_3589.z, x_3589.z, x_3589.z)) + x_3592);
          let x_3594 : vec4<f32> = u_xlat9;
          let x_3595 : i32 = u_xlati75;
          let x_3598 : i32 = u_xlati75;
          let x_3602 : vec4<f32> = x_1664.x_AdditionalLightsWorldToLights[((x_3595 + 3i) / 4i)][((x_3598 + 3i) % 4i)];
          u_xlat9 = (x_3594 + x_3602);
          let x_3604 : vec4<f32> = u_xlat9;
          let x_3606 : vec4<f32> = u_xlat9;
          let x_3608 : vec3<f32> = (vec3<f32>(x_3604.x, x_3604.y, x_3604.z) / vec3<f32>(x_3606.w, x_3606.w, x_3606.w));
          let x_3609 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3608.x, x_3608.y, x_3608.z, x_3609.w);
          let x_3611 : vec4<f32> = u_xlat9;
          let x_3613 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3611.x, x_3611.y, x_3611.z), vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
          let x_3618 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3618);
          let x_3621 : vec2<f32> = u_xlat51;
          let x_3623 : vec4<f32> = u_xlat9;
          let x_3625 : vec3<f32> = (vec3<f32>(x_3621.x, x_3621.x, x_3621.x) * vec3<f32>(x_3623.x, x_3623.y, x_3623.z));
          let x_3626 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3625.x, x_3625.y, x_3625.z, x_3626.w);
          let x_3628 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3628.x, x_3628.y, x_3628.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3635 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3635, 0.00000099999999747524f);
          let x_3640 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3640);
          let x_3643 : vec2<f32> = u_xlat51;
          let x_3645 : vec4<f32> = u_xlat9;
          let x_3647 : vec3<f32> = (vec3<f32>(x_3643.x, x_3643.x, x_3643.x) * vec3<f32>(x_3645.z, x_3645.x, x_3645.y));
          let x_3648 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3647.x, x_3647.y, x_3647.z, x_3648.w);
          let x_3651 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3651);
          let x_3655 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3655, 0.0f, 1.0f);
          let x_3659 : vec4<f32> = u_xlat10;
          let x_3661 : vec4<bool> = (vec4<f32>(x_3659.y, x_3659.z, x_3659.y, x_3659.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3661.x, x_3661.y);
          let x_3665 : bool = u_xlatb54.x;
          if (x_3665) {
            let x_3670 : f32 = u_xlat10.x;
            x_3666 = x_3670;
          } else {
            let x_3673 : f32 = u_xlat10.x;
            x_3666 = -(x_3673);
          }
          let x_3675 : f32 = x_3666;
          u_xlat54.x = x_3675;
          let x_3678 : bool = u_xlatb54.y;
          if (x_3678) {
            let x_3683 : f32 = u_xlat10.x;
            x_3679 = x_3683;
          } else {
            let x_3686 : f32 = u_xlat10.x;
            x_3679 = -(x_3686);
          }
          let x_3688 : f32 = x_3679;
          u_xlat54.y = x_3688;
          let x_3690 : vec4<f32> = u_xlat9;
          let x_3692 : vec2<f32> = u_xlat51;
          let x_3695 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3690.x, x_3690.y) * vec2<f32>(x_3692.x, x_3692.x)) + x_3695);
          let x_3697 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3697 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3700 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3700, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3704 : i32 = u_xlati71;
          let x_3706 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3704];
          let x_3708 : vec2<f32> = u_xlat51;
          let x_3710 : i32 = u_xlati71;
          let x_3712 : vec4<f32> = x_1664.x_AdditionalLightsCookieAtlasUVRects[x_3710];
          let x_3714 : vec2<f32> = ((vec2<f32>(x_3706.x, x_3706.y) * x_3708) + vec2<f32>(x_3712.z, x_3712.w));
          let x_3715 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3714.x, x_3714.y, x_3715.z, x_3715.w);
        }
      }
      let x_3722 : vec4<f32> = u_xlat8;
      let x_3724 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3722.x, x_3722.y), 0.0f);
      u_xlat8 = x_3724;
      let x_3726 : bool = u_xlatb5.y;
      if (x_3726) {
        let x_3731 : f32 = u_xlat8.w;
        x_3727 = x_3731;
      } else {
        let x_3734 : f32 = u_xlat8.x;
        x_3727 = x_3734;
      }
      let x_3735 : f32 = x_3727;
      u_xlat51.x = x_3735;
      let x_3738 : bool = u_xlatb5.x;
      if (x_3738) {
        let x_3742 : vec4<f32> = u_xlat8;
        x_3739 = vec3<f32>(x_3742.x, x_3742.y, x_3742.z);
      } else {
        let x_3745 : vec2<f32> = u_xlat51;
        x_3739 = vec3<f32>(x_3745.x, x_3745.x, x_3745.x);
      }
      let x_3747 : vec3<f32> = x_3739;
      let x_3748 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3748.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3754 : vec4<f32> = u_xlat8;
    let x_3756 : i32 = u_xlati71;
    let x_3758 : vec4<f32> = x_1923.x_AdditionalLightsColor[x_3756];
    let x_3760 : vec3<f32> = (vec3<f32>(x_3754.x, x_3754.y, x_3754.z) * vec3<f32>(x_3758.x, x_3758.y, x_3758.z));
    let x_3761 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
    let x_3763 : f32 = u_xlat72;
    let x_3764 : f32 = u_xlat73;
    u_xlat71 = (x_3763 * x_3764);
    let x_3766 : f32 = u_xlat71;
    let x_3768 : vec4<f32> = u_xlat8;
    let x_3770 : vec3<f32> = (vec3<f32>(x_3766, x_3766, x_3766) * vec3<f32>(x_3768.x, x_3768.y, x_3768.z));
    let x_3771 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3770.x, x_3770.y, x_3770.z, x_3771.w);
    let x_3773 : vec4<f32> = u_xlat2;
    let x_3775 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3773.x, x_3773.y, x_3773.z), vec3<f32>(x_3775.x, x_3775.y, x_3775.z));
    let x_3778 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3778, 0.0f, 1.0f);
    let x_3780 : f32 = u_xlat71;
    let x_3782 : vec4<f32> = u_xlat8;
    let x_3784 : vec3<f32> = (vec3<f32>(x_3780, x_3780, x_3780) * vec3<f32>(x_3782.x, x_3782.y, x_3782.z));
    let x_3785 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
    let x_3787 : vec4<f32> = u_xlat1;
    let x_3789 : vec4<f32> = u_xlat7;
    let x_3791 : vec3<f32> = (vec3<f32>(x_3787.y, x_3787.z, x_3787.w) * vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
    let x_3792 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
    let x_3794 : vec4<f32> = u_xlat7;
    let x_3796 : vec4<f32> = u_xlat0;
    let x_3799 : vec4<f32> = u_xlat6;
    let x_3801 : vec3<f32> = ((vec3<f32>(x_3794.x, x_3794.y, x_3794.z) * vec3<f32>(x_3796.x, x_3796.x, x_3796.x)) + vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
    let x_3802 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);

    continuing {
      let x_3804 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3804 + bitcast<u32>(1i));
    }
  }
  let x_3806 : vec3<f32> = u_xlat3;
  let x_3807 : vec4<f32> = u_xlat1;
  let x_3810 : vec4<f32> = u_xlat4;
  let x_3812 : vec3<f32> = ((x_3806 * vec3<f32>(x_3807.y, x_3807.z, x_3807.w)) + vec3<f32>(x_3810.x, x_3810.y, x_3810.z));
  let x_3813 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3812.x, x_3812.y, x_3812.z, x_3813.w);
  let x_3817 : vec4<f32> = u_xlat6;
  let x_3819 : vec4<f32> = u_xlat1;
  let x_3821 : vec3<f32> = (vec3<f32>(x_3817.x, x_3817.y, x_3817.z) + vec3<f32>(x_3819.x, x_3819.y, x_3819.z));
  let x_3822 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3821.x, x_3821.y, x_3821.z, x_3822.w);
  let x_3825 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3825 == 1.0f);
  let x_3827 : bool = u_xlatb23;
  let x_3828 : bool = u_xlatb46;
  u_xlatb23 = (x_3827 | x_3828);
  let x_3830 : bool = u_xlatb23;
  if (x_3830) {
    let x_3835 : f32 = u_xlat0.x;
    x_3831 = x_3835;
  } else {
    x_3831 = 1.0f;
  }
  let x_3837 : f32 = x_3831;
  SV_Target0.w = x_3837;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


