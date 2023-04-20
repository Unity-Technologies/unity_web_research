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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_247 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlati23 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1827 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_2079 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlatb73 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1777 : f32;
  var x_1910 : f32;
  var x_1922 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2216 : f32;
  var x_2225 : f32;
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
  var x_3817 : f32;
  var x_3830 : f32;
  var x_3878 : f32;
  var x_3890 : vec3<f32>;
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
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_249 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres0;
  let x_252 : vec3<f32> = (x_239 + -(vec3<f32>(x_249.x, x_249.y, x_249.z)));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres1;
  let x_261 : vec3<f32> = (x_256 + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres2;
  let x_271 : vec3<f32> = (x_265 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_272 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : vec3<f32> = vs_TEXCOORD1;
  let x_277 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres3;
  let x_280 : vec3<f32> = (x_275 + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_281 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec4<f32> = u_xlat5;
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_311 : vec4<f32> = u_xlat3;
  let x_314 : vec4<f32> = x_247.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_311 < x_314);
  let x_317 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_333);
  let x_339 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_339);
  let x_343 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_343);
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : vec4<f32> = u_xlat4;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_356 : vec3<f32> = max(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_356.x, x_356.y, x_356.z);
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(x_359, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_367 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_367) + 4.0f);
  let x_374 : f32 = u_xlat23.x;
  u_xlatu23 = u32(x_374);
  let x_378 : u32 = u_xlatu23;
  u_xlati23 = (bitcast<i32>(x_378) << bitcast<u32>(2i));
  let x_381 : vec3<f32> = vs_TEXCOORD1;
  let x_383 : i32 = u_xlati23;
  let x_386 : i32 = u_xlati23;
  let x_390 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_383 + 1i) / 4i)][((x_386 + 1i) % 4i)];
  let x_392 : vec3<f32> = (vec3<f32>(x_381.y, x_381.y, x_381.y) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : i32 = u_xlati23;
  let x_397 : i32 = u_xlati23;
  let x_400 : vec4<f32> = x_247.x_MainLightWorldToShadow[(x_395 / 4i)][(x_397 % 4i)];
  let x_402 : vec3<f32> = vs_TEXCOORD1;
  let x_405 : vec4<f32> = u_xlat3;
  let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.x, x_402.x)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : i32 = u_xlati23;
  let x_413 : i32 = u_xlati23;
  let x_417 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_410 + 2i) / 4i)][((x_413 + 2i) % 4i)];
  let x_419 : vec3<f32> = vs_TEXCOORD1;
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419.z, x_419.z, x_419.z)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat3;
  let x_429 : i32 = u_xlati23;
  let x_432 : i32 = u_xlati23;
  let x_436 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_429 + 3i) / 4i)][((x_432 + 3i) % 4i)];
  let x_438 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_447 : vec2<f32> = vs_TEXCOORD7;
  let x_449 : f32 = x_44.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_447, x_449);
  u_xlat4 = x_450;
  let x_455 : vec2<f32> = vs_TEXCOORD7;
  let x_457 : f32 = x_44.x_GlobalMipBias.x;
  let x_458 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_455, x_457);
  let x_459 : vec3<f32> = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat4;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec3<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(x_469, vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_475 : f32 = u_xlat23.x;
  u_xlat23.x = (x_475 + 0.5f);
  let x_478 : vec3<f32> = u_xlat23;
  let x_480 : vec4<f32> = u_xlat5;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : f32 = u_xlat4.w;
  u_xlat23.x = max(x_486, 0.00009999999747378752f);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec3<f32> = u_xlat23;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) / vec3<f32>(x_491.x, x_491.x, x_491.x));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = x_247.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_498);
  let x_500 : bool = u_xlatb23;
  if (x_500) {
    let x_504 : f32 = x_247.x_MainLightShadowParams.y;
    u_xlatb23 = (x_504 == 1.0f);
    let x_506 : bool = u_xlatb23;
    if (x_506) {
      let x_509 : vec4<f32> = u_xlat3;
      let x_512 : vec4<f32> = x_247.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_509.x, x_509.y, x_509.x, x_509.y) + x_512);
      let x_516 : vec4<f32> = u_xlat5;
      let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
      let x_519 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_517.x, x_517.y, x_519);
      let x_531 : vec3<f32> = txVec0;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
      u_xlat6.x = x_533;
      let x_536 : vec4<f32> = u_xlat5;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec1;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_546.xy, x_546.z);
      u_xlat6.y = x_548;
      let x_550 : vec4<f32> = u_xlat3;
      let x_554 : vec4<f32> = x_247.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_550.x, x_550.y, x_550.x, x_550.y) + x_554);
      let x_557 : vec4<f32> = u_xlat5;
      let x_558 : vec2<f32> = vec2<f32>(x_557.x, x_557.y);
      let x_560 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_558.x, x_558.y, x_560);
      let x_567 : vec3<f32> = txVec2;
      let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_567.xy, x_567.z);
      u_xlat6.z = x_569;
      let x_572 : vec4<f32> = u_xlat5;
      let x_573 : vec2<f32> = vec2<f32>(x_572.z, x_572.w);
      let x_575 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_573.x, x_573.y, x_575);
      let x_582 : vec3<f32> = txVec3;
      let x_584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_582.xy, x_582.z);
      u_xlat6.w = x_584;
      let x_586 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_586, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_593 : f32 = x_247.x_MainLightShadowParams.y;
      u_xlatb69 = (x_593 == 2.0f);
      let x_595 : bool = u_xlatb69;
      if (x_595) {
        let x_598 : vec4<f32> = u_xlat3;
        let x_602 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_606 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_602.z, x_602.w)) + vec2<f32>(0.5f, 0.5f));
        let x_607 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_609 : vec4<f32> = u_xlat5;
        let x_611 : vec2<f32> = floor(vec2<f32>(x_609.x, x_609.y));
        let x_612 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_616 : vec4<f32> = u_xlat3;
        let x_619 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_619.z, x_619.w)) + -(vec2<f32>(x_622.x, x_622.y)));
        let x_626 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_626.x, x_626.x, x_626.y, x_626.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_631 : vec4<f32> = u_xlat6;
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_631.x, x_631.x, x_631.z, x_631.z) * vec4<f32>(x_633.x, x_633.x, x_633.z, x_633.z));
        let x_636 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (vec2<f32>(x_636.y, x_636.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_641 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_640.x, x_641.y, x_640.y, x_641.w);
        let x_643 : vec4<f32> = u_xlat7;
        let x_646 : vec2<f32> = u_xlat51;
        let x_648 : vec2<f32> = ((vec2<f32>(x_643.x, x_643.z) * vec2<f32>(0.5f, 0.5f)) + -(x_646));
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_652 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_652) + vec2<f32>(1.0f, 1.0f));
        let x_657 : vec2<f32> = u_xlat51;
        let x_659 : vec2<f32> = min(x_657, vec2<f32>(0.0f, 0.0f));
        let x_660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat8;
        let x_665 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = u_xlat53;
        let x_669 : vec2<f32> = ((-(vec2<f32>(x_662.x, x_662.y)) * vec2<f32>(x_665.x, x_665.y)) + x_668);
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_672, vec2<f32>(0.0f, 0.0f));
        let x_674 : vec2<f32> = u_xlat51;
        let x_676 : vec2<f32> = u_xlat51;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_674) * x_676) + vec2<f32>(x_678.y, x_678.w));
        let x_681 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) + vec2<f32>(1.0f, 1.0f));
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_686 + vec2<f32>(1.0f, 1.0f));
        let x_689 : vec4<f32> = u_xlat7;
        let x_693 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec2<f32> = u_xlat53;
        let x_697 : vec2<f32> = (x_696 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_698 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat8;
        let x_702 : vec2<f32> = (vec2<f32>(x_700.x, x_700.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_706 : vec2<f32> = u_xlat51;
        let x_707 : vec2<f32> = (x_706 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_708 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_710.y, x_710.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_714 : f32 = u_xlat8.x;
        u_xlat9.z = x_714;
        let x_717 : f32 = u_xlat51.x;
        u_xlat9.w = x_717;
        let x_720 : f32 = u_xlat10.x;
        u_xlat7.z = x_720;
        let x_723 : f32 = u_xlat6.x;
        u_xlat7.w = x_723;
        let x_726 : vec4<f32> = u_xlat7;
        let x_728 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_726.z, x_726.w, x_726.x, x_726.z) + vec4<f32>(x_728.z, x_728.w, x_728.x, x_728.z));
        let x_732 : f32 = u_xlat9.y;
        u_xlat8.z = x_732;
        let x_735 : f32 = u_xlat51.y;
        u_xlat8.w = x_735;
        let x_738 : f32 = u_xlat7.y;
        u_xlat10.z = x_738;
        let x_741 : f32 = u_xlat6.z;
        u_xlat10.w = x_741;
        let x_743 : vec4<f32> = u_xlat8;
        let x_745 : vec4<f32> = u_xlat10;
        let x_747 : vec3<f32> = (vec3<f32>(x_743.z, x_743.y, x_743.w) + vec3<f32>(x_745.z, x_745.y, x_745.w));
        let x_748 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat7;
        let x_752 : vec4<f32> = u_xlat11;
        let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.z, x_750.w) / vec3<f32>(x_752.z, x_752.w, x_752.y));
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat7;
        let x_762 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat10;
        let x_767 : vec4<f32> = u_xlat6;
        let x_769 : vec3<f32> = (vec3<f32>(x_765.z, x_765.y, x_765.w) / vec3<f32>(x_767.x, x_767.y, x_767.z));
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_772 : vec4<f32> = u_xlat8;
        let x_774 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_775 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.x, x_777.z) * vec3<f32>(x_780.x, x_780.x, x_780.x));
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat8;
        let x_788 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_790 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_788.y, x_788.y, x_788.y));
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
        let x_794 : f32 = u_xlat8.x;
        u_xlat7.w = x_794;
        let x_796 : vec4<f32> = u_xlat5;
        let x_799 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_802 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y) * vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y)) + vec4<f32>(x_802.y, x_802.w, x_802.x, x_802.w));
        let x_805 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_811.z, x_811.w));
        let x_815 : f32 = u_xlat7.y;
        u_xlat8.w = x_815;
        let x_817 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = vec2<f32>(x_817.y, x_817.z);
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_819.x, x_818.x, x_819.z, x_818.y);
        let x_821 : vec4<f32> = u_xlat5;
        let x_824 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y) * vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y)) + vec4<f32>(x_827.x, x_827.y, x_827.z, x_827.y));
        let x_830 : vec4<f32> = u_xlat5;
        let x_833 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) * vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y)) + vec4<f32>(x_836.w, x_836.y, x_836.w, x_836.z));
        let x_839 : vec4<f32> = u_xlat5;
        let x_842 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.x, x_845.w, x_845.z, x_845.w));
        let x_849 : vec4<f32> = u_xlat6;
        let x_851 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_849.x, x_849.x, x_849.x, x_849.y) * vec4<f32>(x_851.z, x_851.w, x_851.y, x_851.z));
        let x_855 : vec4<f32> = u_xlat6;
        let x_857 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_855.y, x_855.y, x_855.z, x_855.z) * x_857);
        let x_860 : f32 = u_xlat6.z;
        let x_862 : f32 = u_xlat11.y;
        u_xlat69 = (x_860 * x_862);
        let x_865 : vec4<f32> = u_xlat9;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec4;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat1.x = x_877;
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
        let x_883 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_891 : vec3<f32> = txVec5;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat71 = x_893;
        let x_894 : f32 = u_xlat71;
        let x_896 : f32 = u_xlat12.y;
        u_xlat71 = (x_894 * x_896);
        let x_899 : f32 = u_xlat12.x;
        let x_901 : f32 = u_xlat1.x;
        let x_903 : f32 = u_xlat71;
        u_xlat1.x = ((x_899 * x_901) + x_903);
        let x_907 : vec2<f32> = u_xlat51;
        let x_909 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec6;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_916.xy, x_916.z);
        u_xlat71 = x_918;
        let x_920 : f32 = u_xlat12.z;
        let x_921 : f32 = u_xlat71;
        let x_924 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_920 * x_921) + x_924);
        let x_928 : vec4<f32> = u_xlat8;
        let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
        let x_931 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec7;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_938.xy, x_938.z);
        u_xlat71 = x_940;
        let x_942 : f32 = u_xlat12.w;
        let x_943 : f32 = u_xlat71;
        let x_946 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_942 * x_943) + x_946);
        let x_950 : vec4<f32> = u_xlat10;
        let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
        let x_953 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_951.x, x_951.y, x_953);
        let x_960 : vec3<f32> = txVec8;
        let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
        u_xlat71 = x_962;
        let x_964 : f32 = u_xlat13.x;
        let x_965 : f32 = u_xlat71;
        let x_968 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_964 * x_965) + x_968);
        let x_972 : vec4<f32> = u_xlat10;
        let x_973 : vec2<f32> = vec2<f32>(x_972.z, x_972.w);
        let x_975 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_973.x, x_973.y, x_975);
        let x_982 : vec3<f32> = txVec9;
        let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
        u_xlat71 = x_984;
        let x_986 : f32 = u_xlat13.y;
        let x_987 : f32 = u_xlat71;
        let x_990 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_986 * x_987) + x_990);
        let x_994 : vec4<f32> = u_xlat8;
        let x_995 : vec2<f32> = vec2<f32>(x_994.z, x_994.w);
        let x_997 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec10;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1004.xy, x_1004.z);
        u_xlat71 = x_1006;
        let x_1008 : f32 = u_xlat13.z;
        let x_1009 : f32 = u_xlat71;
        let x_1012 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1008 * x_1009) + x_1012);
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1017 : vec2<f32> = vec2<f32>(x_1016.x, x_1016.y);
        let x_1019 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec11;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
        u_xlat71 = x_1028;
        let x_1030 : f32 = u_xlat13.w;
        let x_1031 : f32 = u_xlat71;
        let x_1034 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1030 * x_1031) + x_1034);
        let x_1038 : vec4<f32> = u_xlat7;
        let x_1039 : vec2<f32> = vec2<f32>(x_1038.z, x_1038.w);
        let x_1041 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
        let x_1048 : vec3<f32> = txVec12;
        let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1048.xy, x_1048.z);
        u_xlat71 = x_1050;
        let x_1051 : f32 = u_xlat69;
        let x_1052 : f32 = u_xlat71;
        let x_1055 : f32 = u_xlat1.x;
        u_xlat23.x = ((x_1051 * x_1052) + x_1055);
      } else {
        let x_1059 : vec4<f32> = u_xlat3;
        let x_1062 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1066 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat5;
        let x_1070 : vec2<f32> = floor(vec2<f32>(x_1068.x, x_1068.y));
        let x_1071 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : vec4<f32> = u_xlat3;
        let x_1076 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.z, x_1076.w)) + -(vec2<f32>(x_1079.x, x_1079.y)));
        let x_1083 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1083.x, x_1083.x, x_1083.y, x_1083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1088 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.z, x_1086.z) * vec4<f32>(x_1088.x, x_1088.x, x_1088.z, x_1088.z));
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1091.y, x_1091.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = u_xlat51;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1101));
        let x_1104 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat51;
        let x_1108 : vec2<f32> = (-(x_1106) + vec2<f32>(1.0f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1111, vec2<f32>(0.0f, 0.0f));
        let x_1113 : vec2<f32> = u_xlat53;
        let x_1115 : vec2<f32> = u_xlat53;
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1119 : vec2<f32> = ((-(x_1113) * x_1115) + vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1122, vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec2<f32> = u_xlat53;
        let x_1127 : vec2<f32> = u_xlat53;
        let x_1129 : vec4<f32> = u_xlat6;
        let x_1131 : vec2<f32> = ((-(x_1125) * x_1127) + vec2<f32>(x_1129.y, x_1129.w));
        let x_1132 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1131.x, x_1132.y, x_1131.y);
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) + vec2<f32>(2.0f, 2.0f));
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec3<f32> = u_xlat29;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.z) + vec2<f32>(2.0f, 2.0f));
        let x_1143 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1146 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1146 * 0.08163200318813323975f);
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1153 : vec3<f32> = (vec3<f32>(x_1150.z, x_1150.x, x_1150.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1159 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1160 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1163 : f32 = u_xlat10.y;
        u_xlat9.x = x_1163;
        let x_1165 : vec2<f32> = u_xlat51;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1172.x, x_1173.z, x_1172.y);
        let x_1175 : vec2<f32> = u_xlat51;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1183 : f32 = u_xlat6.x;
        u_xlat7.y = x_1183;
        let x_1186 : f32 = u_xlat8.y;
        u_xlat7.w = x_1186;
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1188 + x_1189);
        let x_1191 : vec2<f32> = u_xlat51;
        let x_1194 : vec2<f32> = ((vec2<f32>(x_1191.y, x_1191.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1195.x, x_1194.x, x_1195.z, x_1194.y);
        let x_1197 : vec2<f32> = u_xlat51;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1197.y, x_1197.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1201.y, x_1200.y, x_1201.w);
        let x_1204 : f32 = u_xlat6.y;
        u_xlat8.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1206 + x_1207);
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1209 / x_1210);
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1212 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1219 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1218 / x_1219);
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1221 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1223 : vec4<f32> = u_xlat7;
        let x_1226 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1223.w, x_1223.x, x_1223.y, x_1223.z) * vec4<f32>(x_1226.x, x_1226.x, x_1226.x, x_1226.x));
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1232 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1229.x, x_1229.w, x_1229.y, x_1229.z) * vec4<f32>(x_1232.y, x_1232.y, x_1232.y, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat7;
        let x_1236 : vec3<f32> = vec3<f32>(x_1235.y, x_1235.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1236.x, x_1237.y, x_1236.y, x_1236.z);
        let x_1240 : f32 = u_xlat8.x;
        u_xlat10.y = x_1240;
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1248.y));
        let x_1251 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.w, x_1257.y));
        let x_1261 : f32 = u_xlat10.y;
        u_xlat7.y = x_1261;
        let x_1264 : f32 = u_xlat8.z;
        u_xlat10.y = x_1264;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat10;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.w, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1284.w);
        let x_1287 : f32 = u_xlat10.y;
        u_xlat7.z = x_1287;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.z));
        let x_1300 : f32 = u_xlat8.w;
        u_xlat10.y = x_1300;
        let x_1303 : vec4<f32> = u_xlat5;
        let x_1306 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y) * vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y)) + vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1309.y));
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1323 : f32 = u_xlat10.y;
        u_xlat7.w = x_1323;
        let x_1326 : vec4<f32> = u_xlat5;
        let x_1329 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1332.x, x_1332.w));
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1336 : vec3<f32> = vec3<f32>(x_1335.x, x_1335.z, x_1335.w);
        let x_1337 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1336.x, x_1337.y, x_1336.y, x_1336.z);
        let x_1339 : vec4<f32> = u_xlat5;
        let x_1342 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y) * vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1345.y));
        let x_1349 : vec4<f32> = u_xlat5;
        let x_1352 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1349.x, x_1349.y) * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.w, x_1355.y));
        let x_1359 : f32 = u_xlat7.x;
        u_xlat8.x = x_1359;
        let x_1361 : vec4<f32> = u_xlat5;
        let x_1364 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1367 : vec4<f32> = u_xlat8;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(x_1364.x, x_1364.y)) + vec2<f32>(x_1367.x, x_1367.y));
        let x_1370 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1375 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1373.x, x_1373.x, x_1373.x, x_1373.x) * x_1375);
        let x_1378 : vec4<f32> = u_xlat6;
        let x_1380 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1378.y, x_1378.y, x_1378.y, x_1378.y) * x_1380);
        let x_1383 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1383.z, x_1383.z, x_1383.z, x_1383.z) * x_1385);
        let x_1387 : vec4<f32> = u_xlat6;
        let x_1389 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1387.w, x_1387.w, x_1387.w, x_1387.w) * x_1389);
        let x_1392 : vec4<f32> = u_xlat11;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec13;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat69 = x_1404;
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec14;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat1.x = x_1418;
        let x_1421 : f32 = u_xlat1.x;
        let x_1423 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1421 * x_1423);
        let x_1427 : f32 = u_xlat16.x;
        let x_1428 : f32 = u_xlat69;
        let x_1431 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1427 * x_1428) + x_1431);
        let x_1434 : vec2<f32> = u_xlat51;
        let x_1436 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec15;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat1.x = x_1445;
        let x_1448 : f32 = u_xlat16.z;
        let x_1450 : f32 = u_xlat1.x;
        let x_1452 : f32 = u_xlat69;
        u_xlat69 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat14;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec16;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat1.x = x_1467;
        let x_1470 : f32 = u_xlat16.w;
        let x_1472 : f32 = u_xlat1.x;
        let x_1474 : f32 = u_xlat69;
        u_xlat69 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat12;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec17;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat1.x = x_1489;
        let x_1492 : f32 = u_xlat17.x;
        let x_1494 : f32 = u_xlat1.x;
        let x_1496 : f32 = u_xlat69;
        u_xlat69 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat12;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.z, x_1499.w);
        let x_1502 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec18;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat1.x = x_1511;
        let x_1514 : f32 = u_xlat17.y;
        let x_1516 : f32 = u_xlat1.x;
        let x_1518 : f32 = u_xlat69;
        u_xlat69 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat13;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec19;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat1.x = x_1533;
        let x_1536 : f32 = u_xlat17.z;
        let x_1538 : f32 = u_xlat1.x;
        let x_1540 : f32 = u_xlat69;
        u_xlat69 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat14;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.z, x_1543.w);
        let x_1546 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec20;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat1.x = x_1555;
        let x_1558 : f32 = u_xlat17.w;
        let x_1560 : f32 = u_xlat1.x;
        let x_1562 : f32 = u_xlat69;
        u_xlat69 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat15;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.x, x_1565.y);
        let x_1568 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec21;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat1.x = x_1577;
        let x_1580 : f32 = u_xlat18.x;
        let x_1582 : f32 = u_xlat1.x;
        let x_1584 : f32 = u_xlat69;
        u_xlat69 = ((x_1580 * x_1582) + x_1584);
        let x_1587 : vec4<f32> = u_xlat15;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.z, x_1587.w);
        let x_1590 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec22;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
        u_xlat1.x = x_1599;
        let x_1602 : f32 = u_xlat18.y;
        let x_1604 : f32 = u_xlat1.x;
        let x_1606 : f32 = u_xlat69;
        u_xlat69 = ((x_1602 * x_1604) + x_1606);
        let x_1609 : vec2<f32> = u_xlat30;
        let x_1611 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec23;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat1.x = x_1620;
        let x_1623 : f32 = u_xlat18.z;
        let x_1625 : f32 = u_xlat1.x;
        let x_1627 : f32 = u_xlat69;
        u_xlat69 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec2<f32> = u_xlat59;
        let x_1632 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec24;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat1.x = x_1641;
        let x_1644 : f32 = u_xlat18.w;
        let x_1646 : f32 = u_xlat1.x;
        let x_1648 : f32 = u_xlat69;
        u_xlat69 = ((x_1644 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec25;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat1.x = x_1663;
        let x_1666 : f32 = u_xlat6.x;
        let x_1668 : f32 = u_xlat1.x;
        let x_1670 : f32 = u_xlat69;
        u_xlat69 = ((x_1666 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat10;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec26;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat1.x = x_1685;
        let x_1688 : f32 = u_xlat6.y;
        let x_1690 : f32 = u_xlat1.x;
        let x_1692 : f32 = u_xlat69;
        u_xlat69 = ((x_1688 * x_1690) + x_1692);
        let x_1695 : vec2<f32> = u_xlat54;
        let x_1697 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec27;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat1.x = x_1706;
        let x_1709 : f32 = u_xlat6.z;
        let x_1711 : f32 = u_xlat1.x;
        let x_1713 : f32 = u_xlat69;
        u_xlat69 = ((x_1709 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat5;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
        let x_1719 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec28;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat1.x = x_1728;
        let x_1731 : f32 = u_xlat6.w;
        let x_1733 : f32 = u_xlat1.x;
        let x_1735 : f32 = u_xlat69;
        u_xlat23.x = ((x_1731 * x_1733) + x_1735);
      }
    }
  } else {
    let x_1740 : vec4<f32> = u_xlat3;
    let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
    let x_1743 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
    let x_1750 : vec3<f32> = txVec29;
    let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
    u_xlat23.x = x_1752;
  }
  let x_1755 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1755) + 1.0f);
  let x_1759 : f32 = u_xlat23.x;
  let x_1761 : f32 = x_247.x_MainLightShadowParams.x;
  let x_1763 : f32 = u_xlat69;
  u_xlat23.x = ((x_1759 * x_1761) + x_1763);
  let x_1767 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1767);
  let x_1771 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1771 >= 1.0f);
  let x_1773 : bool = u_xlatb69;
  let x_1774 : bool = u_xlatb1;
  u_xlatb69 = (x_1773 | x_1774);
  let x_1776 : bool = u_xlatb69;
  if (x_1776) {
    x_1777 = 1.0f;
  } else {
    let x_1782 : f32 = u_xlat23.x;
    x_1777 = x_1782;
  }
  let x_1783 : f32 = x_1777;
  u_xlat23.x = x_1783;
  let x_1785 : vec3<f32> = vs_TEXCOORD1;
  let x_1788 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1790 : vec3<f32> = (x_1785 + -(x_1788));
  let x_1791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec4<f32> = u_xlat3;
  let x_1795 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : f32 = u_xlat69;
  let x_1800 : f32 = x_247.x_MainLightShadowParams.z;
  let x_1803 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1798 * x_1800) + x_1803);
  let x_1807 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1807, 0.0f, 1.0f);
  let x_1811 : f32 = u_xlat23.x;
  u_xlat71 = (-(x_1811) + 1.0f);
  let x_1815 : f32 = u_xlat1.x;
  let x_1816 : f32 = u_xlat71;
  let x_1819 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1815 * x_1816) + x_1819);
  let x_1829 : f32 = x_1827.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1829 == -1.0f));
  let x_1831 : bool = u_xlatb1;
  if (x_1831) {
    let x_1834 : vec3<f32> = vs_TEXCOORD1;
    let x_1837 : vec4<f32> = x_1827.x_MainLightWorldToLight[1i];
    let x_1839 : vec2<f32> = (vec2<f32>(x_1834.y, x_1834.y) * vec2<f32>(x_1837.x, x_1837.y));
    let x_1840 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
    let x_1843 : vec4<f32> = x_1827.x_MainLightWorldToLight[0i];
    let x_1845 : vec3<f32> = vs_TEXCOORD1;
    let x_1848 : vec4<f32> = u_xlat3;
    let x_1850 : vec2<f32> = ((vec2<f32>(x_1843.x, x_1843.y) * vec2<f32>(x_1845.x, x_1845.x)) + vec2<f32>(x_1848.x, x_1848.y));
    let x_1851 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1850.x, x_1850.y, x_1851.z, x_1851.w);
    let x_1854 : vec4<f32> = x_1827.x_MainLightWorldToLight[2i];
    let x_1856 : vec3<f32> = vs_TEXCOORD1;
    let x_1859 : vec4<f32> = u_xlat3;
    let x_1861 : vec2<f32> = ((vec2<f32>(x_1854.x, x_1854.y) * vec2<f32>(x_1856.z, x_1856.z)) + vec2<f32>(x_1859.x, x_1859.y));
    let x_1862 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
    let x_1864 : vec4<f32> = u_xlat3;
    let x_1867 : vec4<f32> = x_1827.x_MainLightWorldToLight[3i];
    let x_1869 : vec2<f32> = (vec2<f32>(x_1864.x, x_1864.y) + vec2<f32>(x_1867.x, x_1867.y));
    let x_1870 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
    let x_1872 : vec4<f32> = u_xlat3;
    let x_1875 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1876 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1875.x, x_1875.y, x_1876.z, x_1876.w);
    let x_1883 : vec4<f32> = u_xlat3;
    let x_1886 : f32 = x_44.x_GlobalMipBias.x;
    let x_1887 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1883.x, x_1883.y), x_1886);
    u_xlat3 = x_1887;
    let x_1892 : f32 = x_1827.x_MainLightCookieTextureFormat;
    let x_1894 : f32 = x_1827.x_MainLightCookieTextureFormat;
    let x_1896 : f32 = x_1827.x_MainLightCookieTextureFormat;
    let x_1898 : f32 = x_1827.x_MainLightCookieTextureFormat;
    let x_1899 : vec4<f32> = vec4<f32>(x_1892, x_1894, x_1896, x_1898);
    let x_1906 : vec4<bool> = (vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1899.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1906.x, x_1906.y);
    let x_1909 : bool = u_xlatb5.y;
    if (x_1909) {
      let x_1914 : f32 = u_xlat3.w;
      x_1910 = x_1914;
    } else {
      let x_1917 : f32 = u_xlat3.x;
      x_1910 = x_1917;
    }
    let x_1918 : f32 = x_1910;
    u_xlat1.x = x_1918;
    let x_1921 : bool = u_xlatb5.x;
    if (x_1921) {
      let x_1925 : vec4<f32> = u_xlat3;
      x_1922 = vec3<f32>(x_1925.x, x_1925.y, x_1925.z);
    } else {
      let x_1928 : vec4<f32> = u_xlat1;
      x_1922 = vec3<f32>(x_1928.x, x_1928.x, x_1928.x);
    }
    let x_1930 : vec3<f32> = x_1922;
    let x_1931 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1937 : vec4<f32> = u_xlat3;
  let x_1940 : vec4<f32> = x_44.x_MainLightColor;
  let x_1942 : vec3<f32> = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
  let x_1946 : f32 = u_xlat23.x;
  let x_1948 : f32 = x_186.unity_LightData.z;
  u_xlat23.x = (x_1946 * x_1948);
  let x_1951 : vec3<f32> = u_xlat23;
  let x_1953 : vec4<f32> = u_xlat3;
  let x_1955 : vec3<f32> = (vec3<f32>(x_1951.x, x_1951.x, x_1951.x) * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  let x_1958 : vec3<f32> = u_xlat2;
  let x_1960 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(x_1958, vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1965 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1965, 0.0f, 1.0f);
  let x_1968 : vec3<f32> = u_xlat23;
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.x, x_1968.x) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec4<f32> = u_xlat1;
  let x_1977 : vec4<f32> = u_xlat3;
  let x_1979 : vec3<f32> = (vec3<f32>(x_1975.y, x_1975.z, x_1975.w) * vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : vec4<f32> = u_xlat0;
  let x_1984 : vec4<f32> = u_xlat3;
  let x_1986 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.x, x_1982.x) * vec3<f32>(x_1984.x, x_1984.y, x_1984.z));
  let x_1987 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1990 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1992 : f32 = x_186.unity_LightData.y;
  u_xlat23.x = min(x_1990, x_1992);
  let x_1996 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1996));
  let x_1999 : f32 = u_xlat69;
  let x_2002 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_2005 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1999 * x_2002) + x_2005);
  let x_2007 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2007, 0.0f, 1.0f);
  let x_2010 : f32 = x_1827.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2012 : f32 = x_1827.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2014 : f32 = x_1827.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2016 : f32 = x_1827.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2017 : vec4<f32> = vec4<f32>(x_2010, x_2012, x_2014, x_2016);
  let x_2023 : vec4<bool> = (vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2017.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2023.x, x_2023.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2035 : u32 = u_xlatu_loop_1;
    let x_2036 : u32 = u_xlatu23;
    if ((x_2035 < x_2036)) {
    } else {
      break;
    }
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2039 >> 2u);
    let x_2042 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2042 & 3u));
    let x_2045 : u32 = u_xlatu71;
    let x_2048 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2045)];
    let x_2058 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2063 : vec4<u32> = indexable[x_2058];
    u_xlat71 = dot(x_2048, bitcast<vec4<f32>>(x_2063));
    let x_2067 : f32 = u_xlat71;
    u_xlati71 = i32(x_2067);
    let x_2069 : vec3<f32> = vs_TEXCOORD1;
    let x_2080 : i32 = u_xlati71;
    let x_2082 : vec4<f32> = x_2079.x_AdditionalLightsPosition[x_2080];
    let x_2085 : i32 = u_xlati71;
    let x_2087 : vec4<f32> = x_2079.x_AdditionalLightsPosition[x_2085];
    let x_2089 : vec3<f32> = ((-(x_2069) * vec3<f32>(x_2082.w, x_2082.w, x_2082.w)) + vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
    let x_2093 : vec4<f32> = u_xlat7;
    let x_2095 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_2093.x, x_2093.y, x_2093.z), vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2098 : f32 = u_xlat72;
    u_xlat72 = max(x_2098, 0.00006103515625f);
    let x_2102 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2102);
    let x_2104 : f32 = u_xlat73;
    let x_2106 : vec4<f32> = u_xlat7;
    let x_2108 : vec3<f32> = (vec3<f32>(x_2104, x_2104, x_2104) * vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
    let x_2109 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
    let x_2111 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2111);
    let x_2113 : f32 = u_xlat72;
    let x_2114 : i32 = u_xlati71;
    let x_2116 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2114].x;
    u_xlat72 = (x_2113 * x_2116);
    let x_2118 : f32 = u_xlat72;
    let x_2120 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2118) * x_2120) + 1.0f);
    let x_2123 : f32 = u_xlat72;
    u_xlat72 = max(x_2123, 0.0f);
    let x_2125 : f32 = u_xlat72;
    let x_2126 : f32 = u_xlat72;
    u_xlat72 = (x_2125 * x_2126);
    let x_2128 : f32 = u_xlat72;
    let x_2129 : f32 = u_xlat73;
    u_xlat72 = (x_2128 * x_2129);
    let x_2131 : i32 = u_xlati71;
    let x_2133 : vec4<f32> = x_2079.x_AdditionalLightsSpotDir[x_2131];
    let x_2135 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : f32 = u_xlat73;
    let x_2139 : i32 = u_xlati71;
    let x_2141 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2139].z;
    let x_2143 : i32 = u_xlati71;
    let x_2145 : f32 = x_2079.x_AdditionalLightsAttenuation[x_2143].w;
    u_xlat73 = ((x_2138 * x_2141) + x_2145);
    let x_2147 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2147, 0.0f, 1.0f);
    let x_2149 : f32 = u_xlat73;
    let x_2150 : f32 = u_xlat73;
    u_xlat73 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat72;
    let x_2153 : f32 = u_xlat73;
    u_xlat72 = (x_2152 * x_2153);
    let x_2157 : i32 = u_xlati71;
    let x_2159 : f32 = x_247.x_AdditionalShadowParams[x_2157].w;
    u_xlati73 = i32(x_2159);
    let x_2162 : i32 = u_xlati73;
    u_xlatb51 = (x_2162 >= 0i);
    let x_2164 : bool = u_xlatb51;
    if (x_2164) {
      let x_2168 : i32 = u_xlati71;
      let x_2170 : f32 = x_247.x_AdditionalShadowParams[x_2168].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2170, x_2170, x_2170, x_2170))));
      let x_2174 : bool = u_xlatb51;
      if (x_2174) {
        let x_2178 : vec4<f32> = u_xlat7;
        let x_2181 : vec4<f32> = u_xlat7;
        let x_2184 : vec4<bool> = (abs(vec4<f32>(x_2178.z, x_2178.z, x_2178.y, x_2178.z)) >= abs(vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.x)));
        let x_2186 : vec3<bool> = vec3<bool>(x_2184.x, x_2184.y, x_2184.z);
        let x_2187 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
        let x_2190 : bool = u_xlatb8.y;
        let x_2192 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2190 & x_2192);
        let x_2194 : vec4<f32> = u_xlat7;
        let x_2197 : vec4<bool> = (-(vec4<f32>(x_2194.z, x_2194.y, x_2194.z, x_2194.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2198 : vec3<bool> = vec3<bool>(x_2197.x, x_2197.y, x_2197.w);
        let x_2199 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2198.x, x_2198.y, x_2199.z, x_2198.z);
        let x_2202 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2202);
        let x_2207 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2207);
        let x_2212 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2212);
        let x_2215 : bool = u_xlatb8.z;
        if (x_2215) {
          let x_2220 : f32 = u_xlat8.y;
          x_2216 = x_2220;
        } else {
          let x_2222 : f32 = u_xlat74;
          x_2216 = x_2222;
        }
        let x_2223 : f32 = x_2216;
        u_xlat74 = x_2223;
        let x_2224 : bool = u_xlatb51;
        if (x_2224) {
          let x_2229 : f32 = u_xlat8.x;
          x_2225 = x_2229;
        } else {
          let x_2231 : f32 = u_xlat74;
          x_2225 = x_2231;
        }
        let x_2232 : f32 = x_2225;
        u_xlat51.x = x_2232;
        let x_2234 : i32 = u_xlati71;
        let x_2236 : f32 = x_247.x_AdditionalShadowParams[x_2234].w;
        u_xlat74 = trunc(x_2236);
        let x_2239 : f32 = u_xlat51.x;
        let x_2240 : f32 = u_xlat74;
        u_xlat51.x = (x_2239 + x_2240);
        let x_2244 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2244);
      }
      let x_2246 : i32 = u_xlati73;
      u_xlati73 = (x_2246 << bitcast<u32>(2i));
      let x_2248 : vec3<f32> = vs_TEXCOORD1;
      let x_2251 : i32 = u_xlati73;
      let x_2254 : i32 = u_xlati73;
      let x_2258 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_2251 + 1i) / 4i)][((x_2254 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2248.y, x_2248.y, x_2248.y, x_2248.y) * x_2258);
      let x_2260 : i32 = u_xlati73;
      let x_2262 : i32 = u_xlati73;
      let x_2265 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_2260 / 4i)][(x_2262 % 4i)];
      let x_2266 : vec3<f32> = vs_TEXCOORD1;
      let x_2269 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2265 * vec4<f32>(x_2266.x, x_2266.x, x_2266.x, x_2266.x)) + x_2269);
      let x_2271 : i32 = u_xlati73;
      let x_2274 : i32 = u_xlati73;
      let x_2278 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_2271 + 2i) / 4i)][((x_2274 + 2i) % 4i)];
      let x_2279 : vec3<f32> = vs_TEXCOORD1;
      let x_2282 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2278 * vec4<f32>(x_2279.z, x_2279.z, x_2279.z, x_2279.z)) + x_2282);
      let x_2284 : vec4<f32> = u_xlat8;
      let x_2285 : i32 = u_xlati73;
      let x_2288 : i32 = u_xlati73;
      let x_2292 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_2285 + 3i) / 4i)][((x_2288 + 3i) % 4i)];
      u_xlat8 = (x_2284 + x_2292);
      let x_2294 : vec4<f32> = u_xlat8;
      let x_2296 : vec4<f32> = u_xlat8;
      let x_2298 : vec3<f32> = (vec3<f32>(x_2294.x, x_2294.y, x_2294.z) / vec3<f32>(x_2296.w, x_2296.w, x_2296.w));
      let x_2299 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
      let x_2302 : i32 = u_xlati71;
      let x_2304 : f32 = x_247.x_AdditionalShadowParams[x_2302].y;
      u_xlatb73 = (0.0f < x_2304);
      let x_2306 : bool = u_xlatb73;
      if (x_2306) {
        let x_2309 : i32 = u_xlati71;
        let x_2311 : f32 = x_247.x_AdditionalShadowParams[x_2309].y;
        u_xlatb73 = (1.0f == x_2311);
        let x_2313 : bool = u_xlatb73;
        if (x_2313) {
          let x_2316 : vec4<f32> = u_xlat8;
          let x_2320 : vec4<f32> = x_247.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y) + x_2320);
          let x_2323 : vec4<f32> = u_xlat9;
          let x_2324 : vec2<f32> = vec2<f32>(x_2323.x, x_2323.y);
          let x_2326 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2324.x, x_2324.y, x_2326);
          let x_2334 : vec3<f32> = txVec30;
          let x_2336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2334.xy, x_2334.z);
          u_xlat10.x = x_2336;
          let x_2339 : vec4<f32> = u_xlat9;
          let x_2340 : vec2<f32> = vec2<f32>(x_2339.z, x_2339.w);
          let x_2342 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
          let x_2349 : vec3<f32> = txVec31;
          let x_2351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
          u_xlat10.y = x_2351;
          let x_2353 : vec4<f32> = u_xlat8;
          let x_2357 : vec4<f32> = x_247.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y) + x_2357);
          let x_2360 : vec4<f32> = u_xlat9;
          let x_2361 : vec2<f32> = vec2<f32>(x_2360.x, x_2360.y);
          let x_2363 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2361.x, x_2361.y, x_2363);
          let x_2370 : vec3<f32> = txVec32;
          let x_2372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2370.xy, x_2370.z);
          u_xlat10.z = x_2372;
          let x_2375 : vec4<f32> = u_xlat9;
          let x_2376 : vec2<f32> = vec2<f32>(x_2375.z, x_2375.w);
          let x_2378 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
          let x_2385 : vec3<f32> = txVec33;
          let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
          u_xlat10.w = x_2387;
          let x_2389 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2389, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2392 : i32 = u_xlati71;
          let x_2394 : f32 = x_247.x_AdditionalShadowParams[x_2392].y;
          u_xlatb51 = (2.0f == x_2394);
          let x_2396 : bool = u_xlatb51;
          if (x_2396) {
            let x_2399 : vec4<f32> = u_xlat8;
            let x_2403 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2399.x, x_2399.y) * vec2<f32>(x_2403.z, x_2403.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2407 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2407);
            let x_2409 : vec4<f32> = u_xlat8;
            let x_2412 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2415 : vec2<f32> = u_xlat51;
            let x_2417 : vec2<f32> = ((vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(x_2412.z, x_2412.w)) + -(x_2415));
            let x_2418 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2420.x, x_2420.x, x_2420.y, x_2420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2423 : vec4<f32> = u_xlat10;
            let x_2425 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2423.x, x_2423.x, x_2423.z, x_2423.z) * vec4<f32>(x_2425.x, x_2425.x, x_2425.z, x_2425.z));
            let x_2429 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2429.y, x_2429.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2435 : vec4<f32> = u_xlat9;
            let x_2438 : vec2<f32> = ((vec2<f32>(x_2432.x, x_2432.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2435.x, x_2435.y)));
            let x_2439 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2438.x, x_2439.y, x_2438.y, x_2439.w);
            let x_2441 : vec4<f32> = u_xlat9;
            let x_2444 : vec2<f32> = (-(vec2<f32>(x_2441.x, x_2441.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2445 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2444.x, x_2444.y, x_2445.z, x_2445.w);
            let x_2448 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2448.x, x_2448.y), vec2<f32>(0.0f, 0.0f));
            let x_2451 : vec2<f32> = u_xlat57;
            let x_2453 : vec2<f32> = u_xlat57;
            let x_2455 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2451) * x_2453) + vec2<f32>(x_2455.x, x_2455.y));
            let x_2458 : vec4<f32> = u_xlat9;
            let x_2460 : vec2<f32> = max(vec2<f32>(x_2458.x, x_2458.y), vec2<f32>(0.0f, 0.0f));
            let x_2461 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
            let x_2463 : vec4<f32> = u_xlat9;
            let x_2466 : vec4<f32> = u_xlat9;
            let x_2469 : vec4<f32> = u_xlat10;
            let x_2471 : vec2<f32> = ((-(vec2<f32>(x_2463.x, x_2463.y)) * vec2<f32>(x_2466.x, x_2466.y)) + vec2<f32>(x_2469.y, x_2469.w));
            let x_2472 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2474 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2474 + vec2<f32>(1.0f, 1.0f));
            let x_2476 : vec4<f32> = u_xlat9;
            let x_2478 : vec2<f32> = (vec2<f32>(x_2476.x, x_2476.y) + vec2<f32>(1.0f, 1.0f));
            let x_2479 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2478.x, x_2478.y, x_2479.z, x_2479.w);
            let x_2481 : vec4<f32> = u_xlat10;
            let x_2483 : vec2<f32> = (vec2<f32>(x_2481.x, x_2481.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2484 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2483.x, x_2483.y, x_2484.z, x_2484.w);
            let x_2486 : vec4<f32> = u_xlat11;
            let x_2488 : vec2<f32> = (vec2<f32>(x_2486.x, x_2486.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2489 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
            let x_2491 : vec2<f32> = u_xlat57;
            let x_2492 : vec2<f32> = (x_2491 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2493 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat9;
            let x_2497 : vec2<f32> = (vec2<f32>(x_2495.x, x_2495.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2498 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat10;
            let x_2502 : vec2<f32> = (vec2<f32>(x_2500.y, x_2500.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2503 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2506 : f32 = u_xlat11.x;
            u_xlat12.z = x_2506;
            let x_2509 : f32 = u_xlat9.x;
            u_xlat12.w = x_2509;
            let x_2512 : f32 = u_xlat14.x;
            u_xlat13.z = x_2512;
            let x_2515 : f32 = u_xlat55.x;
            u_xlat13.w = x_2515;
            let x_2517 : vec4<f32> = u_xlat12;
            let x_2519 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2517.z, x_2517.w, x_2517.x, x_2517.z) + vec4<f32>(x_2519.z, x_2519.w, x_2519.x, x_2519.z));
            let x_2523 : f32 = u_xlat12.y;
            u_xlat11.z = x_2523;
            let x_2526 : f32 = u_xlat9.y;
            u_xlat11.w = x_2526;
            let x_2529 : f32 = u_xlat13.y;
            u_xlat14.z = x_2529;
            let x_2532 : f32 = u_xlat55.y;
            u_xlat14.w = x_2532;
            let x_2534 : vec4<f32> = u_xlat11;
            let x_2536 : vec4<f32> = u_xlat14;
            let x_2538 : vec3<f32> = (vec3<f32>(x_2534.z, x_2534.y, x_2534.w) + vec3<f32>(x_2536.z, x_2536.y, x_2536.w));
            let x_2539 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
            let x_2541 : vec4<f32> = u_xlat13;
            let x_2543 : vec4<f32> = u_xlat10;
            let x_2545 : vec3<f32> = (vec3<f32>(x_2541.x, x_2541.z, x_2541.w) / vec3<f32>(x_2543.z, x_2543.w, x_2543.y));
            let x_2546 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2550 : vec3<f32> = (vec3<f32>(x_2548.x, x_2548.y, x_2548.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2551 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
            let x_2553 : vec4<f32> = u_xlat14;
            let x_2555 : vec4<f32> = u_xlat9;
            let x_2557 : vec3<f32> = (vec3<f32>(x_2553.z, x_2553.y, x_2553.w) / vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
            let x_2558 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat12;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2560.x, x_2560.y, x_2560.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2563 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat11;
            let x_2568 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2565.y, x_2565.x, x_2565.z) * vec3<f32>(x_2568.x, x_2568.x, x_2568.x));
            let x_2571 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat12;
            let x_2576 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2578 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.y, x_2573.z) * vec3<f32>(x_2576.y, x_2576.y, x_2576.y));
            let x_2579 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
            let x_2582 : f32 = u_xlat12.x;
            u_xlat11.w = x_2582;
            let x_2584 : vec2<f32> = u_xlat51;
            let x_2587 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2590 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2584.x, x_2584.y, x_2584.x, x_2584.y) * vec4<f32>(x_2587.x, x_2587.y, x_2587.x, x_2587.y)) + vec4<f32>(x_2590.y, x_2590.w, x_2590.x, x_2590.w));
            let x_2593 : vec2<f32> = u_xlat51;
            let x_2595 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2598 : vec4<f32> = u_xlat11;
            let x_2600 : vec2<f32> = ((x_2593 * vec2<f32>(x_2595.x, x_2595.y)) + vec2<f32>(x_2598.z, x_2598.w));
            let x_2601 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2604 : f32 = u_xlat11.y;
            u_xlat12.w = x_2604;
            let x_2606 : vec4<f32> = u_xlat12;
            let x_2607 : vec2<f32> = vec2<f32>(x_2606.y, x_2606.z);
            let x_2608 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2608.x, x_2607.x, x_2608.z, x_2607.y);
            let x_2610 : vec2<f32> = u_xlat51;
            let x_2613 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) * vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y)) + vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2616.y));
            let x_2619 : vec2<f32> = u_xlat51;
            let x_2622 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y) * vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y)) + vec4<f32>(x_2625.w, x_2625.y, x_2625.w, x_2625.z));
            let x_2628 : vec2<f32> = u_xlat51;
            let x_2631 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2634 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y) * vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y)) + vec4<f32>(x_2634.x, x_2634.w, x_2634.z, x_2634.w));
            let x_2637 : vec4<f32> = u_xlat9;
            let x_2639 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2637.x, x_2637.x, x_2637.x, x_2637.y) * vec4<f32>(x_2639.z, x_2639.w, x_2639.y, x_2639.z));
            let x_2642 : vec4<f32> = u_xlat9;
            let x_2644 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2642.y, x_2642.y, x_2642.z, x_2642.z) * x_2644);
            let x_2647 : f32 = u_xlat9.z;
            let x_2649 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2647 * x_2649);
            let x_2653 : vec4<f32> = u_xlat13;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.x, x_2653.y);
            let x_2656 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec34;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat74 = x_2665;
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2668 : vec2<f32> = vec2<f32>(x_2667.z, x_2667.w);
            let x_2670 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2668.x, x_2668.y, x_2670);
            let x_2678 : vec3<f32> = txVec35;
            let x_2680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2678.xy, x_2678.z);
            u_xlat75 = x_2680;
            let x_2681 : f32 = u_xlat75;
            let x_2683 : f32 = u_xlat16.y;
            u_xlat75 = (x_2681 * x_2683);
            let x_2686 : f32 = u_xlat16.x;
            let x_2687 : f32 = u_xlat74;
            let x_2689 : f32 = u_xlat75;
            u_xlat74 = ((x_2686 * x_2687) + x_2689);
            let x_2692 : vec4<f32> = u_xlat14;
            let x_2693 : vec2<f32> = vec2<f32>(x_2692.x, x_2692.y);
            let x_2695 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2693.x, x_2693.y, x_2695);
            let x_2702 : vec3<f32> = txVec36;
            let x_2704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
            u_xlat75 = x_2704;
            let x_2706 : f32 = u_xlat16.z;
            let x_2707 : f32 = u_xlat75;
            let x_2709 : f32 = u_xlat74;
            u_xlat74 = ((x_2706 * x_2707) + x_2709);
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2713 : vec2<f32> = vec2<f32>(x_2712.x, x_2712.y);
            let x_2715 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2713.x, x_2713.y, x_2715);
            let x_2722 : vec3<f32> = txVec37;
            let x_2724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2722.xy, x_2722.z);
            u_xlat75 = x_2724;
            let x_2726 : f32 = u_xlat16.w;
            let x_2727 : f32 = u_xlat75;
            let x_2729 : f32 = u_xlat74;
            u_xlat74 = ((x_2726 * x_2727) + x_2729);
            let x_2732 : vec4<f32> = u_xlat15;
            let x_2733 : vec2<f32> = vec2<f32>(x_2732.x, x_2732.y);
            let x_2735 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2733.x, x_2733.y, x_2735);
            let x_2742 : vec3<f32> = txVec38;
            let x_2744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2742.xy, x_2742.z);
            u_xlat75 = x_2744;
            let x_2746 : f32 = u_xlat17.x;
            let x_2747 : f32 = u_xlat75;
            let x_2749 : f32 = u_xlat74;
            u_xlat74 = ((x_2746 * x_2747) + x_2749);
            let x_2752 : vec4<f32> = u_xlat15;
            let x_2753 : vec2<f32> = vec2<f32>(x_2752.z, x_2752.w);
            let x_2755 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
            let x_2762 : vec3<f32> = txVec39;
            let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
            u_xlat75 = x_2764;
            let x_2766 : f32 = u_xlat17.y;
            let x_2767 : f32 = u_xlat75;
            let x_2769 : f32 = u_xlat74;
            u_xlat74 = ((x_2766 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat12;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.z, x_2772.w);
            let x_2775 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec40;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat75 = x_2784;
            let x_2786 : f32 = u_xlat17.z;
            let x_2787 : f32 = u_xlat75;
            let x_2789 : f32 = u_xlat74;
            u_xlat74 = ((x_2786 * x_2787) + x_2789);
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.x, x_2792.y);
            let x_2795 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec41;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat75 = x_2804;
            let x_2806 : f32 = u_xlat17.w;
            let x_2807 : f32 = u_xlat75;
            let x_2809 : f32 = u_xlat74;
            u_xlat74 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat11;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec42;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat75 = x_2824;
            let x_2826 : f32 = u_xlat51.x;
            let x_2827 : f32 = u_xlat75;
            let x_2829 : f32 = u_xlat74;
            u_xlat73 = ((x_2826 * x_2827) + x_2829);
          } else {
            let x_2832 : vec4<f32> = u_xlat8;
            let x_2835 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2832.x, x_2832.y) * vec2<f32>(x_2835.z, x_2835.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2839 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2839);
            let x_2841 : vec4<f32> = u_xlat8;
            let x_2844 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2847 : vec2<f32> = u_xlat51;
            let x_2849 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.y) * vec2<f32>(x_2844.z, x_2844.w)) + -(x_2847));
            let x_2850 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2852.x, x_2852.x, x_2852.y, x_2852.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2855 : vec4<f32> = u_xlat10;
            let x_2857 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2855.x, x_2855.x, x_2855.z, x_2855.z) * vec4<f32>(x_2857.x, x_2857.x, x_2857.z, x_2857.z));
            let x_2860 : vec4<f32> = u_xlat11;
            let x_2862 : vec2<f32> = (vec2<f32>(x_2860.y, x_2860.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2863 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2863.x, x_2862.x, x_2863.z, x_2862.y);
            let x_2865 : vec4<f32> = u_xlat11;
            let x_2868 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2865.x, x_2865.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2868.x, x_2868.y)));
            let x_2872 : vec4<f32> = u_xlat9;
            let x_2875 : vec2<f32> = (-(vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2876 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2875.x, x_2876.y, x_2875.y, x_2876.w);
            let x_2878 : vec4<f32> = u_xlat9;
            let x_2880 : vec2<f32> = min(vec2<f32>(x_2878.x, x_2878.y), vec2<f32>(0.0f, 0.0f));
            let x_2881 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2880.x, x_2880.y, x_2881.z, x_2881.w);
            let x_2883 : vec4<f32> = u_xlat11;
            let x_2886 : vec4<f32> = u_xlat11;
            let x_2889 : vec4<f32> = u_xlat10;
            let x_2891 : vec2<f32> = ((-(vec2<f32>(x_2883.x, x_2883.y)) * vec2<f32>(x_2886.x, x_2886.y)) + vec2<f32>(x_2889.x, x_2889.z));
            let x_2892 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2891.x, x_2892.y, x_2891.y, x_2892.w);
            let x_2894 : vec4<f32> = u_xlat9;
            let x_2896 : vec2<f32> = max(vec2<f32>(x_2894.x, x_2894.y), vec2<f32>(0.0f, 0.0f));
            let x_2897 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2896.x, x_2896.y, x_2897.z, x_2897.w);
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2905 : vec4<f32> = u_xlat10;
            let x_2907 : vec2<f32> = ((-(vec2<f32>(x_2899.x, x_2899.y)) * vec2<f32>(x_2902.x, x_2902.y)) + vec2<f32>(x_2905.y, x_2905.w));
            let x_2908 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2908.x, x_2907.x, x_2908.z, x_2907.y);
            let x_2910 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2910 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2914 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2914 * 0.08163200318813323975f);
            let x_2917 : vec2<f32> = u_xlat55;
            let x_2919 : vec2<f32> = (vec2<f32>(x_2917.y, x_2917.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2920 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
            let x_2922 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2922.x, x_2922.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2926 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2926 * 0.08163200318813323975f);
            let x_2930 : f32 = u_xlat13.y;
            u_xlat11.x = x_2930;
            let x_2932 : vec4<f32> = u_xlat9;
            let x_2935 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2936 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2936.x, x_2935.x, x_2936.z, x_2935.y);
            let x_2938 : vec4<f32> = u_xlat9;
            let x_2941 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2942 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2941.x, x_2942.y, x_2941.y, x_2942.w);
            let x_2945 : f32 = u_xlat55.x;
            u_xlat10.y = x_2945;
            let x_2948 : f32 = u_xlat12.y;
            u_xlat10.w = x_2948;
            let x_2950 : vec4<f32> = u_xlat10;
            let x_2951 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2950 + x_2951);
            let x_2953 : vec4<f32> = u_xlat9;
            let x_2956 : vec2<f32> = ((vec2<f32>(x_2953.y, x_2953.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2957 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2957.x, x_2956.x, x_2957.z, x_2956.y);
            let x_2959 : vec4<f32> = u_xlat9;
            let x_2962 : vec2<f32> = ((vec2<f32>(x_2959.y, x_2959.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2963 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2962.x, x_2963.y, x_2962.y, x_2963.w);
            let x_2966 : f32 = u_xlat55.y;
            u_xlat12.y = x_2966;
            let x_2968 : vec4<f32> = u_xlat12;
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2968 + x_2969);
            let x_2971 : vec4<f32> = u_xlat10;
            let x_2972 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2971 / x_2972);
            let x_2974 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2974 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2976 : vec4<f32> = u_xlat12;
            let x_2977 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2976 / x_2977);
            let x_2979 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2979 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2981 : vec4<f32> = u_xlat10;
            let x_2984 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2981.w, x_2981.x, x_2981.y, x_2981.z) * vec4<f32>(x_2984.x, x_2984.x, x_2984.x, x_2984.x));
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2987.x, x_2987.w, x_2987.y, x_2987.z) * vec4<f32>(x_2990.y, x_2990.y, x_2990.y, x_2990.y));
            let x_2993 : vec4<f32> = u_xlat10;
            let x_2994 : vec3<f32> = vec3<f32>(x_2993.y, x_2993.z, x_2993.w);
            let x_2995 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2994.x, x_2995.y, x_2994.y, x_2994.z);
            let x_2998 : f32 = u_xlat12.x;
            u_xlat13.y = x_2998;
            let x_3000 : vec2<f32> = u_xlat51;
            let x_3003 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_3000.x, x_3000.y, x_3000.x, x_3000.y) * vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y)) + vec4<f32>(x_3006.x, x_3006.y, x_3006.z, x_3006.y));
            let x_3009 : vec2<f32> = u_xlat51;
            let x_3011 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat13;
            let x_3016 : vec2<f32> = ((x_3009 * vec2<f32>(x_3011.x, x_3011.y)) + vec2<f32>(x_3014.w, x_3014.y));
            let x_3017 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3020 : f32 = u_xlat13.y;
            u_xlat10.y = x_3020;
            let x_3023 : f32 = u_xlat12.z;
            u_xlat13.y = x_3023;
            let x_3025 : vec2<f32> = u_xlat51;
            let x_3028 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3031 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3025.x, x_3025.y, x_3025.x, x_3025.y) * vec4<f32>(x_3028.x, x_3028.y, x_3028.x, x_3028.y)) + vec4<f32>(x_3031.x, x_3031.y, x_3031.z, x_3031.y));
            let x_3035 : vec2<f32> = u_xlat51;
            let x_3037 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_3035 * vec2<f32>(x_3037.x, x_3037.y)) + vec2<f32>(x_3040.w, x_3040.y));
            let x_3044 : f32 = u_xlat13.y;
            u_xlat10.z = x_3044;
            let x_3046 : vec2<f32> = u_xlat51;
            let x_3049 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_3046.x, x_3046.y, x_3046.x, x_3046.y) * vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y)) + vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.z));
            let x_3056 : f32 = u_xlat12.w;
            u_xlat13.y = x_3056;
            let x_3058 : vec2<f32> = u_xlat51;
            let x_3061 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_3058.x, x_3058.y, x_3058.x, x_3058.y) * vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y)) + vec4<f32>(x_3064.x, x_3064.y, x_3064.z, x_3064.y));
            let x_3068 : vec2<f32> = u_xlat51;
            let x_3070 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3073 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_3068 * vec2<f32>(x_3070.x, x_3070.y)) + vec2<f32>(x_3073.w, x_3073.y));
            let x_3077 : f32 = u_xlat13.y;
            u_xlat10.w = x_3077;
            let x_3080 : vec2<f32> = u_xlat51;
            let x_3082 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_3080 * vec2<f32>(x_3082.x, x_3082.y)) + vec2<f32>(x_3085.x, x_3085.w));
            let x_3088 : vec4<f32> = u_xlat13;
            let x_3089 : vec3<f32> = vec3<f32>(x_3088.x, x_3088.z, x_3088.w);
            let x_3090 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3089.x, x_3090.y, x_3089.y, x_3089.z);
            let x_3092 : vec2<f32> = u_xlat51;
            let x_3095 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y) * vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y)) + vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3098.y));
            let x_3102 : vec2<f32> = u_xlat51;
            let x_3104 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3107 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3102 * vec2<f32>(x_3104.x, x_3104.y)) + vec2<f32>(x_3107.w, x_3107.y));
            let x_3111 : f32 = u_xlat10.x;
            u_xlat12.x = x_3111;
            let x_3113 : vec2<f32> = u_xlat51;
            let x_3115 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3113 * vec2<f32>(x_3115.x, x_3115.y)) + vec2<f32>(x_3118.x, x_3118.y));
            let x_3122 : vec4<f32> = u_xlat9;
            let x_3124 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3122.x, x_3122.x, x_3122.x, x_3122.x) * x_3124);
            let x_3127 : vec4<f32> = u_xlat9;
            let x_3129 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3127.y, x_3127.y, x_3127.y, x_3127.y) * x_3129);
            let x_3132 : vec4<f32> = u_xlat9;
            let x_3134 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3132.z, x_3132.z, x_3132.z, x_3132.z) * x_3134);
            let x_3136 : vec4<f32> = u_xlat9;
            let x_3138 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3136.w, x_3136.w, x_3136.w, x_3136.w) * x_3138);
            let x_3141 : vec4<f32> = u_xlat14;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.x, x_3141.y);
            let x_3144 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec43;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat75 = x_3153;
            let x_3155 : vec4<f32> = u_xlat14;
            let x_3156 : vec2<f32> = vec2<f32>(x_3155.z, x_3155.w);
            let x_3158 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
            let x_3166 : vec3<f32> = txVec44;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat76 = x_3168;
            let x_3169 : f32 = u_xlat76;
            let x_3171 : f32 = u_xlat20.y;
            u_xlat76 = (x_3169 * x_3171);
            let x_3174 : f32 = u_xlat20.x;
            let x_3175 : f32 = u_xlat75;
            let x_3177 : f32 = u_xlat76;
            u_xlat75 = ((x_3174 * x_3175) + x_3177);
            let x_3180 : vec4<f32> = u_xlat15;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
            let x_3183 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec45;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat76 = x_3192;
            let x_3194 : f32 = u_xlat20.z;
            let x_3195 : f32 = u_xlat76;
            let x_3197 : f32 = u_xlat75;
            u_xlat75 = ((x_3194 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat17;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.x, x_3200.y);
            let x_3203 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec46;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat76 = x_3212;
            let x_3214 : f32 = u_xlat20.w;
            let x_3215 : f32 = u_xlat76;
            let x_3217 : f32 = u_xlat75;
            u_xlat75 = ((x_3214 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat16;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec47;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat76 = x_3232;
            let x_3234 : f32 = u_xlat21.x;
            let x_3235 : f32 = u_xlat76;
            let x_3237 : f32 = u_xlat75;
            u_xlat75 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat16;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.z, x_3240.w);
            let x_3243 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec48;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat76 = x_3252;
            let x_3254 : f32 = u_xlat21.y;
            let x_3255 : f32 = u_xlat76;
            let x_3257 : f32 = u_xlat75;
            u_xlat75 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec2<f32> = u_xlat61;
            let x_3262 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec49;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat76 = x_3271;
            let x_3273 : f32 = u_xlat21.z;
            let x_3274 : f32 = u_xlat76;
            let x_3276 : f32 = u_xlat75;
            u_xlat75 = ((x_3273 * x_3274) + x_3276);
            let x_3279 : vec4<f32> = u_xlat17;
            let x_3280 : vec2<f32> = vec2<f32>(x_3279.z, x_3279.w);
            let x_3282 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec50;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat76 = x_3291;
            let x_3293 : f32 = u_xlat21.w;
            let x_3294 : f32 = u_xlat76;
            let x_3296 : f32 = u_xlat75;
            u_xlat75 = ((x_3293 * x_3294) + x_3296);
            let x_3299 : vec4<f32> = u_xlat18;
            let x_3300 : vec2<f32> = vec2<f32>(x_3299.x, x_3299.y);
            let x_3302 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3300.x, x_3300.y, x_3302);
            let x_3309 : vec3<f32> = txVec51;
            let x_3311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3309.xy, x_3309.z);
            u_xlat76 = x_3311;
            let x_3313 : f32 = u_xlat22.x;
            let x_3314 : f32 = u_xlat76;
            let x_3316 : f32 = u_xlat75;
            u_xlat75 = ((x_3313 * x_3314) + x_3316);
            let x_3319 : vec4<f32> = u_xlat18;
            let x_3320 : vec2<f32> = vec2<f32>(x_3319.z, x_3319.w);
            let x_3322 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec52;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat76 = x_3331;
            let x_3333 : f32 = u_xlat22.y;
            let x_3334 : f32 = u_xlat76;
            let x_3336 : f32 = u_xlat75;
            u_xlat75 = ((x_3333 * x_3334) + x_3336);
            let x_3339 : vec2<f32> = u_xlat33;
            let x_3341 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec53;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat76 = x_3350;
            let x_3352 : f32 = u_xlat22.z;
            let x_3353 : f32 = u_xlat76;
            let x_3355 : f32 = u_xlat75;
            u_xlat75 = ((x_3352 * x_3353) + x_3355);
            let x_3358 : vec2<f32> = u_xlat19;
            let x_3360 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec54;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat76 = x_3369;
            let x_3371 : f32 = u_xlat22.w;
            let x_3372 : f32 = u_xlat76;
            let x_3374 : f32 = u_xlat75;
            u_xlat75 = ((x_3371 * x_3372) + x_3374);
            let x_3377 : vec4<f32> = u_xlat13;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec55;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat76 = x_3389;
            let x_3391 : f32 = u_xlat9.x;
            let x_3392 : f32 = u_xlat76;
            let x_3394 : f32 = u_xlat75;
            u_xlat75 = ((x_3391 * x_3392) + x_3394);
            let x_3397 : vec4<f32> = u_xlat13;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.z, x_3397.w);
            let x_3400 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec56;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat76 = x_3409;
            let x_3411 : f32 = u_xlat9.y;
            let x_3412 : f32 = u_xlat76;
            let x_3414 : f32 = u_xlat75;
            u_xlat75 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec2<f32> = u_xlat58;
            let x_3419 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3417.x, x_3417.y, x_3419);
            let x_3426 : vec3<f32> = txVec57;
            let x_3428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3426.xy, x_3426.z);
            u_xlat76 = x_3428;
            let x_3430 : f32 = u_xlat9.z;
            let x_3431 : f32 = u_xlat76;
            let x_3433 : f32 = u_xlat75;
            u_xlat75 = ((x_3430 * x_3431) + x_3433);
            let x_3436 : vec2<f32> = u_xlat51;
            let x_3438 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec58;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat51.x = x_3447;
            let x_3450 : f32 = u_xlat9.w;
            let x_3452 : f32 = u_xlat51.x;
            let x_3454 : f32 = u_xlat75;
            u_xlat73 = ((x_3450 * x_3452) + x_3454);
          }
        }
      } else {
        let x_3458 : vec4<f32> = u_xlat8;
        let x_3459 : vec2<f32> = vec2<f32>(x_3458.x, x_3458.y);
        let x_3461 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
        let x_3468 : vec3<f32> = txVec59;
        let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
        u_xlat73 = x_3470;
      }
      let x_3471 : i32 = u_xlati71;
      let x_3473 : f32 = x_247.x_AdditionalShadowParams[x_3471].x;
      u_xlat51.x = (1.0f + -(x_3473));
      let x_3477 : f32 = u_xlat73;
      let x_3478 : i32 = u_xlati71;
      let x_3480 : f32 = x_247.x_AdditionalShadowParams[x_3478].x;
      let x_3483 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3477 * x_3480) + x_3483);
      let x_3486 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3486);
      let x_3490 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3490 >= 1.0f);
      let x_3492 : bool = u_xlatb74;
      let x_3493 : bool = u_xlatb51;
      u_xlatb51 = (x_3492 | x_3493);
      let x_3495 : bool = u_xlatb51;
      let x_3496 : f32 = u_xlat73;
      u_xlat73 = select(x_3496, 1.0f, x_3495);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3499 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3499) + 1.0f);
    let x_3503 : f32 = u_xlat69;
    let x_3505 : f32 = u_xlat51.x;
    let x_3507 : f32 = u_xlat73;
    u_xlat73 = ((x_3503 * x_3505) + x_3507);
    let x_3510 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3510 & 31i)));
    let x_3514 : i32 = u_xlati51;
    let x_3517 : f32 = x_1827.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3514) & bitcast<u32>(x_3517)));
    let x_3521 : i32 = u_xlati51;
    if ((x_3521 != 0i)) {
      let x_3525 : i32 = u_xlati71;
      let x_3527 : f32 = x_1827.x_AdditionalLightsLightTypes[x_3525].el;
      u_xlati51 = i32(x_3527);
      let x_3530 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3530 != 0i));
      let x_3534 : i32 = u_xlati71;
      u_xlati75 = (x_3534 << bitcast<u32>(2i));
      let x_3536 : i32 = u_xlati74;
      if ((x_3536 != 0i)) {
        let x_3540 : vec3<f32> = vs_TEXCOORD1;
        let x_3542 : i32 = u_xlati75;
        let x_3545 : i32 = u_xlati75;
        let x_3549 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3542 + 1i) / 4i)][((x_3545 + 1i) % 4i)];
        let x_3551 : vec3<f32> = (vec3<f32>(x_3540.y, x_3540.y, x_3540.y) * vec3<f32>(x_3549.x, x_3549.y, x_3549.w));
        let x_3552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3551.x, x_3551.y, x_3551.z, x_3552.w);
        let x_3554 : i32 = u_xlati75;
        let x_3556 : i32 = u_xlati75;
        let x_3559 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[(x_3554 / 4i)][(x_3556 % 4i)];
        let x_3561 : vec3<f32> = vs_TEXCOORD1;
        let x_3564 : vec4<f32> = u_xlat8;
        let x_3566 : vec3<f32> = ((vec3<f32>(x_3559.x, x_3559.y, x_3559.w) * vec3<f32>(x_3561.x, x_3561.x, x_3561.x)) + vec3<f32>(x_3564.x, x_3564.y, x_3564.z));
        let x_3567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3566.x, x_3566.y, x_3566.z, x_3567.w);
        let x_3569 : i32 = u_xlati75;
        let x_3572 : i32 = u_xlati75;
        let x_3576 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3569 + 2i) / 4i)][((x_3572 + 2i) % 4i)];
        let x_3578 : vec3<f32> = vs_TEXCOORD1;
        let x_3581 : vec4<f32> = u_xlat8;
        let x_3583 : vec3<f32> = ((vec3<f32>(x_3576.x, x_3576.y, x_3576.w) * vec3<f32>(x_3578.z, x_3578.z, x_3578.z)) + vec3<f32>(x_3581.x, x_3581.y, x_3581.z));
        let x_3584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3583.x, x_3583.y, x_3583.z, x_3584.w);
        let x_3586 : vec4<f32> = u_xlat8;
        let x_3588 : i32 = u_xlati75;
        let x_3591 : i32 = u_xlati75;
        let x_3595 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3588 + 3i) / 4i)][((x_3591 + 3i) % 4i)];
        let x_3597 : vec3<f32> = (vec3<f32>(x_3586.x, x_3586.y, x_3586.z) + vec3<f32>(x_3595.x, x_3595.y, x_3595.w));
        let x_3598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
        let x_3600 : vec4<f32> = u_xlat8;
        let x_3602 : vec4<f32> = u_xlat8;
        let x_3604 : vec2<f32> = (vec2<f32>(x_3600.x, x_3600.y) / vec2<f32>(x_3602.z, x_3602.z));
        let x_3605 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3604.x, x_3604.y, x_3605.z, x_3605.w);
        let x_3607 : vec4<f32> = u_xlat8;
        let x_3610 : vec2<f32> = ((vec2<f32>(x_3607.x, x_3607.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3611 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3610.x, x_3610.y, x_3611.z, x_3611.w);
        let x_3613 : vec4<f32> = u_xlat8;
        let x_3617 : vec2<f32> = clamp(vec2<f32>(x_3613.x, x_3613.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3617.x, x_3617.y, x_3618.z, x_3618.w);
        let x_3620 : i32 = u_xlati71;
        let x_3622 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3620];
        let x_3624 : vec4<f32> = u_xlat8;
        let x_3627 : i32 = u_xlati71;
        let x_3629 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3627];
        let x_3631 : vec2<f32> = ((vec2<f32>(x_3622.x, x_3622.y) * vec2<f32>(x_3624.x, x_3624.y)) + vec2<f32>(x_3629.z, x_3629.w));
        let x_3632 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3631.x, x_3631.y, x_3632.z, x_3632.w);
      } else {
        let x_3635 : i32 = u_xlati51;
        u_xlatb51 = (x_3635 == 1i);
        let x_3637 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3637);
        let x_3639 : i32 = u_xlati51;
        if ((x_3639 != 0i)) {
          let x_3643 : vec3<f32> = vs_TEXCOORD1;
          let x_3645 : i32 = u_xlati75;
          let x_3648 : i32 = u_xlati75;
          let x_3652 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3645 + 1i) / 4i)][((x_3648 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3643.y, x_3643.y) * vec2<f32>(x_3652.x, x_3652.y));
          let x_3655 : i32 = u_xlati75;
          let x_3657 : i32 = u_xlati75;
          let x_3660 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[(x_3655 / 4i)][(x_3657 % 4i)];
          let x_3662 : vec3<f32> = vs_TEXCOORD1;
          let x_3665 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3660.x, x_3660.y) * vec2<f32>(x_3662.x, x_3662.x)) + x_3665);
          let x_3667 : i32 = u_xlati75;
          let x_3670 : i32 = u_xlati75;
          let x_3674 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3667 + 2i) / 4i)][((x_3670 + 2i) % 4i)];
          let x_3676 : vec3<f32> = vs_TEXCOORD1;
          let x_3679 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3674.x, x_3674.y) * vec2<f32>(x_3676.z, x_3676.z)) + x_3679);
          let x_3681 : vec2<f32> = u_xlat51;
          let x_3682 : i32 = u_xlati75;
          let x_3685 : i32 = u_xlati75;
          let x_3689 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3682 + 3i) / 4i)][((x_3685 + 3i) % 4i)];
          u_xlat51 = (x_3681 + vec2<f32>(x_3689.x, x_3689.y));
          let x_3692 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3692 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3695 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3695);
          let x_3697 : i32 = u_xlati71;
          let x_3699 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3697];
          let x_3701 : vec2<f32> = u_xlat51;
          let x_3703 : i32 = u_xlati71;
          let x_3705 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3703];
          let x_3707 : vec2<f32> = ((vec2<f32>(x_3699.x, x_3699.y) * x_3701) + vec2<f32>(x_3705.z, x_3705.w));
          let x_3708 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3707.x, x_3707.y, x_3708.z, x_3708.w);
        } else {
          let x_3711 : vec3<f32> = vs_TEXCOORD1;
          let x_3713 : i32 = u_xlati75;
          let x_3716 : i32 = u_xlati75;
          let x_3720 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3713 + 1i) / 4i)][((x_3716 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3711.y, x_3711.y, x_3711.y, x_3711.y) * x_3720);
          let x_3722 : i32 = u_xlati75;
          let x_3724 : i32 = u_xlati75;
          let x_3727 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[(x_3722 / 4i)][(x_3724 % 4i)];
          let x_3728 : vec3<f32> = vs_TEXCOORD1;
          let x_3731 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3727 * vec4<f32>(x_3728.x, x_3728.x, x_3728.x, x_3728.x)) + x_3731);
          let x_3733 : i32 = u_xlati75;
          let x_3736 : i32 = u_xlati75;
          let x_3740 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3733 + 2i) / 4i)][((x_3736 + 2i) % 4i)];
          let x_3741 : vec3<f32> = vs_TEXCOORD1;
          let x_3744 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3740 * vec4<f32>(x_3741.z, x_3741.z, x_3741.z, x_3741.z)) + x_3744);
          let x_3746 : vec4<f32> = u_xlat9;
          let x_3747 : i32 = u_xlati75;
          let x_3750 : i32 = u_xlati75;
          let x_3754 : vec4<f32> = x_1827.x_AdditionalLightsWorldToLights[((x_3747 + 3i) / 4i)][((x_3750 + 3i) % 4i)];
          u_xlat9 = (x_3746 + x_3754);
          let x_3756 : vec4<f32> = u_xlat9;
          let x_3758 : vec4<f32> = u_xlat9;
          let x_3760 : vec3<f32> = (vec3<f32>(x_3756.x, x_3756.y, x_3756.z) / vec3<f32>(x_3758.w, x_3758.w, x_3758.w));
          let x_3761 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
          let x_3763 : vec4<f32> = u_xlat9;
          let x_3765 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3763.x, x_3763.y, x_3763.z), vec3<f32>(x_3765.x, x_3765.y, x_3765.z));
          let x_3770 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3770);
          let x_3773 : vec2<f32> = u_xlat51;
          let x_3775 : vec4<f32> = u_xlat9;
          let x_3777 : vec3<f32> = (vec3<f32>(x_3773.x, x_3773.x, x_3773.x) * vec3<f32>(x_3775.x, x_3775.y, x_3775.z));
          let x_3778 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3777.x, x_3777.y, x_3777.z, x_3778.w);
          let x_3780 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3780.x, x_3780.y, x_3780.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3787 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3787, 0.00000099999999747524f);
          let x_3792 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3792);
          let x_3795 : vec2<f32> = u_xlat51;
          let x_3797 : vec4<f32> = u_xlat9;
          let x_3799 : vec3<f32> = (vec3<f32>(x_3795.x, x_3795.x, x_3795.x) * vec3<f32>(x_3797.z, x_3797.x, x_3797.y));
          let x_3800 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3799.x, x_3799.y, x_3799.z, x_3800.w);
          let x_3803 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3803);
          let x_3807 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3807, 0.0f, 1.0f);
          let x_3811 : vec4<f32> = u_xlat10;
          let x_3813 : vec4<bool> = (vec4<f32>(x_3811.y, x_3811.z, x_3811.y, x_3811.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3813.x, x_3813.y);
          let x_3816 : bool = u_xlatb54.x;
          if (x_3816) {
            let x_3821 : f32 = u_xlat10.x;
            x_3817 = x_3821;
          } else {
            let x_3824 : f32 = u_xlat10.x;
            x_3817 = -(x_3824);
          }
          let x_3826 : f32 = x_3817;
          u_xlat54.x = x_3826;
          let x_3829 : bool = u_xlatb54.y;
          if (x_3829) {
            let x_3834 : f32 = u_xlat10.x;
            x_3830 = x_3834;
          } else {
            let x_3837 : f32 = u_xlat10.x;
            x_3830 = -(x_3837);
          }
          let x_3839 : f32 = x_3830;
          u_xlat54.y = x_3839;
          let x_3841 : vec4<f32> = u_xlat9;
          let x_3843 : vec2<f32> = u_xlat51;
          let x_3846 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3841.x, x_3841.y) * vec2<f32>(x_3843.x, x_3843.x)) + x_3846);
          let x_3848 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3848 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3851 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3851, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3855 : i32 = u_xlati71;
          let x_3857 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3855];
          let x_3859 : vec2<f32> = u_xlat51;
          let x_3861 : i32 = u_xlati71;
          let x_3863 : vec4<f32> = x_1827.x_AdditionalLightsCookieAtlasUVRects[x_3861];
          let x_3865 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.y) * x_3859) + vec2<f32>(x_3863.z, x_3863.w));
          let x_3866 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3865.x, x_3865.y, x_3866.z, x_3866.w);
        }
      }
      let x_3873 : vec4<f32> = u_xlat8;
      let x_3875 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3873.x, x_3873.y), 0.0f);
      u_xlat8 = x_3875;
      let x_3877 : bool = u_xlatb5.y;
      if (x_3877) {
        let x_3882 : f32 = u_xlat8.w;
        x_3878 = x_3882;
      } else {
        let x_3885 : f32 = u_xlat8.x;
        x_3878 = x_3885;
      }
      let x_3886 : f32 = x_3878;
      u_xlat51.x = x_3886;
      let x_3889 : bool = u_xlatb5.x;
      if (x_3889) {
        let x_3893 : vec4<f32> = u_xlat8;
        x_3890 = vec3<f32>(x_3893.x, x_3893.y, x_3893.z);
      } else {
        let x_3896 : vec2<f32> = u_xlat51;
        x_3890 = vec3<f32>(x_3896.x, x_3896.x, x_3896.x);
      }
      let x_3898 : vec3<f32> = x_3890;
      let x_3899 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3905 : vec4<f32> = u_xlat8;
    let x_3907 : i32 = u_xlati71;
    let x_3909 : vec4<f32> = x_2079.x_AdditionalLightsColor[x_3907];
    let x_3911 : vec3<f32> = (vec3<f32>(x_3905.x, x_3905.y, x_3905.z) * vec3<f32>(x_3909.x, x_3909.y, x_3909.z));
    let x_3912 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3911.x, x_3911.y, x_3911.z, x_3912.w);
    let x_3914 : f32 = u_xlat72;
    let x_3915 : f32 = u_xlat73;
    u_xlat71 = (x_3914 * x_3915);
    let x_3917 : f32 = u_xlat71;
    let x_3919 : vec4<f32> = u_xlat8;
    let x_3921 : vec3<f32> = (vec3<f32>(x_3917, x_3917, x_3917) * vec3<f32>(x_3919.x, x_3919.y, x_3919.z));
    let x_3922 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3921.x, x_3921.y, x_3921.z, x_3922.w);
    let x_3924 : vec3<f32> = u_xlat2;
    let x_3925 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3924, vec3<f32>(x_3925.x, x_3925.y, x_3925.z));
    let x_3928 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3928, 0.0f, 1.0f);
    let x_3930 : f32 = u_xlat71;
    let x_3932 : vec4<f32> = u_xlat8;
    let x_3934 : vec3<f32> = (vec3<f32>(x_3930, x_3930, x_3930) * vec3<f32>(x_3932.x, x_3932.y, x_3932.z));
    let x_3935 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3934.x, x_3934.y, x_3934.z, x_3935.w);
    let x_3937 : vec4<f32> = u_xlat1;
    let x_3939 : vec4<f32> = u_xlat7;
    let x_3941 : vec3<f32> = (vec3<f32>(x_3937.y, x_3937.z, x_3937.w) * vec3<f32>(x_3939.x, x_3939.y, x_3939.z));
    let x_3942 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
    let x_3944 : vec4<f32> = u_xlat7;
    let x_3946 : vec4<f32> = u_xlat0;
    let x_3949 : vec4<f32> = u_xlat6;
    let x_3951 : vec3<f32> = ((vec3<f32>(x_3944.x, x_3944.y, x_3944.z) * vec3<f32>(x_3946.x, x_3946.x, x_3946.x)) + vec3<f32>(x_3949.x, x_3949.y, x_3949.z));
    let x_3952 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3951.x, x_3951.y, x_3951.z, x_3952.w);

    continuing {
      let x_3954 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3954 + bitcast<u32>(1i));
    }
  }
  let x_3956 : vec4<f32> = u_xlat4;
  let x_3958 : vec4<f32> = u_xlat1;
  let x_3961 : vec4<f32> = u_xlat3;
  let x_3963 : vec3<f32> = ((vec3<f32>(x_3956.x, x_3956.y, x_3956.z) * vec3<f32>(x_3958.y, x_3958.z, x_3958.w)) + vec3<f32>(x_3961.x, x_3961.y, x_3961.z));
  let x_3964 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3963.x, x_3963.y, x_3963.z, x_3964.w);
  let x_3968 : vec4<f32> = u_xlat6;
  let x_3970 : vec4<f32> = u_xlat1;
  let x_3972 : vec3<f32> = (vec3<f32>(x_3968.x, x_3968.y, x_3968.z) + vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
  let x_3973 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
  let x_3976 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3976 == 1.0f);
  let x_3978 : bool = u_xlatb23;
  let x_3979 : bool = u_xlatb46;
  u_xlatb23 = (x_3978 | x_3979);
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
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


