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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

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

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb69 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_301 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1639 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1890 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb73 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

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
  var x_1587 : f32;
  var x_1725 : f32;
  var x_1737 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2030 : f32;
  var x_2040 : f32;
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
  var x_3633 : f32;
  var x_3646 : f32;
  var x_3694 : f32;
  var x_3706 : vec3<f32>;
  var x_3791 : f32;
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
  u_xlat2 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_244 : vec2<f32> = vs_TEXCOORD7;
  let x_246 : f32 = x_44.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_244, x_246);
  u_xlat3 = x_247;
  let x_253 : vec2<f32> = vs_TEXCOORD7;
  let x_255 : f32 = x_44.x_GlobalMipBias.x;
  let x_256 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_253, x_255);
  let x_257 : vec3<f32> = vec3<f32>(x_256.x, x_256.y, x_256.z);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat3;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec3<f32> = u_xlat2;
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat23.x = dot(x_267, vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_273 : f32 = u_xlat23.x;
  u_xlat23.x = (x_273 + 0.5f);
  let x_276 : vec3<f32> = u_xlat23;
  let x_278 : vec4<f32> = u_xlat4;
  let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.x, x_276.x) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : f32 = u_xlat3.w;
  u_xlat23.x = max(x_284, 0.00009999999747378752f);
  let x_287 : vec4<f32> = u_xlat3;
  let x_289 : vec3<f32> = u_xlat23;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) / vec3<f32>(x_289.x, x_289.x, x_289.x));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_305 : f32 = x_301.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_305);
  let x_307 : bool = u_xlatb23;
  if (x_307) {
    let x_311 : f32 = x_301.x_MainLightShadowParams.y;
    u_xlatb23 = (x_311 == 1.0f);
    let x_313 : bool = u_xlatb23;
    if (x_313) {
      let x_317 : vec4<f32> = vs_TEXCOORD6;
      let x_320 : vec4<f32> = x_301.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_317.x, x_317.y, x_317.x, x_317.y) + x_320);
      let x_324 : vec4<f32> = u_xlat4;
      let x_325 : vec2<f32> = vec2<f32>(x_324.x, x_324.y);
      let x_327 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_325.x, x_325.y, x_327);
      let x_340 : vec3<f32> = txVec0;
      let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_340.xy, x_340.z);
      u_xlat5.x = x_342;
      let x_345 : vec4<f32> = u_xlat4;
      let x_346 : vec2<f32> = vec2<f32>(x_345.z, x_345.w);
      let x_348 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_346.x, x_346.y, x_348);
      let x_355 : vec3<f32> = txVec1;
      let x_357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_355.xy, x_355.z);
      u_xlat5.y = x_357;
      let x_359 : vec4<f32> = vs_TEXCOORD6;
      let x_363 : vec4<f32> = x_301.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_359.x, x_359.y, x_359.x, x_359.y) + x_363);
      let x_366 : vec4<f32> = u_xlat4;
      let x_367 : vec2<f32> = vec2<f32>(x_366.x, x_366.y);
      let x_369 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_367.x, x_367.y, x_369);
      let x_376 : vec3<f32> = txVec2;
      let x_378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_376.xy, x_376.z);
      u_xlat5.z = x_378;
      let x_381 : vec4<f32> = u_xlat4;
      let x_382 : vec2<f32> = vec2<f32>(x_381.z, x_381.w);
      let x_384 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_382.x, x_382.y, x_384);
      let x_391 : vec3<f32> = txVec3;
      let x_393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_391.xy, x_391.z);
      u_xlat5.w = x_393;
      let x_395 : vec4<f32> = u_xlat5;
      u_xlat23.x = dot(x_395, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_402 : f32 = x_301.x_MainLightShadowParams.y;
      u_xlatb69 = (x_402 == 2.0f);
      let x_405 : bool = u_xlatb69;
      if (x_405) {
        let x_408 : vec4<f32> = vs_TEXCOORD6;
        let x_412 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_416 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_412.z, x_412.w)) + vec2<f32>(0.5f, 0.5f));
        let x_417 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
        let x_419 : vec4<f32> = u_xlat4;
        let x_421 : vec2<f32> = floor(vec2<f32>(x_419.x, x_419.y));
        let x_422 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_426 : vec4<f32> = vs_TEXCOORD6;
        let x_429 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_432 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_429.z, x_429.w)) + -(vec2<f32>(x_432.x, x_432.y)));
        let x_436 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_436.x, x_436.x, x_436.y, x_436.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_441 : vec4<f32> = u_xlat5;
        let x_443 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_441.x, x_441.x, x_441.z, x_441.z) * vec4<f32>(x_443.x, x_443.x, x_443.z, x_443.z));
        let x_446 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = (vec2<f32>(x_446.y, x_446.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_451 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_450.x, x_451.y, x_450.y, x_451.w);
        let x_453 : vec4<f32> = u_xlat6;
        let x_456 : vec2<f32> = u_xlat50;
        let x_458 : vec2<f32> = ((vec2<f32>(x_453.x, x_453.z) * vec2<f32>(0.5f, 0.5f)) + -(x_456));
        let x_459 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_462 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_462) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec2<f32> = u_xlat50;
        let x_469 : vec2<f32> = min(x_467, vec2<f32>(0.0f, 0.0f));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat7;
        let x_475 : vec4<f32> = u_xlat7;
        let x_478 : vec2<f32> = u_xlat52;
        let x_479 : vec2<f32> = ((-(vec2<f32>(x_472.x, x_472.y)) * vec2<f32>(x_475.x, x_475.y)) + x_478);
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_482, vec2<f32>(0.0f, 0.0f));
        let x_484 : vec2<f32> = u_xlat50;
        let x_486 : vec2<f32> = u_xlat50;
        let x_488 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_484) * x_486) + vec2<f32>(x_488.y, x_488.w));
        let x_491 : vec4<f32> = u_xlat7;
        let x_493 : vec2<f32> = (vec2<f32>(x_491.x, x_491.y) + vec2<f32>(1.0f, 1.0f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_496 + vec2<f32>(1.0f, 1.0f));
        let x_499 : vec4<f32> = u_xlat6;
        let x_503 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_504 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat52;
        let x_507 : vec2<f32> = (x_506 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat7;
        let x_512 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_516 : vec2<f32> = u_xlat50;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_518 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_520.y, x_520.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_524 : f32 = u_xlat7.x;
        u_xlat8.z = x_524;
        let x_527 : f32 = u_xlat50.x;
        u_xlat8.w = x_527;
        let x_530 : f32 = u_xlat9.x;
        u_xlat6.z = x_530;
        let x_533 : f32 = u_xlat5.x;
        u_xlat6.w = x_533;
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_536.z, x_536.w, x_536.x, x_536.z) + vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.z));
        let x_542 : f32 = u_xlat8.y;
        u_xlat7.z = x_542;
        let x_545 : f32 = u_xlat50.y;
        u_xlat7.w = x_545;
        let x_548 : f32 = u_xlat6.y;
        u_xlat9.z = x_548;
        let x_551 : f32 = u_xlat5.z;
        u_xlat9.w = x_551;
        let x_553 : vec4<f32> = u_xlat7;
        let x_555 : vec4<f32> = u_xlat9;
        let x_557 : vec3<f32> = (vec3<f32>(x_553.z, x_553.y, x_553.w) + vec3<f32>(x_555.z, x_555.y, x_555.w));
        let x_558 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_562 : vec4<f32> = u_xlat10;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.z, x_560.w) / vec3<f32>(x_562.z, x_562.w, x_562.y));
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat6;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat9;
        let x_577 : vec4<f32> = u_xlat5;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) / vec3<f32>(x_577.x, x_577.y, x_577.z));
        let x_580 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_584 : vec3<f32> = (vec3<f32>(x_582.x, x_582.y, x_582.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_592 : vec3<f32> = (vec3<f32>(x_587.y, x_587.x, x_587.z) * vec3<f32>(x_590.x, x_590.x, x_590.x));
        let x_593 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat7;
        let x_598 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_600 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_598.y, x_598.y, x_598.y));
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_604 : f32 = u_xlat7.x;
        u_xlat6.w = x_604;
        let x_606 : vec4<f32> = u_xlat4;
        let x_609 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y) * vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y)) + vec4<f32>(x_612.y, x_612.w, x_612.x, x_612.w));
        let x_615 : vec4<f32> = u_xlat4;
        let x_618 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_615.x, x_615.y) * vec2<f32>(x_618.x, x_618.y)) + vec2<f32>(x_621.z, x_621.w));
        let x_625 : f32 = u_xlat6.y;
        u_xlat7.w = x_625;
        let x_627 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = vec2<f32>(x_627.y, x_627.z);
        let x_629 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_629.x, x_628.x, x_629.z, x_628.y);
        let x_631 : vec4<f32> = u_xlat4;
        let x_634 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.x, x_637.y, x_637.z, x_637.y));
        let x_640 : vec4<f32> = u_xlat4;
        let x_643 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.y) * vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y)) + vec4<f32>(x_646.w, x_646.y, x_646.w, x_646.z));
        let x_649 : vec4<f32> = u_xlat4;
        let x_652 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_655 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y) * vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y)) + vec4<f32>(x_655.x, x_655.w, x_655.z, x_655.w));
        let x_659 : vec4<f32> = u_xlat5;
        let x_661 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_659.x, x_659.x, x_659.x, x_659.y) * vec4<f32>(x_661.z, x_661.w, x_661.y, x_661.z));
        let x_665 : vec4<f32> = u_xlat5;
        let x_667 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_665.y, x_665.y, x_665.z, x_665.z) * x_667);
        let x_670 : f32 = u_xlat5.z;
        let x_672 : f32 = u_xlat10.y;
        u_xlat69 = (x_670 * x_672);
        let x_675 : vec4<f32> = u_xlat8;
        let x_676 : vec2<f32> = vec2<f32>(x_675.x, x_675.y);
        let x_678 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_676.x, x_676.y, x_678);
        let x_685 : vec3<f32> = txVec4;
        let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_685.xy, x_685.z);
        u_xlat1.x = x_687;
        let x_690 : vec4<f32> = u_xlat8;
        let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
        let x_693 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_701 : vec3<f32> = txVec5;
        let x_703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_701.xy, x_701.z);
        u_xlat71 = x_703;
        let x_704 : f32 = u_xlat71;
        let x_706 : f32 = u_xlat11.y;
        u_xlat71 = (x_704 * x_706);
        let x_709 : f32 = u_xlat11.x;
        let x_711 : f32 = u_xlat1.x;
        let x_713 : f32 = u_xlat71;
        u_xlat1.x = ((x_709 * x_711) + x_713);
        let x_717 : vec2<f32> = u_xlat50;
        let x_719 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec6;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_726.xy, x_726.z);
        u_xlat71 = x_728;
        let x_730 : f32 = u_xlat11.z;
        let x_731 : f32 = u_xlat71;
        let x_734 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_730 * x_731) + x_734);
        let x_738 : vec4<f32> = u_xlat7;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
        let x_741 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_748 : vec3<f32> = txVec7;
        let x_750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_748.xy, x_748.z);
        u_xlat71 = x_750;
        let x_752 : f32 = u_xlat11.w;
        let x_753 : f32 = u_xlat71;
        let x_756 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_752 * x_753) + x_756);
        let x_760 : vec4<f32> = u_xlat9;
        let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
        let x_763 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec8;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_770.xy, x_770.z);
        u_xlat71 = x_772;
        let x_774 : f32 = u_xlat12.x;
        let x_775 : f32 = u_xlat71;
        let x_778 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_774 * x_775) + x_778);
        let x_782 : vec4<f32> = u_xlat9;
        let x_783 : vec2<f32> = vec2<f32>(x_782.z, x_782.w);
        let x_785 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_783.x, x_783.y, x_785);
        let x_792 : vec3<f32> = txVec9;
        let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_792.xy, x_792.z);
        u_xlat71 = x_794;
        let x_796 : f32 = u_xlat12.y;
        let x_797 : f32 = u_xlat71;
        let x_800 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_796 * x_797) + x_800);
        let x_804 : vec4<f32> = u_xlat7;
        let x_805 : vec2<f32> = vec2<f32>(x_804.z, x_804.w);
        let x_807 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_805.x, x_805.y, x_807);
        let x_814 : vec3<f32> = txVec10;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_814.xy, x_814.z);
        u_xlat71 = x_816;
        let x_818 : f32 = u_xlat12.z;
        let x_819 : f32 = u_xlat71;
        let x_822 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_818 * x_819) + x_822);
        let x_826 : vec4<f32> = u_xlat6;
        let x_827 : vec2<f32> = vec2<f32>(x_826.x, x_826.y);
        let x_829 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_836 : vec3<f32> = txVec11;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_836.xy, x_836.z);
        u_xlat71 = x_838;
        let x_840 : f32 = u_xlat12.w;
        let x_841 : f32 = u_xlat71;
        let x_844 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_840 * x_841) + x_844);
        let x_848 : vec4<f32> = u_xlat6;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec12;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat71 = x_860;
        let x_861 : f32 = u_xlat69;
        let x_862 : f32 = u_xlat71;
        let x_865 : f32 = u_xlat1.x;
        u_xlat23.x = ((x_861 * x_862) + x_865);
      } else {
        let x_869 : vec4<f32> = vs_TEXCOORD6;
        let x_872 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_875 : vec2<f32> = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_872.z, x_872.w)) + vec2<f32>(0.5f, 0.5f));
        let x_876 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat4;
        let x_880 : vec2<f32> = floor(vec2<f32>(x_878.x, x_878.y));
        let x_881 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec4<f32> = vs_TEXCOORD6;
        let x_886 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_883.x, x_883.y) * vec2<f32>(x_886.z, x_886.w)) + -(vec2<f32>(x_889.x, x_889.y)));
        let x_893 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_893.x, x_893.x, x_893.y, x_893.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_896 : vec4<f32> = u_xlat5;
        let x_898 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_896.x, x_896.x, x_896.z, x_896.z) * vec4<f32>(x_898.x, x_898.x, x_898.z, x_898.z));
        let x_901 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = (vec2<f32>(x_901.y, x_901.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_905.x, x_906.z, x_905.y);
        let x_908 : vec4<f32> = u_xlat6;
        let x_911 : vec2<f32> = u_xlat50;
        let x_913 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.z) * vec2<f32>(0.5f, 0.5f)) + -(x_911));
        let x_914 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_913.x, x_914.y, x_913.y, x_914.w);
        let x_916 : vec2<f32> = u_xlat50;
        let x_918 : vec2<f32> = (-(x_916) + vec2<f32>(1.0f, 1.0f));
        let x_919 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_921, vec2<f32>(0.0f, 0.0f));
        let x_923 : vec2<f32> = u_xlat52;
        let x_925 : vec2<f32> = u_xlat52;
        let x_927 : vec4<f32> = u_xlat6;
        let x_929 : vec2<f32> = ((-(x_923) * x_925) + vec2<f32>(x_927.x, x_927.y));
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_932, vec2<f32>(0.0f, 0.0f));
        let x_935 : vec2<f32> = u_xlat52;
        let x_937 : vec2<f32> = u_xlat52;
        let x_939 : vec4<f32> = u_xlat5;
        let x_941 : vec2<f32> = ((-(x_935) * x_937) + vec2<f32>(x_939.y, x_939.w));
        let x_942 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_941.x, x_942.y, x_941.y);
        let x_944 : vec4<f32> = u_xlat6;
        let x_947 : vec2<f32> = (vec2<f32>(x_944.x, x_944.y) + vec2<f32>(2.0f, 2.0f));
        let x_948 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec3<f32> = u_xlat28;
        let x_952 : vec2<f32> = (vec2<f32>(x_950.x, x_950.z) + vec2<f32>(2.0f, 2.0f));
        let x_953 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_956 : f32 = u_xlat5.y;
        u_xlat8.z = (x_956 * 0.08163200318813323975f);
        let x_960 : vec4<f32> = u_xlat5;
        let x_963 : vec3<f32> = (vec3<f32>(x_960.z, x_960.x, x_960.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_966 : vec4<f32> = u_xlat6;
        let x_969 : vec2<f32> = (vec2<f32>(x_966.x, x_966.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_970 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_973 : f32 = u_xlat9.y;
        u_xlat8.x = x_973;
        let x_975 : vec2<f32> = u_xlat50;
        let x_982 : vec2<f32> = ((vec2<f32>(x_975.x, x_975.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_982.x, x_983.z, x_982.y);
        let x_985 : vec2<f32> = u_xlat50;
        let x_989 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_990.w);
        let x_993 : f32 = u_xlat5.x;
        u_xlat6.y = x_993;
        let x_996 : f32 = u_xlat7.y;
        u_xlat6.w = x_996;
        let x_998 : vec4<f32> = u_xlat6;
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_998 + x_999);
        let x_1001 : vec2<f32> = u_xlat50;
        let x_1004 : vec2<f32> = ((vec2<f32>(x_1001.y, x_1001.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1004.x, x_1005.z, x_1004.y);
        let x_1007 : vec2<f32> = u_xlat50;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1007.y, x_1007.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1011.w);
        let x_1014 : f32 = u_xlat5.y;
        u_xlat7.y = x_1014;
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1016 + x_1017);
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1019 / x_1020);
        let x_1022 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1022 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1028 / x_1029);
        let x_1031 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1031 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1033 : vec4<f32> = u_xlat6;
        let x_1036 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1033.w, x_1033.x, x_1033.y, x_1033.z) * vec4<f32>(x_1036.x, x_1036.x, x_1036.x, x_1036.x));
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1039.x, x_1039.w, x_1039.y, x_1039.z) * vec4<f32>(x_1042.y, x_1042.y, x_1042.y, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1046 : vec3<f32> = vec3<f32>(x_1045.y, x_1045.z, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1047.y, x_1046.y, x_1046.z);
        let x_1050 : f32 = u_xlat7.x;
        u_xlat9.y = x_1050;
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat4;
        let x_1064 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.x, x_1064.y)) + vec2<f32>(x_1067.w, x_1067.y));
        let x_1071 : f32 = u_xlat9.y;
        u_xlat6.y = x_1071;
        let x_1074 : f32 = u_xlat7.z;
        u_xlat9.y = x_1074;
        let x_1076 : vec4<f32> = u_xlat4;
        let x_1079 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat4;
        let x_1088 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1093 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1088.x, x_1088.y)) + vec2<f32>(x_1091.w, x_1091.y));
        let x_1094 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
        let x_1097 : f32 = u_xlat9.y;
        u_xlat6.z = x_1097;
        let x_1100 : vec4<f32> = u_xlat4;
        let x_1103 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y) * vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y)) + vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.z));
        let x_1110 : f32 = u_xlat7.w;
        u_xlat9.y = x_1110;
        let x_1113 : vec4<f32> = u_xlat4;
        let x_1116 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y) * vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) + vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1119.y));
        let x_1123 : vec4<f32> = u_xlat4;
        let x_1126 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.x, x_1126.y)) + vec2<f32>(x_1129.w, x_1129.y));
        let x_1133 : f32 = u_xlat9.y;
        u_xlat6.w = x_1133;
        let x_1136 : vec4<f32> = u_xlat4;
        let x_1139 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.x, x_1142.w));
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1146 : vec3<f32> = vec3<f32>(x_1145.x, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1146.x, x_1147.y, x_1146.y, x_1146.z);
        let x_1149 : vec4<f32> = u_xlat4;
        let x_1152 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y) * vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y)) + vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1155.y));
        let x_1159 : vec4<f32> = u_xlat4;
        let x_1162 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(x_1162.x, x_1162.y)) + vec2<f32>(x_1165.w, x_1165.y));
        let x_1169 : f32 = u_xlat6.x;
        u_xlat7.x = x_1169;
        let x_1171 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.x, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1183 : vec4<f32> = u_xlat5;
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1183.x, x_1183.x, x_1183.x, x_1183.x) * x_1185);
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1188.y, x_1188.y, x_1188.y, x_1188.y) * x_1190);
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1193.z, x_1193.z, x_1193.z, x_1193.z) * x_1195);
        let x_1197 : vec4<f32> = u_xlat5;
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1197.w, x_1197.w, x_1197.w, x_1197.w) * x_1199);
        let x_1202 : vec4<f32> = u_xlat10;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.x, x_1202.y);
        let x_1205 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec13;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat69 = x_1214;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.z, x_1216.w);
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec14;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
        u_xlat1.x = x_1228;
        let x_1231 : f32 = u_xlat1.x;
        let x_1233 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1231 * x_1233);
        let x_1237 : f32 = u_xlat15.x;
        let x_1238 : f32 = u_xlat69;
        let x_1241 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1237 * x_1238) + x_1241);
        let x_1244 : vec2<f32> = u_xlat50;
        let x_1246 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec15;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
        u_xlat1.x = x_1255;
        let x_1258 : f32 = u_xlat15.z;
        let x_1260 : f32 = u_xlat1.x;
        let x_1262 : f32 = u_xlat69;
        u_xlat69 = ((x_1258 * x_1260) + x_1262);
        let x_1265 : vec4<f32> = u_xlat13;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec16;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat1.x = x_1277;
        let x_1280 : f32 = u_xlat15.w;
        let x_1282 : f32 = u_xlat1.x;
        let x_1284 : f32 = u_xlat69;
        u_xlat69 = ((x_1280 * x_1282) + x_1284);
        let x_1287 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.x, x_1287.y);
        let x_1290 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1297 : vec3<f32> = txVec17;
        let x_1299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1297.xy, x_1297.z);
        u_xlat1.x = x_1299;
        let x_1302 : f32 = u_xlat16.x;
        let x_1304 : f32 = u_xlat1.x;
        let x_1306 : f32 = u_xlat69;
        u_xlat69 = ((x_1302 * x_1304) + x_1306);
        let x_1309 : vec4<f32> = u_xlat11;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec18;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat1.x = x_1321;
        let x_1324 : f32 = u_xlat16.y;
        let x_1326 : f32 = u_xlat1.x;
        let x_1328 : f32 = u_xlat69;
        u_xlat69 = ((x_1324 * x_1326) + x_1328);
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.x, x_1331.y);
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec19;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat1.x = x_1343;
        let x_1346 : f32 = u_xlat16.z;
        let x_1348 : f32 = u_xlat1.x;
        let x_1350 : f32 = u_xlat69;
        u_xlat69 = ((x_1346 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat13;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.z, x_1353.w);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec20;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat1.x = x_1365;
        let x_1368 : f32 = u_xlat16.w;
        let x_1370 : f32 = u_xlat1.x;
        let x_1372 : f32 = u_xlat69;
        u_xlat69 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec4<f32> = u_xlat14;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.x, x_1375.y);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec21;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat1.x = x_1387;
        let x_1390 : f32 = u_xlat17.x;
        let x_1392 : f32 = u_xlat1.x;
        let x_1394 : f32 = u_xlat69;
        u_xlat69 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat14;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec22;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat1.x = x_1409;
        let x_1412 : f32 = u_xlat17.y;
        let x_1414 : f32 = u_xlat1.x;
        let x_1416 : f32 = u_xlat69;
        u_xlat69 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec2<f32> = u_xlat29;
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec23;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat1.x = x_1430;
        let x_1433 : f32 = u_xlat17.z;
        let x_1435 : f32 = u_xlat1.x;
        let x_1437 : f32 = u_xlat69;
        u_xlat69 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec2<f32> = u_xlat58;
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec24;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : f32 = u_xlat17.w;
        let x_1456 : f32 = u_xlat1.x;
        let x_1458 : f32 = u_xlat69;
        u_xlat69 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec25;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat1.x = x_1473;
        let x_1476 : f32 = u_xlat5.x;
        let x_1478 : f32 = u_xlat1.x;
        let x_1480 : f32 = u_xlat69;
        u_xlat69 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec26;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat1.x = x_1495;
        let x_1498 : f32 = u_xlat5.y;
        let x_1500 : f32 = u_xlat1.x;
        let x_1502 : f32 = u_xlat69;
        u_xlat69 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec2<f32> = u_xlat53;
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec27;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat1.x = x_1516;
        let x_1519 : f32 = u_xlat5.z;
        let x_1521 : f32 = u_xlat1.x;
        let x_1523 : f32 = u_xlat69;
        u_xlat69 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat4;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec28;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat1.x = x_1538;
        let x_1541 : f32 = u_xlat5.w;
        let x_1543 : f32 = u_xlat1.x;
        let x_1545 : f32 = u_xlat69;
        u_xlat23.x = ((x_1541 * x_1543) + x_1545);
      }
    }
  } else {
    let x_1550 : vec4<f32> = vs_TEXCOORD6;
    let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
    let x_1553 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
    let x_1560 : vec3<f32> = txVec29;
    let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
    u_xlat23.x = x_1562;
  }
  let x_1565 : f32 = x_301.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1565) + 1.0f);
  let x_1569 : f32 = u_xlat23.x;
  let x_1571 : f32 = x_301.x_MainLightShadowParams.x;
  let x_1573 : f32 = u_xlat69;
  u_xlat23.x = ((x_1569 * x_1571) + x_1573);
  let x_1577 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1577);
  let x_1581 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1581 >= 1.0f);
  let x_1583 : bool = u_xlatb69;
  let x_1584 : bool = u_xlatb1;
  u_xlatb69 = (x_1583 | x_1584);
  let x_1586 : bool = u_xlatb69;
  if (x_1586) {
    x_1587 = 1.0f;
  } else {
    let x_1592 : f32 = u_xlat23.x;
    x_1587 = x_1592;
  }
  let x_1593 : f32 = x_1587;
  u_xlat23.x = x_1593;
  let x_1596 : vec3<f32> = vs_TEXCOORD1;
  let x_1600 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1602 : vec3<f32> = (x_1596 + -(x_1600));
  let x_1603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec4<f32> = u_xlat4;
  let x_1607 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : f32 = u_xlat69;
  let x_1612 : f32 = x_301.x_MainLightShadowParams.z;
  let x_1615 : f32 = x_301.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1610 * x_1612) + x_1615);
  let x_1619 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1619, 0.0f, 1.0f);
  let x_1623 : f32 = u_xlat23.x;
  u_xlat71 = (-(x_1623) + 1.0f);
  let x_1627 : f32 = u_xlat1.x;
  let x_1628 : f32 = u_xlat71;
  let x_1631 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1627 * x_1628) + x_1631);
  let x_1641 : f32 = x_1639.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1641 == -1.0f));
  let x_1644 : bool = u_xlatb1;
  if (x_1644) {
    let x_1647 : vec3<f32> = vs_TEXCOORD1;
    let x_1650 : vec4<f32> = x_1639.x_MainLightWorldToLight[1i];
    let x_1652 : vec2<f32> = (vec2<f32>(x_1647.y, x_1647.y) * vec2<f32>(x_1650.x, x_1650.y));
    let x_1653 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
    let x_1656 : vec4<f32> = x_1639.x_MainLightWorldToLight[0i];
    let x_1658 : vec3<f32> = vs_TEXCOORD1;
    let x_1661 : vec4<f32> = u_xlat4;
    let x_1663 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1658.x, x_1658.x)) + vec2<f32>(x_1661.x, x_1661.y));
    let x_1664 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
    let x_1667 : vec4<f32> = x_1639.x_MainLightWorldToLight[2i];
    let x_1669 : vec3<f32> = vs_TEXCOORD1;
    let x_1672 : vec4<f32> = u_xlat4;
    let x_1674 : vec2<f32> = ((vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(x_1669.z, x_1669.z)) + vec2<f32>(x_1672.x, x_1672.y));
    let x_1675 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1674.x, x_1674.y, x_1675.z, x_1675.w);
    let x_1677 : vec4<f32> = u_xlat4;
    let x_1681 : vec4<f32> = x_1639.x_MainLightWorldToLight[3i];
    let x_1683 : vec2<f32> = (vec2<f32>(x_1677.x, x_1677.y) + vec2<f32>(x_1681.x, x_1681.y));
    let x_1684 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1683.x, x_1683.y, x_1684.z, x_1684.w);
    let x_1686 : vec4<f32> = u_xlat4;
    let x_1689 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1690 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
    let x_1697 : vec4<f32> = u_xlat4;
    let x_1700 : f32 = x_44.x_GlobalMipBias.x;
    let x_1701 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1697.x, x_1697.y), x_1700);
    u_xlat4 = x_1701;
    let x_1706 : f32 = x_1639.x_MainLightCookieTextureFormat;
    let x_1708 : f32 = x_1639.x_MainLightCookieTextureFormat;
    let x_1710 : f32 = x_1639.x_MainLightCookieTextureFormat;
    let x_1712 : f32 = x_1639.x_MainLightCookieTextureFormat;
    let x_1713 : vec4<f32> = vec4<f32>(x_1706, x_1708, x_1710, x_1712);
    let x_1721 : vec4<bool> = (vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1713.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1721.x, x_1721.y);
    let x_1724 : bool = u_xlatb5.y;
    if (x_1724) {
      let x_1729 : f32 = u_xlat4.w;
      x_1725 = x_1729;
    } else {
      let x_1732 : f32 = u_xlat4.x;
      x_1725 = x_1732;
    }
    let x_1733 : f32 = x_1725;
    u_xlat1.x = x_1733;
    let x_1736 : bool = u_xlatb5.x;
    if (x_1736) {
      let x_1740 : vec4<f32> = u_xlat4;
      x_1737 = vec3<f32>(x_1740.x, x_1740.y, x_1740.z);
    } else {
      let x_1743 : vec4<f32> = u_xlat1;
      x_1737 = vec3<f32>(x_1743.x, x_1743.x, x_1743.x);
    }
    let x_1745 : vec3<f32> = x_1737;
    let x_1746 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1752 : vec4<f32> = u_xlat4;
  let x_1755 : vec4<f32> = x_44.x_MainLightColor;
  let x_1757 : vec3<f32> = (vec3<f32>(x_1752.x, x_1752.y, x_1752.z) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1761 : f32 = u_xlat23.x;
  let x_1763 : f32 = x_186.unity_LightData.z;
  u_xlat23.x = (x_1761 * x_1763);
  let x_1766 : vec3<f32> = u_xlat23;
  let x_1768 : vec4<f32> = u_xlat4;
  let x_1770 : vec3<f32> = (vec3<f32>(x_1766.x, x_1766.x, x_1766.x) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1771 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  let x_1773 : vec3<f32> = u_xlat2;
  let x_1775 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(x_1773, vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1780 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1780, 0.0f, 1.0f);
  let x_1783 : vec3<f32> = u_xlat23;
  let x_1785 : vec4<f32> = u_xlat4;
  let x_1787 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.x, x_1783.x) * vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
  let x_1788 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1790 : vec4<f32> = u_xlat1;
  let x_1792 : vec4<f32> = u_xlat4;
  let x_1794 : vec3<f32> = (vec3<f32>(x_1790.y, x_1790.z, x_1790.w) * vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
  let x_1795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
  let x_1798 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1800 : f32 = x_186.unity_LightData.y;
  u_xlat23.x = min(x_1798, x_1800);
  let x_1806 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1806));
  let x_1809 : f32 = u_xlat69;
  let x_1812 : f32 = x_301.x_AdditionalShadowFadeParams.x;
  let x_1815 : f32 = x_301.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1809 * x_1812) + x_1815);
  let x_1817 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1817, 0.0f, 1.0f);
  let x_1820 : f32 = x_1639.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1822 : f32 = x_1639.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1824 : f32 = x_1639.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1826 : f32 = x_1639.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1827 : vec4<f32> = vec4<f32>(x_1820, x_1822, x_1824, x_1826);
  let x_1833 : vec4<bool> = (vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1827.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1833.x, x_1833.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1845 : u32 = u_xlatu_loop_1;
    let x_1846 : u32 = u_xlatu23;
    if ((x_1845 < x_1846)) {
    } else {
      break;
    }
    let x_1849 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1849 >> 2u);
    let x_1853 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1853 & 3u));
    let x_1856 : u32 = u_xlatu71;
    let x_1859 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1856)];
    let x_1869 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1874 : vec4<u32> = indexable[x_1869];
    u_xlat71 = dot(x_1859, bitcast<vec4<f32>>(x_1874));
    let x_1878 : f32 = u_xlat71;
    u_xlati71 = i32(x_1878);
    let x_1880 : vec3<f32> = vs_TEXCOORD1;
    let x_1891 : i32 = u_xlati71;
    let x_1893 : vec4<f32> = x_1890.x_AdditionalLightsPosition[x_1891];
    let x_1896 : i32 = u_xlati71;
    let x_1898 : vec4<f32> = x_1890.x_AdditionalLightsPosition[x_1896];
    let x_1900 : vec3<f32> = ((-(x_1880) * vec3<f32>(x_1893.w, x_1893.w, x_1893.w)) + vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
    let x_1904 : vec4<f32> = u_xlat7;
    let x_1906 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1904.x, x_1904.y, x_1904.z), vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
    let x_1909 : f32 = u_xlat72;
    u_xlat72 = max(x_1909, 0.00006103515625f);
    let x_1913 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1913);
    let x_1915 : f32 = u_xlat73;
    let x_1917 : vec4<f32> = u_xlat7;
    let x_1919 : vec3<f32> = (vec3<f32>(x_1915, x_1915, x_1915) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
    let x_1920 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
    let x_1922 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1922);
    let x_1924 : f32 = u_xlat72;
    let x_1925 : i32 = u_xlati71;
    let x_1927 : f32 = x_1890.x_AdditionalLightsAttenuation[x_1925].x;
    u_xlat72 = (x_1924 * x_1927);
    let x_1929 : f32 = u_xlat72;
    let x_1931 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1929) * x_1931) + 1.0f);
    let x_1934 : f32 = u_xlat72;
    u_xlat72 = max(x_1934, 0.0f);
    let x_1936 : f32 = u_xlat72;
    let x_1937 : f32 = u_xlat72;
    u_xlat72 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat72;
    let x_1940 : f32 = u_xlat73;
    u_xlat72 = (x_1939 * x_1940);
    let x_1942 : i32 = u_xlati71;
    let x_1944 : vec4<f32> = x_1890.x_AdditionalLightsSpotDir[x_1942];
    let x_1946 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1944.x, x_1944.y, x_1944.z), vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : f32 = u_xlat73;
    let x_1950 : i32 = u_xlati71;
    let x_1952 : f32 = x_1890.x_AdditionalLightsAttenuation[x_1950].z;
    let x_1954 : i32 = u_xlati71;
    let x_1956 : f32 = x_1890.x_AdditionalLightsAttenuation[x_1954].w;
    u_xlat73 = ((x_1949 * x_1952) + x_1956);
    let x_1958 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1958, 0.0f, 1.0f);
    let x_1960 : f32 = u_xlat73;
    let x_1961 : f32 = u_xlat73;
    u_xlat73 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat72;
    let x_1964 : f32 = u_xlat73;
    u_xlat72 = (x_1963 * x_1964);
    let x_1968 : i32 = u_xlati71;
    let x_1970 : f32 = x_301.x_AdditionalShadowParams[x_1968].w;
    u_xlati73 = i32(x_1970);
    let x_1973 : i32 = u_xlati73;
    u_xlatb51 = (x_1973 >= 0i);
    let x_1975 : bool = u_xlatb51;
    if (x_1975) {
      let x_1979 : i32 = u_xlati71;
      let x_1981 : f32 = x_301.x_AdditionalShadowParams[x_1979].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1981, x_1981, x_1981, x_1981))));
      let x_1985 : bool = u_xlatb51;
      if (x_1985) {
        let x_1990 : vec4<f32> = u_xlat7;
        let x_1993 : vec4<f32> = u_xlat7;
        let x_1996 : vec4<bool> = (abs(vec4<f32>(x_1990.z, x_1990.z, x_1990.y, x_1990.z)) >= abs(vec4<f32>(x_1993.x, x_1993.y, x_1993.x, x_1993.x)));
        let x_1998 : vec3<bool> = vec3<bool>(x_1996.x, x_1996.y, x_1996.z);
        let x_1999 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
        let x_2002 : bool = u_xlatb8.y;
        let x_2004 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2002 & x_2004);
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2009 : vec4<bool> = (-(vec4<f32>(x_2006.z, x_2006.y, x_2006.z, x_2006.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2010 : vec3<bool> = vec3<bool>(x_2009.x, x_2009.y, x_2009.w);
        let x_2011 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2010.x, x_2010.y, x_2011.z, x_2010.z);
        let x_2014 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2014);
        let x_2020 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2020);
        let x_2026 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2026);
        let x_2029 : bool = u_xlatb8.z;
        if (x_2029) {
          let x_2034 : f32 = u_xlat8.y;
          x_2030 = x_2034;
        } else {
          let x_2036 : f32 = u_xlat74;
          x_2030 = x_2036;
        }
        let x_2037 : f32 = x_2030;
        u_xlat74 = x_2037;
        let x_2039 : bool = u_xlatb51;
        if (x_2039) {
          let x_2044 : f32 = u_xlat8.x;
          x_2040 = x_2044;
        } else {
          let x_2046 : f32 = u_xlat74;
          x_2040 = x_2046;
        }
        let x_2047 : f32 = x_2040;
        u_xlat51.x = x_2047;
        let x_2049 : i32 = u_xlati71;
        let x_2051 : f32 = x_301.x_AdditionalShadowParams[x_2049].w;
        u_xlat74 = trunc(x_2051);
        let x_2054 : f32 = u_xlat51.x;
        let x_2055 : f32 = u_xlat74;
        u_xlat51.x = (x_2054 + x_2055);
        let x_2059 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2059);
      }
      let x_2061 : i32 = u_xlati73;
      u_xlati73 = (x_2061 << bitcast<u32>(2i));
      let x_2063 : vec3<f32> = vs_TEXCOORD1;
      let x_2066 : i32 = u_xlati73;
      let x_2069 : i32 = u_xlati73;
      let x_2073 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_2066 + 1i) / 4i)][((x_2069 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2063.y, x_2063.y, x_2063.y, x_2063.y) * x_2073);
      let x_2075 : i32 = u_xlati73;
      let x_2077 : i32 = u_xlati73;
      let x_2080 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[(x_2075 / 4i)][(x_2077 % 4i)];
      let x_2081 : vec3<f32> = vs_TEXCOORD1;
      let x_2084 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2080 * vec4<f32>(x_2081.x, x_2081.x, x_2081.x, x_2081.x)) + x_2084);
      let x_2086 : i32 = u_xlati73;
      let x_2089 : i32 = u_xlati73;
      let x_2093 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_2086 + 2i) / 4i)][((x_2089 + 2i) % 4i)];
      let x_2094 : vec3<f32> = vs_TEXCOORD1;
      let x_2097 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2093 * vec4<f32>(x_2094.z, x_2094.z, x_2094.z, x_2094.z)) + x_2097);
      let x_2099 : vec4<f32> = u_xlat8;
      let x_2100 : i32 = u_xlati73;
      let x_2103 : i32 = u_xlati73;
      let x_2107 : vec4<f32> = x_301.x_AdditionalLightsWorldToShadow[((x_2100 + 3i) / 4i)][((x_2103 + 3i) % 4i)];
      u_xlat8 = (x_2099 + x_2107);
      let x_2109 : vec4<f32> = u_xlat8;
      let x_2111 : vec4<f32> = u_xlat8;
      let x_2113 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) / vec3<f32>(x_2111.w, x_2111.w, x_2111.w));
      let x_2114 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
      let x_2117 : i32 = u_xlati71;
      let x_2119 : f32 = x_301.x_AdditionalShadowParams[x_2117].y;
      u_xlatb73 = (0.0f < x_2119);
      let x_2121 : bool = u_xlatb73;
      if (x_2121) {
        let x_2124 : i32 = u_xlati71;
        let x_2126 : f32 = x_301.x_AdditionalShadowParams[x_2124].y;
        u_xlatb73 = (1.0f == x_2126);
        let x_2128 : bool = u_xlatb73;
        if (x_2128) {
          let x_2131 : vec4<f32> = u_xlat8;
          let x_2135 : vec4<f32> = x_301.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2131.x, x_2131.y, x_2131.x, x_2131.y) + x_2135);
          let x_2138 : vec4<f32> = u_xlat9;
          let x_2139 : vec2<f32> = vec2<f32>(x_2138.x, x_2138.y);
          let x_2141 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
          let x_2149 : vec3<f32> = txVec30;
          let x_2151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2149.xy, x_2149.z);
          u_xlat10.x = x_2151;
          let x_2154 : vec4<f32> = u_xlat9;
          let x_2155 : vec2<f32> = vec2<f32>(x_2154.z, x_2154.w);
          let x_2157 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
          let x_2164 : vec3<f32> = txVec31;
          let x_2166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
          u_xlat10.y = x_2166;
          let x_2168 : vec4<f32> = u_xlat8;
          let x_2172 : vec4<f32> = x_301.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2168.x, x_2168.y, x_2168.x, x_2168.y) + x_2172);
          let x_2175 : vec4<f32> = u_xlat9;
          let x_2176 : vec2<f32> = vec2<f32>(x_2175.x, x_2175.y);
          let x_2178 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
          let x_2185 : vec3<f32> = txVec32;
          let x_2187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2185.xy, x_2185.z);
          u_xlat10.z = x_2187;
          let x_2190 : vec4<f32> = u_xlat9;
          let x_2191 : vec2<f32> = vec2<f32>(x_2190.z, x_2190.w);
          let x_2193 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2191.x, x_2191.y, x_2193);
          let x_2200 : vec3<f32> = txVec33;
          let x_2202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2200.xy, x_2200.z);
          u_xlat10.w = x_2202;
          let x_2204 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2204, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2207 : i32 = u_xlati71;
          let x_2209 : f32 = x_301.x_AdditionalShadowParams[x_2207].y;
          u_xlatb51 = (2.0f == x_2209);
          let x_2211 : bool = u_xlatb51;
          if (x_2211) {
            let x_2214 : vec4<f32> = u_xlat8;
            let x_2218 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(x_2218.z, x_2218.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2222 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2222);
            let x_2224 : vec4<f32> = u_xlat8;
            let x_2227 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2230 : vec2<f32> = u_xlat51;
            let x_2232 : vec2<f32> = ((vec2<f32>(x_2224.x, x_2224.y) * vec2<f32>(x_2227.z, x_2227.w)) + -(x_2230));
            let x_2233 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
            let x_2235 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2235.x, x_2235.x, x_2235.y, x_2235.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2238 : vec4<f32> = u_xlat10;
            let x_2240 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2238.x, x_2238.x, x_2238.z, x_2238.z) * vec4<f32>(x_2240.x, x_2240.x, x_2240.z, x_2240.z));
            let x_2244 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2244.y, x_2244.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2247 : vec4<f32> = u_xlat11;
            let x_2250 : vec4<f32> = u_xlat9;
            let x_2253 : vec2<f32> = ((vec2<f32>(x_2247.x, x_2247.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2250.x, x_2250.y)));
            let x_2254 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2253.x, x_2254.y, x_2253.y, x_2254.w);
            let x_2256 : vec4<f32> = u_xlat9;
            let x_2259 : vec2<f32> = (-(vec2<f32>(x_2256.x, x_2256.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2260 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
            let x_2263 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2263.x, x_2263.y), vec2<f32>(0.0f, 0.0f));
            let x_2266 : vec2<f32> = u_xlat57;
            let x_2268 : vec2<f32> = u_xlat57;
            let x_2270 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2266) * x_2268) + vec2<f32>(x_2270.x, x_2270.y));
            let x_2273 : vec4<f32> = u_xlat9;
            let x_2275 : vec2<f32> = max(vec2<f32>(x_2273.x, x_2273.y), vec2<f32>(0.0f, 0.0f));
            let x_2276 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
            let x_2278 : vec4<f32> = u_xlat9;
            let x_2281 : vec4<f32> = u_xlat9;
            let x_2284 : vec4<f32> = u_xlat10;
            let x_2286 : vec2<f32> = ((-(vec2<f32>(x_2278.x, x_2278.y)) * vec2<f32>(x_2281.x, x_2281.y)) + vec2<f32>(x_2284.y, x_2284.w));
            let x_2287 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2286.x, x_2286.y, x_2287.z, x_2287.w);
            let x_2289 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2289 + vec2<f32>(1.0f, 1.0f));
            let x_2291 : vec4<f32> = u_xlat9;
            let x_2293 : vec2<f32> = (vec2<f32>(x_2291.x, x_2291.y) + vec2<f32>(1.0f, 1.0f));
            let x_2294 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2293.x, x_2293.y, x_2294.z, x_2294.w);
            let x_2296 : vec4<f32> = u_xlat10;
            let x_2298 : vec2<f32> = (vec2<f32>(x_2296.x, x_2296.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2299 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat11;
            let x_2303 : vec2<f32> = (vec2<f32>(x_2301.x, x_2301.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2304 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2303.x, x_2303.y, x_2304.z, x_2304.w);
            let x_2306 : vec2<f32> = u_xlat57;
            let x_2307 : vec2<f32> = (x_2306 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2308 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
            let x_2310 : vec4<f32> = u_xlat9;
            let x_2312 : vec2<f32> = (vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2313 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2312.x, x_2312.y, x_2313.z, x_2313.w);
            let x_2315 : vec4<f32> = u_xlat10;
            let x_2317 : vec2<f32> = (vec2<f32>(x_2315.y, x_2315.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2318 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
            let x_2321 : f32 = u_xlat11.x;
            u_xlat12.z = x_2321;
            let x_2324 : f32 = u_xlat9.x;
            u_xlat12.w = x_2324;
            let x_2327 : f32 = u_xlat14.x;
            u_xlat13.z = x_2327;
            let x_2330 : f32 = u_xlat55.x;
            u_xlat13.w = x_2330;
            let x_2332 : vec4<f32> = u_xlat12;
            let x_2334 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2332.z, x_2332.w, x_2332.x, x_2332.z) + vec4<f32>(x_2334.z, x_2334.w, x_2334.x, x_2334.z));
            let x_2338 : f32 = u_xlat12.y;
            u_xlat11.z = x_2338;
            let x_2341 : f32 = u_xlat9.y;
            u_xlat11.w = x_2341;
            let x_2344 : f32 = u_xlat13.y;
            u_xlat14.z = x_2344;
            let x_2347 : f32 = u_xlat55.y;
            u_xlat14.w = x_2347;
            let x_2349 : vec4<f32> = u_xlat11;
            let x_2351 : vec4<f32> = u_xlat14;
            let x_2353 : vec3<f32> = (vec3<f32>(x_2349.z, x_2349.y, x_2349.w) + vec3<f32>(x_2351.z, x_2351.y, x_2351.w));
            let x_2354 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
            let x_2356 : vec4<f32> = u_xlat13;
            let x_2358 : vec4<f32> = u_xlat10;
            let x_2360 : vec3<f32> = (vec3<f32>(x_2356.x, x_2356.z, x_2356.w) / vec3<f32>(x_2358.z, x_2358.w, x_2358.y));
            let x_2361 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
            let x_2363 : vec4<f32> = u_xlat11;
            let x_2365 : vec3<f32> = (vec3<f32>(x_2363.x, x_2363.y, x_2363.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
            let x_2368 : vec4<f32> = u_xlat14;
            let x_2370 : vec4<f32> = u_xlat9;
            let x_2372 : vec3<f32> = (vec3<f32>(x_2368.z, x_2368.y, x_2368.w) / vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
            let x_2373 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
            let x_2375 : vec4<f32> = u_xlat12;
            let x_2377 : vec3<f32> = (vec3<f32>(x_2375.x, x_2375.y, x_2375.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2378 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
            let x_2380 : vec4<f32> = u_xlat11;
            let x_2383 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2385 : vec3<f32> = (vec3<f32>(x_2380.y, x_2380.x, x_2380.z) * vec3<f32>(x_2383.x, x_2383.x, x_2383.x));
            let x_2386 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
            let x_2388 : vec4<f32> = u_xlat12;
            let x_2391 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2388.x, x_2388.y, x_2388.z) * vec3<f32>(x_2391.y, x_2391.y, x_2391.y));
            let x_2394 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2397 : f32 = u_xlat12.x;
            u_xlat11.w = x_2397;
            let x_2399 : vec2<f32> = u_xlat51;
            let x_2402 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2405 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2399.x, x_2399.y, x_2399.x, x_2399.y) * vec4<f32>(x_2402.x, x_2402.y, x_2402.x, x_2402.y)) + vec4<f32>(x_2405.y, x_2405.w, x_2405.x, x_2405.w));
            let x_2408 : vec2<f32> = u_xlat51;
            let x_2410 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2413 : vec4<f32> = u_xlat11;
            let x_2415 : vec2<f32> = ((x_2408 * vec2<f32>(x_2410.x, x_2410.y)) + vec2<f32>(x_2413.z, x_2413.w));
            let x_2416 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
            let x_2419 : f32 = u_xlat11.y;
            u_xlat12.w = x_2419;
            let x_2421 : vec4<f32> = u_xlat12;
            let x_2422 : vec2<f32> = vec2<f32>(x_2421.y, x_2421.z);
            let x_2423 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2423.x, x_2422.x, x_2423.z, x_2422.y);
            let x_2425 : vec2<f32> = u_xlat51;
            let x_2428 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2431 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2425.x, x_2425.y, x_2425.x, x_2425.y) * vec4<f32>(x_2428.x, x_2428.y, x_2428.x, x_2428.y)) + vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2431.y));
            let x_2434 : vec2<f32> = u_xlat51;
            let x_2437 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2440 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2434.x, x_2434.y, x_2434.x, x_2434.y) * vec4<f32>(x_2437.x, x_2437.y, x_2437.x, x_2437.y)) + vec4<f32>(x_2440.w, x_2440.y, x_2440.w, x_2440.z));
            let x_2443 : vec2<f32> = u_xlat51;
            let x_2446 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2449 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2443.x, x_2443.y, x_2443.x, x_2443.y) * vec4<f32>(x_2446.x, x_2446.y, x_2446.x, x_2446.y)) + vec4<f32>(x_2449.x, x_2449.w, x_2449.z, x_2449.w));
            let x_2452 : vec4<f32> = u_xlat9;
            let x_2454 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2452.x, x_2452.x, x_2452.x, x_2452.y) * vec4<f32>(x_2454.z, x_2454.w, x_2454.y, x_2454.z));
            let x_2457 : vec4<f32> = u_xlat9;
            let x_2459 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2457.y, x_2457.y, x_2457.z, x_2457.z) * x_2459);
            let x_2462 : f32 = u_xlat9.z;
            let x_2464 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2462 * x_2464);
            let x_2468 : vec4<f32> = u_xlat13;
            let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
            let x_2471 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
            let x_2478 : vec3<f32> = txVec34;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat74 = x_2480;
            let x_2482 : vec4<f32> = u_xlat13;
            let x_2483 : vec2<f32> = vec2<f32>(x_2482.z, x_2482.w);
            let x_2485 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2483.x, x_2483.y, x_2485);
            let x_2493 : vec3<f32> = txVec35;
            let x_2495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2493.xy, x_2493.z);
            u_xlat75 = x_2495;
            let x_2496 : f32 = u_xlat75;
            let x_2498 : f32 = u_xlat16.y;
            u_xlat75 = (x_2496 * x_2498);
            let x_2501 : f32 = u_xlat16.x;
            let x_2502 : f32 = u_xlat74;
            let x_2504 : f32 = u_xlat75;
            u_xlat74 = ((x_2501 * x_2502) + x_2504);
            let x_2507 : vec4<f32> = u_xlat14;
            let x_2508 : vec2<f32> = vec2<f32>(x_2507.x, x_2507.y);
            let x_2510 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
            let x_2517 : vec3<f32> = txVec36;
            let x_2519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2517.xy, x_2517.z);
            u_xlat75 = x_2519;
            let x_2521 : f32 = u_xlat16.z;
            let x_2522 : f32 = u_xlat75;
            let x_2524 : f32 = u_xlat74;
            u_xlat74 = ((x_2521 * x_2522) + x_2524);
            let x_2527 : vec4<f32> = u_xlat12;
            let x_2528 : vec2<f32> = vec2<f32>(x_2527.x, x_2527.y);
            let x_2530 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2528.x, x_2528.y, x_2530);
            let x_2537 : vec3<f32> = txVec37;
            let x_2539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2537.xy, x_2537.z);
            u_xlat75 = x_2539;
            let x_2541 : f32 = u_xlat16.w;
            let x_2542 : f32 = u_xlat75;
            let x_2544 : f32 = u_xlat74;
            u_xlat74 = ((x_2541 * x_2542) + x_2544);
            let x_2547 : vec4<f32> = u_xlat15;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.x, x_2547.y);
            let x_2550 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec38;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat75 = x_2559;
            let x_2561 : f32 = u_xlat17.x;
            let x_2562 : f32 = u_xlat75;
            let x_2564 : f32 = u_xlat74;
            u_xlat74 = ((x_2561 * x_2562) + x_2564);
            let x_2567 : vec4<f32> = u_xlat15;
            let x_2568 : vec2<f32> = vec2<f32>(x_2567.z, x_2567.w);
            let x_2570 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2568.x, x_2568.y, x_2570);
            let x_2577 : vec3<f32> = txVec39;
            let x_2579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2577.xy, x_2577.z);
            u_xlat75 = x_2579;
            let x_2581 : f32 = u_xlat17.y;
            let x_2582 : f32 = u_xlat75;
            let x_2584 : f32 = u_xlat74;
            u_xlat74 = ((x_2581 * x_2582) + x_2584);
            let x_2587 : vec4<f32> = u_xlat12;
            let x_2588 : vec2<f32> = vec2<f32>(x_2587.z, x_2587.w);
            let x_2590 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2588.x, x_2588.y, x_2590);
            let x_2597 : vec3<f32> = txVec40;
            let x_2599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2597.xy, x_2597.z);
            u_xlat75 = x_2599;
            let x_2601 : f32 = u_xlat17.z;
            let x_2602 : f32 = u_xlat75;
            let x_2604 : f32 = u_xlat74;
            u_xlat74 = ((x_2601 * x_2602) + x_2604);
            let x_2607 : vec4<f32> = u_xlat11;
            let x_2608 : vec2<f32> = vec2<f32>(x_2607.x, x_2607.y);
            let x_2610 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2608.x, x_2608.y, x_2610);
            let x_2617 : vec3<f32> = txVec41;
            let x_2619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2617.xy, x_2617.z);
            u_xlat75 = x_2619;
            let x_2621 : f32 = u_xlat17.w;
            let x_2622 : f32 = u_xlat75;
            let x_2624 : f32 = u_xlat74;
            u_xlat74 = ((x_2621 * x_2622) + x_2624);
            let x_2627 : vec4<f32> = u_xlat11;
            let x_2628 : vec2<f32> = vec2<f32>(x_2627.z, x_2627.w);
            let x_2630 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2628.x, x_2628.y, x_2630);
            let x_2637 : vec3<f32> = txVec42;
            let x_2639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2637.xy, x_2637.z);
            u_xlat75 = x_2639;
            let x_2641 : f32 = u_xlat51.x;
            let x_2642 : f32 = u_xlat75;
            let x_2644 : f32 = u_xlat74;
            u_xlat73 = ((x_2641 * x_2642) + x_2644);
          } else {
            let x_2647 : vec4<f32> = u_xlat8;
            let x_2650 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2647.x, x_2647.y) * vec2<f32>(x_2650.z, x_2650.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2654 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2654);
            let x_2656 : vec4<f32> = u_xlat8;
            let x_2659 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2662 : vec2<f32> = u_xlat51;
            let x_2664 : vec2<f32> = ((vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(x_2659.z, x_2659.w)) + -(x_2662));
            let x_2665 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2667.x, x_2667.x, x_2667.y, x_2667.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2670 : vec4<f32> = u_xlat10;
            let x_2672 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2670.x, x_2670.x, x_2670.z, x_2670.z) * vec4<f32>(x_2672.x, x_2672.x, x_2672.z, x_2672.z));
            let x_2675 : vec4<f32> = u_xlat11;
            let x_2677 : vec2<f32> = (vec2<f32>(x_2675.y, x_2675.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2678 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2678.x, x_2677.x, x_2678.z, x_2677.y);
            let x_2680 : vec4<f32> = u_xlat11;
            let x_2683 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2680.x, x_2680.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2683.x, x_2683.y)));
            let x_2687 : vec4<f32> = u_xlat9;
            let x_2690 : vec2<f32> = (-(vec2<f32>(x_2687.x, x_2687.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2691 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2690.x, x_2691.y, x_2690.y, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat9;
            let x_2695 : vec2<f32> = min(vec2<f32>(x_2693.x, x_2693.y), vec2<f32>(0.0f, 0.0f));
            let x_2696 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
            let x_2698 : vec4<f32> = u_xlat11;
            let x_2701 : vec4<f32> = u_xlat11;
            let x_2704 : vec4<f32> = u_xlat10;
            let x_2706 : vec2<f32> = ((-(vec2<f32>(x_2698.x, x_2698.y)) * vec2<f32>(x_2701.x, x_2701.y)) + vec2<f32>(x_2704.x, x_2704.z));
            let x_2707 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2706.x, x_2707.y, x_2706.y, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat9;
            let x_2711 : vec2<f32> = max(vec2<f32>(x_2709.x, x_2709.y), vec2<f32>(0.0f, 0.0f));
            let x_2712 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec4<f32> = u_xlat11;
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2720 : vec4<f32> = u_xlat10;
            let x_2722 : vec2<f32> = ((-(vec2<f32>(x_2714.x, x_2714.y)) * vec2<f32>(x_2717.x, x_2717.y)) + vec2<f32>(x_2720.y, x_2720.w));
            let x_2723 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2723.x, x_2722.x, x_2723.z, x_2722.y);
            let x_2725 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2725 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2729 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2729 * 0.08163200318813323975f);
            let x_2732 : vec2<f32> = u_xlat55;
            let x_2734 : vec2<f32> = (vec2<f32>(x_2732.y, x_2732.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2735 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2737.x, x_2737.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2741 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2741 * 0.08163200318813323975f);
            let x_2745 : f32 = u_xlat13.y;
            u_xlat11.x = x_2745;
            let x_2747 : vec4<f32> = u_xlat9;
            let x_2750 : vec2<f32> = ((vec2<f32>(x_2747.x, x_2747.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2751 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2751.x, x_2750.x, x_2751.z, x_2750.y);
            let x_2753 : vec4<f32> = u_xlat9;
            let x_2756 : vec2<f32> = ((vec2<f32>(x_2753.x, x_2753.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2757 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2756.x, x_2757.y, x_2756.y, x_2757.w);
            let x_2760 : f32 = u_xlat55.x;
            u_xlat10.y = x_2760;
            let x_2763 : f32 = u_xlat12.y;
            u_xlat10.w = x_2763;
            let x_2765 : vec4<f32> = u_xlat10;
            let x_2766 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2765 + x_2766);
            let x_2768 : vec4<f32> = u_xlat9;
            let x_2771 : vec2<f32> = ((vec2<f32>(x_2768.y, x_2768.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2772 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2772.x, x_2771.x, x_2772.z, x_2771.y);
            let x_2774 : vec4<f32> = u_xlat9;
            let x_2777 : vec2<f32> = ((vec2<f32>(x_2774.y, x_2774.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2778 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2777.x, x_2778.y, x_2777.y, x_2778.w);
            let x_2781 : f32 = u_xlat55.y;
            u_xlat12.y = x_2781;
            let x_2783 : vec4<f32> = u_xlat12;
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2783 + x_2784);
            let x_2786 : vec4<f32> = u_xlat10;
            let x_2787 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2786 / x_2787);
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2789 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2791 : vec4<f32> = u_xlat12;
            let x_2792 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2791 / x_2792);
            let x_2794 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2794 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2796 : vec4<f32> = u_xlat10;
            let x_2799 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2796.w, x_2796.x, x_2796.y, x_2796.z) * vec4<f32>(x_2799.x, x_2799.x, x_2799.x, x_2799.x));
            let x_2802 : vec4<f32> = u_xlat12;
            let x_2805 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2802.x, x_2802.w, x_2802.y, x_2802.z) * vec4<f32>(x_2805.y, x_2805.y, x_2805.y, x_2805.y));
            let x_2808 : vec4<f32> = u_xlat10;
            let x_2809 : vec3<f32> = vec3<f32>(x_2808.y, x_2808.z, x_2808.w);
            let x_2810 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2809.x, x_2810.y, x_2809.y, x_2809.z);
            let x_2813 : f32 = u_xlat12.x;
            u_xlat13.y = x_2813;
            let x_2815 : vec2<f32> = u_xlat51;
            let x_2818 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y) * vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y)) + vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2821.y));
            let x_2824 : vec2<f32> = u_xlat51;
            let x_2826 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2829 : vec4<f32> = u_xlat13;
            let x_2831 : vec2<f32> = ((x_2824 * vec2<f32>(x_2826.x, x_2826.y)) + vec2<f32>(x_2829.w, x_2829.y));
            let x_2832 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
            let x_2835 : f32 = u_xlat13.y;
            u_xlat10.y = x_2835;
            let x_2838 : f32 = u_xlat12.z;
            u_xlat13.y = x_2838;
            let x_2840 : vec2<f32> = u_xlat51;
            let x_2843 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y) * vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y)) + vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2846.y));
            let x_2850 : vec2<f32> = u_xlat51;
            let x_2852 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2855 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2850 * vec2<f32>(x_2852.x, x_2852.y)) + vec2<f32>(x_2855.w, x_2855.y));
            let x_2859 : f32 = u_xlat13.y;
            u_xlat10.z = x_2859;
            let x_2861 : vec2<f32> = u_xlat51;
            let x_2864 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2861.x, x_2861.y, x_2861.x, x_2861.y) * vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y)) + vec4<f32>(x_2867.x, x_2867.y, x_2867.x, x_2867.z));
            let x_2871 : f32 = u_xlat12.w;
            u_xlat13.y = x_2871;
            let x_2874 : vec2<f32> = u_xlat51;
            let x_2877 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2880 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.y) * vec4<f32>(x_2877.x, x_2877.y, x_2877.x, x_2877.y)) + vec4<f32>(x_2880.x, x_2880.y, x_2880.z, x_2880.y));
            let x_2884 : vec2<f32> = u_xlat51;
            let x_2886 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2889 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2884 * vec2<f32>(x_2886.x, x_2886.y)) + vec2<f32>(x_2889.w, x_2889.y));
            let x_2893 : f32 = u_xlat13.y;
            u_xlat10.w = x_2893;
            let x_2896 : vec2<f32> = u_xlat51;
            let x_2898 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2901 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2896 * vec2<f32>(x_2898.x, x_2898.y)) + vec2<f32>(x_2901.x, x_2901.w));
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2905 : vec3<f32> = vec3<f32>(x_2904.x, x_2904.z, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2905.x, x_2906.y, x_2905.y, x_2905.z);
            let x_2908 : vec2<f32> = u_xlat51;
            let x_2911 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2914 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2908.x, x_2908.y, x_2908.x, x_2908.y) * vec4<f32>(x_2911.x, x_2911.y, x_2911.x, x_2911.y)) + vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2914.y));
            let x_2917 : vec2<f32> = u_xlat51;
            let x_2919 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2917 * vec2<f32>(x_2919.x, x_2919.y)) + vec2<f32>(x_2922.w, x_2922.y));
            let x_2926 : f32 = u_xlat10.x;
            u_xlat12.x = x_2926;
            let x_2928 : vec2<f32> = u_xlat51;
            let x_2930 : vec4<f32> = x_301.x_AdditionalShadowmapSize;
            let x_2933 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2928 * vec2<f32>(x_2930.x, x_2930.y)) + vec2<f32>(x_2933.x, x_2933.y));
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2939 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2937.x, x_2937.x, x_2937.x, x_2937.x) * x_2939);
            let x_2942 : vec4<f32> = u_xlat9;
            let x_2944 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2942.y, x_2942.y, x_2942.y, x_2942.y) * x_2944);
            let x_2947 : vec4<f32> = u_xlat9;
            let x_2949 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2947.z, x_2947.z, x_2947.z, x_2947.z) * x_2949);
            let x_2951 : vec4<f32> = u_xlat9;
            let x_2953 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2951.w, x_2951.w, x_2951.w, x_2951.w) * x_2953);
            let x_2956 : vec4<f32> = u_xlat14;
            let x_2957 : vec2<f32> = vec2<f32>(x_2956.x, x_2956.y);
            let x_2959 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2957.x, x_2957.y, x_2959);
            let x_2966 : vec3<f32> = txVec43;
            let x_2968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2966.xy, x_2966.z);
            u_xlat75 = x_2968;
            let x_2970 : vec4<f32> = u_xlat14;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2981 : vec3<f32> = txVec44;
            let x_2983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
            u_xlat76 = x_2983;
            let x_2984 : f32 = u_xlat76;
            let x_2986 : f32 = u_xlat20.y;
            u_xlat76 = (x_2984 * x_2986);
            let x_2989 : f32 = u_xlat20.x;
            let x_2990 : f32 = u_xlat75;
            let x_2992 : f32 = u_xlat76;
            u_xlat75 = ((x_2989 * x_2990) + x_2992);
            let x_2995 : vec4<f32> = u_xlat15;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.x, x_2995.y);
            let x_2998 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec45;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat76 = x_3007;
            let x_3009 : f32 = u_xlat20.z;
            let x_3010 : f32 = u_xlat76;
            let x_3012 : f32 = u_xlat75;
            u_xlat75 = ((x_3009 * x_3010) + x_3012);
            let x_3015 : vec4<f32> = u_xlat17;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
            let x_3018 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec46;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat76 = x_3027;
            let x_3029 : f32 = u_xlat20.w;
            let x_3030 : f32 = u_xlat76;
            let x_3032 : f32 = u_xlat75;
            u_xlat75 = ((x_3029 * x_3030) + x_3032);
            let x_3035 : vec4<f32> = u_xlat16;
            let x_3036 : vec2<f32> = vec2<f32>(x_3035.x, x_3035.y);
            let x_3038 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3036.x, x_3036.y, x_3038);
            let x_3045 : vec3<f32> = txVec47;
            let x_3047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3045.xy, x_3045.z);
            u_xlat76 = x_3047;
            let x_3049 : f32 = u_xlat21.x;
            let x_3050 : f32 = u_xlat76;
            let x_3052 : f32 = u_xlat75;
            u_xlat75 = ((x_3049 * x_3050) + x_3052);
            let x_3055 : vec4<f32> = u_xlat16;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
            let x_3058 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec48;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat76 = x_3067;
            let x_3069 : f32 = u_xlat21.y;
            let x_3070 : f32 = u_xlat76;
            let x_3072 : f32 = u_xlat75;
            u_xlat75 = ((x_3069 * x_3070) + x_3072);
            let x_3075 : vec2<f32> = u_xlat61;
            let x_3077 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec49;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat76 = x_3086;
            let x_3088 : f32 = u_xlat21.z;
            let x_3089 : f32 = u_xlat76;
            let x_3091 : f32 = u_xlat75;
            u_xlat75 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat17;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.z, x_3094.w);
            let x_3097 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec50;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat76 = x_3106;
            let x_3108 : f32 = u_xlat21.w;
            let x_3109 : f32 = u_xlat76;
            let x_3111 : f32 = u_xlat75;
            u_xlat75 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat18;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
            let x_3117 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec51;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat76 = x_3126;
            let x_3128 : f32 = u_xlat22.x;
            let x_3129 : f32 = u_xlat76;
            let x_3131 : f32 = u_xlat75;
            u_xlat75 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat18;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.z, x_3134.w);
            let x_3137 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec52;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat76 = x_3146;
            let x_3148 : f32 = u_xlat22.y;
            let x_3149 : f32 = u_xlat76;
            let x_3151 : f32 = u_xlat75;
            u_xlat75 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec2<f32> = u_xlat33;
            let x_3156 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec53;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat76 = x_3165;
            let x_3167 : f32 = u_xlat22.z;
            let x_3168 : f32 = u_xlat76;
            let x_3170 : f32 = u_xlat75;
            u_xlat75 = ((x_3167 * x_3168) + x_3170);
            let x_3173 : vec2<f32> = u_xlat19;
            let x_3175 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec54;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat76 = x_3184;
            let x_3186 : f32 = u_xlat22.w;
            let x_3187 : f32 = u_xlat76;
            let x_3189 : f32 = u_xlat75;
            u_xlat75 = ((x_3186 * x_3187) + x_3189);
            let x_3192 : vec4<f32> = u_xlat13;
            let x_3193 : vec2<f32> = vec2<f32>(x_3192.x, x_3192.y);
            let x_3195 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3193.x, x_3193.y, x_3195);
            let x_3202 : vec3<f32> = txVec55;
            let x_3204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3202.xy, x_3202.z);
            u_xlat76 = x_3204;
            let x_3206 : f32 = u_xlat9.x;
            let x_3207 : f32 = u_xlat76;
            let x_3209 : f32 = u_xlat75;
            u_xlat75 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec4<f32> = u_xlat13;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec56;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat76 = x_3224;
            let x_3226 : f32 = u_xlat9.y;
            let x_3227 : f32 = u_xlat76;
            let x_3229 : f32 = u_xlat75;
            u_xlat75 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec2<f32> = u_xlat58;
            let x_3234 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec57;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat76 = x_3243;
            let x_3245 : f32 = u_xlat9.z;
            let x_3246 : f32 = u_xlat76;
            let x_3248 : f32 = u_xlat75;
            u_xlat75 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec2<f32> = u_xlat51;
            let x_3253 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec58;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat51.x = x_3262;
            let x_3265 : f32 = u_xlat9.w;
            let x_3267 : f32 = u_xlat51.x;
            let x_3269 : f32 = u_xlat75;
            u_xlat73 = ((x_3265 * x_3267) + x_3269);
          }
        }
      } else {
        let x_3273 : vec4<f32> = u_xlat8;
        let x_3274 : vec2<f32> = vec2<f32>(x_3273.x, x_3273.y);
        let x_3276 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
        let x_3283 : vec3<f32> = txVec59;
        let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
        u_xlat73 = x_3285;
      }
      let x_3286 : i32 = u_xlati71;
      let x_3288 : f32 = x_301.x_AdditionalShadowParams[x_3286].x;
      u_xlat51.x = (1.0f + -(x_3288));
      let x_3292 : f32 = u_xlat73;
      let x_3293 : i32 = u_xlati71;
      let x_3295 : f32 = x_301.x_AdditionalShadowParams[x_3293].x;
      let x_3298 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3292 * x_3295) + x_3298);
      let x_3301 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3301);
      let x_3305 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3305 >= 1.0f);
      let x_3307 : bool = u_xlatb74;
      let x_3308 : bool = u_xlatb51;
      u_xlatb51 = (x_3307 | x_3308);
      let x_3310 : bool = u_xlatb51;
      let x_3311 : f32 = u_xlat73;
      u_xlat73 = select(x_3311, 1.0f, x_3310);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3314 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3314) + 1.0f);
    let x_3318 : f32 = u_xlat69;
    let x_3320 : f32 = u_xlat51.x;
    let x_3322 : f32 = u_xlat73;
    u_xlat73 = ((x_3318 * x_3320) + x_3322);
    let x_3325 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3325 & 31i)));
    let x_3329 : i32 = u_xlati51;
    let x_3332 : f32 = x_1639.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3329) & bitcast<u32>(x_3332)));
    let x_3336 : i32 = u_xlati51;
    if ((x_3336 != 0i)) {
      let x_3340 : i32 = u_xlati71;
      let x_3342 : f32 = x_1639.x_AdditionalLightsLightTypes[x_3340].el;
      u_xlati51 = i32(x_3342);
      let x_3345 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3345 != 0i));
      let x_3349 : i32 = u_xlati71;
      u_xlati75 = (x_3349 << bitcast<u32>(2i));
      let x_3351 : i32 = u_xlati74;
      if ((x_3351 != 0i)) {
        let x_3355 : vec3<f32> = vs_TEXCOORD1;
        let x_3357 : i32 = u_xlati75;
        let x_3360 : i32 = u_xlati75;
        let x_3364 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3357 + 1i) / 4i)][((x_3360 + 1i) % 4i)];
        let x_3366 : vec3<f32> = (vec3<f32>(x_3355.y, x_3355.y, x_3355.y) * vec3<f32>(x_3364.x, x_3364.y, x_3364.w));
        let x_3367 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3367.w);
        let x_3369 : i32 = u_xlati75;
        let x_3371 : i32 = u_xlati75;
        let x_3374 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[(x_3369 / 4i)][(x_3371 % 4i)];
        let x_3376 : vec3<f32> = vs_TEXCOORD1;
        let x_3379 : vec4<f32> = u_xlat8;
        let x_3381 : vec3<f32> = ((vec3<f32>(x_3374.x, x_3374.y, x_3374.w) * vec3<f32>(x_3376.x, x_3376.x, x_3376.x)) + vec3<f32>(x_3379.x, x_3379.y, x_3379.z));
        let x_3382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
        let x_3384 : i32 = u_xlati75;
        let x_3387 : i32 = u_xlati75;
        let x_3391 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3384 + 2i) / 4i)][((x_3387 + 2i) % 4i)];
        let x_3393 : vec3<f32> = vs_TEXCOORD1;
        let x_3396 : vec4<f32> = u_xlat8;
        let x_3398 : vec3<f32> = ((vec3<f32>(x_3391.x, x_3391.y, x_3391.w) * vec3<f32>(x_3393.z, x_3393.z, x_3393.z)) + vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
        let x_3399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3398.x, x_3398.y, x_3398.z, x_3399.w);
        let x_3401 : vec4<f32> = u_xlat8;
        let x_3403 : i32 = u_xlati75;
        let x_3406 : i32 = u_xlati75;
        let x_3410 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3403 + 3i) / 4i)][((x_3406 + 3i) % 4i)];
        let x_3412 : vec3<f32> = (vec3<f32>(x_3401.x, x_3401.y, x_3401.z) + vec3<f32>(x_3410.x, x_3410.y, x_3410.w));
        let x_3413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3412.x, x_3412.y, x_3412.z, x_3413.w);
        let x_3415 : vec4<f32> = u_xlat8;
        let x_3417 : vec4<f32> = u_xlat8;
        let x_3419 : vec2<f32> = (vec2<f32>(x_3415.x, x_3415.y) / vec2<f32>(x_3417.z, x_3417.z));
        let x_3420 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3419.x, x_3419.y, x_3420.z, x_3420.w);
        let x_3422 : vec4<f32> = u_xlat8;
        let x_3425 : vec2<f32> = ((vec2<f32>(x_3422.x, x_3422.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3426 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3425.x, x_3425.y, x_3426.z, x_3426.w);
        let x_3428 : vec4<f32> = u_xlat8;
        let x_3432 : vec2<f32> = clamp(vec2<f32>(x_3428.x, x_3428.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3433 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3432.x, x_3432.y, x_3433.z, x_3433.w);
        let x_3435 : i32 = u_xlati71;
        let x_3437 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3435];
        let x_3439 : vec4<f32> = u_xlat8;
        let x_3442 : i32 = u_xlati71;
        let x_3444 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3442];
        let x_3446 : vec2<f32> = ((vec2<f32>(x_3437.x, x_3437.y) * vec2<f32>(x_3439.x, x_3439.y)) + vec2<f32>(x_3444.z, x_3444.w));
        let x_3447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3446.x, x_3446.y, x_3447.z, x_3447.w);
      } else {
        let x_3450 : i32 = u_xlati51;
        u_xlatb51 = (x_3450 == 1i);
        let x_3452 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3452);
        let x_3454 : i32 = u_xlati51;
        if ((x_3454 != 0i)) {
          let x_3458 : vec3<f32> = vs_TEXCOORD1;
          let x_3460 : i32 = u_xlati75;
          let x_3463 : i32 = u_xlati75;
          let x_3467 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3460 + 1i) / 4i)][((x_3463 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3458.y, x_3458.y) * vec2<f32>(x_3467.x, x_3467.y));
          let x_3470 : i32 = u_xlati75;
          let x_3472 : i32 = u_xlati75;
          let x_3475 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[(x_3470 / 4i)][(x_3472 % 4i)];
          let x_3477 : vec3<f32> = vs_TEXCOORD1;
          let x_3480 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3475.x, x_3475.y) * vec2<f32>(x_3477.x, x_3477.x)) + x_3480);
          let x_3482 : i32 = u_xlati75;
          let x_3485 : i32 = u_xlati75;
          let x_3489 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3482 + 2i) / 4i)][((x_3485 + 2i) % 4i)];
          let x_3491 : vec3<f32> = vs_TEXCOORD1;
          let x_3494 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3489.x, x_3489.y) * vec2<f32>(x_3491.z, x_3491.z)) + x_3494);
          let x_3496 : vec2<f32> = u_xlat51;
          let x_3497 : i32 = u_xlati75;
          let x_3500 : i32 = u_xlati75;
          let x_3504 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3497 + 3i) / 4i)][((x_3500 + 3i) % 4i)];
          u_xlat51 = (x_3496 + vec2<f32>(x_3504.x, x_3504.y));
          let x_3507 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3507 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3510 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3510);
          let x_3512 : i32 = u_xlati71;
          let x_3514 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3512];
          let x_3516 : vec2<f32> = u_xlat51;
          let x_3518 : i32 = u_xlati71;
          let x_3520 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3518];
          let x_3522 : vec2<f32> = ((vec2<f32>(x_3514.x, x_3514.y) * x_3516) + vec2<f32>(x_3520.z, x_3520.w));
          let x_3523 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3522.x, x_3522.y, x_3523.z, x_3523.w);
        } else {
          let x_3526 : vec3<f32> = vs_TEXCOORD1;
          let x_3528 : i32 = u_xlati75;
          let x_3531 : i32 = u_xlati75;
          let x_3535 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3528 + 1i) / 4i)][((x_3531 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3526.y, x_3526.y, x_3526.y, x_3526.y) * x_3535);
          let x_3537 : i32 = u_xlati75;
          let x_3539 : i32 = u_xlati75;
          let x_3542 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[(x_3537 / 4i)][(x_3539 % 4i)];
          let x_3543 : vec3<f32> = vs_TEXCOORD1;
          let x_3546 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3542 * vec4<f32>(x_3543.x, x_3543.x, x_3543.x, x_3543.x)) + x_3546);
          let x_3548 : i32 = u_xlati75;
          let x_3551 : i32 = u_xlati75;
          let x_3555 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3548 + 2i) / 4i)][((x_3551 + 2i) % 4i)];
          let x_3556 : vec3<f32> = vs_TEXCOORD1;
          let x_3559 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3555 * vec4<f32>(x_3556.z, x_3556.z, x_3556.z, x_3556.z)) + x_3559);
          let x_3561 : vec4<f32> = u_xlat9;
          let x_3562 : i32 = u_xlati75;
          let x_3565 : i32 = u_xlati75;
          let x_3569 : vec4<f32> = x_1639.x_AdditionalLightsWorldToLights[((x_3562 + 3i) / 4i)][((x_3565 + 3i) % 4i)];
          u_xlat9 = (x_3561 + x_3569);
          let x_3571 : vec4<f32> = u_xlat9;
          let x_3573 : vec4<f32> = u_xlat9;
          let x_3575 : vec3<f32> = (vec3<f32>(x_3571.x, x_3571.y, x_3571.z) / vec3<f32>(x_3573.w, x_3573.w, x_3573.w));
          let x_3576 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
          let x_3578 : vec4<f32> = u_xlat9;
          let x_3580 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3578.x, x_3578.y, x_3578.z), vec3<f32>(x_3580.x, x_3580.y, x_3580.z));
          let x_3585 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3585);
          let x_3588 : vec2<f32> = u_xlat51;
          let x_3590 : vec4<f32> = u_xlat9;
          let x_3592 : vec3<f32> = (vec3<f32>(x_3588.x, x_3588.x, x_3588.x) * vec3<f32>(x_3590.x, x_3590.y, x_3590.z));
          let x_3593 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3592.x, x_3592.y, x_3592.z, x_3593.w);
          let x_3595 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3595.x, x_3595.y, x_3595.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3602 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3602, 0.00000099999999747524f);
          let x_3607 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3607);
          let x_3610 : vec2<f32> = u_xlat51;
          let x_3612 : vec4<f32> = u_xlat9;
          let x_3614 : vec3<f32> = (vec3<f32>(x_3610.x, x_3610.x, x_3610.x) * vec3<f32>(x_3612.z, x_3612.x, x_3612.y));
          let x_3615 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3614.x, x_3614.y, x_3614.z, x_3615.w);
          let x_3618 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3618);
          let x_3622 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3622, 0.0f, 1.0f);
          let x_3626 : vec4<f32> = u_xlat10;
          let x_3628 : vec4<bool> = (vec4<f32>(x_3626.y, x_3626.z, x_3626.y, x_3626.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3628.x, x_3628.y);
          let x_3632 : bool = u_xlatb54.x;
          if (x_3632) {
            let x_3637 : f32 = u_xlat10.x;
            x_3633 = x_3637;
          } else {
            let x_3640 : f32 = u_xlat10.x;
            x_3633 = -(x_3640);
          }
          let x_3642 : f32 = x_3633;
          u_xlat54.x = x_3642;
          let x_3645 : bool = u_xlatb54.y;
          if (x_3645) {
            let x_3650 : f32 = u_xlat10.x;
            x_3646 = x_3650;
          } else {
            let x_3653 : f32 = u_xlat10.x;
            x_3646 = -(x_3653);
          }
          let x_3655 : f32 = x_3646;
          u_xlat54.y = x_3655;
          let x_3657 : vec4<f32> = u_xlat9;
          let x_3659 : vec2<f32> = u_xlat51;
          let x_3662 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3659.x, x_3659.x)) + x_3662);
          let x_3664 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3664 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3667 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3667, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3671 : i32 = u_xlati71;
          let x_3673 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3671];
          let x_3675 : vec2<f32> = u_xlat51;
          let x_3677 : i32 = u_xlati71;
          let x_3679 : vec4<f32> = x_1639.x_AdditionalLightsCookieAtlasUVRects[x_3677];
          let x_3681 : vec2<f32> = ((vec2<f32>(x_3673.x, x_3673.y) * x_3675) + vec2<f32>(x_3679.z, x_3679.w));
          let x_3682 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3681.x, x_3681.y, x_3682.z, x_3682.w);
        }
      }
      let x_3689 : vec4<f32> = u_xlat8;
      let x_3691 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3689.x, x_3689.y), 0.0f);
      u_xlat8 = x_3691;
      let x_3693 : bool = u_xlatb5.y;
      if (x_3693) {
        let x_3698 : f32 = u_xlat8.w;
        x_3694 = x_3698;
      } else {
        let x_3701 : f32 = u_xlat8.x;
        x_3694 = x_3701;
      }
      let x_3702 : f32 = x_3694;
      u_xlat51.x = x_3702;
      let x_3705 : bool = u_xlatb5.x;
      if (x_3705) {
        let x_3709 : vec4<f32> = u_xlat8;
        x_3706 = vec3<f32>(x_3709.x, x_3709.y, x_3709.z);
      } else {
        let x_3712 : vec2<f32> = u_xlat51;
        x_3706 = vec3<f32>(x_3712.x, x_3712.x, x_3712.x);
      }
      let x_3714 : vec3<f32> = x_3706;
      let x_3715 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3715.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3721 : vec4<f32> = u_xlat8;
    let x_3723 : i32 = u_xlati71;
    let x_3725 : vec4<f32> = x_1890.x_AdditionalLightsColor[x_3723];
    let x_3727 : vec3<f32> = (vec3<f32>(x_3721.x, x_3721.y, x_3721.z) * vec3<f32>(x_3725.x, x_3725.y, x_3725.z));
    let x_3728 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3728.w);
    let x_3730 : f32 = u_xlat72;
    let x_3731 : f32 = u_xlat73;
    u_xlat71 = (x_3730 * x_3731);
    let x_3733 : f32 = u_xlat71;
    let x_3735 : vec4<f32> = u_xlat8;
    let x_3737 : vec3<f32> = (vec3<f32>(x_3733, x_3733, x_3733) * vec3<f32>(x_3735.x, x_3735.y, x_3735.z));
    let x_3738 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3737.x, x_3737.y, x_3737.z, x_3738.w);
    let x_3740 : vec3<f32> = u_xlat2;
    let x_3741 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3740, vec3<f32>(x_3741.x, x_3741.y, x_3741.z));
    let x_3744 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3744, 0.0f, 1.0f);
    let x_3746 : f32 = u_xlat71;
    let x_3748 : vec4<f32> = u_xlat8;
    let x_3750 : vec3<f32> = (vec3<f32>(x_3746, x_3746, x_3746) * vec3<f32>(x_3748.x, x_3748.y, x_3748.z));
    let x_3751 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3750.x, x_3750.y, x_3750.z, x_3751.w);
    let x_3753 : vec4<f32> = u_xlat7;
    let x_3755 : vec4<f32> = u_xlat1;
    let x_3758 : vec4<f32> = u_xlat6;
    let x_3760 : vec3<f32> = ((vec3<f32>(x_3753.x, x_3753.y, x_3753.z) * vec3<f32>(x_3755.y, x_3755.z, x_3755.w)) + vec3<f32>(x_3758.x, x_3758.y, x_3758.z));
    let x_3761 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);

    continuing {
      let x_3763 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3763 + bitcast<u32>(1i));
    }
  }
  let x_3765 : vec4<f32> = u_xlat3;
  let x_3767 : vec4<f32> = u_xlat1;
  let x_3770 : vec4<f32> = u_xlat4;
  let x_3772 : vec3<f32> = ((vec3<f32>(x_3765.x, x_3765.y, x_3765.z) * vec3<f32>(x_3767.y, x_3767.z, x_3767.w)) + vec3<f32>(x_3770.x, x_3770.y, x_3770.z));
  let x_3773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3772.x, x_3772.y, x_3772.z, x_3773.w);
  let x_3777 : vec4<f32> = u_xlat6;
  let x_3779 : vec4<f32> = u_xlat1;
  let x_3781 : vec3<f32> = (vec3<f32>(x_3777.x, x_3777.y, x_3777.z) + vec3<f32>(x_3779.x, x_3779.y, x_3779.z));
  let x_3782 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3781.x, x_3781.y, x_3781.z, x_3782.w);
  let x_3785 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3785 == 1.0f);
  let x_3787 : bool = u_xlatb23;
  let x_3788 : bool = u_xlatb46;
  u_xlatb23 = (x_3787 | x_3788);
  let x_3790 : bool = u_xlatb23;
  if (x_3790) {
    let x_3795 : f32 = u_xlat0.x;
    x_3791 = x_3795;
  } else {
    x_3791 = 1.0f;
  }
  let x_3797 : f32 = x_3791;
  SV_Target0.w = x_3797;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


