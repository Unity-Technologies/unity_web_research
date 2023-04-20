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

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_249 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlati23 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

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

var<private> u_xlatb1 : bool;

@group(1) @binding(5) var<uniform> x_1857 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_2103 : AdditionalLights;

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
  var x_1807 : f32;
  var x_1940 : f32;
  var x_1952 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2240 : f32;
  var x_2249 : f32;
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
  var x_3841 : f32;
  var x_3854 : f32;
  var x_3902 : f32;
  var x_3914 : vec3<f32>;
  var x_4000 : f32;
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
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres0;
  let x_254 : vec3<f32> = (x_241 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres1;
  let x_263 : vec3<f32> = (x_258 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres2;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres3;
  let x_282 : vec3<f32> = (x_277 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat4;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_298 : vec4<f32> = u_xlat5;
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_313 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = x_249.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_313 < x_316);
  let x_319 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_319);
  let x_323 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_335);
  let x_341 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_341);
  let x_345 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_345);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_350.y, x_350.z, x_350.w));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = max(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_358.x, x_358.y, x_358.z);
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(x_361, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_369) + 4.0f);
  let x_376 : f32 = u_xlat23.x;
  u_xlatu23 = u32(x_376);
  let x_380 : u32 = u_xlatu23;
  u_xlati23 = (bitcast<i32>(x_380) << bitcast<u32>(2i));
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : i32 = u_xlati23;
  let x_388 : i32 = u_xlati23;
  let x_392 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_385 + 1i) / 4i)][((x_388 + 1i) % 4i)];
  let x_394 : vec3<f32> = (vec3<f32>(x_383.y, x_383.y, x_383.y) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : i32 = u_xlati23;
  let x_399 : i32 = u_xlati23;
  let x_402 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_397 / 4i)][(x_399 % 4i)];
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_407 : vec4<f32> = u_xlat3;
  let x_409 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.x, x_404.x, x_404.x)) + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : i32 = u_xlati23;
  let x_415 : i32 = u_xlati23;
  let x_419 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_412 + 2i) / 4i)][((x_415 + 2i) % 4i)];
  let x_421 : vec3<f32> = vs_TEXCOORD1;
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(x_421.z, x_421.z, x_421.z)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat3;
  let x_431 : i32 = u_xlati23;
  let x_434 : i32 = u_xlati23;
  let x_438 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_431 + 3i) / 4i)][((x_434 + 3i) % 4i)];
  let x_440 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  u_xlat2.w = 1.0f;
  let x_446 : vec4<f32> = x_186.unity_SHAr;
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_446, x_447);
  let x_452 : vec4<f32> = x_186.unity_SHAg;
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_452, x_453);
  let x_458 : vec4<f32> = x_186.unity_SHAb;
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_458, x_459);
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_462.y, x_462.z, x_462.z, x_462.x) * vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.z));
  let x_469 : vec4<f32> = x_186.unity_SHBr;
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_469, x_470);
  let x_475 : vec4<f32> = x_186.unity_SHBg;
  let x_476 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_475, x_476);
  let x_481 : vec4<f32> = x_186.unity_SHBb;
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_481, x_482);
  let x_486 : f32 = u_xlat2.y;
  let x_488 : f32 = u_xlat2.y;
  u_xlat23.x = (x_486 * x_488);
  let x_492 : f32 = u_xlat2.x;
  let x_494 : f32 = u_xlat2.x;
  let x_497 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_492 * x_494) + -(x_497));
  let x_503 : vec4<f32> = x_186.unity_SHC;
  let x_505 : vec3<f32> = u_xlat23;
  let x_508 : vec4<f32> = u_xlat6;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.x, x_505.x, x_505.x)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat5;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat4;
  let x_522 : vec3<f32> = max(vec3<f32>(x_520.x, x_520.y, x_520.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_527 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_527);
  let x_529 : bool = u_xlatb23;
  if (x_529) {
    let x_533 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb23 = (x_533 == 1.0f);
    let x_535 : bool = u_xlatb23;
    if (x_535) {
      let x_538 : vec4<f32> = u_xlat3;
      let x_541 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_538.x, x_538.y, x_538.x, x_538.y) + x_541);
      let x_545 : vec4<f32> = u_xlat5;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_560 : vec3<f32> = txVec0;
      let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
      u_xlat6.x = x_562;
      let x_565 : vec4<f32> = u_xlat5;
      let x_566 : vec2<f32> = vec2<f32>(x_565.z, x_565.w);
      let x_568 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec1;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat6.y = x_577;
      let x_579 : vec4<f32> = u_xlat3;
      let x_583 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y) + x_583);
      let x_586 : vec4<f32> = u_xlat5;
      let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
      let x_589 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_587.x, x_587.y, x_589);
      let x_596 : vec3<f32> = txVec2;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_596.xy, x_596.z);
      u_xlat6.z = x_598;
      let x_601 : vec4<f32> = u_xlat5;
      let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
      let x_604 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_602.x, x_602.y, x_604);
      let x_611 : vec3<f32> = txVec3;
      let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_611.xy, x_611.z);
      u_xlat6.w = x_613;
      let x_615 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_615, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_622 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb69 = (x_622 == 2.0f);
      let x_624 : bool = u_xlatb69;
      if (x_624) {
        let x_627 : vec4<f32> = u_xlat3;
        let x_631 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_635 : vec2<f32> = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_631.z, x_631.w)) + vec2<f32>(0.5f, 0.5f));
        let x_636 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec4<f32> = u_xlat5;
        let x_640 : vec2<f32> = floor(vec2<f32>(x_638.x, x_638.y));
        let x_641 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_645 : vec4<f32> = u_xlat3;
        let x_648 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_651 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.z, x_648.w)) + -(vec2<f32>(x_651.x, x_651.y)));
        let x_655 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_655.x, x_655.x, x_655.y, x_655.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_660 : vec4<f32> = u_xlat6;
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_660.x, x_660.x, x_660.z, x_660.z) * vec4<f32>(x_662.x, x_662.x, x_662.z, x_662.z));
        let x_665 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_670 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_670.w);
        let x_672 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = u_xlat51;
        let x_677 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.z) * vec2<f32>(0.5f, 0.5f)) + -(x_675));
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_681 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_681) + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec2<f32> = u_xlat51;
        let x_688 : vec2<f32> = min(x_686, vec2<f32>(0.0f, 0.0f));
        let x_689 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = u_xlat53;
        let x_698 : vec2<f32> = ((-(vec2<f32>(x_691.x, x_691.y)) * vec2<f32>(x_694.x, x_694.y)) + x_697);
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_701 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_701, vec2<f32>(0.0f, 0.0f));
        let x_703 : vec2<f32> = u_xlat51;
        let x_705 : vec2<f32> = u_xlat51;
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_703) * x_705) + vec2<f32>(x_707.y, x_707.w));
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec2<f32> = (vec2<f32>(x_710.x, x_710.y) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_715 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_715 + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec4<f32> = u_xlat7;
        let x_722 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_723 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
        let x_725 : vec2<f32> = u_xlat53;
        let x_726 : vec2<f32> = (x_725 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat8;
        let x_731 : vec2<f32> = (vec2<f32>(x_729.x, x_729.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_735 : vec2<f32> = u_xlat51;
        let x_736 : vec2<f32> = (x_735 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_739.y, x_739.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_743 : f32 = u_xlat8.x;
        u_xlat9.z = x_743;
        let x_746 : f32 = u_xlat51.x;
        u_xlat9.w = x_746;
        let x_749 : f32 = u_xlat10.x;
        u_xlat7.z = x_749;
        let x_752 : f32 = u_xlat6.x;
        u_xlat7.w = x_752;
        let x_755 : vec4<f32> = u_xlat7;
        let x_757 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_755.z, x_755.w, x_755.x, x_755.z) + vec4<f32>(x_757.z, x_757.w, x_757.x, x_757.z));
        let x_761 : f32 = u_xlat9.y;
        u_xlat8.z = x_761;
        let x_764 : f32 = u_xlat51.y;
        u_xlat8.w = x_764;
        let x_767 : f32 = u_xlat7.y;
        u_xlat10.z = x_767;
        let x_770 : f32 = u_xlat6.z;
        u_xlat10.w = x_770;
        let x_772 : vec4<f32> = u_xlat8;
        let x_774 : vec4<f32> = u_xlat10;
        let x_776 : vec3<f32> = (vec3<f32>(x_772.z, x_772.y, x_772.w) + vec3<f32>(x_774.z, x_774.y, x_774.w));
        let x_777 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat7;
        let x_781 : vec4<f32> = u_xlat11;
        let x_783 : vec3<f32> = (vec3<f32>(x_779.x, x_779.z, x_779.w) / vec3<f32>(x_781.z, x_781.w, x_781.y));
        let x_784 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat7;
        let x_792 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat10;
        let x_797 : vec4<f32> = u_xlat6;
        let x_799 : vec3<f32> = (vec3<f32>(x_795.z, x_795.y, x_795.w) / vec3<f32>(x_797.x, x_797.y, x_797.z));
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat8;
        let x_804 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_805 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
        let x_807 : vec4<f32> = u_xlat7;
        let x_810 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_812 : vec3<f32> = (vec3<f32>(x_807.y, x_807.x, x_807.z) * vec3<f32>(x_810.x, x_810.x, x_810.x));
        let x_813 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat8;
        let x_818 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_820 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_818.y, x_818.y, x_818.y));
        let x_821 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
        let x_824 : f32 = u_xlat8.x;
        u_xlat7.w = x_824;
        let x_826 : vec4<f32> = u_xlat5;
        let x_829 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.y, x_832.w, x_832.x, x_832.w));
        let x_835 : vec4<f32> = u_xlat5;
        let x_838 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.x, x_838.y)) + vec2<f32>(x_841.z, x_841.w));
        let x_845 : f32 = u_xlat7.y;
        u_xlat8.w = x_845;
        let x_847 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = vec2<f32>(x_847.y, x_847.z);
        let x_849 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_849.x, x_848.x, x_849.z, x_848.y);
        let x_851 : vec4<f32> = u_xlat5;
        let x_854 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y) * vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y)) + vec4<f32>(x_857.x, x_857.y, x_857.z, x_857.y));
        let x_860 : vec4<f32> = u_xlat5;
        let x_863 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_860.x, x_860.y, x_860.x, x_860.y) * vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y)) + vec4<f32>(x_866.w, x_866.y, x_866.w, x_866.z));
        let x_869 : vec4<f32> = u_xlat5;
        let x_872 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y) * vec4<f32>(x_872.x, x_872.y, x_872.x, x_872.y)) + vec4<f32>(x_875.x, x_875.w, x_875.z, x_875.w));
        let x_879 : vec4<f32> = u_xlat6;
        let x_881 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_879.x, x_879.x, x_879.x, x_879.y) * vec4<f32>(x_881.z, x_881.w, x_881.y, x_881.z));
        let x_885 : vec4<f32> = u_xlat6;
        let x_887 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_885.y, x_885.y, x_885.z, x_885.z) * x_887);
        let x_890 : f32 = u_xlat6.z;
        let x_892 : f32 = u_xlat11.y;
        u_xlat69 = (x_890 * x_892);
        let x_895 : vec4<f32> = u_xlat9;
        let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
        let x_898 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec4;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_905.xy, x_905.z);
        u_xlat1.x = x_907;
        let x_910 : vec4<f32> = u_xlat9;
        let x_911 : vec2<f32> = vec2<f32>(x_910.z, x_910.w);
        let x_913 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_921 : vec3<f32> = txVec5;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_921.xy, x_921.z);
        u_xlat71 = x_923;
        let x_924 : f32 = u_xlat71;
        let x_926 : f32 = u_xlat12.y;
        u_xlat71 = (x_924 * x_926);
        let x_929 : f32 = u_xlat12.x;
        let x_931 : f32 = u_xlat1.x;
        let x_933 : f32 = u_xlat71;
        u_xlat1.x = ((x_929 * x_931) + x_933);
        let x_937 : vec2<f32> = u_xlat51;
        let x_939 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_946 : vec3<f32> = txVec6;
        let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_946.xy, x_946.z);
        u_xlat71 = x_948;
        let x_950 : f32 = u_xlat12.z;
        let x_951 : f32 = u_xlat71;
        let x_954 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_950 * x_951) + x_954);
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
        let x_961 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec7;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
        u_xlat71 = x_970;
        let x_972 : f32 = u_xlat12.w;
        let x_973 : f32 = u_xlat71;
        let x_976 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_972 * x_973) + x_976);
        let x_980 : vec4<f32> = u_xlat10;
        let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
        let x_983 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec8;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat71 = x_992;
        let x_994 : f32 = u_xlat13.x;
        let x_995 : f32 = u_xlat71;
        let x_998 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_994 * x_995) + x_998);
        let x_1002 : vec4<f32> = u_xlat10;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1012 : vec3<f32> = txVec9;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
        u_xlat71 = x_1014;
        let x_1016 : f32 = u_xlat13.y;
        let x_1017 : f32 = u_xlat71;
        let x_1020 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1016 * x_1017) + x_1020);
        let x_1024 : vec4<f32> = u_xlat8;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec10;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
        u_xlat71 = x_1036;
        let x_1038 : f32 = u_xlat13.z;
        let x_1039 : f32 = u_xlat71;
        let x_1042 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1038 * x_1039) + x_1042);
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec11;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat71 = x_1058;
        let x_1060 : f32 = u_xlat13.w;
        let x_1061 : f32 = u_xlat71;
        let x_1064 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1060 * x_1061) + x_1064);
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec12;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1078.xy, x_1078.z);
        u_xlat71 = x_1080;
        let x_1081 : f32 = u_xlat69;
        let x_1082 : f32 = u_xlat71;
        let x_1085 : f32 = u_xlat1.x;
        u_xlat23.x = ((x_1081 * x_1082) + x_1085);
      } else {
        let x_1089 : vec4<f32> = u_xlat3;
        let x_1092 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1092.z, x_1092.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1096 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1100 : vec2<f32> = floor(vec2<f32>(x_1098.x, x_1098.y));
        let x_1101 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat3;
        let x_1106 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.z, x_1106.w)) + -(vec2<f32>(x_1109.x, x_1109.y)));
        let x_1113 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1113.x, x_1113.x, x_1113.y, x_1113.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1116.x, x_1116.x, x_1116.z, x_1116.z) * vec4<f32>(x_1118.x, x_1118.x, x_1118.z, x_1118.z));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1125 : vec2<f32> = (vec2<f32>(x_1121.y, x_1121.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1126.x, x_1125.x, x_1126.z, x_1125.y);
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1131 : vec2<f32> = u_xlat51;
        let x_1133 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1131));
        let x_1134 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat51;
        let x_1138 : vec2<f32> = (-(x_1136) + vec2<f32>(1.0f, 1.0f));
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1141, vec2<f32>(0.0f, 0.0f));
        let x_1143 : vec2<f32> = u_xlat53;
        let x_1145 : vec2<f32> = u_xlat53;
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1149 : vec2<f32> = ((-(x_1143) * x_1145) + vec2<f32>(x_1147.x, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1152, vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec2<f32> = u_xlat53;
        let x_1157 : vec2<f32> = u_xlat53;
        let x_1159 : vec4<f32> = u_xlat6;
        let x_1161 : vec2<f32> = ((-(x_1155) * x_1157) + vec2<f32>(x_1159.y, x_1159.w));
        let x_1162 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1161.x, x_1162.y, x_1161.y);
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.y) + vec2<f32>(2.0f, 2.0f));
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec3<f32> = u_xlat29;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.z) + vec2<f32>(2.0f, 2.0f));
        let x_1173 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1173.x, x_1172.x, x_1173.z, x_1172.y);
        let x_1176 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1176 * 0.08163200318813323975f);
        let x_1180 : vec4<f32> = u_xlat6;
        let x_1183 : vec3<f32> = (vec3<f32>(x_1180.z, x_1180.x, x_1180.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1190 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1193 : f32 = u_xlat10.y;
        u_xlat9.x = x_1193;
        let x_1195 : vec2<f32> = u_xlat51;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1203 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec2<f32> = u_xlat51;
        let x_1209 : vec2<f32> = ((vec2<f32>(x_1205.x, x_1205.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1210.w);
        let x_1213 : f32 = u_xlat6.x;
        u_xlat7.y = x_1213;
        let x_1216 : f32 = u_xlat8.y;
        u_xlat7.w = x_1216;
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1218 + x_1219);
        let x_1221 : vec2<f32> = u_xlat51;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1225.x, x_1224.x, x_1225.z, x_1224.y);
        let x_1227 : vec2<f32> = u_xlat51;
        let x_1230 : vec2<f32> = ((vec2<f32>(x_1227.y, x_1227.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1231.y, x_1230.y, x_1231.w);
        let x_1234 : f32 = u_xlat6.y;
        u_xlat8.y = x_1234;
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1236 + x_1237);
        let x_1239 : vec4<f32> = u_xlat7;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1239 / x_1240);
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1242 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1248 : vec4<f32> = u_xlat8;
        let x_1249 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1248 / x_1249);
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1251 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1253.w, x_1253.x, x_1253.y, x_1253.z) * vec4<f32>(x_1256.x, x_1256.x, x_1256.x, x_1256.x));
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1262 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1259.x, x_1259.w, x_1259.y, x_1259.z) * vec4<f32>(x_1262.y, x_1262.y, x_1262.y, x_1262.y));
        let x_1265 : vec4<f32> = u_xlat7;
        let x_1266 : vec3<f32> = vec3<f32>(x_1265.y, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1266.z);
        let x_1270 : f32 = u_xlat8.x;
        u_xlat10.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat5;
        let x_1275 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1281 : vec4<f32> = u_xlat5;
        let x_1284 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.w, x_1287.y));
        let x_1291 : f32 = u_xlat10.y;
        u_xlat7.y = x_1291;
        let x_1294 : f32 = u_xlat8.z;
        u_xlat10.y = x_1294;
        let x_1296 : vec4<f32> = u_xlat5;
        let x_1299 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat5;
        let x_1308 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.w, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat10.y;
        u_xlat7.z = x_1317;
        let x_1320 : vec4<f32> = u_xlat5;
        let x_1323 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.z));
        let x_1330 : f32 = u_xlat8.w;
        u_xlat10.y = x_1330;
        let x_1333 : vec4<f32> = u_xlat5;
        let x_1336 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y) * vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y)) + vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1339.y));
        let x_1343 : vec4<f32> = u_xlat5;
        let x_1346 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.w, x_1349.y));
        let x_1353 : f32 = u_xlat10.y;
        u_xlat7.w = x_1353;
        let x_1356 : vec4<f32> = u_xlat5;
        let x_1359 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.w));
        let x_1365 : vec4<f32> = u_xlat10;
        let x_1366 : vec3<f32> = vec3<f32>(x_1365.x, x_1365.z, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1366.x, x_1367.y, x_1366.y, x_1366.z);
        let x_1369 : vec4<f32> = u_xlat5;
        let x_1372 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec4<f32> = u_xlat5;
        let x_1382 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat7.x;
        u_xlat8.x = x_1389;
        let x_1391 : vec4<f32> = u_xlat5;
        let x_1394 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat8;
        let x_1399 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.x, x_1397.y));
        let x_1400 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        let x_1403 : vec4<f32> = u_xlat6;
        let x_1405 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1403.x, x_1403.x, x_1403.x, x_1403.x) * x_1405);
        let x_1408 : vec4<f32> = u_xlat6;
        let x_1410 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1408.y, x_1408.y, x_1408.y, x_1408.y) * x_1410);
        let x_1413 : vec4<f32> = u_xlat6;
        let x_1415 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1413.z, x_1413.z, x_1413.z, x_1413.z) * x_1415);
        let x_1417 : vec4<f32> = u_xlat6;
        let x_1419 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1417.w, x_1417.w, x_1417.w, x_1417.w) * x_1419);
        let x_1422 : vec4<f32> = u_xlat11;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec13;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat69 = x_1434;
        let x_1436 : vec4<f32> = u_xlat11;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.z, x_1436.w);
        let x_1439 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec14;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat1.x = x_1448;
        let x_1451 : f32 = u_xlat1.x;
        let x_1453 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1451 * x_1453);
        let x_1457 : f32 = u_xlat16.x;
        let x_1458 : f32 = u_xlat69;
        let x_1461 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1457 * x_1458) + x_1461);
        let x_1464 : vec2<f32> = u_xlat51;
        let x_1466 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec15;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat1.x = x_1475;
        let x_1478 : f32 = u_xlat16.z;
        let x_1480 : f32 = u_xlat1.x;
        let x_1482 : f32 = u_xlat69;
        u_xlat69 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat14;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec16;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat1.x = x_1497;
        let x_1500 : f32 = u_xlat16.w;
        let x_1502 : f32 = u_xlat1.x;
        let x_1504 : f32 = u_xlat69;
        u_xlat69 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat12;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec17;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat1.x = x_1519;
        let x_1522 : f32 = u_xlat17.x;
        let x_1524 : f32 = u_xlat1.x;
        let x_1526 : f32 = u_xlat69;
        u_xlat69 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat12;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.z, x_1529.w);
        let x_1532 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec18;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat1.x = x_1541;
        let x_1544 : f32 = u_xlat17.y;
        let x_1546 : f32 = u_xlat1.x;
        let x_1548 : f32 = u_xlat69;
        u_xlat69 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat13;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec19;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat1.x = x_1563;
        let x_1566 : f32 = u_xlat17.z;
        let x_1568 : f32 = u_xlat1.x;
        let x_1570 : f32 = u_xlat69;
        u_xlat69 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec4<f32> = u_xlat14;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec20;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
        u_xlat1.x = x_1585;
        let x_1588 : f32 = u_xlat17.w;
        let x_1590 : f32 = u_xlat1.x;
        let x_1592 : f32 = u_xlat69;
        u_xlat69 = ((x_1588 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat15;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
        let x_1598 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec21;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat1.x = x_1607;
        let x_1610 : f32 = u_xlat18.x;
        let x_1612 : f32 = u_xlat1.x;
        let x_1614 : f32 = u_xlat69;
        u_xlat69 = ((x_1610 * x_1612) + x_1614);
        let x_1617 : vec4<f32> = u_xlat15;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.z, x_1617.w);
        let x_1620 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec22;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat1.x = x_1629;
        let x_1632 : f32 = u_xlat18.y;
        let x_1634 : f32 = u_xlat1.x;
        let x_1636 : f32 = u_xlat69;
        u_xlat69 = ((x_1632 * x_1634) + x_1636);
        let x_1639 : vec2<f32> = u_xlat30;
        let x_1641 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec23;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat1.x = x_1650;
        let x_1653 : f32 = u_xlat18.z;
        let x_1655 : f32 = u_xlat1.x;
        let x_1657 : f32 = u_xlat69;
        u_xlat69 = ((x_1653 * x_1655) + x_1657);
        let x_1660 : vec2<f32> = u_xlat59;
        let x_1662 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec24;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat1.x = x_1671;
        let x_1674 : f32 = u_xlat18.w;
        let x_1676 : f32 = u_xlat1.x;
        let x_1678 : f32 = u_xlat69;
        u_xlat69 = ((x_1674 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat10;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
        let x_1684 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec25;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
        u_xlat1.x = x_1693;
        let x_1696 : f32 = u_xlat6.x;
        let x_1698 : f32 = u_xlat1.x;
        let x_1700 : f32 = u_xlat69;
        u_xlat69 = ((x_1696 * x_1698) + x_1700);
        let x_1703 : vec4<f32> = u_xlat10;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.z, x_1703.w);
        let x_1706 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec26;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1713.xy, x_1713.z);
        u_xlat1.x = x_1715;
        let x_1718 : f32 = u_xlat6.y;
        let x_1720 : f32 = u_xlat1.x;
        let x_1722 : f32 = u_xlat69;
        u_xlat69 = ((x_1718 * x_1720) + x_1722);
        let x_1725 : vec2<f32> = u_xlat54;
        let x_1727 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1725.x, x_1725.y, x_1727);
        let x_1734 : vec3<f32> = txVec27;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1734.xy, x_1734.z);
        u_xlat1.x = x_1736;
        let x_1739 : f32 = u_xlat6.z;
        let x_1741 : f32 = u_xlat1.x;
        let x_1743 : f32 = u_xlat69;
        u_xlat69 = ((x_1739 * x_1741) + x_1743);
        let x_1746 : vec4<f32> = u_xlat5;
        let x_1747 : vec2<f32> = vec2<f32>(x_1746.x, x_1746.y);
        let x_1749 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec28;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1756.xy, x_1756.z);
        u_xlat1.x = x_1758;
        let x_1761 : f32 = u_xlat6.w;
        let x_1763 : f32 = u_xlat1.x;
        let x_1765 : f32 = u_xlat69;
        u_xlat23.x = ((x_1761 * x_1763) + x_1765);
      }
    }
  } else {
    let x_1770 : vec4<f32> = u_xlat3;
    let x_1771 : vec2<f32> = vec2<f32>(x_1770.x, x_1770.y);
    let x_1773 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
    let x_1780 : vec3<f32> = txVec29;
    let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1780.xy, x_1780.z);
    u_xlat23.x = x_1782;
  }
  let x_1785 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1785) + 1.0f);
  let x_1789 : f32 = u_xlat23.x;
  let x_1791 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1793 : f32 = u_xlat69;
  u_xlat23.x = ((x_1789 * x_1791) + x_1793);
  let x_1797 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1797);
  let x_1801 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1801 >= 1.0f);
  let x_1803 : bool = u_xlatb69;
  let x_1804 : bool = u_xlatb1;
  u_xlatb69 = (x_1803 | x_1804);
  let x_1806 : bool = u_xlatb69;
  if (x_1806) {
    x_1807 = 1.0f;
  } else {
    let x_1812 : f32 = u_xlat23.x;
    x_1807 = x_1812;
  }
  let x_1813 : f32 = x_1807;
  u_xlat23.x = x_1813;
  let x_1815 : vec3<f32> = vs_TEXCOORD1;
  let x_1818 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1820 : vec3<f32> = (x_1815 + -(x_1818));
  let x_1821 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat3;
  let x_1825 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat69;
  let x_1830 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1833 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1828 * x_1830) + x_1833);
  let x_1837 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1837, 0.0f, 1.0f);
  let x_1841 : f32 = u_xlat23.x;
  u_xlat71 = (-(x_1841) + 1.0f);
  let x_1845 : f32 = u_xlat1.x;
  let x_1846 : f32 = u_xlat71;
  let x_1849 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1845 * x_1846) + x_1849);
  let x_1859 : f32 = x_1857.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1859 == -1.0f));
  let x_1861 : bool = u_xlatb1;
  if (x_1861) {
    let x_1864 : vec3<f32> = vs_TEXCOORD1;
    let x_1867 : vec4<f32> = x_1857.x_MainLightWorldToLight[1i];
    let x_1869 : vec2<f32> = (vec2<f32>(x_1864.y, x_1864.y) * vec2<f32>(x_1867.x, x_1867.y));
    let x_1870 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
    let x_1873 : vec4<f32> = x_1857.x_MainLightWorldToLight[0i];
    let x_1875 : vec3<f32> = vs_TEXCOORD1;
    let x_1878 : vec4<f32> = u_xlat3;
    let x_1880 : vec2<f32> = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1875.x, x_1875.x)) + vec2<f32>(x_1878.x, x_1878.y));
    let x_1881 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
    let x_1884 : vec4<f32> = x_1857.x_MainLightWorldToLight[2i];
    let x_1886 : vec3<f32> = vs_TEXCOORD1;
    let x_1889 : vec4<f32> = u_xlat3;
    let x_1891 : vec2<f32> = ((vec2<f32>(x_1884.x, x_1884.y) * vec2<f32>(x_1886.z, x_1886.z)) + vec2<f32>(x_1889.x, x_1889.y));
    let x_1892 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1891.x, x_1891.y, x_1892.z, x_1892.w);
    let x_1894 : vec4<f32> = u_xlat3;
    let x_1897 : vec4<f32> = x_1857.x_MainLightWorldToLight[3i];
    let x_1899 : vec2<f32> = (vec2<f32>(x_1894.x, x_1894.y) + vec2<f32>(x_1897.x, x_1897.y));
    let x_1900 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1899.x, x_1899.y, x_1900.z, x_1900.w);
    let x_1902 : vec4<f32> = u_xlat3;
    let x_1905 : vec2<f32> = ((vec2<f32>(x_1902.x, x_1902.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1906 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1905.x, x_1905.y, x_1906.z, x_1906.w);
    let x_1913 : vec4<f32> = u_xlat3;
    let x_1916 : f32 = x_44.x_GlobalMipBias.x;
    let x_1917 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1913.x, x_1913.y), x_1916);
    u_xlat3 = x_1917;
    let x_1922 : f32 = x_1857.x_MainLightCookieTextureFormat;
    let x_1924 : f32 = x_1857.x_MainLightCookieTextureFormat;
    let x_1926 : f32 = x_1857.x_MainLightCookieTextureFormat;
    let x_1928 : f32 = x_1857.x_MainLightCookieTextureFormat;
    let x_1929 : vec4<f32> = vec4<f32>(x_1922, x_1924, x_1926, x_1928);
    let x_1936 : vec4<bool> = (vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1929.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1936.x, x_1936.y);
    let x_1939 : bool = u_xlatb5.y;
    if (x_1939) {
      let x_1944 : f32 = u_xlat3.w;
      x_1940 = x_1944;
    } else {
      let x_1947 : f32 = u_xlat3.x;
      x_1940 = x_1947;
    }
    let x_1948 : f32 = x_1940;
    u_xlat1.x = x_1948;
    let x_1951 : bool = u_xlatb5.x;
    if (x_1951) {
      let x_1955 : vec4<f32> = u_xlat3;
      x_1952 = vec3<f32>(x_1955.x, x_1955.y, x_1955.z);
    } else {
      let x_1958 : vec4<f32> = u_xlat1;
      x_1952 = vec3<f32>(x_1958.x, x_1958.x, x_1958.x);
    }
    let x_1960 : vec3<f32> = x_1952;
    let x_1961 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1967 : vec4<f32> = u_xlat3;
  let x_1970 : vec4<f32> = x_44.x_MainLightColor;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1976 : f32 = u_xlat23.x;
  let x_1978 : f32 = x_186.unity_LightData.z;
  u_xlat23.x = (x_1976 * x_1978);
  let x_1981 : vec3<f32> = u_xlat23;
  let x_1983 : vec4<f32> = u_xlat3;
  let x_1985 : vec3<f32> = (vec3<f32>(x_1981.x, x_1981.x, x_1981.x) * vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
  let x_1988 : vec4<f32> = u_xlat2;
  let x_1991 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(vec3<f32>(x_1988.x, x_1988.y, x_1988.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1996 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1996, 0.0f, 1.0f);
  let x_1999 : vec3<f32> = u_xlat23;
  let x_2001 : vec4<f32> = u_xlat3;
  let x_2003 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.x, x_1999.x) * vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
  let x_2004 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
  let x_2006 : vec4<f32> = u_xlat1;
  let x_2008 : vec4<f32> = u_xlat3;
  let x_2010 : vec3<f32> = (vec3<f32>(x_2006.y, x_2006.z, x_2006.w) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2014 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2016 : f32 = x_186.unity_LightData.y;
  u_xlat23.x = min(x_2014, x_2016);
  let x_2020 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_2020));
  let x_2023 : f32 = u_xlat69;
  let x_2026 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_2029 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_2023 * x_2026) + x_2029);
  let x_2031 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2031, 0.0f, 1.0f);
  let x_2034 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2036 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2038 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2040 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2041 : vec4<f32> = vec4<f32>(x_2034, x_2036, x_2038, x_2040);
  let x_2047 : vec4<bool> = (vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2041.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2047.x, x_2047.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2059 : u32 = u_xlatu_loop_1;
    let x_2060 : u32 = u_xlatu23;
    if ((x_2059 < x_2060)) {
    } else {
      break;
    }
    let x_2063 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2063 >> 2u);
    let x_2066 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2066 & 3u));
    let x_2069 : u32 = u_xlatu71;
    let x_2072 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2069)];
    let x_2082 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2087 : vec4<u32> = indexable[x_2082];
    u_xlat71 = dot(x_2072, bitcast<vec4<f32>>(x_2087));
    let x_2091 : f32 = u_xlat71;
    u_xlati71 = i32(x_2091);
    let x_2093 : vec3<f32> = vs_TEXCOORD1;
    let x_2104 : i32 = u_xlati71;
    let x_2106 : vec4<f32> = x_2103.x_AdditionalLightsPosition[x_2104];
    let x_2109 : i32 = u_xlati71;
    let x_2111 : vec4<f32> = x_2103.x_AdditionalLightsPosition[x_2109];
    let x_2113 : vec3<f32> = ((-(x_2093) * vec3<f32>(x_2106.w, x_2106.w, x_2106.w)) + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
    let x_2117 : vec4<f32> = u_xlat7;
    let x_2119 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
    let x_2122 : f32 = u_xlat72;
    u_xlat72 = max(x_2122, 0.00006103515625f);
    let x_2126 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2126);
    let x_2128 : f32 = u_xlat73;
    let x_2130 : vec4<f32> = u_xlat7;
    let x_2132 : vec3<f32> = (vec3<f32>(x_2128, x_2128, x_2128) * vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
    let x_2133 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
    let x_2135 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2135);
    let x_2137 : f32 = u_xlat72;
    let x_2138 : i32 = u_xlati71;
    let x_2140 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2138].x;
    u_xlat72 = (x_2137 * x_2140);
    let x_2142 : f32 = u_xlat72;
    let x_2144 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2142) * x_2144) + 1.0f);
    let x_2147 : f32 = u_xlat72;
    u_xlat72 = max(x_2147, 0.0f);
    let x_2149 : f32 = u_xlat72;
    let x_2150 : f32 = u_xlat72;
    u_xlat72 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat72;
    let x_2153 : f32 = u_xlat73;
    u_xlat72 = (x_2152 * x_2153);
    let x_2155 : i32 = u_xlati71;
    let x_2157 : vec4<f32> = x_2103.x_AdditionalLightsSpotDir[x_2155];
    let x_2159 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2157.x, x_2157.y, x_2157.z), vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
    let x_2162 : f32 = u_xlat73;
    let x_2163 : i32 = u_xlati71;
    let x_2165 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2163].z;
    let x_2167 : i32 = u_xlati71;
    let x_2169 : f32 = x_2103.x_AdditionalLightsAttenuation[x_2167].w;
    u_xlat73 = ((x_2162 * x_2165) + x_2169);
    let x_2171 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2171, 0.0f, 1.0f);
    let x_2173 : f32 = u_xlat73;
    let x_2174 : f32 = u_xlat73;
    u_xlat73 = (x_2173 * x_2174);
    let x_2176 : f32 = u_xlat72;
    let x_2177 : f32 = u_xlat73;
    u_xlat72 = (x_2176 * x_2177);
    let x_2181 : i32 = u_xlati71;
    let x_2183 : f32 = x_249.x_AdditionalShadowParams[x_2181].w;
    u_xlati73 = i32(x_2183);
    let x_2186 : i32 = u_xlati73;
    u_xlatb51 = (x_2186 >= 0i);
    let x_2188 : bool = u_xlatb51;
    if (x_2188) {
      let x_2192 : i32 = u_xlati71;
      let x_2194 : f32 = x_249.x_AdditionalShadowParams[x_2192].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2194, x_2194, x_2194, x_2194))));
      let x_2198 : bool = u_xlatb51;
      if (x_2198) {
        let x_2202 : vec4<f32> = u_xlat7;
        let x_2205 : vec4<f32> = u_xlat7;
        let x_2208 : vec4<bool> = (abs(vec4<f32>(x_2202.z, x_2202.z, x_2202.y, x_2202.z)) >= abs(vec4<f32>(x_2205.x, x_2205.y, x_2205.x, x_2205.x)));
        let x_2210 : vec3<bool> = vec3<bool>(x_2208.x, x_2208.y, x_2208.z);
        let x_2211 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
        let x_2214 : bool = u_xlatb8.y;
        let x_2216 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2214 & x_2216);
        let x_2218 : vec4<f32> = u_xlat7;
        let x_2221 : vec4<bool> = (-(vec4<f32>(x_2218.z, x_2218.y, x_2218.z, x_2218.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2222 : vec3<bool> = vec3<bool>(x_2221.x, x_2221.y, x_2221.w);
        let x_2223 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2222.x, x_2222.y, x_2223.z, x_2222.z);
        let x_2226 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2226);
        let x_2231 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2231);
        let x_2236 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2236);
        let x_2239 : bool = u_xlatb8.z;
        if (x_2239) {
          let x_2244 : f32 = u_xlat8.y;
          x_2240 = x_2244;
        } else {
          let x_2246 : f32 = u_xlat74;
          x_2240 = x_2246;
        }
        let x_2247 : f32 = x_2240;
        u_xlat74 = x_2247;
        let x_2248 : bool = u_xlatb51;
        if (x_2248) {
          let x_2253 : f32 = u_xlat8.x;
          x_2249 = x_2253;
        } else {
          let x_2255 : f32 = u_xlat74;
          x_2249 = x_2255;
        }
        let x_2256 : f32 = x_2249;
        u_xlat51.x = x_2256;
        let x_2258 : i32 = u_xlati71;
        let x_2260 : f32 = x_249.x_AdditionalShadowParams[x_2258].w;
        u_xlat74 = trunc(x_2260);
        let x_2263 : f32 = u_xlat51.x;
        let x_2264 : f32 = u_xlat74;
        u_xlat51.x = (x_2263 + x_2264);
        let x_2268 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2268);
      }
      let x_2270 : i32 = u_xlati73;
      u_xlati73 = (x_2270 << bitcast<u32>(2i));
      let x_2272 : vec3<f32> = vs_TEXCOORD1;
      let x_2275 : i32 = u_xlati73;
      let x_2278 : i32 = u_xlati73;
      let x_2282 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2275 + 1i) / 4i)][((x_2278 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2272.y, x_2272.y, x_2272.y, x_2272.y) * x_2282);
      let x_2284 : i32 = u_xlati73;
      let x_2286 : i32 = u_xlati73;
      let x_2289 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2284 / 4i)][(x_2286 % 4i)];
      let x_2290 : vec3<f32> = vs_TEXCOORD1;
      let x_2293 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2289 * vec4<f32>(x_2290.x, x_2290.x, x_2290.x, x_2290.x)) + x_2293);
      let x_2295 : i32 = u_xlati73;
      let x_2298 : i32 = u_xlati73;
      let x_2302 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2295 + 2i) / 4i)][((x_2298 + 2i) % 4i)];
      let x_2303 : vec3<f32> = vs_TEXCOORD1;
      let x_2306 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2302 * vec4<f32>(x_2303.z, x_2303.z, x_2303.z, x_2303.z)) + x_2306);
      let x_2308 : vec4<f32> = u_xlat8;
      let x_2309 : i32 = u_xlati73;
      let x_2312 : i32 = u_xlati73;
      let x_2316 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2309 + 3i) / 4i)][((x_2312 + 3i) % 4i)];
      u_xlat8 = (x_2308 + x_2316);
      let x_2318 : vec4<f32> = u_xlat8;
      let x_2320 : vec4<f32> = u_xlat8;
      let x_2322 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) / vec3<f32>(x_2320.w, x_2320.w, x_2320.w));
      let x_2323 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
      let x_2326 : i32 = u_xlati71;
      let x_2328 : f32 = x_249.x_AdditionalShadowParams[x_2326].y;
      u_xlatb73 = (0.0f < x_2328);
      let x_2330 : bool = u_xlatb73;
      if (x_2330) {
        let x_2333 : i32 = u_xlati71;
        let x_2335 : f32 = x_249.x_AdditionalShadowParams[x_2333].y;
        u_xlatb73 = (1.0f == x_2335);
        let x_2337 : bool = u_xlatb73;
        if (x_2337) {
          let x_2340 : vec4<f32> = u_xlat8;
          let x_2344 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y) + x_2344);
          let x_2347 : vec4<f32> = u_xlat9;
          let x_2348 : vec2<f32> = vec2<f32>(x_2347.x, x_2347.y);
          let x_2350 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2348.x, x_2348.y, x_2350);
          let x_2358 : vec3<f32> = txVec30;
          let x_2360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
          u_xlat10.x = x_2360;
          let x_2363 : vec4<f32> = u_xlat9;
          let x_2364 : vec2<f32> = vec2<f32>(x_2363.z, x_2363.w);
          let x_2366 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
          let x_2373 : vec3<f32> = txVec31;
          let x_2375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2373.xy, x_2373.z);
          u_xlat10.y = x_2375;
          let x_2377 : vec4<f32> = u_xlat8;
          let x_2381 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y) + x_2381);
          let x_2384 : vec4<f32> = u_xlat9;
          let x_2385 : vec2<f32> = vec2<f32>(x_2384.x, x_2384.y);
          let x_2387 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2385.x, x_2385.y, x_2387);
          let x_2394 : vec3<f32> = txVec32;
          let x_2396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2394.xy, x_2394.z);
          u_xlat10.z = x_2396;
          let x_2399 : vec4<f32> = u_xlat9;
          let x_2400 : vec2<f32> = vec2<f32>(x_2399.z, x_2399.w);
          let x_2402 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2400.x, x_2400.y, x_2402);
          let x_2409 : vec3<f32> = txVec33;
          let x_2411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2409.xy, x_2409.z);
          u_xlat10.w = x_2411;
          let x_2413 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2413, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2416 : i32 = u_xlati71;
          let x_2418 : f32 = x_249.x_AdditionalShadowParams[x_2416].y;
          u_xlatb51 = (2.0f == x_2418);
          let x_2420 : bool = u_xlatb51;
          if (x_2420) {
            let x_2423 : vec4<f32> = u_xlat8;
            let x_2427 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2423.x, x_2423.y) * vec2<f32>(x_2427.z, x_2427.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2431 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2431);
            let x_2433 : vec4<f32> = u_xlat8;
            let x_2436 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2439 : vec2<f32> = u_xlat51;
            let x_2441 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2436.z, x_2436.w)) + -(x_2439));
            let x_2442 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2441.x, x_2441.y, x_2442.z, x_2442.w);
            let x_2444 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2444.x, x_2444.x, x_2444.y, x_2444.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2447 : vec4<f32> = u_xlat10;
            let x_2449 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2447.x, x_2447.x, x_2447.z, x_2447.z) * vec4<f32>(x_2449.x, x_2449.x, x_2449.z, x_2449.z));
            let x_2453 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2453.y, x_2453.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2456 : vec4<f32> = u_xlat11;
            let x_2459 : vec4<f32> = u_xlat9;
            let x_2462 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2459.x, x_2459.y)));
            let x_2463 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2462.x, x_2463.y, x_2462.y, x_2463.w);
            let x_2465 : vec4<f32> = u_xlat9;
            let x_2468 : vec2<f32> = (-(vec2<f32>(x_2465.x, x_2465.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2469 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2472 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2472.x, x_2472.y), vec2<f32>(0.0f, 0.0f));
            let x_2475 : vec2<f32> = u_xlat57;
            let x_2477 : vec2<f32> = u_xlat57;
            let x_2479 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2475) * x_2477) + vec2<f32>(x_2479.x, x_2479.y));
            let x_2482 : vec4<f32> = u_xlat9;
            let x_2484 : vec2<f32> = max(vec2<f32>(x_2482.x, x_2482.y), vec2<f32>(0.0f, 0.0f));
            let x_2485 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2487 : vec4<f32> = u_xlat9;
            let x_2490 : vec4<f32> = u_xlat9;
            let x_2493 : vec4<f32> = u_xlat10;
            let x_2495 : vec2<f32> = ((-(vec2<f32>(x_2487.x, x_2487.y)) * vec2<f32>(x_2490.x, x_2490.y)) + vec2<f32>(x_2493.y, x_2493.w));
            let x_2496 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
            let x_2498 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2498 + vec2<f32>(1.0f, 1.0f));
            let x_2500 : vec4<f32> = u_xlat9;
            let x_2502 : vec2<f32> = (vec2<f32>(x_2500.x, x_2500.y) + vec2<f32>(1.0f, 1.0f));
            let x_2503 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2505 : vec4<f32> = u_xlat10;
            let x_2507 : vec2<f32> = (vec2<f32>(x_2505.x, x_2505.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2508 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat11;
            let x_2512 : vec2<f32> = (vec2<f32>(x_2510.x, x_2510.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2513 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
            let x_2515 : vec2<f32> = u_xlat57;
            let x_2516 : vec2<f32> = (x_2515 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2517 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2516.x, x_2516.y, x_2517.z, x_2517.w);
            let x_2519 : vec4<f32> = u_xlat9;
            let x_2521 : vec2<f32> = (vec2<f32>(x_2519.x, x_2519.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2522 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec4<f32> = u_xlat10;
            let x_2526 : vec2<f32> = (vec2<f32>(x_2524.y, x_2524.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2527 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2526.x, x_2526.y, x_2527.z, x_2527.w);
            let x_2530 : f32 = u_xlat11.x;
            u_xlat12.z = x_2530;
            let x_2533 : f32 = u_xlat9.x;
            u_xlat12.w = x_2533;
            let x_2536 : f32 = u_xlat14.x;
            u_xlat13.z = x_2536;
            let x_2539 : f32 = u_xlat55.x;
            u_xlat13.w = x_2539;
            let x_2541 : vec4<f32> = u_xlat12;
            let x_2543 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2541.z, x_2541.w, x_2541.x, x_2541.z) + vec4<f32>(x_2543.z, x_2543.w, x_2543.x, x_2543.z));
            let x_2547 : f32 = u_xlat12.y;
            u_xlat11.z = x_2547;
            let x_2550 : f32 = u_xlat9.y;
            u_xlat11.w = x_2550;
            let x_2553 : f32 = u_xlat13.y;
            u_xlat14.z = x_2553;
            let x_2556 : f32 = u_xlat55.y;
            u_xlat14.w = x_2556;
            let x_2558 : vec4<f32> = u_xlat11;
            let x_2560 : vec4<f32> = u_xlat14;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2558.z, x_2558.y, x_2558.w) + vec3<f32>(x_2560.z, x_2560.y, x_2560.w));
            let x_2563 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat13;
            let x_2567 : vec4<f32> = u_xlat10;
            let x_2569 : vec3<f32> = (vec3<f32>(x_2565.x, x_2565.z, x_2565.w) / vec3<f32>(x_2567.z, x_2567.w, x_2567.y));
            let x_2570 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
            let x_2572 : vec4<f32> = u_xlat11;
            let x_2574 : vec3<f32> = (vec3<f32>(x_2572.x, x_2572.y, x_2572.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2575 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat14;
            let x_2579 : vec4<f32> = u_xlat9;
            let x_2581 : vec3<f32> = (vec3<f32>(x_2577.z, x_2577.y, x_2577.w) / vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
            let x_2582 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
            let x_2584 : vec4<f32> = u_xlat12;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2584.x, x_2584.y, x_2584.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2587 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat11;
            let x_2592 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2594 : vec3<f32> = (vec3<f32>(x_2589.y, x_2589.x, x_2589.z) * vec3<f32>(x_2592.x, x_2592.x, x_2592.x));
            let x_2595 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
            let x_2597 : vec4<f32> = u_xlat12;
            let x_2600 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2602 : vec3<f32> = (vec3<f32>(x_2597.x, x_2597.y, x_2597.z) * vec3<f32>(x_2600.y, x_2600.y, x_2600.y));
            let x_2603 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
            let x_2606 : f32 = u_xlat12.x;
            u_xlat11.w = x_2606;
            let x_2608 : vec2<f32> = u_xlat51;
            let x_2611 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2614 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.y, x_2614.w, x_2614.x, x_2614.w));
            let x_2617 : vec2<f32> = u_xlat51;
            let x_2619 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2622 : vec4<f32> = u_xlat11;
            let x_2624 : vec2<f32> = ((x_2617 * vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(x_2622.z, x_2622.w));
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2628 : f32 = u_xlat11.y;
            u_xlat12.w = x_2628;
            let x_2630 : vec4<f32> = u_xlat12;
            let x_2631 : vec2<f32> = vec2<f32>(x_2630.y, x_2630.z);
            let x_2632 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2632.x, x_2631.x, x_2632.z, x_2631.y);
            let x_2634 : vec2<f32> = u_xlat51;
            let x_2637 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2640 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.y) * vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y)) + vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2640.y));
            let x_2643 : vec2<f32> = u_xlat51;
            let x_2646 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2649 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y) * vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.y)) + vec4<f32>(x_2649.w, x_2649.y, x_2649.w, x_2649.z));
            let x_2652 : vec2<f32> = u_xlat51;
            let x_2655 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2658 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2652.x, x_2652.y, x_2652.x, x_2652.y) * vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y)) + vec4<f32>(x_2658.x, x_2658.w, x_2658.z, x_2658.w));
            let x_2661 : vec4<f32> = u_xlat9;
            let x_2663 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2661.x, x_2661.x, x_2661.x, x_2661.y) * vec4<f32>(x_2663.z, x_2663.w, x_2663.y, x_2663.z));
            let x_2666 : vec4<f32> = u_xlat9;
            let x_2668 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2666.y, x_2666.y, x_2666.z, x_2666.z) * x_2668);
            let x_2671 : f32 = u_xlat9.z;
            let x_2673 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2671 * x_2673);
            let x_2677 : vec4<f32> = u_xlat13;
            let x_2678 : vec2<f32> = vec2<f32>(x_2677.x, x_2677.y);
            let x_2680 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec34;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat74 = x_2689;
            let x_2691 : vec4<f32> = u_xlat13;
            let x_2692 : vec2<f32> = vec2<f32>(x_2691.z, x_2691.w);
            let x_2694 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2692.x, x_2692.y, x_2694);
            let x_2702 : vec3<f32> = txVec35;
            let x_2704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
            u_xlat75 = x_2704;
            let x_2705 : f32 = u_xlat75;
            let x_2707 : f32 = u_xlat16.y;
            u_xlat75 = (x_2705 * x_2707);
            let x_2710 : f32 = u_xlat16.x;
            let x_2711 : f32 = u_xlat74;
            let x_2713 : f32 = u_xlat75;
            u_xlat74 = ((x_2710 * x_2711) + x_2713);
            let x_2716 : vec4<f32> = u_xlat14;
            let x_2717 : vec2<f32> = vec2<f32>(x_2716.x, x_2716.y);
            let x_2719 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
            let x_2726 : vec3<f32> = txVec36;
            let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
            u_xlat75 = x_2728;
            let x_2730 : f32 = u_xlat16.z;
            let x_2731 : f32 = u_xlat75;
            let x_2733 : f32 = u_xlat74;
            u_xlat74 = ((x_2730 * x_2731) + x_2733);
            let x_2736 : vec4<f32> = u_xlat12;
            let x_2737 : vec2<f32> = vec2<f32>(x_2736.x, x_2736.y);
            let x_2739 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2737.x, x_2737.y, x_2739);
            let x_2746 : vec3<f32> = txVec37;
            let x_2748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2746.xy, x_2746.z);
            u_xlat75 = x_2748;
            let x_2750 : f32 = u_xlat16.w;
            let x_2751 : f32 = u_xlat75;
            let x_2753 : f32 = u_xlat74;
            u_xlat74 = ((x_2750 * x_2751) + x_2753);
            let x_2756 : vec4<f32> = u_xlat15;
            let x_2757 : vec2<f32> = vec2<f32>(x_2756.x, x_2756.y);
            let x_2759 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
            let x_2766 : vec3<f32> = txVec38;
            let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
            u_xlat75 = x_2768;
            let x_2770 : f32 = u_xlat17.x;
            let x_2771 : f32 = u_xlat75;
            let x_2773 : f32 = u_xlat74;
            u_xlat74 = ((x_2770 * x_2771) + x_2773);
            let x_2776 : vec4<f32> = u_xlat15;
            let x_2777 : vec2<f32> = vec2<f32>(x_2776.z, x_2776.w);
            let x_2779 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2777.x, x_2777.y, x_2779);
            let x_2786 : vec3<f32> = txVec39;
            let x_2788 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2786.xy, x_2786.z);
            u_xlat75 = x_2788;
            let x_2790 : f32 = u_xlat17.y;
            let x_2791 : f32 = u_xlat75;
            let x_2793 : f32 = u_xlat74;
            u_xlat74 = ((x_2790 * x_2791) + x_2793);
            let x_2796 : vec4<f32> = u_xlat12;
            let x_2797 : vec2<f32> = vec2<f32>(x_2796.z, x_2796.w);
            let x_2799 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2797.x, x_2797.y, x_2799);
            let x_2806 : vec3<f32> = txVec40;
            let x_2808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2806.xy, x_2806.z);
            u_xlat75 = x_2808;
            let x_2810 : f32 = u_xlat17.z;
            let x_2811 : f32 = u_xlat75;
            let x_2813 : f32 = u_xlat74;
            u_xlat74 = ((x_2810 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat11;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.x, x_2816.y);
            let x_2819 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec41;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat75 = x_2828;
            let x_2830 : f32 = u_xlat17.w;
            let x_2831 : f32 = u_xlat75;
            let x_2833 : f32 = u_xlat74;
            u_xlat74 = ((x_2830 * x_2831) + x_2833);
            let x_2836 : vec4<f32> = u_xlat11;
            let x_2837 : vec2<f32> = vec2<f32>(x_2836.z, x_2836.w);
            let x_2839 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
            let x_2846 : vec3<f32> = txVec42;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat75 = x_2848;
            let x_2850 : f32 = u_xlat51.x;
            let x_2851 : f32 = u_xlat75;
            let x_2853 : f32 = u_xlat74;
            u_xlat73 = ((x_2850 * x_2851) + x_2853);
          } else {
            let x_2856 : vec4<f32> = u_xlat8;
            let x_2859 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(x_2859.z, x_2859.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2863 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2863);
            let x_2865 : vec4<f32> = u_xlat8;
            let x_2868 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2871 : vec2<f32> = u_xlat51;
            let x_2873 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(x_2868.z, x_2868.w)) + -(x_2871));
            let x_2874 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2873.x, x_2873.y, x_2874.z, x_2874.w);
            let x_2876 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2876.x, x_2876.x, x_2876.y, x_2876.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2879 : vec4<f32> = u_xlat10;
            let x_2881 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2879.x, x_2879.x, x_2879.z, x_2879.z) * vec4<f32>(x_2881.x, x_2881.x, x_2881.z, x_2881.z));
            let x_2884 : vec4<f32> = u_xlat11;
            let x_2886 : vec2<f32> = (vec2<f32>(x_2884.y, x_2884.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2887.x, x_2886.x, x_2887.z, x_2886.y);
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2892 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2889.x, x_2889.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2892.x, x_2892.y)));
            let x_2896 : vec4<f32> = u_xlat9;
            let x_2899 : vec2<f32> = (-(vec2<f32>(x_2896.x, x_2896.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2900 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2899.x, x_2900.y, x_2899.y, x_2900.w);
            let x_2902 : vec4<f32> = u_xlat9;
            let x_2904 : vec2<f32> = min(vec2<f32>(x_2902.x, x_2902.y), vec2<f32>(0.0f, 0.0f));
            let x_2905 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec4<f32> = u_xlat11;
            let x_2910 : vec4<f32> = u_xlat11;
            let x_2913 : vec4<f32> = u_xlat10;
            let x_2915 : vec2<f32> = ((-(vec2<f32>(x_2907.x, x_2907.y)) * vec2<f32>(x_2910.x, x_2910.y)) + vec2<f32>(x_2913.x, x_2913.z));
            let x_2916 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2915.x, x_2916.y, x_2915.y, x_2916.w);
            let x_2918 : vec4<f32> = u_xlat9;
            let x_2920 : vec2<f32> = max(vec2<f32>(x_2918.x, x_2918.y), vec2<f32>(0.0f, 0.0f));
            let x_2921 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2920.x, x_2920.y, x_2921.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat11;
            let x_2926 : vec4<f32> = u_xlat11;
            let x_2929 : vec4<f32> = u_xlat10;
            let x_2931 : vec2<f32> = ((-(vec2<f32>(x_2923.x, x_2923.y)) * vec2<f32>(x_2926.x, x_2926.y)) + vec2<f32>(x_2929.y, x_2929.w));
            let x_2932 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2932.x, x_2931.x, x_2932.z, x_2931.y);
            let x_2934 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2934 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2938 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2938 * 0.08163200318813323975f);
            let x_2941 : vec2<f32> = u_xlat55;
            let x_2943 : vec2<f32> = (vec2<f32>(x_2941.y, x_2941.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2946.x, x_2946.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2950 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2950 * 0.08163200318813323975f);
            let x_2954 : f32 = u_xlat13.y;
            u_xlat11.x = x_2954;
            let x_2956 : vec4<f32> = u_xlat9;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2956.x, x_2956.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2960 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2960.x, x_2959.x, x_2960.z, x_2959.y);
            let x_2962 : vec4<f32> = u_xlat9;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2962.x, x_2962.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2966 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2965.x, x_2966.y, x_2965.y, x_2966.w);
            let x_2969 : f32 = u_xlat55.x;
            u_xlat10.y = x_2969;
            let x_2972 : f32 = u_xlat12.y;
            u_xlat10.w = x_2972;
            let x_2974 : vec4<f32> = u_xlat10;
            let x_2975 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2974 + x_2975);
            let x_2977 : vec4<f32> = u_xlat9;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2977.y, x_2977.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2981.x, x_2980.x, x_2981.z, x_2980.y);
            let x_2983 : vec4<f32> = u_xlat9;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2983.y, x_2983.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2987 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2986.x, x_2987.y, x_2986.y, x_2987.w);
            let x_2990 : f32 = u_xlat55.y;
            u_xlat12.y = x_2990;
            let x_2992 : vec4<f32> = u_xlat12;
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2992 + x_2993);
            let x_2995 : vec4<f32> = u_xlat10;
            let x_2996 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2995 / x_2996);
            let x_2998 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2998 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3000 : vec4<f32> = u_xlat12;
            let x_3001 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_3000 / x_3001);
            let x_3003 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_3003 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3005 : vec4<f32> = u_xlat10;
            let x_3008 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_3005.w, x_3005.x, x_3005.y, x_3005.z) * vec4<f32>(x_3008.x, x_3008.x, x_3008.x, x_3008.x));
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3014 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_3011.x, x_3011.w, x_3011.y, x_3011.z) * vec4<f32>(x_3014.y, x_3014.y, x_3014.y, x_3014.y));
            let x_3017 : vec4<f32> = u_xlat10;
            let x_3018 : vec3<f32> = vec3<f32>(x_3017.y, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3018.x, x_3019.y, x_3018.y, x_3018.z);
            let x_3022 : f32 = u_xlat12.x;
            u_xlat13.y = x_3022;
            let x_3024 : vec2<f32> = u_xlat51;
            let x_3027 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3030.y));
            let x_3033 : vec2<f32> = u_xlat51;
            let x_3035 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat13;
            let x_3040 : vec2<f32> = ((x_3033 * vec2<f32>(x_3035.x, x_3035.y)) + vec2<f32>(x_3038.w, x_3038.y));
            let x_3041 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3040.x, x_3040.y, x_3041.z, x_3041.w);
            let x_3044 : f32 = u_xlat13.y;
            u_xlat10.y = x_3044;
            let x_3047 : f32 = u_xlat12.z;
            u_xlat13.y = x_3047;
            let x_3049 : vec2<f32> = u_xlat51;
            let x_3052 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y) * vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y)) + vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3055.y));
            let x_3059 : vec2<f32> = u_xlat51;
            let x_3061 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_3059 * vec2<f32>(x_3061.x, x_3061.y)) + vec2<f32>(x_3064.w, x_3064.y));
            let x_3068 : f32 = u_xlat13.y;
            u_xlat10.z = x_3068;
            let x_3070 : vec2<f32> = u_xlat51;
            let x_3073 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_3070.x, x_3070.y, x_3070.x, x_3070.y) * vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.y)) + vec4<f32>(x_3076.x, x_3076.y, x_3076.x, x_3076.z));
            let x_3080 : f32 = u_xlat12.w;
            u_xlat13.y = x_3080;
            let x_3082 : vec2<f32> = u_xlat51;
            let x_3085 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3088 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_3082.x, x_3082.y, x_3082.x, x_3082.y) * vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y)) + vec4<f32>(x_3088.x, x_3088.y, x_3088.z, x_3088.y));
            let x_3092 : vec2<f32> = u_xlat51;
            let x_3094 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3097 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_3092 * vec2<f32>(x_3094.x, x_3094.y)) + vec2<f32>(x_3097.w, x_3097.y));
            let x_3101 : f32 = u_xlat13.y;
            u_xlat10.w = x_3101;
            let x_3104 : vec2<f32> = u_xlat51;
            let x_3106 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_3104 * vec2<f32>(x_3106.x, x_3106.y)) + vec2<f32>(x_3109.x, x_3109.w));
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3113 : vec3<f32> = vec3<f32>(x_3112.x, x_3112.z, x_3112.w);
            let x_3114 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3113.x, x_3114.y, x_3113.y, x_3113.z);
            let x_3116 : vec2<f32> = u_xlat51;
            let x_3119 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y) * vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y)) + vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3122.y));
            let x_3126 : vec2<f32> = u_xlat51;
            let x_3128 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3131 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3126 * vec2<f32>(x_3128.x, x_3128.y)) + vec2<f32>(x_3131.w, x_3131.y));
            let x_3135 : f32 = u_xlat10.x;
            u_xlat12.x = x_3135;
            let x_3137 : vec2<f32> = u_xlat51;
            let x_3139 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3142 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3137 * vec2<f32>(x_3139.x, x_3139.y)) + vec2<f32>(x_3142.x, x_3142.y));
            let x_3146 : vec4<f32> = u_xlat9;
            let x_3148 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3146.x, x_3146.x, x_3146.x, x_3146.x) * x_3148);
            let x_3151 : vec4<f32> = u_xlat9;
            let x_3153 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3151.y, x_3151.y, x_3151.y, x_3151.y) * x_3153);
            let x_3156 : vec4<f32> = u_xlat9;
            let x_3158 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3156.z, x_3156.z, x_3156.z, x_3156.z) * x_3158);
            let x_3160 : vec4<f32> = u_xlat9;
            let x_3162 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3160.w, x_3160.w, x_3160.w, x_3160.w) * x_3162);
            let x_3165 : vec4<f32> = u_xlat14;
            let x_3166 : vec2<f32> = vec2<f32>(x_3165.x, x_3165.y);
            let x_3168 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec43;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat75 = x_3177;
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3180 : vec2<f32> = vec2<f32>(x_3179.z, x_3179.w);
            let x_3182 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3190 : vec3<f32> = txVec44;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat76 = x_3192;
            let x_3193 : f32 = u_xlat76;
            let x_3195 : f32 = u_xlat20.y;
            u_xlat76 = (x_3193 * x_3195);
            let x_3198 : f32 = u_xlat20.x;
            let x_3199 : f32 = u_xlat75;
            let x_3201 : f32 = u_xlat76;
            u_xlat75 = ((x_3198 * x_3199) + x_3201);
            let x_3204 : vec4<f32> = u_xlat15;
            let x_3205 : vec2<f32> = vec2<f32>(x_3204.x, x_3204.y);
            let x_3207 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
            let x_3214 : vec3<f32> = txVec45;
            let x_3216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
            u_xlat76 = x_3216;
            let x_3218 : f32 = u_xlat20.z;
            let x_3219 : f32 = u_xlat76;
            let x_3221 : f32 = u_xlat75;
            u_xlat75 = ((x_3218 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat17;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
            let x_3227 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec46;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat76 = x_3236;
            let x_3238 : f32 = u_xlat20.w;
            let x_3239 : f32 = u_xlat76;
            let x_3241 : f32 = u_xlat75;
            u_xlat75 = ((x_3238 * x_3239) + x_3241);
            let x_3244 : vec4<f32> = u_xlat16;
            let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
            let x_3247 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec47;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat76 = x_3256;
            let x_3258 : f32 = u_xlat21.x;
            let x_3259 : f32 = u_xlat76;
            let x_3261 : f32 = u_xlat75;
            u_xlat75 = ((x_3258 * x_3259) + x_3261);
            let x_3264 : vec4<f32> = u_xlat16;
            let x_3265 : vec2<f32> = vec2<f32>(x_3264.z, x_3264.w);
            let x_3267 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec48;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat76 = x_3276;
            let x_3278 : f32 = u_xlat21.y;
            let x_3279 : f32 = u_xlat76;
            let x_3281 : f32 = u_xlat75;
            u_xlat75 = ((x_3278 * x_3279) + x_3281);
            let x_3284 : vec2<f32> = u_xlat61;
            let x_3286 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec49;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat76 = x_3295;
            let x_3297 : f32 = u_xlat21.z;
            let x_3298 : f32 = u_xlat76;
            let x_3300 : f32 = u_xlat75;
            u_xlat75 = ((x_3297 * x_3298) + x_3300);
            let x_3303 : vec4<f32> = u_xlat17;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.z, x_3303.w);
            let x_3306 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec50;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat76 = x_3315;
            let x_3317 : f32 = u_xlat21.w;
            let x_3318 : f32 = u_xlat76;
            let x_3320 : f32 = u_xlat75;
            u_xlat75 = ((x_3317 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat18;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec51;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat76 = x_3335;
            let x_3337 : f32 = u_xlat22.x;
            let x_3338 : f32 = u_xlat76;
            let x_3340 : f32 = u_xlat75;
            u_xlat75 = ((x_3337 * x_3338) + x_3340);
            let x_3343 : vec4<f32> = u_xlat18;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.z, x_3343.w);
            let x_3346 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec52;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat76 = x_3355;
            let x_3357 : f32 = u_xlat22.y;
            let x_3358 : f32 = u_xlat76;
            let x_3360 : f32 = u_xlat75;
            u_xlat75 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec2<f32> = u_xlat33;
            let x_3365 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
            let x_3372 : vec3<f32> = txVec53;
            let x_3374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
            u_xlat76 = x_3374;
            let x_3376 : f32 = u_xlat22.z;
            let x_3377 : f32 = u_xlat76;
            let x_3379 : f32 = u_xlat75;
            u_xlat75 = ((x_3376 * x_3377) + x_3379);
            let x_3382 : vec2<f32> = u_xlat19;
            let x_3384 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
            let x_3391 : vec3<f32> = txVec54;
            let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
            u_xlat76 = x_3393;
            let x_3395 : f32 = u_xlat22.w;
            let x_3396 : f32 = u_xlat76;
            let x_3398 : f32 = u_xlat75;
            u_xlat75 = ((x_3395 * x_3396) + x_3398);
            let x_3401 : vec4<f32> = u_xlat13;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.x, x_3401.y);
            let x_3404 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec55;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat76 = x_3413;
            let x_3415 : f32 = u_xlat9.x;
            let x_3416 : f32 = u_xlat76;
            let x_3418 : f32 = u_xlat75;
            u_xlat75 = ((x_3415 * x_3416) + x_3418);
            let x_3421 : vec4<f32> = u_xlat13;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.z, x_3421.w);
            let x_3424 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec56;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat76 = x_3433;
            let x_3435 : f32 = u_xlat9.y;
            let x_3436 : f32 = u_xlat76;
            let x_3438 : f32 = u_xlat75;
            u_xlat75 = ((x_3435 * x_3436) + x_3438);
            let x_3441 : vec2<f32> = u_xlat58;
            let x_3443 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec57;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat76 = x_3452;
            let x_3454 : f32 = u_xlat9.z;
            let x_3455 : f32 = u_xlat76;
            let x_3457 : f32 = u_xlat75;
            u_xlat75 = ((x_3454 * x_3455) + x_3457);
            let x_3460 : vec2<f32> = u_xlat51;
            let x_3462 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3460.x, x_3460.y, x_3462);
            let x_3469 : vec3<f32> = txVec58;
            let x_3471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3469.xy, x_3469.z);
            u_xlat51.x = x_3471;
            let x_3474 : f32 = u_xlat9.w;
            let x_3476 : f32 = u_xlat51.x;
            let x_3478 : f32 = u_xlat75;
            u_xlat73 = ((x_3474 * x_3476) + x_3478);
          }
        }
      } else {
        let x_3482 : vec4<f32> = u_xlat8;
        let x_3483 : vec2<f32> = vec2<f32>(x_3482.x, x_3482.y);
        let x_3485 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3483.x, x_3483.y, x_3485);
        let x_3492 : vec3<f32> = txVec59;
        let x_3494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3492.xy, x_3492.z);
        u_xlat73 = x_3494;
      }
      let x_3495 : i32 = u_xlati71;
      let x_3497 : f32 = x_249.x_AdditionalShadowParams[x_3495].x;
      u_xlat51.x = (1.0f + -(x_3497));
      let x_3501 : f32 = u_xlat73;
      let x_3502 : i32 = u_xlati71;
      let x_3504 : f32 = x_249.x_AdditionalShadowParams[x_3502].x;
      let x_3507 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3501 * x_3504) + x_3507);
      let x_3510 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3510);
      let x_3514 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3514 >= 1.0f);
      let x_3516 : bool = u_xlatb74;
      let x_3517 : bool = u_xlatb51;
      u_xlatb51 = (x_3516 | x_3517);
      let x_3519 : bool = u_xlatb51;
      let x_3520 : f32 = u_xlat73;
      u_xlat73 = select(x_3520, 1.0f, x_3519);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3523 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3523) + 1.0f);
    let x_3527 : f32 = u_xlat69;
    let x_3529 : f32 = u_xlat51.x;
    let x_3531 : f32 = u_xlat73;
    u_xlat73 = ((x_3527 * x_3529) + x_3531);
    let x_3534 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3534 & 31i)));
    let x_3538 : i32 = u_xlati51;
    let x_3541 : f32 = x_1857.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3538) & bitcast<u32>(x_3541)));
    let x_3545 : i32 = u_xlati51;
    if ((x_3545 != 0i)) {
      let x_3549 : i32 = u_xlati71;
      let x_3551 : f32 = x_1857.x_AdditionalLightsLightTypes[x_3549].el;
      u_xlati51 = i32(x_3551);
      let x_3554 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3554 != 0i));
      let x_3558 : i32 = u_xlati71;
      u_xlati75 = (x_3558 << bitcast<u32>(2i));
      let x_3560 : i32 = u_xlati74;
      if ((x_3560 != 0i)) {
        let x_3564 : vec3<f32> = vs_TEXCOORD1;
        let x_3566 : i32 = u_xlati75;
        let x_3569 : i32 = u_xlati75;
        let x_3573 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3566 + 1i) / 4i)][((x_3569 + 1i) % 4i)];
        let x_3575 : vec3<f32> = (vec3<f32>(x_3564.y, x_3564.y, x_3564.y) * vec3<f32>(x_3573.x, x_3573.y, x_3573.w));
        let x_3576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
        let x_3578 : i32 = u_xlati75;
        let x_3580 : i32 = u_xlati75;
        let x_3583 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3578 / 4i)][(x_3580 % 4i)];
        let x_3585 : vec3<f32> = vs_TEXCOORD1;
        let x_3588 : vec4<f32> = u_xlat8;
        let x_3590 : vec3<f32> = ((vec3<f32>(x_3583.x, x_3583.y, x_3583.w) * vec3<f32>(x_3585.x, x_3585.x, x_3585.x)) + vec3<f32>(x_3588.x, x_3588.y, x_3588.z));
        let x_3591 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3591.w);
        let x_3593 : i32 = u_xlati75;
        let x_3596 : i32 = u_xlati75;
        let x_3600 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3593 + 2i) / 4i)][((x_3596 + 2i) % 4i)];
        let x_3602 : vec3<f32> = vs_TEXCOORD1;
        let x_3605 : vec4<f32> = u_xlat8;
        let x_3607 : vec3<f32> = ((vec3<f32>(x_3600.x, x_3600.y, x_3600.w) * vec3<f32>(x_3602.z, x_3602.z, x_3602.z)) + vec3<f32>(x_3605.x, x_3605.y, x_3605.z));
        let x_3608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3607.x, x_3607.y, x_3607.z, x_3608.w);
        let x_3610 : vec4<f32> = u_xlat8;
        let x_3612 : i32 = u_xlati75;
        let x_3615 : i32 = u_xlati75;
        let x_3619 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3612 + 3i) / 4i)][((x_3615 + 3i) % 4i)];
        let x_3621 : vec3<f32> = (vec3<f32>(x_3610.x, x_3610.y, x_3610.z) + vec3<f32>(x_3619.x, x_3619.y, x_3619.w));
        let x_3622 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3621.x, x_3621.y, x_3621.z, x_3622.w);
        let x_3624 : vec4<f32> = u_xlat8;
        let x_3626 : vec4<f32> = u_xlat8;
        let x_3628 : vec2<f32> = (vec2<f32>(x_3624.x, x_3624.y) / vec2<f32>(x_3626.z, x_3626.z));
        let x_3629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3628.x, x_3628.y, x_3629.z, x_3629.w);
        let x_3631 : vec4<f32> = u_xlat8;
        let x_3634 : vec2<f32> = ((vec2<f32>(x_3631.x, x_3631.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3634.x, x_3634.y, x_3635.z, x_3635.w);
        let x_3637 : vec4<f32> = u_xlat8;
        let x_3641 : vec2<f32> = clamp(vec2<f32>(x_3637.x, x_3637.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3641.x, x_3641.y, x_3642.z, x_3642.w);
        let x_3644 : i32 = u_xlati71;
        let x_3646 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3644];
        let x_3648 : vec4<f32> = u_xlat8;
        let x_3651 : i32 = u_xlati71;
        let x_3653 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3651];
        let x_3655 : vec2<f32> = ((vec2<f32>(x_3646.x, x_3646.y) * vec2<f32>(x_3648.x, x_3648.y)) + vec2<f32>(x_3653.z, x_3653.w));
        let x_3656 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3655.x, x_3655.y, x_3656.z, x_3656.w);
      } else {
        let x_3659 : i32 = u_xlati51;
        u_xlatb51 = (x_3659 == 1i);
        let x_3661 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3661);
        let x_3663 : i32 = u_xlati51;
        if ((x_3663 != 0i)) {
          let x_3667 : vec3<f32> = vs_TEXCOORD1;
          let x_3669 : i32 = u_xlati75;
          let x_3672 : i32 = u_xlati75;
          let x_3676 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3669 + 1i) / 4i)][((x_3672 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3667.y, x_3667.y) * vec2<f32>(x_3676.x, x_3676.y));
          let x_3679 : i32 = u_xlati75;
          let x_3681 : i32 = u_xlati75;
          let x_3684 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3679 / 4i)][(x_3681 % 4i)];
          let x_3686 : vec3<f32> = vs_TEXCOORD1;
          let x_3689 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3684.x, x_3684.y) * vec2<f32>(x_3686.x, x_3686.x)) + x_3689);
          let x_3691 : i32 = u_xlati75;
          let x_3694 : i32 = u_xlati75;
          let x_3698 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3691 + 2i) / 4i)][((x_3694 + 2i) % 4i)];
          let x_3700 : vec3<f32> = vs_TEXCOORD1;
          let x_3703 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3698.x, x_3698.y) * vec2<f32>(x_3700.z, x_3700.z)) + x_3703);
          let x_3705 : vec2<f32> = u_xlat51;
          let x_3706 : i32 = u_xlati75;
          let x_3709 : i32 = u_xlati75;
          let x_3713 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3706 + 3i) / 4i)][((x_3709 + 3i) % 4i)];
          u_xlat51 = (x_3705 + vec2<f32>(x_3713.x, x_3713.y));
          let x_3716 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3716 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3719 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3719);
          let x_3721 : i32 = u_xlati71;
          let x_3723 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3721];
          let x_3725 : vec2<f32> = u_xlat51;
          let x_3727 : i32 = u_xlati71;
          let x_3729 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3727];
          let x_3731 : vec2<f32> = ((vec2<f32>(x_3723.x, x_3723.y) * x_3725) + vec2<f32>(x_3729.z, x_3729.w));
          let x_3732 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3731.x, x_3731.y, x_3732.z, x_3732.w);
        } else {
          let x_3735 : vec3<f32> = vs_TEXCOORD1;
          let x_3737 : i32 = u_xlati75;
          let x_3740 : i32 = u_xlati75;
          let x_3744 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3737 + 1i) / 4i)][((x_3740 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3735.y, x_3735.y, x_3735.y, x_3735.y) * x_3744);
          let x_3746 : i32 = u_xlati75;
          let x_3748 : i32 = u_xlati75;
          let x_3751 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3746 / 4i)][(x_3748 % 4i)];
          let x_3752 : vec3<f32> = vs_TEXCOORD1;
          let x_3755 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3751 * vec4<f32>(x_3752.x, x_3752.x, x_3752.x, x_3752.x)) + x_3755);
          let x_3757 : i32 = u_xlati75;
          let x_3760 : i32 = u_xlati75;
          let x_3764 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3757 + 2i) / 4i)][((x_3760 + 2i) % 4i)];
          let x_3765 : vec3<f32> = vs_TEXCOORD1;
          let x_3768 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3764 * vec4<f32>(x_3765.z, x_3765.z, x_3765.z, x_3765.z)) + x_3768);
          let x_3770 : vec4<f32> = u_xlat9;
          let x_3771 : i32 = u_xlati75;
          let x_3774 : i32 = u_xlati75;
          let x_3778 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3771 + 3i) / 4i)][((x_3774 + 3i) % 4i)];
          u_xlat9 = (x_3770 + x_3778);
          let x_3780 : vec4<f32> = u_xlat9;
          let x_3782 : vec4<f32> = u_xlat9;
          let x_3784 : vec3<f32> = (vec3<f32>(x_3780.x, x_3780.y, x_3780.z) / vec3<f32>(x_3782.w, x_3782.w, x_3782.w));
          let x_3785 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3785.w);
          let x_3787 : vec4<f32> = u_xlat9;
          let x_3789 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3787.x, x_3787.y, x_3787.z), vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
          let x_3794 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3794);
          let x_3797 : vec2<f32> = u_xlat51;
          let x_3799 : vec4<f32> = u_xlat9;
          let x_3801 : vec3<f32> = (vec3<f32>(x_3797.x, x_3797.x, x_3797.x) * vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
          let x_3802 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
          let x_3804 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3804.x, x_3804.y, x_3804.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3811 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3811, 0.00000099999999747524f);
          let x_3816 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3816);
          let x_3819 : vec2<f32> = u_xlat51;
          let x_3821 : vec4<f32> = u_xlat9;
          let x_3823 : vec3<f32> = (vec3<f32>(x_3819.x, x_3819.x, x_3819.x) * vec3<f32>(x_3821.z, x_3821.x, x_3821.y));
          let x_3824 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3823.x, x_3823.y, x_3823.z, x_3824.w);
          let x_3827 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3827);
          let x_3831 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3831, 0.0f, 1.0f);
          let x_3835 : vec4<f32> = u_xlat10;
          let x_3837 : vec4<bool> = (vec4<f32>(x_3835.y, x_3835.z, x_3835.y, x_3835.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3837.x, x_3837.y);
          let x_3840 : bool = u_xlatb54.x;
          if (x_3840) {
            let x_3845 : f32 = u_xlat10.x;
            x_3841 = x_3845;
          } else {
            let x_3848 : f32 = u_xlat10.x;
            x_3841 = -(x_3848);
          }
          let x_3850 : f32 = x_3841;
          u_xlat54.x = x_3850;
          let x_3853 : bool = u_xlatb54.y;
          if (x_3853) {
            let x_3858 : f32 = u_xlat10.x;
            x_3854 = x_3858;
          } else {
            let x_3861 : f32 = u_xlat10.x;
            x_3854 = -(x_3861);
          }
          let x_3863 : f32 = x_3854;
          u_xlat54.y = x_3863;
          let x_3865 : vec4<f32> = u_xlat9;
          let x_3867 : vec2<f32> = u_xlat51;
          let x_3870 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3865.x, x_3865.y) * vec2<f32>(x_3867.x, x_3867.x)) + x_3870);
          let x_3872 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3872 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3875 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3875, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3879 : i32 = u_xlati71;
          let x_3881 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3879];
          let x_3883 : vec2<f32> = u_xlat51;
          let x_3885 : i32 = u_xlati71;
          let x_3887 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3885];
          let x_3889 : vec2<f32> = ((vec2<f32>(x_3881.x, x_3881.y) * x_3883) + vec2<f32>(x_3887.z, x_3887.w));
          let x_3890 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3889.x, x_3889.y, x_3890.z, x_3890.w);
        }
      }
      let x_3897 : vec4<f32> = u_xlat8;
      let x_3899 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3897.x, x_3897.y), 0.0f);
      u_xlat8 = x_3899;
      let x_3901 : bool = u_xlatb5.y;
      if (x_3901) {
        let x_3906 : f32 = u_xlat8.w;
        x_3902 = x_3906;
      } else {
        let x_3909 : f32 = u_xlat8.x;
        x_3902 = x_3909;
      }
      let x_3910 : f32 = x_3902;
      u_xlat51.x = x_3910;
      let x_3913 : bool = u_xlatb5.x;
      if (x_3913) {
        let x_3917 : vec4<f32> = u_xlat8;
        x_3914 = vec3<f32>(x_3917.x, x_3917.y, x_3917.z);
      } else {
        let x_3920 : vec2<f32> = u_xlat51;
        x_3914 = vec3<f32>(x_3920.x, x_3920.x, x_3920.x);
      }
      let x_3922 : vec3<f32> = x_3914;
      let x_3923 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3929 : vec4<f32> = u_xlat8;
    let x_3931 : i32 = u_xlati71;
    let x_3933 : vec4<f32> = x_2103.x_AdditionalLightsColor[x_3931];
    let x_3935 : vec3<f32> = (vec3<f32>(x_3929.x, x_3929.y, x_3929.z) * vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
    let x_3936 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
    let x_3938 : f32 = u_xlat72;
    let x_3939 : f32 = u_xlat73;
    u_xlat71 = (x_3938 * x_3939);
    let x_3941 : f32 = u_xlat71;
    let x_3943 : vec4<f32> = u_xlat8;
    let x_3945 : vec3<f32> = (vec3<f32>(x_3941, x_3941, x_3941) * vec3<f32>(x_3943.x, x_3943.y, x_3943.z));
    let x_3946 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3945.x, x_3945.y, x_3945.z, x_3946.w);
    let x_3948 : vec4<f32> = u_xlat2;
    let x_3950 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3948.x, x_3948.y, x_3948.z), vec3<f32>(x_3950.x, x_3950.y, x_3950.z));
    let x_3953 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3953, 0.0f, 1.0f);
    let x_3955 : f32 = u_xlat71;
    let x_3957 : vec4<f32> = u_xlat8;
    let x_3959 : vec3<f32> = (vec3<f32>(x_3955, x_3955, x_3955) * vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3960 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3959.x, x_3959.y, x_3959.z, x_3960.w);
    let x_3962 : vec4<f32> = u_xlat7;
    let x_3964 : vec4<f32> = u_xlat1;
    let x_3967 : vec4<f32> = u_xlat6;
    let x_3969 : vec3<f32> = ((vec3<f32>(x_3962.x, x_3962.y, x_3962.z) * vec3<f32>(x_3964.y, x_3964.z, x_3964.w)) + vec3<f32>(x_3967.x, x_3967.y, x_3967.z));
    let x_3970 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3969.x, x_3969.y, x_3969.z, x_3970.w);

    continuing {
      let x_3972 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3972 + bitcast<u32>(1i));
    }
  }
  let x_3974 : vec4<f32> = u_xlat4;
  let x_3976 : vec4<f32> = u_xlat1;
  let x_3979 : vec4<f32> = u_xlat3;
  let x_3981 : vec3<f32> = ((vec3<f32>(x_3974.x, x_3974.y, x_3974.z) * vec3<f32>(x_3976.y, x_3976.z, x_3976.w)) + vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
  let x_3982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3981.x, x_3981.y, x_3981.z, x_3982.w);
  let x_3986 : vec4<f32> = u_xlat6;
  let x_3988 : vec4<f32> = u_xlat1;
  let x_3990 : vec3<f32> = (vec3<f32>(x_3986.x, x_3986.y, x_3986.z) + vec3<f32>(x_3988.x, x_3988.y, x_3988.z));
  let x_3991 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
  let x_3994 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3994 == 1.0f);
  let x_3996 : bool = u_xlatb23;
  let x_3997 : bool = u_xlatb46;
  u_xlatb23 = (x_3996 | x_3997);
  let x_3999 : bool = u_xlatb23;
  if (x_3999) {
    let x_4004 : f32 = u_xlat0.x;
    x_4000 = x_4004;
  } else {
    x_4000 = 1.0f;
  }
  let x_4006 : f32 = x_4000;
  SV_Target0.w = x_4006;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


