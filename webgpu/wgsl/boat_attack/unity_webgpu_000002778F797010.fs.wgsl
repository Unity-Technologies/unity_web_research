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

@group(1) @binding(1) var<uniform> x_2110 : AdditionalLights;

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
  var x_2247 : f32;
  var x_2256 : f32;
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
  var x_3848 : f32;
  var x_3861 : f32;
  var x_3909 : f32;
  var x_3921 : vec3<f32>;
  var x_4014 : f32;
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
  let x_2013 : vec4<f32> = u_xlat0;
  let x_2015 : vec4<f32> = u_xlat3;
  let x_2017 : vec3<f32> = (vec3<f32>(x_2013.x, x_2013.x, x_2013.x) * vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2018 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
  let x_2021 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2023 : f32 = x_186.unity_LightData.y;
  u_xlat23.x = min(x_2021, x_2023);
  let x_2027 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_2027));
  let x_2030 : f32 = u_xlat69;
  let x_2033 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_2036 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_2030 * x_2033) + x_2036);
  let x_2038 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2038, 0.0f, 1.0f);
  let x_2041 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2043 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2045 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2047 : f32 = x_1857.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2048 : vec4<f32> = vec4<f32>(x_2041, x_2043, x_2045, x_2047);
  let x_2054 : vec4<bool> = (vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2048.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2054.x, x_2054.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2066 : u32 = u_xlatu_loop_1;
    let x_2067 : u32 = u_xlatu23;
    if ((x_2066 < x_2067)) {
    } else {
      break;
    }
    let x_2070 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2070 >> 2u);
    let x_2073 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2073 & 3u));
    let x_2076 : u32 = u_xlatu71;
    let x_2079 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2076)];
    let x_2089 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2094 : vec4<u32> = indexable[x_2089];
    u_xlat71 = dot(x_2079, bitcast<vec4<f32>>(x_2094));
    let x_2098 : f32 = u_xlat71;
    u_xlati71 = i32(x_2098);
    let x_2100 : vec3<f32> = vs_TEXCOORD1;
    let x_2111 : i32 = u_xlati71;
    let x_2113 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2111];
    let x_2116 : i32 = u_xlati71;
    let x_2118 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2116];
    let x_2120 : vec3<f32> = ((-(x_2100) * vec3<f32>(x_2113.w, x_2113.w, x_2113.w)) + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
    let x_2124 : vec4<f32> = u_xlat7;
    let x_2126 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_2124.x, x_2124.y, x_2124.z), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : f32 = u_xlat72;
    u_xlat72 = max(x_2129, 0.00006103515625f);
    let x_2133 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2133);
    let x_2135 : f32 = u_xlat73;
    let x_2137 : vec4<f32> = u_xlat7;
    let x_2139 : vec3<f32> = (vec3<f32>(x_2135, x_2135, x_2135) * vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
    let x_2142 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2142);
    let x_2144 : f32 = u_xlat72;
    let x_2145 : i32 = u_xlati71;
    let x_2147 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2145].x;
    u_xlat72 = (x_2144 * x_2147);
    let x_2149 : f32 = u_xlat72;
    let x_2151 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2149) * x_2151) + 1.0f);
    let x_2154 : f32 = u_xlat72;
    u_xlat72 = max(x_2154, 0.0f);
    let x_2156 : f32 = u_xlat72;
    let x_2157 : f32 = u_xlat72;
    u_xlat72 = (x_2156 * x_2157);
    let x_2159 : f32 = u_xlat72;
    let x_2160 : f32 = u_xlat73;
    u_xlat72 = (x_2159 * x_2160);
    let x_2162 : i32 = u_xlati71;
    let x_2164 : vec4<f32> = x_2110.x_AdditionalLightsSpotDir[x_2162];
    let x_2166 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2164.x, x_2164.y, x_2164.z), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
    let x_2169 : f32 = u_xlat73;
    let x_2170 : i32 = u_xlati71;
    let x_2172 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2170].z;
    let x_2174 : i32 = u_xlati71;
    let x_2176 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2174].w;
    u_xlat73 = ((x_2169 * x_2172) + x_2176);
    let x_2178 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2178, 0.0f, 1.0f);
    let x_2180 : f32 = u_xlat73;
    let x_2181 : f32 = u_xlat73;
    u_xlat73 = (x_2180 * x_2181);
    let x_2183 : f32 = u_xlat72;
    let x_2184 : f32 = u_xlat73;
    u_xlat72 = (x_2183 * x_2184);
    let x_2188 : i32 = u_xlati71;
    let x_2190 : f32 = x_249.x_AdditionalShadowParams[x_2188].w;
    u_xlati73 = i32(x_2190);
    let x_2193 : i32 = u_xlati73;
    u_xlatb51 = (x_2193 >= 0i);
    let x_2195 : bool = u_xlatb51;
    if (x_2195) {
      let x_2199 : i32 = u_xlati71;
      let x_2201 : f32 = x_249.x_AdditionalShadowParams[x_2199].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2201, x_2201, x_2201, x_2201))));
      let x_2205 : bool = u_xlatb51;
      if (x_2205) {
        let x_2209 : vec4<f32> = u_xlat7;
        let x_2212 : vec4<f32> = u_xlat7;
        let x_2215 : vec4<bool> = (abs(vec4<f32>(x_2209.z, x_2209.z, x_2209.y, x_2209.z)) >= abs(vec4<f32>(x_2212.x, x_2212.y, x_2212.x, x_2212.x)));
        let x_2217 : vec3<bool> = vec3<bool>(x_2215.x, x_2215.y, x_2215.z);
        let x_2218 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
        let x_2221 : bool = u_xlatb8.y;
        let x_2223 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2221 & x_2223);
        let x_2225 : vec4<f32> = u_xlat7;
        let x_2228 : vec4<bool> = (-(vec4<f32>(x_2225.z, x_2225.y, x_2225.z, x_2225.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2229 : vec3<bool> = vec3<bool>(x_2228.x, x_2228.y, x_2228.w);
        let x_2230 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2229.x, x_2229.y, x_2230.z, x_2229.z);
        let x_2233 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2233);
        let x_2238 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2238);
        let x_2243 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2243);
        let x_2246 : bool = u_xlatb8.z;
        if (x_2246) {
          let x_2251 : f32 = u_xlat8.y;
          x_2247 = x_2251;
        } else {
          let x_2253 : f32 = u_xlat74;
          x_2247 = x_2253;
        }
        let x_2254 : f32 = x_2247;
        u_xlat74 = x_2254;
        let x_2255 : bool = u_xlatb51;
        if (x_2255) {
          let x_2260 : f32 = u_xlat8.x;
          x_2256 = x_2260;
        } else {
          let x_2262 : f32 = u_xlat74;
          x_2256 = x_2262;
        }
        let x_2263 : f32 = x_2256;
        u_xlat51.x = x_2263;
        let x_2265 : i32 = u_xlati71;
        let x_2267 : f32 = x_249.x_AdditionalShadowParams[x_2265].w;
        u_xlat74 = trunc(x_2267);
        let x_2270 : f32 = u_xlat51.x;
        let x_2271 : f32 = u_xlat74;
        u_xlat51.x = (x_2270 + x_2271);
        let x_2275 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2275);
      }
      let x_2277 : i32 = u_xlati73;
      u_xlati73 = (x_2277 << bitcast<u32>(2i));
      let x_2279 : vec3<f32> = vs_TEXCOORD1;
      let x_2282 : i32 = u_xlati73;
      let x_2285 : i32 = u_xlati73;
      let x_2289 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2282 + 1i) / 4i)][((x_2285 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2279.y, x_2279.y, x_2279.y, x_2279.y) * x_2289);
      let x_2291 : i32 = u_xlati73;
      let x_2293 : i32 = u_xlati73;
      let x_2296 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2291 / 4i)][(x_2293 % 4i)];
      let x_2297 : vec3<f32> = vs_TEXCOORD1;
      let x_2300 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2296 * vec4<f32>(x_2297.x, x_2297.x, x_2297.x, x_2297.x)) + x_2300);
      let x_2302 : i32 = u_xlati73;
      let x_2305 : i32 = u_xlati73;
      let x_2309 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2302 + 2i) / 4i)][((x_2305 + 2i) % 4i)];
      let x_2310 : vec3<f32> = vs_TEXCOORD1;
      let x_2313 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2309 * vec4<f32>(x_2310.z, x_2310.z, x_2310.z, x_2310.z)) + x_2313);
      let x_2315 : vec4<f32> = u_xlat8;
      let x_2316 : i32 = u_xlati73;
      let x_2319 : i32 = u_xlati73;
      let x_2323 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2316 + 3i) / 4i)][((x_2319 + 3i) % 4i)];
      u_xlat8 = (x_2315 + x_2323);
      let x_2325 : vec4<f32> = u_xlat8;
      let x_2327 : vec4<f32> = u_xlat8;
      let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) / vec3<f32>(x_2327.w, x_2327.w, x_2327.w));
      let x_2330 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
      let x_2333 : i32 = u_xlati71;
      let x_2335 : f32 = x_249.x_AdditionalShadowParams[x_2333].y;
      u_xlatb73 = (0.0f < x_2335);
      let x_2337 : bool = u_xlatb73;
      if (x_2337) {
        let x_2340 : i32 = u_xlati71;
        let x_2342 : f32 = x_249.x_AdditionalShadowParams[x_2340].y;
        u_xlatb73 = (1.0f == x_2342);
        let x_2344 : bool = u_xlatb73;
        if (x_2344) {
          let x_2347 : vec4<f32> = u_xlat8;
          let x_2351 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2347.x, x_2347.y, x_2347.x, x_2347.y) + x_2351);
          let x_2354 : vec4<f32> = u_xlat9;
          let x_2355 : vec2<f32> = vec2<f32>(x_2354.x, x_2354.y);
          let x_2357 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2355.x, x_2355.y, x_2357);
          let x_2365 : vec3<f32> = txVec30;
          let x_2367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2365.xy, x_2365.z);
          u_xlat10.x = x_2367;
          let x_2370 : vec4<f32> = u_xlat9;
          let x_2371 : vec2<f32> = vec2<f32>(x_2370.z, x_2370.w);
          let x_2373 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
          let x_2380 : vec3<f32> = txVec31;
          let x_2382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
          u_xlat10.y = x_2382;
          let x_2384 : vec4<f32> = u_xlat8;
          let x_2388 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2384.x, x_2384.y, x_2384.x, x_2384.y) + x_2388);
          let x_2391 : vec4<f32> = u_xlat9;
          let x_2392 : vec2<f32> = vec2<f32>(x_2391.x, x_2391.y);
          let x_2394 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2392.x, x_2392.y, x_2394);
          let x_2401 : vec3<f32> = txVec32;
          let x_2403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2401.xy, x_2401.z);
          u_xlat10.z = x_2403;
          let x_2406 : vec4<f32> = u_xlat9;
          let x_2407 : vec2<f32> = vec2<f32>(x_2406.z, x_2406.w);
          let x_2409 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2407.x, x_2407.y, x_2409);
          let x_2416 : vec3<f32> = txVec33;
          let x_2418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2416.xy, x_2416.z);
          u_xlat10.w = x_2418;
          let x_2420 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2420, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2423 : i32 = u_xlati71;
          let x_2425 : f32 = x_249.x_AdditionalShadowParams[x_2423].y;
          u_xlatb51 = (2.0f == x_2425);
          let x_2427 : bool = u_xlatb51;
          if (x_2427) {
            let x_2430 : vec4<f32> = u_xlat8;
            let x_2434 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2430.x, x_2430.y) * vec2<f32>(x_2434.z, x_2434.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2438 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2438);
            let x_2440 : vec4<f32> = u_xlat8;
            let x_2443 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2446 : vec2<f32> = u_xlat51;
            let x_2448 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.y) * vec2<f32>(x_2443.z, x_2443.w)) + -(x_2446));
            let x_2449 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
            let x_2451 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2451.x, x_2451.x, x_2451.y, x_2451.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2454 : vec4<f32> = u_xlat10;
            let x_2456 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2454.x, x_2454.x, x_2454.z, x_2454.z) * vec4<f32>(x_2456.x, x_2456.x, x_2456.z, x_2456.z));
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2460.y, x_2460.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2463 : vec4<f32> = u_xlat11;
            let x_2466 : vec4<f32> = u_xlat9;
            let x_2469 : vec2<f32> = ((vec2<f32>(x_2463.x, x_2463.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2466.x, x_2466.y)));
            let x_2470 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2469.x, x_2470.y, x_2469.y, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat9;
            let x_2475 : vec2<f32> = (-(vec2<f32>(x_2472.x, x_2472.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2476 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2475.x, x_2475.y, x_2476.z, x_2476.w);
            let x_2479 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2479.x, x_2479.y), vec2<f32>(0.0f, 0.0f));
            let x_2482 : vec2<f32> = u_xlat57;
            let x_2484 : vec2<f32> = u_xlat57;
            let x_2486 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2482) * x_2484) + vec2<f32>(x_2486.x, x_2486.y));
            let x_2489 : vec4<f32> = u_xlat9;
            let x_2491 : vec2<f32> = max(vec2<f32>(x_2489.x, x_2489.y), vec2<f32>(0.0f, 0.0f));
            let x_2492 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat9;
            let x_2497 : vec4<f32> = u_xlat9;
            let x_2500 : vec4<f32> = u_xlat10;
            let x_2502 : vec2<f32> = ((-(vec2<f32>(x_2494.x, x_2494.y)) * vec2<f32>(x_2497.x, x_2497.y)) + vec2<f32>(x_2500.y, x_2500.w));
            let x_2503 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2505 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2505 + vec2<f32>(1.0f, 1.0f));
            let x_2507 : vec4<f32> = u_xlat9;
            let x_2509 : vec2<f32> = (vec2<f32>(x_2507.x, x_2507.y) + vec2<f32>(1.0f, 1.0f));
            let x_2510 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2509.x, x_2509.y, x_2510.z, x_2510.w);
            let x_2512 : vec4<f32> = u_xlat10;
            let x_2514 : vec2<f32> = (vec2<f32>(x_2512.x, x_2512.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2515 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat11;
            let x_2519 : vec2<f32> = (vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2520 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2522 : vec2<f32> = u_xlat57;
            let x_2523 : vec2<f32> = (x_2522 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2524 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2523.x, x_2523.y, x_2524.z, x_2524.w);
            let x_2526 : vec4<f32> = u_xlat9;
            let x_2528 : vec2<f32> = (vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2529 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat10;
            let x_2533 : vec2<f32> = (vec2<f32>(x_2531.y, x_2531.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2534 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2533.x, x_2533.y, x_2534.z, x_2534.w);
            let x_2537 : f32 = u_xlat11.x;
            u_xlat12.z = x_2537;
            let x_2540 : f32 = u_xlat9.x;
            u_xlat12.w = x_2540;
            let x_2543 : f32 = u_xlat14.x;
            u_xlat13.z = x_2543;
            let x_2546 : f32 = u_xlat55.x;
            u_xlat13.w = x_2546;
            let x_2548 : vec4<f32> = u_xlat12;
            let x_2550 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2548.z, x_2548.w, x_2548.x, x_2548.z) + vec4<f32>(x_2550.z, x_2550.w, x_2550.x, x_2550.z));
            let x_2554 : f32 = u_xlat12.y;
            u_xlat11.z = x_2554;
            let x_2557 : f32 = u_xlat9.y;
            u_xlat11.w = x_2557;
            let x_2560 : f32 = u_xlat13.y;
            u_xlat14.z = x_2560;
            let x_2563 : f32 = u_xlat55.y;
            u_xlat14.w = x_2563;
            let x_2565 : vec4<f32> = u_xlat11;
            let x_2567 : vec4<f32> = u_xlat14;
            let x_2569 : vec3<f32> = (vec3<f32>(x_2565.z, x_2565.y, x_2565.w) + vec3<f32>(x_2567.z, x_2567.y, x_2567.w));
            let x_2570 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
            let x_2572 : vec4<f32> = u_xlat13;
            let x_2574 : vec4<f32> = u_xlat10;
            let x_2576 : vec3<f32> = (vec3<f32>(x_2572.x, x_2572.z, x_2572.w) / vec3<f32>(x_2574.z, x_2574.w, x_2574.y));
            let x_2577 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
            let x_2579 : vec4<f32> = u_xlat11;
            let x_2581 : vec3<f32> = (vec3<f32>(x_2579.x, x_2579.y, x_2579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2582 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
            let x_2584 : vec4<f32> = u_xlat14;
            let x_2586 : vec4<f32> = u_xlat9;
            let x_2588 : vec3<f32> = (vec3<f32>(x_2584.z, x_2584.y, x_2584.w) / vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
            let x_2589 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2588.x, x_2588.y, x_2588.z, x_2589.w);
            let x_2591 : vec4<f32> = u_xlat12;
            let x_2593 : vec3<f32> = (vec3<f32>(x_2591.x, x_2591.y, x_2591.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2594 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat11;
            let x_2599 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2601 : vec3<f32> = (vec3<f32>(x_2596.y, x_2596.x, x_2596.z) * vec3<f32>(x_2599.x, x_2599.x, x_2599.x));
            let x_2602 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
            let x_2604 : vec4<f32> = u_xlat12;
            let x_2607 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2609 : vec3<f32> = (vec3<f32>(x_2604.x, x_2604.y, x_2604.z) * vec3<f32>(x_2607.y, x_2607.y, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2610.w);
            let x_2613 : f32 = u_xlat12.x;
            u_xlat11.w = x_2613;
            let x_2615 : vec2<f32> = u_xlat51;
            let x_2618 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2621 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) * vec4<f32>(x_2618.x, x_2618.y, x_2618.x, x_2618.y)) + vec4<f32>(x_2621.y, x_2621.w, x_2621.x, x_2621.w));
            let x_2624 : vec2<f32> = u_xlat51;
            let x_2626 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2629 : vec4<f32> = u_xlat11;
            let x_2631 : vec2<f32> = ((x_2624 * vec2<f32>(x_2626.x, x_2626.y)) + vec2<f32>(x_2629.z, x_2629.w));
            let x_2632 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2635 : f32 = u_xlat11.y;
            u_xlat12.w = x_2635;
            let x_2637 : vec4<f32> = u_xlat12;
            let x_2638 : vec2<f32> = vec2<f32>(x_2637.y, x_2637.z);
            let x_2639 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2639.x, x_2638.x, x_2639.z, x_2638.y);
            let x_2641 : vec2<f32> = u_xlat51;
            let x_2644 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2647 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2641.x, x_2641.y, x_2641.x, x_2641.y) * vec4<f32>(x_2644.x, x_2644.y, x_2644.x, x_2644.y)) + vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2647.y));
            let x_2650 : vec2<f32> = u_xlat51;
            let x_2653 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2656 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2650.x, x_2650.y, x_2650.x, x_2650.y) * vec4<f32>(x_2653.x, x_2653.y, x_2653.x, x_2653.y)) + vec4<f32>(x_2656.w, x_2656.y, x_2656.w, x_2656.z));
            let x_2659 : vec2<f32> = u_xlat51;
            let x_2662 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2665 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2659.x, x_2659.y, x_2659.x, x_2659.y) * vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y)) + vec4<f32>(x_2665.x, x_2665.w, x_2665.z, x_2665.w));
            let x_2668 : vec4<f32> = u_xlat9;
            let x_2670 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2668.x, x_2668.x, x_2668.x, x_2668.y) * vec4<f32>(x_2670.z, x_2670.w, x_2670.y, x_2670.z));
            let x_2673 : vec4<f32> = u_xlat9;
            let x_2675 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2673.y, x_2673.y, x_2673.z, x_2673.z) * x_2675);
            let x_2678 : f32 = u_xlat9.z;
            let x_2680 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2678 * x_2680);
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2685 : vec2<f32> = vec2<f32>(x_2684.x, x_2684.y);
            let x_2687 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec34;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat74 = x_2696;
            let x_2698 : vec4<f32> = u_xlat13;
            let x_2699 : vec2<f32> = vec2<f32>(x_2698.z, x_2698.w);
            let x_2701 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2699.x, x_2699.y, x_2701);
            let x_2709 : vec3<f32> = txVec35;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat75 = x_2711;
            let x_2712 : f32 = u_xlat75;
            let x_2714 : f32 = u_xlat16.y;
            u_xlat75 = (x_2712 * x_2714);
            let x_2717 : f32 = u_xlat16.x;
            let x_2718 : f32 = u_xlat74;
            let x_2720 : f32 = u_xlat75;
            u_xlat74 = ((x_2717 * x_2718) + x_2720);
            let x_2723 : vec4<f32> = u_xlat14;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.x, x_2723.y);
            let x_2726 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
            let x_2733 : vec3<f32> = txVec36;
            let x_2735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2733.xy, x_2733.z);
            u_xlat75 = x_2735;
            let x_2737 : f32 = u_xlat16.z;
            let x_2738 : f32 = u_xlat75;
            let x_2740 : f32 = u_xlat74;
            u_xlat74 = ((x_2737 * x_2738) + x_2740);
            let x_2743 : vec4<f32> = u_xlat12;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.x, x_2743.y);
            let x_2746 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec37;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat75 = x_2755;
            let x_2757 : f32 = u_xlat16.w;
            let x_2758 : f32 = u_xlat75;
            let x_2760 : f32 = u_xlat74;
            u_xlat74 = ((x_2757 * x_2758) + x_2760);
            let x_2763 : vec4<f32> = u_xlat15;
            let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
            let x_2766 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2773 : vec3<f32> = txVec38;
            let x_2775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
            u_xlat75 = x_2775;
            let x_2777 : f32 = u_xlat17.x;
            let x_2778 : f32 = u_xlat75;
            let x_2780 : f32 = u_xlat74;
            u_xlat74 = ((x_2777 * x_2778) + x_2780);
            let x_2783 : vec4<f32> = u_xlat15;
            let x_2784 : vec2<f32> = vec2<f32>(x_2783.z, x_2783.w);
            let x_2786 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec39;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat75 = x_2795;
            let x_2797 : f32 = u_xlat17.y;
            let x_2798 : f32 = u_xlat75;
            let x_2800 : f32 = u_xlat74;
            u_xlat74 = ((x_2797 * x_2798) + x_2800);
            let x_2803 : vec4<f32> = u_xlat12;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.z, x_2803.w);
            let x_2806 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec40;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat75 = x_2815;
            let x_2817 : f32 = u_xlat17.z;
            let x_2818 : f32 = u_xlat75;
            let x_2820 : f32 = u_xlat74;
            u_xlat74 = ((x_2817 * x_2818) + x_2820);
            let x_2823 : vec4<f32> = u_xlat11;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.x, x_2823.y);
            let x_2826 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec41;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat75 = x_2835;
            let x_2837 : f32 = u_xlat17.w;
            let x_2838 : f32 = u_xlat75;
            let x_2840 : f32 = u_xlat74;
            u_xlat74 = ((x_2837 * x_2838) + x_2840);
            let x_2843 : vec4<f32> = u_xlat11;
            let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
            let x_2846 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2853 : vec3<f32> = txVec42;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat75 = x_2855;
            let x_2857 : f32 = u_xlat51.x;
            let x_2858 : f32 = u_xlat75;
            let x_2860 : f32 = u_xlat74;
            u_xlat73 = ((x_2857 * x_2858) + x_2860);
          } else {
            let x_2863 : vec4<f32> = u_xlat8;
            let x_2866 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.z, x_2866.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2870 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2870);
            let x_2872 : vec4<f32> = u_xlat8;
            let x_2875 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2878 : vec2<f32> = u_xlat51;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.y) * vec2<f32>(x_2875.z, x_2875.w)) + -(x_2878));
            let x_2881 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2880.x, x_2880.y, x_2881.z, x_2881.w);
            let x_2883 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2883.x, x_2883.x, x_2883.y, x_2883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2886 : vec4<f32> = u_xlat10;
            let x_2888 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2886.x, x_2886.x, x_2886.z, x_2886.z) * vec4<f32>(x_2888.x, x_2888.x, x_2888.z, x_2888.z));
            let x_2891 : vec4<f32> = u_xlat11;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.y, x_2891.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2894 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2896 : vec4<f32> = u_xlat11;
            let x_2899 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2896.x, x_2896.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2899.x, x_2899.y)));
            let x_2903 : vec4<f32> = u_xlat9;
            let x_2906 : vec2<f32> = (-(vec2<f32>(x_2903.x, x_2903.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2907 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2906.x, x_2907.y, x_2906.y, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat9;
            let x_2911 : vec2<f32> = min(vec2<f32>(x_2909.x, x_2909.y), vec2<f32>(0.0f, 0.0f));
            let x_2912 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2911.x, x_2911.y, x_2912.z, x_2912.w);
            let x_2914 : vec4<f32> = u_xlat11;
            let x_2917 : vec4<f32> = u_xlat11;
            let x_2920 : vec4<f32> = u_xlat10;
            let x_2922 : vec2<f32> = ((-(vec2<f32>(x_2914.x, x_2914.y)) * vec2<f32>(x_2917.x, x_2917.y)) + vec2<f32>(x_2920.x, x_2920.z));
            let x_2923 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2922.x, x_2923.y, x_2922.y, x_2923.w);
            let x_2925 : vec4<f32> = u_xlat9;
            let x_2927 : vec2<f32> = max(vec2<f32>(x_2925.x, x_2925.y), vec2<f32>(0.0f, 0.0f));
            let x_2928 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2927.x, x_2927.y, x_2928.z, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat11;
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = u_xlat10;
            let x_2938 : vec2<f32> = ((-(vec2<f32>(x_2930.x, x_2930.y)) * vec2<f32>(x_2933.x, x_2933.y)) + vec2<f32>(x_2936.y, x_2936.w));
            let x_2939 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2939.x, x_2938.x, x_2939.z, x_2938.y);
            let x_2941 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2941 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2945 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2945 * 0.08163200318813323975f);
            let x_2948 : vec2<f32> = u_xlat55;
            let x_2950 : vec2<f32> = (vec2<f32>(x_2948.y, x_2948.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2953 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2953.x, x_2953.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2957 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2957 * 0.08163200318813323975f);
            let x_2961 : f32 = u_xlat13.y;
            u_xlat11.x = x_2961;
            let x_2963 : vec4<f32> = u_xlat9;
            let x_2966 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2967 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2967.x, x_2966.x, x_2967.z, x_2966.y);
            let x_2969 : vec4<f32> = u_xlat9;
            let x_2972 : vec2<f32> = ((vec2<f32>(x_2969.x, x_2969.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2973 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2973.w);
            let x_2976 : f32 = u_xlat55.x;
            u_xlat10.y = x_2976;
            let x_2979 : f32 = u_xlat12.y;
            u_xlat10.w = x_2979;
            let x_2981 : vec4<f32> = u_xlat10;
            let x_2982 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2981 + x_2982);
            let x_2984 : vec4<f32> = u_xlat9;
            let x_2987 : vec2<f32> = ((vec2<f32>(x_2984.y, x_2984.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2988 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2988.x, x_2987.x, x_2988.z, x_2987.y);
            let x_2990 : vec4<f32> = u_xlat9;
            let x_2993 : vec2<f32> = ((vec2<f32>(x_2990.y, x_2990.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2994 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2993.x, x_2994.y, x_2993.y, x_2994.w);
            let x_2997 : f32 = u_xlat55.y;
            u_xlat12.y = x_2997;
            let x_2999 : vec4<f32> = u_xlat12;
            let x_3000 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2999 + x_3000);
            let x_3002 : vec4<f32> = u_xlat10;
            let x_3003 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_3002 / x_3003);
            let x_3005 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_3005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3007 : vec4<f32> = u_xlat12;
            let x_3008 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_3007 / x_3008);
            let x_3010 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_3010 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3012 : vec4<f32> = u_xlat10;
            let x_3015 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_3012.w, x_3012.x, x_3012.y, x_3012.z) * vec4<f32>(x_3015.x, x_3015.x, x_3015.x, x_3015.x));
            let x_3018 : vec4<f32> = u_xlat12;
            let x_3021 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_3018.x, x_3018.w, x_3018.y, x_3018.z) * vec4<f32>(x_3021.y, x_3021.y, x_3021.y, x_3021.y));
            let x_3024 : vec4<f32> = u_xlat10;
            let x_3025 : vec3<f32> = vec3<f32>(x_3024.y, x_3024.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3025.x, x_3026.y, x_3025.y, x_3025.z);
            let x_3029 : f32 = u_xlat12.x;
            u_xlat13.y = x_3029;
            let x_3031 : vec2<f32> = u_xlat51;
            let x_3034 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3037 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_3031.x, x_3031.y, x_3031.x, x_3031.y) * vec4<f32>(x_3034.x, x_3034.y, x_3034.x, x_3034.y)) + vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3037.y));
            let x_3040 : vec2<f32> = u_xlat51;
            let x_3042 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3047 : vec2<f32> = ((x_3040 * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.w, x_3045.y));
            let x_3048 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
            let x_3051 : f32 = u_xlat13.y;
            u_xlat10.y = x_3051;
            let x_3054 : f32 = u_xlat12.z;
            u_xlat13.y = x_3054;
            let x_3056 : vec2<f32> = u_xlat51;
            let x_3059 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y) * vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y)) + vec4<f32>(x_3062.x, x_3062.y, x_3062.z, x_3062.y));
            let x_3066 : vec2<f32> = u_xlat51;
            let x_3068 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_3066 * vec2<f32>(x_3068.x, x_3068.y)) + vec2<f32>(x_3071.w, x_3071.y));
            let x_3075 : f32 = u_xlat13.y;
            u_xlat10.z = x_3075;
            let x_3077 : vec2<f32> = u_xlat51;
            let x_3080 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3083 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y) * vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y)) + vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.z));
            let x_3087 : f32 = u_xlat12.w;
            u_xlat13.y = x_3087;
            let x_3089 : vec2<f32> = u_xlat51;
            let x_3092 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3095 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y) * vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y)) + vec4<f32>(x_3095.x, x_3095.y, x_3095.z, x_3095.y));
            let x_3099 : vec2<f32> = u_xlat51;
            let x_3101 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_3099 * vec2<f32>(x_3101.x, x_3101.y)) + vec2<f32>(x_3104.w, x_3104.y));
            let x_3108 : f32 = u_xlat13.y;
            u_xlat10.w = x_3108;
            let x_3111 : vec2<f32> = u_xlat51;
            let x_3113 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3116 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_3111 * vec2<f32>(x_3113.x, x_3113.y)) + vec2<f32>(x_3116.x, x_3116.w));
            let x_3119 : vec4<f32> = u_xlat13;
            let x_3120 : vec3<f32> = vec3<f32>(x_3119.x, x_3119.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3120.x, x_3121.y, x_3120.y, x_3120.z);
            let x_3123 : vec2<f32> = u_xlat51;
            let x_3126 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3129 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y) * vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.y)) + vec4<f32>(x_3129.x, x_3129.y, x_3129.z, x_3129.y));
            let x_3133 : vec2<f32> = u_xlat51;
            let x_3135 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3133 * vec2<f32>(x_3135.x, x_3135.y)) + vec2<f32>(x_3138.w, x_3138.y));
            let x_3142 : f32 = u_xlat10.x;
            u_xlat12.x = x_3142;
            let x_3144 : vec2<f32> = u_xlat51;
            let x_3146 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3144 * vec2<f32>(x_3146.x, x_3146.y)) + vec2<f32>(x_3149.x, x_3149.y));
            let x_3153 : vec4<f32> = u_xlat9;
            let x_3155 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3153.x, x_3153.x, x_3153.x, x_3153.x) * x_3155);
            let x_3158 : vec4<f32> = u_xlat9;
            let x_3160 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3158.y, x_3158.y, x_3158.y, x_3158.y) * x_3160);
            let x_3163 : vec4<f32> = u_xlat9;
            let x_3165 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3163.z, x_3163.z, x_3163.z, x_3163.z) * x_3165);
            let x_3167 : vec4<f32> = u_xlat9;
            let x_3169 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3167.w, x_3167.w, x_3167.w, x_3167.w) * x_3169);
            let x_3172 : vec4<f32> = u_xlat14;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
            let x_3175 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec43;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat75 = x_3184;
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3187 : vec2<f32> = vec2<f32>(x_3186.z, x_3186.w);
            let x_3189 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3197 : vec3<f32> = txVec44;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat76 = x_3199;
            let x_3200 : f32 = u_xlat76;
            let x_3202 : f32 = u_xlat20.y;
            u_xlat76 = (x_3200 * x_3202);
            let x_3205 : f32 = u_xlat20.x;
            let x_3206 : f32 = u_xlat75;
            let x_3208 : f32 = u_xlat76;
            u_xlat75 = ((x_3205 * x_3206) + x_3208);
            let x_3211 : vec4<f32> = u_xlat15;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.x, x_3211.y);
            let x_3214 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec45;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat76 = x_3223;
            let x_3225 : f32 = u_xlat20.z;
            let x_3226 : f32 = u_xlat76;
            let x_3228 : f32 = u_xlat75;
            u_xlat75 = ((x_3225 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat17;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec46;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat76 = x_3243;
            let x_3245 : f32 = u_xlat20.w;
            let x_3246 : f32 = u_xlat76;
            let x_3248 : f32 = u_xlat75;
            u_xlat75 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec4<f32> = u_xlat16;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.x, x_3251.y);
            let x_3254 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec47;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat76 = x_3263;
            let x_3265 : f32 = u_xlat21.x;
            let x_3266 : f32 = u_xlat76;
            let x_3268 : f32 = u_xlat75;
            u_xlat75 = ((x_3265 * x_3266) + x_3268);
            let x_3271 : vec4<f32> = u_xlat16;
            let x_3272 : vec2<f32> = vec2<f32>(x_3271.z, x_3271.w);
            let x_3274 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec48;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat76 = x_3283;
            let x_3285 : f32 = u_xlat21.y;
            let x_3286 : f32 = u_xlat76;
            let x_3288 : f32 = u_xlat75;
            u_xlat75 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec2<f32> = u_xlat61;
            let x_3293 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec49;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat76 = x_3302;
            let x_3304 : f32 = u_xlat21.z;
            let x_3305 : f32 = u_xlat76;
            let x_3307 : f32 = u_xlat75;
            u_xlat75 = ((x_3304 * x_3305) + x_3307);
            let x_3310 : vec4<f32> = u_xlat17;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.z, x_3310.w);
            let x_3313 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec50;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat76 = x_3322;
            let x_3324 : f32 = u_xlat21.w;
            let x_3325 : f32 = u_xlat76;
            let x_3327 : f32 = u_xlat75;
            u_xlat75 = ((x_3324 * x_3325) + x_3327);
            let x_3330 : vec4<f32> = u_xlat18;
            let x_3331 : vec2<f32> = vec2<f32>(x_3330.x, x_3330.y);
            let x_3333 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3340 : vec3<f32> = txVec51;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat76 = x_3342;
            let x_3344 : f32 = u_xlat22.x;
            let x_3345 : f32 = u_xlat76;
            let x_3347 : f32 = u_xlat75;
            u_xlat75 = ((x_3344 * x_3345) + x_3347);
            let x_3350 : vec4<f32> = u_xlat18;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.z, x_3350.w);
            let x_3353 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec52;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat76 = x_3362;
            let x_3364 : f32 = u_xlat22.y;
            let x_3365 : f32 = u_xlat76;
            let x_3367 : f32 = u_xlat75;
            u_xlat75 = ((x_3364 * x_3365) + x_3367);
            let x_3370 : vec2<f32> = u_xlat33;
            let x_3372 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec53;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat76 = x_3381;
            let x_3383 : f32 = u_xlat22.z;
            let x_3384 : f32 = u_xlat76;
            let x_3386 : f32 = u_xlat75;
            u_xlat75 = ((x_3383 * x_3384) + x_3386);
            let x_3389 : vec2<f32> = u_xlat19;
            let x_3391 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3389.x, x_3389.y, x_3391);
            let x_3398 : vec3<f32> = txVec54;
            let x_3400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3398.xy, x_3398.z);
            u_xlat76 = x_3400;
            let x_3402 : f32 = u_xlat22.w;
            let x_3403 : f32 = u_xlat76;
            let x_3405 : f32 = u_xlat75;
            u_xlat75 = ((x_3402 * x_3403) + x_3405);
            let x_3408 : vec4<f32> = u_xlat13;
            let x_3409 : vec2<f32> = vec2<f32>(x_3408.x, x_3408.y);
            let x_3411 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3409.x, x_3409.y, x_3411);
            let x_3418 : vec3<f32> = txVec55;
            let x_3420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3418.xy, x_3418.z);
            u_xlat76 = x_3420;
            let x_3422 : f32 = u_xlat9.x;
            let x_3423 : f32 = u_xlat76;
            let x_3425 : f32 = u_xlat75;
            u_xlat75 = ((x_3422 * x_3423) + x_3425);
            let x_3428 : vec4<f32> = u_xlat13;
            let x_3429 : vec2<f32> = vec2<f32>(x_3428.z, x_3428.w);
            let x_3431 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
            let x_3438 : vec3<f32> = txVec56;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat76 = x_3440;
            let x_3442 : f32 = u_xlat9.y;
            let x_3443 : f32 = u_xlat76;
            let x_3445 : f32 = u_xlat75;
            u_xlat75 = ((x_3442 * x_3443) + x_3445);
            let x_3448 : vec2<f32> = u_xlat58;
            let x_3450 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec57;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat76 = x_3459;
            let x_3461 : f32 = u_xlat9.z;
            let x_3462 : f32 = u_xlat76;
            let x_3464 : f32 = u_xlat75;
            u_xlat75 = ((x_3461 * x_3462) + x_3464);
            let x_3467 : vec2<f32> = u_xlat51;
            let x_3469 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec58;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat51.x = x_3478;
            let x_3481 : f32 = u_xlat9.w;
            let x_3483 : f32 = u_xlat51.x;
            let x_3485 : f32 = u_xlat75;
            u_xlat73 = ((x_3481 * x_3483) + x_3485);
          }
        }
      } else {
        let x_3489 : vec4<f32> = u_xlat8;
        let x_3490 : vec2<f32> = vec2<f32>(x_3489.x, x_3489.y);
        let x_3492 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
        let x_3499 : vec3<f32> = txVec59;
        let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
        u_xlat73 = x_3501;
      }
      let x_3502 : i32 = u_xlati71;
      let x_3504 : f32 = x_249.x_AdditionalShadowParams[x_3502].x;
      u_xlat51.x = (1.0f + -(x_3504));
      let x_3508 : f32 = u_xlat73;
      let x_3509 : i32 = u_xlati71;
      let x_3511 : f32 = x_249.x_AdditionalShadowParams[x_3509].x;
      let x_3514 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3508 * x_3511) + x_3514);
      let x_3517 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3517);
      let x_3521 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3521 >= 1.0f);
      let x_3523 : bool = u_xlatb74;
      let x_3524 : bool = u_xlatb51;
      u_xlatb51 = (x_3523 | x_3524);
      let x_3526 : bool = u_xlatb51;
      let x_3527 : f32 = u_xlat73;
      u_xlat73 = select(x_3527, 1.0f, x_3526);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3530 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3530) + 1.0f);
    let x_3534 : f32 = u_xlat69;
    let x_3536 : f32 = u_xlat51.x;
    let x_3538 : f32 = u_xlat73;
    u_xlat73 = ((x_3534 * x_3536) + x_3538);
    let x_3541 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3541 & 31i)));
    let x_3545 : i32 = u_xlati51;
    let x_3548 : f32 = x_1857.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3545) & bitcast<u32>(x_3548)));
    let x_3552 : i32 = u_xlati51;
    if ((x_3552 != 0i)) {
      let x_3556 : i32 = u_xlati71;
      let x_3558 : f32 = x_1857.x_AdditionalLightsLightTypes[x_3556].el;
      u_xlati51 = i32(x_3558);
      let x_3561 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3561 != 0i));
      let x_3565 : i32 = u_xlati71;
      u_xlati75 = (x_3565 << bitcast<u32>(2i));
      let x_3567 : i32 = u_xlati74;
      if ((x_3567 != 0i)) {
        let x_3571 : vec3<f32> = vs_TEXCOORD1;
        let x_3573 : i32 = u_xlati75;
        let x_3576 : i32 = u_xlati75;
        let x_3580 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3573 + 1i) / 4i)][((x_3576 + 1i) % 4i)];
        let x_3582 : vec3<f32> = (vec3<f32>(x_3571.y, x_3571.y, x_3571.y) * vec3<f32>(x_3580.x, x_3580.y, x_3580.w));
        let x_3583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3582.x, x_3582.y, x_3582.z, x_3583.w);
        let x_3585 : i32 = u_xlati75;
        let x_3587 : i32 = u_xlati75;
        let x_3590 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3585 / 4i)][(x_3587 % 4i)];
        let x_3592 : vec3<f32> = vs_TEXCOORD1;
        let x_3595 : vec4<f32> = u_xlat8;
        let x_3597 : vec3<f32> = ((vec3<f32>(x_3590.x, x_3590.y, x_3590.w) * vec3<f32>(x_3592.x, x_3592.x, x_3592.x)) + vec3<f32>(x_3595.x, x_3595.y, x_3595.z));
        let x_3598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
        let x_3600 : i32 = u_xlati75;
        let x_3603 : i32 = u_xlati75;
        let x_3607 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3600 + 2i) / 4i)][((x_3603 + 2i) % 4i)];
        let x_3609 : vec3<f32> = vs_TEXCOORD1;
        let x_3612 : vec4<f32> = u_xlat8;
        let x_3614 : vec3<f32> = ((vec3<f32>(x_3607.x, x_3607.y, x_3607.w) * vec3<f32>(x_3609.z, x_3609.z, x_3609.z)) + vec3<f32>(x_3612.x, x_3612.y, x_3612.z));
        let x_3615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3614.x, x_3614.y, x_3614.z, x_3615.w);
        let x_3617 : vec4<f32> = u_xlat8;
        let x_3619 : i32 = u_xlati75;
        let x_3622 : i32 = u_xlati75;
        let x_3626 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3619 + 3i) / 4i)][((x_3622 + 3i) % 4i)];
        let x_3628 : vec3<f32> = (vec3<f32>(x_3617.x, x_3617.y, x_3617.z) + vec3<f32>(x_3626.x, x_3626.y, x_3626.w));
        let x_3629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3628.x, x_3628.y, x_3628.z, x_3629.w);
        let x_3631 : vec4<f32> = u_xlat8;
        let x_3633 : vec4<f32> = u_xlat8;
        let x_3635 : vec2<f32> = (vec2<f32>(x_3631.x, x_3631.y) / vec2<f32>(x_3633.z, x_3633.z));
        let x_3636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3635.x, x_3635.y, x_3636.z, x_3636.w);
        let x_3638 : vec4<f32> = u_xlat8;
        let x_3641 : vec2<f32> = ((vec2<f32>(x_3638.x, x_3638.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3641.x, x_3641.y, x_3642.z, x_3642.w);
        let x_3644 : vec4<f32> = u_xlat8;
        let x_3648 : vec2<f32> = clamp(vec2<f32>(x_3644.x, x_3644.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3649 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3648.x, x_3648.y, x_3649.z, x_3649.w);
        let x_3651 : i32 = u_xlati71;
        let x_3653 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3651];
        let x_3655 : vec4<f32> = u_xlat8;
        let x_3658 : i32 = u_xlati71;
        let x_3660 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3658];
        let x_3662 : vec2<f32> = ((vec2<f32>(x_3653.x, x_3653.y) * vec2<f32>(x_3655.x, x_3655.y)) + vec2<f32>(x_3660.z, x_3660.w));
        let x_3663 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3662.x, x_3662.y, x_3663.z, x_3663.w);
      } else {
        let x_3666 : i32 = u_xlati51;
        u_xlatb51 = (x_3666 == 1i);
        let x_3668 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3668);
        let x_3670 : i32 = u_xlati51;
        if ((x_3670 != 0i)) {
          let x_3674 : vec3<f32> = vs_TEXCOORD1;
          let x_3676 : i32 = u_xlati75;
          let x_3679 : i32 = u_xlati75;
          let x_3683 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3676 + 1i) / 4i)][((x_3679 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3674.y, x_3674.y) * vec2<f32>(x_3683.x, x_3683.y));
          let x_3686 : i32 = u_xlati75;
          let x_3688 : i32 = u_xlati75;
          let x_3691 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3686 / 4i)][(x_3688 % 4i)];
          let x_3693 : vec3<f32> = vs_TEXCOORD1;
          let x_3696 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3691.x, x_3691.y) * vec2<f32>(x_3693.x, x_3693.x)) + x_3696);
          let x_3698 : i32 = u_xlati75;
          let x_3701 : i32 = u_xlati75;
          let x_3705 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3698 + 2i) / 4i)][((x_3701 + 2i) % 4i)];
          let x_3707 : vec3<f32> = vs_TEXCOORD1;
          let x_3710 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3705.x, x_3705.y) * vec2<f32>(x_3707.z, x_3707.z)) + x_3710);
          let x_3712 : vec2<f32> = u_xlat51;
          let x_3713 : i32 = u_xlati75;
          let x_3716 : i32 = u_xlati75;
          let x_3720 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3713 + 3i) / 4i)][((x_3716 + 3i) % 4i)];
          u_xlat51 = (x_3712 + vec2<f32>(x_3720.x, x_3720.y));
          let x_3723 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3723 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3726 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3726);
          let x_3728 : i32 = u_xlati71;
          let x_3730 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3728];
          let x_3732 : vec2<f32> = u_xlat51;
          let x_3734 : i32 = u_xlati71;
          let x_3736 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3734];
          let x_3738 : vec2<f32> = ((vec2<f32>(x_3730.x, x_3730.y) * x_3732) + vec2<f32>(x_3736.z, x_3736.w));
          let x_3739 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3738.x, x_3738.y, x_3739.z, x_3739.w);
        } else {
          let x_3742 : vec3<f32> = vs_TEXCOORD1;
          let x_3744 : i32 = u_xlati75;
          let x_3747 : i32 = u_xlati75;
          let x_3751 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3744 + 1i) / 4i)][((x_3747 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3742.y, x_3742.y, x_3742.y, x_3742.y) * x_3751);
          let x_3753 : i32 = u_xlati75;
          let x_3755 : i32 = u_xlati75;
          let x_3758 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[(x_3753 / 4i)][(x_3755 % 4i)];
          let x_3759 : vec3<f32> = vs_TEXCOORD1;
          let x_3762 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3758 * vec4<f32>(x_3759.x, x_3759.x, x_3759.x, x_3759.x)) + x_3762);
          let x_3764 : i32 = u_xlati75;
          let x_3767 : i32 = u_xlati75;
          let x_3771 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3764 + 2i) / 4i)][((x_3767 + 2i) % 4i)];
          let x_3772 : vec3<f32> = vs_TEXCOORD1;
          let x_3775 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3771 * vec4<f32>(x_3772.z, x_3772.z, x_3772.z, x_3772.z)) + x_3775);
          let x_3777 : vec4<f32> = u_xlat9;
          let x_3778 : i32 = u_xlati75;
          let x_3781 : i32 = u_xlati75;
          let x_3785 : vec4<f32> = x_1857.x_AdditionalLightsWorldToLights[((x_3778 + 3i) / 4i)][((x_3781 + 3i) % 4i)];
          u_xlat9 = (x_3777 + x_3785);
          let x_3787 : vec4<f32> = u_xlat9;
          let x_3789 : vec4<f32> = u_xlat9;
          let x_3791 : vec3<f32> = (vec3<f32>(x_3787.x, x_3787.y, x_3787.z) / vec3<f32>(x_3789.w, x_3789.w, x_3789.w));
          let x_3792 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
          let x_3794 : vec4<f32> = u_xlat9;
          let x_3796 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3794.x, x_3794.y, x_3794.z), vec3<f32>(x_3796.x, x_3796.y, x_3796.z));
          let x_3801 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3801);
          let x_3804 : vec2<f32> = u_xlat51;
          let x_3806 : vec4<f32> = u_xlat9;
          let x_3808 : vec3<f32> = (vec3<f32>(x_3804.x, x_3804.x, x_3804.x) * vec3<f32>(x_3806.x, x_3806.y, x_3806.z));
          let x_3809 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3808.x, x_3808.y, x_3808.z, x_3809.w);
          let x_3811 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3811.x, x_3811.y, x_3811.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3818 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3818, 0.00000099999999747524f);
          let x_3823 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3823);
          let x_3826 : vec2<f32> = u_xlat51;
          let x_3828 : vec4<f32> = u_xlat9;
          let x_3830 : vec3<f32> = (vec3<f32>(x_3826.x, x_3826.x, x_3826.x) * vec3<f32>(x_3828.z, x_3828.x, x_3828.y));
          let x_3831 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3830.x, x_3830.y, x_3830.z, x_3831.w);
          let x_3834 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3834);
          let x_3838 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3838, 0.0f, 1.0f);
          let x_3842 : vec4<f32> = u_xlat10;
          let x_3844 : vec4<bool> = (vec4<f32>(x_3842.y, x_3842.z, x_3842.y, x_3842.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3844.x, x_3844.y);
          let x_3847 : bool = u_xlatb54.x;
          if (x_3847) {
            let x_3852 : f32 = u_xlat10.x;
            x_3848 = x_3852;
          } else {
            let x_3855 : f32 = u_xlat10.x;
            x_3848 = -(x_3855);
          }
          let x_3857 : f32 = x_3848;
          u_xlat54.x = x_3857;
          let x_3860 : bool = u_xlatb54.y;
          if (x_3860) {
            let x_3865 : f32 = u_xlat10.x;
            x_3861 = x_3865;
          } else {
            let x_3868 : f32 = u_xlat10.x;
            x_3861 = -(x_3868);
          }
          let x_3870 : f32 = x_3861;
          u_xlat54.y = x_3870;
          let x_3872 : vec4<f32> = u_xlat9;
          let x_3874 : vec2<f32> = u_xlat51;
          let x_3877 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3872.x, x_3872.y) * vec2<f32>(x_3874.x, x_3874.x)) + x_3877);
          let x_3879 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3879 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3882 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3882, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3886 : i32 = u_xlati71;
          let x_3888 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3886];
          let x_3890 : vec2<f32> = u_xlat51;
          let x_3892 : i32 = u_xlati71;
          let x_3894 : vec4<f32> = x_1857.x_AdditionalLightsCookieAtlasUVRects[x_3892];
          let x_3896 : vec2<f32> = ((vec2<f32>(x_3888.x, x_3888.y) * x_3890) + vec2<f32>(x_3894.z, x_3894.w));
          let x_3897 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3896.x, x_3896.y, x_3897.z, x_3897.w);
        }
      }
      let x_3904 : vec4<f32> = u_xlat8;
      let x_3906 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3904.x, x_3904.y), 0.0f);
      u_xlat8 = x_3906;
      let x_3908 : bool = u_xlatb5.y;
      if (x_3908) {
        let x_3913 : f32 = u_xlat8.w;
        x_3909 = x_3913;
      } else {
        let x_3916 : f32 = u_xlat8.x;
        x_3909 = x_3916;
      }
      let x_3917 : f32 = x_3909;
      u_xlat51.x = x_3917;
      let x_3920 : bool = u_xlatb5.x;
      if (x_3920) {
        let x_3924 : vec4<f32> = u_xlat8;
        x_3921 = vec3<f32>(x_3924.x, x_3924.y, x_3924.z);
      } else {
        let x_3927 : vec2<f32> = u_xlat51;
        x_3921 = vec3<f32>(x_3927.x, x_3927.x, x_3927.x);
      }
      let x_3929 : vec3<f32> = x_3921;
      let x_3930 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3929.x, x_3929.y, x_3929.z, x_3930.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3936 : vec4<f32> = u_xlat8;
    let x_3938 : i32 = u_xlati71;
    let x_3940 : vec4<f32> = x_2110.x_AdditionalLightsColor[x_3938];
    let x_3942 : vec3<f32> = (vec3<f32>(x_3936.x, x_3936.y, x_3936.z) * vec3<f32>(x_3940.x, x_3940.y, x_3940.z));
    let x_3943 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3943.w);
    let x_3945 : f32 = u_xlat72;
    let x_3946 : f32 = u_xlat73;
    u_xlat71 = (x_3945 * x_3946);
    let x_3948 : f32 = u_xlat71;
    let x_3950 : vec4<f32> = u_xlat8;
    let x_3952 : vec3<f32> = (vec3<f32>(x_3948, x_3948, x_3948) * vec3<f32>(x_3950.x, x_3950.y, x_3950.z));
    let x_3953 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3952.x, x_3952.y, x_3952.z, x_3953.w);
    let x_3955 : vec4<f32> = u_xlat2;
    let x_3957 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3955.x, x_3955.y, x_3955.z), vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3960 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3960, 0.0f, 1.0f);
    let x_3962 : f32 = u_xlat71;
    let x_3964 : vec4<f32> = u_xlat8;
    let x_3966 : vec3<f32> = (vec3<f32>(x_3962, x_3962, x_3962) * vec3<f32>(x_3964.x, x_3964.y, x_3964.z));
    let x_3967 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3966.x, x_3966.y, x_3966.z, x_3967.w);
    let x_3969 : vec4<f32> = u_xlat1;
    let x_3971 : vec4<f32> = u_xlat7;
    let x_3973 : vec3<f32> = (vec3<f32>(x_3969.y, x_3969.z, x_3969.w) * vec3<f32>(x_3971.x, x_3971.y, x_3971.z));
    let x_3974 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3973.x, x_3973.y, x_3973.z, x_3974.w);
    let x_3976 : vec4<f32> = u_xlat7;
    let x_3978 : vec4<f32> = u_xlat0;
    let x_3981 : vec4<f32> = u_xlat6;
    let x_3983 : vec3<f32> = ((vec3<f32>(x_3976.x, x_3976.y, x_3976.z) * vec3<f32>(x_3978.x, x_3978.x, x_3978.x)) + vec3<f32>(x_3981.x, x_3981.y, x_3981.z));
    let x_3984 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3983.x, x_3983.y, x_3983.z, x_3984.w);

    continuing {
      let x_3986 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3986 + bitcast<u32>(1i));
    }
  }
  let x_3988 : vec4<f32> = u_xlat4;
  let x_3990 : vec4<f32> = u_xlat1;
  let x_3993 : vec4<f32> = u_xlat3;
  let x_3995 : vec3<f32> = ((vec3<f32>(x_3988.x, x_3988.y, x_3988.z) * vec3<f32>(x_3990.y, x_3990.z, x_3990.w)) + vec3<f32>(x_3993.x, x_3993.y, x_3993.z));
  let x_3996 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3995.x, x_3995.y, x_3995.z, x_3996.w);
  let x_4000 : vec4<f32> = u_xlat6;
  let x_4002 : vec4<f32> = u_xlat1;
  let x_4004 : vec3<f32> = (vec3<f32>(x_4000.x, x_4000.y, x_4000.z) + vec3<f32>(x_4002.x, x_4002.y, x_4002.z));
  let x_4005 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4004.x, x_4004.y, x_4004.z, x_4005.w);
  let x_4008 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_4008 == 1.0f);
  let x_4010 : bool = u_xlatb23;
  let x_4011 : bool = u_xlatb46;
  u_xlatb23 = (x_4010 | x_4011);
  let x_4013 : bool = u_xlatb23;
  if (x_4013) {
    let x_4018 : f32 = u_xlat0.x;
    x_4014 = x_4018;
  } else {
    x_4014 = 1.0f;
  }
  let x_4020 : f32 = x_4014;
  SV_Target0.w = x_4020;
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


