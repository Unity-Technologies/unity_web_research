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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb66 : bool;

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

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1972 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2109 : f32;
  var x_2119 : f32;
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
  var x_3462 : f32;
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
  u_xlat22.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat66;
  let x_107 : f32 = u_xlat44;
  u_xlat44 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat44;
  u_xlat44 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat22.x;
  let x_115 : f32 = u_xlat44;
  u_xlat22.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat22.x;
  u_xlat22.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb44;
  if (x_131) {
    let x_136 : f32 = u_xlat22.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat22.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat22.x;
  u_xlatb22 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb22;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat22;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat22.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb66 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb66;
  if (x_191) {
    let x_196 : f32 = u_xlat22.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat22.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat22.x = x_203;
  let x_206 : f32 = u_xlat22.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat22.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat22.x;
  u_xlatb22 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb22;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat22;
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
  u_xlat22.x = dot(x_361, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_369) + 4.0f);
  let x_376 : f32 = u_xlat22.x;
  u_xlatu22 = u32(x_376);
  let x_380 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_380) << bitcast<u32>(2i));
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : i32 = u_xlati22;
  let x_388 : i32 = u_xlati22;
  let x_392 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_385 + 1i) / 4i)][((x_388 + 1i) % 4i)];
  let x_394 : vec3<f32> = (vec3<f32>(x_383.y, x_383.y, x_383.y) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : i32 = u_xlati22;
  let x_399 : i32 = u_xlati22;
  let x_402 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_397 / 4i)][(x_399 % 4i)];
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_407 : vec4<f32> = u_xlat3;
  let x_409 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.x, x_404.x, x_404.x)) + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : i32 = u_xlati22;
  let x_415 : i32 = u_xlati22;
  let x_419 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_412 + 2i) / 4i)][((x_415 + 2i) % 4i)];
  let x_421 : vec3<f32> = vs_TEXCOORD1;
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(x_421.z, x_421.z, x_421.z)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat3;
  let x_431 : i32 = u_xlati22;
  let x_434 : i32 = u_xlati22;
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
  u_xlat22.x = (x_486 * x_488);
  let x_492 : f32 = u_xlat2.x;
  let x_494 : f32 = u_xlat2.x;
  let x_497 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_492 * x_494) + -(x_497));
  let x_503 : vec4<f32> = x_186.unity_SHC;
  let x_505 : vec3<f32> = u_xlat22;
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
  u_xlatb22 = (0.0f < x_527);
  let x_529 : bool = u_xlatb22;
  if (x_529) {
    let x_533 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb22 = (x_533 == 1.0f);
    let x_535 : bool = u_xlatb22;
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
      u_xlat22.x = dot(x_615, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_622 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb66 = (x_622 == 2.0f);
      let x_624 : bool = u_xlatb66;
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
        u_xlat49 = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.z, x_648.w)) + -(vec2<f32>(x_651.x, x_651.y)));
        let x_655 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_655.x, x_655.x, x_655.y, x_655.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_660 : vec4<f32> = u_xlat6;
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_660.x, x_660.x, x_660.z, x_660.z) * vec4<f32>(x_662.x, x_662.x, x_662.z, x_662.z));
        let x_665 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_670 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_670.w);
        let x_672 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = u_xlat49;
        let x_677 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.z) * vec2<f32>(0.5f, 0.5f)) + -(x_675));
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_681 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_681) + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec2<f32> = u_xlat49;
        let x_688 : vec2<f32> = min(x_686, vec2<f32>(0.0f, 0.0f));
        let x_689 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = u_xlat51;
        let x_698 : vec2<f32> = ((-(vec2<f32>(x_691.x, x_691.y)) * vec2<f32>(x_694.x, x_694.y)) + x_697);
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_701 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_701, vec2<f32>(0.0f, 0.0f));
        let x_703 : vec2<f32> = u_xlat49;
        let x_705 : vec2<f32> = u_xlat49;
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_703) * x_705) + vec2<f32>(x_707.y, x_707.w));
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec2<f32> = (vec2<f32>(x_710.x, x_710.y) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_715 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_715 + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec4<f32> = u_xlat7;
        let x_722 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_723 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
        let x_725 : vec2<f32> = u_xlat51;
        let x_726 : vec2<f32> = (x_725 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat8;
        let x_731 : vec2<f32> = (vec2<f32>(x_729.x, x_729.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_735 : vec2<f32> = u_xlat49;
        let x_736 : vec2<f32> = (x_735 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_739.y, x_739.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_743 : f32 = u_xlat8.x;
        u_xlat9.z = x_743;
        let x_746 : f32 = u_xlat49.x;
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
        let x_764 : f32 = u_xlat49.y;
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
        u_xlat49 = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.x, x_838.y)) + vec2<f32>(x_841.z, x_841.w));
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
        u_xlat66 = (x_890 * x_892);
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
        u_xlat68 = x_923;
        let x_924 : f32 = u_xlat68;
        let x_926 : f32 = u_xlat12.y;
        u_xlat68 = (x_924 * x_926);
        let x_929 : f32 = u_xlat12.x;
        let x_931 : f32 = u_xlat1.x;
        let x_933 : f32 = u_xlat68;
        u_xlat1.x = ((x_929 * x_931) + x_933);
        let x_937 : vec2<f32> = u_xlat49;
        let x_939 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_946 : vec3<f32> = txVec6;
        let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_946.xy, x_946.z);
        u_xlat68 = x_948;
        let x_950 : f32 = u_xlat12.z;
        let x_951 : f32 = u_xlat68;
        let x_954 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_950 * x_951) + x_954);
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
        let x_961 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec7;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
        u_xlat68 = x_970;
        let x_972 : f32 = u_xlat12.w;
        let x_973 : f32 = u_xlat68;
        let x_976 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_972 * x_973) + x_976);
        let x_980 : vec4<f32> = u_xlat10;
        let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
        let x_983 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec8;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat68 = x_992;
        let x_994 : f32 = u_xlat13.x;
        let x_995 : f32 = u_xlat68;
        let x_998 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_994 * x_995) + x_998);
        let x_1002 : vec4<f32> = u_xlat10;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1012 : vec3<f32> = txVec9;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
        u_xlat68 = x_1014;
        let x_1016 : f32 = u_xlat13.y;
        let x_1017 : f32 = u_xlat68;
        let x_1020 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1016 * x_1017) + x_1020);
        let x_1024 : vec4<f32> = u_xlat8;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec10;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
        u_xlat68 = x_1036;
        let x_1038 : f32 = u_xlat13.z;
        let x_1039 : f32 = u_xlat68;
        let x_1042 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1038 * x_1039) + x_1042);
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec11;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat68 = x_1058;
        let x_1060 : f32 = u_xlat13.w;
        let x_1061 : f32 = u_xlat68;
        let x_1064 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1060 * x_1061) + x_1064);
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec12;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1078.xy, x_1078.z);
        u_xlat68 = x_1080;
        let x_1081 : f32 = u_xlat66;
        let x_1082 : f32 = u_xlat68;
        let x_1085 : f32 = u_xlat1.x;
        u_xlat22.x = ((x_1081 * x_1082) + x_1085);
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
        u_xlat49 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.z, x_1106.w)) + -(vec2<f32>(x_1109.x, x_1109.y)));
        let x_1113 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1113.x, x_1113.x, x_1113.y, x_1113.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1116.x, x_1116.x, x_1116.z, x_1116.z) * vec4<f32>(x_1118.x, x_1118.x, x_1118.z, x_1118.z));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1125 : vec2<f32> = (vec2<f32>(x_1121.y, x_1121.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1126.x, x_1125.x, x_1126.z, x_1125.y);
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1131 : vec2<f32> = u_xlat49;
        let x_1133 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1131));
        let x_1134 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat49;
        let x_1138 : vec2<f32> = (-(x_1136) + vec2<f32>(1.0f, 1.0f));
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1141, vec2<f32>(0.0f, 0.0f));
        let x_1143 : vec2<f32> = u_xlat51;
        let x_1145 : vec2<f32> = u_xlat51;
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1149 : vec2<f32> = ((-(x_1143) * x_1145) + vec2<f32>(x_1147.x, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1152, vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec2<f32> = u_xlat51;
        let x_1157 : vec2<f32> = u_xlat51;
        let x_1159 : vec4<f32> = u_xlat6;
        let x_1161 : vec2<f32> = ((-(x_1155) * x_1157) + vec2<f32>(x_1159.y, x_1159.w));
        let x_1162 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1161.x, x_1162.y, x_1161.y);
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.y) + vec2<f32>(2.0f, 2.0f));
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec3<f32> = u_xlat28;
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
        let x_1195 : vec2<f32> = u_xlat49;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1203 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec2<f32> = u_xlat49;
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
        let x_1221 : vec2<f32> = u_xlat49;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1225.x, x_1224.x, x_1225.z, x_1224.y);
        let x_1227 : vec2<f32> = u_xlat49;
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
        u_xlat49 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.w, x_1287.y));
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
        u_xlat29 = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.w, x_1349.y));
        let x_1353 : f32 = u_xlat10.y;
        u_xlat7.w = x_1353;
        let x_1356 : vec4<f32> = u_xlat5;
        let x_1359 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.w));
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
        u_xlat52 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
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
        u_xlat66 = x_1434;
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
        let x_1458 : f32 = u_xlat66;
        let x_1461 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1457 * x_1458) + x_1461);
        let x_1464 : vec2<f32> = u_xlat49;
        let x_1466 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec15;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat1.x = x_1475;
        let x_1478 : f32 = u_xlat16.z;
        let x_1480 : f32 = u_xlat1.x;
        let x_1482 : f32 = u_xlat66;
        u_xlat66 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat14;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec16;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat1.x = x_1497;
        let x_1500 : f32 = u_xlat16.w;
        let x_1502 : f32 = u_xlat1.x;
        let x_1504 : f32 = u_xlat66;
        u_xlat66 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat12;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec17;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat1.x = x_1519;
        let x_1522 : f32 = u_xlat17.x;
        let x_1524 : f32 = u_xlat1.x;
        let x_1526 : f32 = u_xlat66;
        u_xlat66 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat12;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.z, x_1529.w);
        let x_1532 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec18;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat1.x = x_1541;
        let x_1544 : f32 = u_xlat17.y;
        let x_1546 : f32 = u_xlat1.x;
        let x_1548 : f32 = u_xlat66;
        u_xlat66 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat13;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec19;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat1.x = x_1563;
        let x_1566 : f32 = u_xlat17.z;
        let x_1568 : f32 = u_xlat1.x;
        let x_1570 : f32 = u_xlat66;
        u_xlat66 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec4<f32> = u_xlat14;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec20;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
        u_xlat1.x = x_1585;
        let x_1588 : f32 = u_xlat17.w;
        let x_1590 : f32 = u_xlat1.x;
        let x_1592 : f32 = u_xlat66;
        u_xlat66 = ((x_1588 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat15;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
        let x_1598 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec21;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat1.x = x_1607;
        let x_1610 : f32 = u_xlat18.x;
        let x_1612 : f32 = u_xlat1.x;
        let x_1614 : f32 = u_xlat66;
        u_xlat66 = ((x_1610 * x_1612) + x_1614);
        let x_1617 : vec4<f32> = u_xlat15;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.z, x_1617.w);
        let x_1620 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec22;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat1.x = x_1629;
        let x_1632 : f32 = u_xlat18.y;
        let x_1634 : f32 = u_xlat1.x;
        let x_1636 : f32 = u_xlat66;
        u_xlat66 = ((x_1632 * x_1634) + x_1636);
        let x_1639 : vec2<f32> = u_xlat29;
        let x_1641 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec23;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat1.x = x_1650;
        let x_1653 : f32 = u_xlat18.z;
        let x_1655 : f32 = u_xlat1.x;
        let x_1657 : f32 = u_xlat66;
        u_xlat66 = ((x_1653 * x_1655) + x_1657);
        let x_1660 : vec2<f32> = u_xlat57;
        let x_1662 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec24;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat1.x = x_1671;
        let x_1674 : f32 = u_xlat18.w;
        let x_1676 : f32 = u_xlat1.x;
        let x_1678 : f32 = u_xlat66;
        u_xlat66 = ((x_1674 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat10;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
        let x_1684 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec25;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
        u_xlat1.x = x_1693;
        let x_1696 : f32 = u_xlat6.x;
        let x_1698 : f32 = u_xlat1.x;
        let x_1700 : f32 = u_xlat66;
        u_xlat66 = ((x_1696 * x_1698) + x_1700);
        let x_1703 : vec4<f32> = u_xlat10;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.z, x_1703.w);
        let x_1706 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec26;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1713.xy, x_1713.z);
        u_xlat1.x = x_1715;
        let x_1718 : f32 = u_xlat6.y;
        let x_1720 : f32 = u_xlat1.x;
        let x_1722 : f32 = u_xlat66;
        u_xlat66 = ((x_1718 * x_1720) + x_1722);
        let x_1725 : vec2<f32> = u_xlat52;
        let x_1727 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1725.x, x_1725.y, x_1727);
        let x_1734 : vec3<f32> = txVec27;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1734.xy, x_1734.z);
        u_xlat1.x = x_1736;
        let x_1739 : f32 = u_xlat6.z;
        let x_1741 : f32 = u_xlat1.x;
        let x_1743 : f32 = u_xlat66;
        u_xlat66 = ((x_1739 * x_1741) + x_1743);
        let x_1746 : vec4<f32> = u_xlat5;
        let x_1747 : vec2<f32> = vec2<f32>(x_1746.x, x_1746.y);
        let x_1749 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec28;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1756.xy, x_1756.z);
        u_xlat1.x = x_1758;
        let x_1761 : f32 = u_xlat6.w;
        let x_1763 : f32 = u_xlat1.x;
        let x_1765 : f32 = u_xlat66;
        u_xlat22.x = ((x_1761 * x_1763) + x_1765);
      }
    }
  } else {
    let x_1770 : vec4<f32> = u_xlat3;
    let x_1771 : vec2<f32> = vec2<f32>(x_1770.x, x_1770.y);
    let x_1773 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
    let x_1780 : vec3<f32> = txVec29;
    let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1780.xy, x_1780.z);
    u_xlat22.x = x_1782;
  }
  let x_1785 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1785) + 1.0f);
  let x_1789 : f32 = u_xlat22.x;
  let x_1791 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1793 : f32 = u_xlat66;
  u_xlat22.x = ((x_1789 * x_1791) + x_1793);
  let x_1797 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1797);
  let x_1801 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1801 >= 1.0f);
  let x_1803 : bool = u_xlatb66;
  let x_1804 : bool = u_xlatb1;
  u_xlatb66 = (x_1803 | x_1804);
  let x_1806 : bool = u_xlatb66;
  if (x_1806) {
    x_1807 = 1.0f;
  } else {
    let x_1812 : f32 = u_xlat22.x;
    x_1807 = x_1812;
  }
  let x_1813 : f32 = x_1807;
  u_xlat22.x = x_1813;
  let x_1815 : vec3<f32> = vs_TEXCOORD1;
  let x_1818 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1820 : vec3<f32> = (x_1815 + -(x_1818));
  let x_1821 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat3;
  let x_1825 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat66;
  let x_1830 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1833 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1828 * x_1830) + x_1833);
  let x_1837 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1837, 0.0f, 1.0f);
  let x_1841 : f32 = u_xlat22.x;
  u_xlat68 = (-(x_1841) + 1.0f);
  let x_1845 : f32 = u_xlat1.x;
  let x_1846 : f32 = u_xlat68;
  let x_1849 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1845 * x_1846) + x_1849);
  let x_1853 : f32 = u_xlat22.x;
  let x_1855 : f32 = x_186.unity_LightData.z;
  u_xlat22.x = (x_1853 * x_1855);
  let x_1858 : vec3<f32> = u_xlat22;
  let x_1861 : vec4<f32> = x_44.x_MainLightColor;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1858.x, x_1858.x, x_1858.x) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat2;
  let x_1869 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22.x = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1874 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1874, 0.0f, 1.0f);
  let x_1877 : vec3<f32> = u_xlat22;
  let x_1879 : vec4<f32> = u_xlat3;
  let x_1881 : vec3<f32> = (vec3<f32>(x_1877.x, x_1877.x, x_1877.x) * vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1884 : vec4<f32> = u_xlat1;
  let x_1886 : vec4<f32> = u_xlat3;
  let x_1888 : vec3<f32> = (vec3<f32>(x_1884.y, x_1884.z, x_1884.w) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat0;
  let x_1893 : vec4<f32> = u_xlat3;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.x, x_1891.x) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1899 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1901 : f32 = x_186.unity_LightData.y;
  u_xlat22.x = min(x_1899, x_1901);
  let x_1905 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_1905));
  let x_1908 : f32 = u_xlat66;
  let x_1911 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_1914 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1908 * x_1911) + x_1914);
  let x_1916 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1916, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1928 : u32 = u_xlatu_loop_1;
    let x_1929 : u32 = u_xlatu22;
    if ((x_1928 < x_1929)) {
    } else {
      break;
    }
    let x_1932 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1932 >> 2u);
    let x_1935 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1935 & 3u));
    let x_1938 : u32 = u_xlatu68;
    let x_1941 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1938)];
    let x_1951 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1956 : vec4<u32> = indexable[x_1951];
    u_xlat68 = dot(x_1941, bitcast<vec4<f32>>(x_1956));
    let x_1960 : f32 = u_xlat68;
    u_xlati68 = i32(x_1960);
    let x_1962 : vec3<f32> = vs_TEXCOORD1;
    let x_1973 : i32 = u_xlati68;
    let x_1975 : vec4<f32> = x_1972.x_AdditionalLightsPosition[x_1973];
    let x_1978 : i32 = u_xlati68;
    let x_1980 : vec4<f32> = x_1972.x_AdditionalLightsPosition[x_1978];
    let x_1982 : vec3<f32> = ((-(x_1962) * vec3<f32>(x_1975.w, x_1975.w, x_1975.w)) + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1983 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
    let x_1986 : vec4<f32> = u_xlat6;
    let x_1988 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1986.x, x_1986.y, x_1986.z), vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : f32 = u_xlat69;
    u_xlat69 = max(x_1991, 0.00006103515625f);
    let x_1995 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1995);
    let x_1997 : f32 = u_xlat70;
    let x_1999 : vec4<f32> = u_xlat6;
    let x_2001 : vec3<f32> = (vec3<f32>(x_1997, x_1997, x_1997) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2002 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
    let x_2004 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2004);
    let x_2006 : f32 = u_xlat69;
    let x_2007 : i32 = u_xlati68;
    let x_2009 : f32 = x_1972.x_AdditionalLightsAttenuation[x_2007].x;
    u_xlat69 = (x_2006 * x_2009);
    let x_2011 : f32 = u_xlat69;
    let x_2013 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2011) * x_2013) + 1.0f);
    let x_2016 : f32 = u_xlat69;
    u_xlat69 = max(x_2016, 0.0f);
    let x_2018 : f32 = u_xlat69;
    let x_2019 : f32 = u_xlat69;
    u_xlat69 = (x_2018 * x_2019);
    let x_2021 : f32 = u_xlat69;
    let x_2022 : f32 = u_xlat70;
    u_xlat69 = (x_2021 * x_2022);
    let x_2024 : i32 = u_xlati68;
    let x_2026 : vec4<f32> = x_1972.x_AdditionalLightsSpotDir[x_2024];
    let x_2028 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : f32 = u_xlat70;
    let x_2032 : i32 = u_xlati68;
    let x_2034 : f32 = x_1972.x_AdditionalLightsAttenuation[x_2032].z;
    let x_2036 : i32 = u_xlati68;
    let x_2038 : f32 = x_1972.x_AdditionalLightsAttenuation[x_2036].w;
    u_xlat70 = ((x_2031 * x_2034) + x_2038);
    let x_2040 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2040, 0.0f, 1.0f);
    let x_2042 : f32 = u_xlat70;
    let x_2043 : f32 = u_xlat70;
    u_xlat70 = (x_2042 * x_2043);
    let x_2045 : f32 = u_xlat69;
    let x_2046 : f32 = u_xlat70;
    u_xlat69 = (x_2045 * x_2046);
    let x_2050 : i32 = u_xlati68;
    let x_2052 : f32 = x_249.x_AdditionalShadowParams[x_2050].w;
    u_xlati70 = i32(x_2052);
    let x_2055 : i32 = u_xlati70;
    u_xlatb71 = (x_2055 >= 0i);
    let x_2057 : bool = u_xlatb71;
    if (x_2057) {
      let x_2061 : i32 = u_xlati68;
      let x_2063 : f32 = x_249.x_AdditionalShadowParams[x_2061].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2063, x_2063, x_2063, x_2063))));
      let x_2067 : bool = u_xlatb71;
      if (x_2067) {
        let x_2071 : vec4<f32> = u_xlat6;
        let x_2074 : vec4<f32> = u_xlat6;
        let x_2077 : vec4<bool> = (abs(vec4<f32>(x_2071.z, x_2071.z, x_2071.y, x_2071.z)) >= abs(vec4<f32>(x_2074.x, x_2074.y, x_2074.x, x_2074.x)));
        let x_2079 : vec3<bool> = vec3<bool>(x_2077.x, x_2077.y, x_2077.z);
        let x_2080 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
        let x_2083 : bool = u_xlatb7.y;
        let x_2085 : bool = u_xlatb7.x;
        u_xlatb71 = (x_2083 & x_2085);
        let x_2087 : vec4<f32> = u_xlat6;
        let x_2090 : vec4<bool> = (-(vec4<f32>(x_2087.z, x_2087.y, x_2087.z, x_2087.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2091 : vec3<bool> = vec3<bool>(x_2090.x, x_2090.y, x_2090.w);
        let x_2092 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2091.x, x_2091.y, x_2092.z, x_2091.z);
        let x_2095 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_2095);
        let x_2100 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_2100);
        let x_2105 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_2105);
        let x_2108 : bool = u_xlatb7.z;
        if (x_2108) {
          let x_2113 : f32 = u_xlat7.y;
          x_2109 = x_2113;
        } else {
          let x_2115 : f32 = u_xlat72;
          x_2109 = x_2115;
        }
        let x_2116 : f32 = x_2109;
        u_xlat72 = x_2116;
        let x_2118 : bool = u_xlatb71;
        if (x_2118) {
          let x_2123 : f32 = u_xlat7.x;
          x_2119 = x_2123;
        } else {
          let x_2125 : f32 = u_xlat72;
          x_2119 = x_2125;
        }
        let x_2126 : f32 = x_2119;
        u_xlat71 = x_2126;
        let x_2127 : i32 = u_xlati68;
        let x_2129 : f32 = x_249.x_AdditionalShadowParams[x_2127].w;
        u_xlat72 = trunc(x_2129);
        let x_2131 : f32 = u_xlat71;
        let x_2132 : f32 = u_xlat72;
        u_xlat71 = (x_2131 + x_2132);
        let x_2134 : f32 = u_xlat71;
        u_xlati70 = i32(x_2134);
      }
      let x_2136 : i32 = u_xlati70;
      u_xlati70 = (x_2136 << bitcast<u32>(2i));
      let x_2138 : vec3<f32> = vs_TEXCOORD1;
      let x_2141 : i32 = u_xlati70;
      let x_2144 : i32 = u_xlati70;
      let x_2148 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2141 + 1i) / 4i)][((x_2144 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2138.y, x_2138.y, x_2138.y, x_2138.y) * x_2148);
      let x_2150 : i32 = u_xlati70;
      let x_2152 : i32 = u_xlati70;
      let x_2155 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2150 / 4i)][(x_2152 % 4i)];
      let x_2156 : vec3<f32> = vs_TEXCOORD1;
      let x_2159 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2155 * vec4<f32>(x_2156.x, x_2156.x, x_2156.x, x_2156.x)) + x_2159);
      let x_2161 : i32 = u_xlati70;
      let x_2164 : i32 = u_xlati70;
      let x_2168 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2161 + 2i) / 4i)][((x_2164 + 2i) % 4i)];
      let x_2169 : vec3<f32> = vs_TEXCOORD1;
      let x_2172 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2168 * vec4<f32>(x_2169.z, x_2169.z, x_2169.z, x_2169.z)) + x_2172);
      let x_2174 : vec4<f32> = u_xlat7;
      let x_2175 : i32 = u_xlati70;
      let x_2178 : i32 = u_xlati70;
      let x_2182 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2175 + 3i) / 4i)][((x_2178 + 3i) % 4i)];
      u_xlat7 = (x_2174 + x_2182);
      let x_2184 : vec4<f32> = u_xlat7;
      let x_2186 : vec4<f32> = u_xlat7;
      let x_2188 : vec3<f32> = (vec3<f32>(x_2184.x, x_2184.y, x_2184.z) / vec3<f32>(x_2186.w, x_2186.w, x_2186.w));
      let x_2189 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
      let x_2192 : i32 = u_xlati68;
      let x_2194 : f32 = x_249.x_AdditionalShadowParams[x_2192].y;
      u_xlatb70 = (0.0f < x_2194);
      let x_2196 : bool = u_xlatb70;
      if (x_2196) {
        let x_2199 : i32 = u_xlati68;
        let x_2201 : f32 = x_249.x_AdditionalShadowParams[x_2199].y;
        u_xlatb70 = (1.0f == x_2201);
        let x_2203 : bool = u_xlatb70;
        if (x_2203) {
          let x_2206 : vec4<f32> = u_xlat7;
          let x_2210 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2206.x, x_2206.y, x_2206.x, x_2206.y) + x_2210);
          let x_2213 : vec4<f32> = u_xlat8;
          let x_2214 : vec2<f32> = vec2<f32>(x_2213.x, x_2213.y);
          let x_2216 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2214.x, x_2214.y, x_2216);
          let x_2224 : vec3<f32> = txVec30;
          let x_2226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2224.xy, x_2224.z);
          u_xlat9.x = x_2226;
          let x_2229 : vec4<f32> = u_xlat8;
          let x_2230 : vec2<f32> = vec2<f32>(x_2229.z, x_2229.w);
          let x_2232 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
          let x_2239 : vec3<f32> = txVec31;
          let x_2241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
          u_xlat9.y = x_2241;
          let x_2243 : vec4<f32> = u_xlat7;
          let x_2247 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2243.x, x_2243.y, x_2243.x, x_2243.y) + x_2247);
          let x_2250 : vec4<f32> = u_xlat8;
          let x_2251 : vec2<f32> = vec2<f32>(x_2250.x, x_2250.y);
          let x_2253 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2251.x, x_2251.y, x_2253);
          let x_2260 : vec3<f32> = txVec32;
          let x_2262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2260.xy, x_2260.z);
          u_xlat9.z = x_2262;
          let x_2265 : vec4<f32> = u_xlat8;
          let x_2266 : vec2<f32> = vec2<f32>(x_2265.z, x_2265.w);
          let x_2268 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
          let x_2275 : vec3<f32> = txVec33;
          let x_2277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
          u_xlat9.w = x_2277;
          let x_2279 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2279, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2282 : i32 = u_xlati68;
          let x_2284 : f32 = x_249.x_AdditionalShadowParams[x_2282].y;
          u_xlatb71 = (2.0f == x_2284);
          let x_2286 : bool = u_xlatb71;
          if (x_2286) {
            let x_2289 : vec4<f32> = u_xlat7;
            let x_2293 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2296 : vec2<f32> = ((vec2<f32>(x_2289.x, x_2289.y) * vec2<f32>(x_2293.z, x_2293.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2297 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2296.x, x_2296.y, x_2297.z, x_2297.w);
            let x_2299 : vec4<f32> = u_xlat8;
            let x_2301 : vec2<f32> = floor(vec2<f32>(x_2299.x, x_2299.y));
            let x_2302 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2301.x, x_2301.y, x_2302.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat7;
            let x_2307 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2310 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2304.x, x_2304.y) * vec2<f32>(x_2307.z, x_2307.w)) + -(vec2<f32>(x_2310.x, x_2310.y)));
            let x_2314 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2314.x, x_2314.x, x_2314.y, x_2314.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2317 : vec4<f32> = u_xlat9;
            let x_2319 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2317.x, x_2317.x, x_2317.z, x_2317.z) * vec4<f32>(x_2319.x, x_2319.x, x_2319.z, x_2319.z));
            let x_2322 : vec4<f32> = u_xlat10;
            let x_2324 : vec2<f32> = (vec2<f32>(x_2322.y, x_2322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2325 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2324.x, x_2325.y, x_2324.y, x_2325.w);
            let x_2327 : vec4<f32> = u_xlat10;
            let x_2330 : vec2<f32> = u_xlat52;
            let x_2332 : vec2<f32> = ((vec2<f32>(x_2327.x, x_2327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2330));
            let x_2333 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
            let x_2336 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2336) + vec2<f32>(1.0f, 1.0f));
            let x_2339 : vec2<f32> = u_xlat52;
            let x_2340 : vec2<f32> = min(x_2339, vec2<f32>(0.0f, 0.0f));
            let x_2341 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec4<f32> = u_xlat11;
            let x_2346 : vec4<f32> = u_xlat11;
            let x_2349 : vec2<f32> = u_xlat54;
            let x_2350 : vec2<f32> = ((-(vec2<f32>(x_2343.x, x_2343.y)) * vec2<f32>(x_2346.x, x_2346.y)) + x_2349);
            let x_2351 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
            let x_2353 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2353, vec2<f32>(0.0f, 0.0f));
            let x_2355 : vec2<f32> = u_xlat52;
            let x_2357 : vec2<f32> = u_xlat52;
            let x_2359 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2355) * x_2357) + vec2<f32>(x_2359.y, x_2359.w));
            let x_2362 : vec4<f32> = u_xlat11;
            let x_2364 : vec2<f32> = (vec2<f32>(x_2362.x, x_2362.y) + vec2<f32>(1.0f, 1.0f));
            let x_2365 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
            let x_2367 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2367 + vec2<f32>(1.0f, 1.0f));
            let x_2369 : vec4<f32> = u_xlat10;
            let x_2371 : vec2<f32> = (vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2372 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2374 : vec2<f32> = u_xlat54;
            let x_2375 : vec2<f32> = (x_2374 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2376 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
            let x_2378 : vec4<f32> = u_xlat11;
            let x_2380 : vec2<f32> = (vec2<f32>(x_2378.x, x_2378.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2381 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2380.x, x_2380.y, x_2381.z, x_2381.w);
            let x_2383 : vec2<f32> = u_xlat52;
            let x_2384 : vec2<f32> = (x_2383 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2385 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2387.y, x_2387.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2391 : f32 = u_xlat11.x;
            u_xlat12.z = x_2391;
            let x_2394 : f32 = u_xlat52.x;
            u_xlat12.w = x_2394;
            let x_2397 : f32 = u_xlat13.x;
            u_xlat10.z = x_2397;
            let x_2400 : f32 = u_xlat9.x;
            u_xlat10.w = x_2400;
            let x_2402 : vec4<f32> = u_xlat10;
            let x_2404 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2402.z, x_2402.w, x_2402.x, x_2402.z) + vec4<f32>(x_2404.z, x_2404.w, x_2404.x, x_2404.z));
            let x_2408 : f32 = u_xlat12.y;
            u_xlat11.z = x_2408;
            let x_2411 : f32 = u_xlat52.y;
            u_xlat11.w = x_2411;
            let x_2414 : f32 = u_xlat10.y;
            u_xlat13.z = x_2414;
            let x_2417 : f32 = u_xlat9.z;
            u_xlat13.w = x_2417;
            let x_2419 : vec4<f32> = u_xlat11;
            let x_2421 : vec4<f32> = u_xlat13;
            let x_2423 : vec3<f32> = (vec3<f32>(x_2419.z, x_2419.y, x_2419.w) + vec3<f32>(x_2421.z, x_2421.y, x_2421.w));
            let x_2424 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat10;
            let x_2428 : vec4<f32> = u_xlat14;
            let x_2430 : vec3<f32> = (vec3<f32>(x_2426.x, x_2426.z, x_2426.w) / vec3<f32>(x_2428.z, x_2428.w, x_2428.y));
            let x_2431 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat10;
            let x_2435 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2436 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
            let x_2438 : vec4<f32> = u_xlat13;
            let x_2440 : vec4<f32> = u_xlat9;
            let x_2442 : vec3<f32> = (vec3<f32>(x_2438.z, x_2438.y, x_2438.w) / vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
            let x_2443 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
            let x_2445 : vec4<f32> = u_xlat11;
            let x_2447 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2448 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat10;
            let x_2453 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2455 : vec3<f32> = (vec3<f32>(x_2450.y, x_2450.x, x_2450.z) * vec3<f32>(x_2453.x, x_2453.x, x_2453.x));
            let x_2456 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
            let x_2458 : vec4<f32> = u_xlat11;
            let x_2461 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2463 : vec3<f32> = (vec3<f32>(x_2458.x, x_2458.y, x_2458.z) * vec3<f32>(x_2461.y, x_2461.y, x_2461.y));
            let x_2464 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
            let x_2467 : f32 = u_xlat11.x;
            u_xlat10.w = x_2467;
            let x_2469 : vec4<f32> = u_xlat8;
            let x_2472 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2475 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y) * vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y)) + vec4<f32>(x_2475.y, x_2475.w, x_2475.x, x_2475.w));
            let x_2478 : vec4<f32> = u_xlat8;
            let x_2481 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2484 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2478.x, x_2478.y) * vec2<f32>(x_2481.x, x_2481.y)) + vec2<f32>(x_2484.z, x_2484.w));
            let x_2488 : f32 = u_xlat10.y;
            u_xlat11.w = x_2488;
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.y, x_2490.z);
            let x_2492 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2492.x, x_2491.x, x_2492.z, x_2491.y);
            let x_2494 : vec4<f32> = u_xlat8;
            let x_2497 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2500 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y) * vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y)) + vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2500.y));
            let x_2503 : vec4<f32> = u_xlat8;
            let x_2506 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2509 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y) * vec4<f32>(x_2506.x, x_2506.y, x_2506.x, x_2506.y)) + vec4<f32>(x_2509.w, x_2509.y, x_2509.w, x_2509.z));
            let x_2512 : vec4<f32> = u_xlat8;
            let x_2515 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2518 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2512.x, x_2512.y, x_2512.x, x_2512.y) * vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y)) + vec4<f32>(x_2518.x, x_2518.w, x_2518.z, x_2518.w));
            let x_2521 : vec4<f32> = u_xlat9;
            let x_2523 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2521.x, x_2521.x, x_2521.x, x_2521.y) * vec4<f32>(x_2523.z, x_2523.w, x_2523.y, x_2523.z));
            let x_2526 : vec4<f32> = u_xlat9;
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2526.y, x_2526.y, x_2526.z, x_2526.z) * x_2528);
            let x_2531 : f32 = u_xlat9.z;
            let x_2533 : f32 = u_xlat14.y;
            u_xlat71 = (x_2531 * x_2533);
            let x_2536 : vec4<f32> = u_xlat12;
            let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
            let x_2539 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
            let x_2546 : vec3<f32> = txVec34;
            let x_2548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
            u_xlat72 = x_2548;
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2551 : vec2<f32> = vec2<f32>(x_2550.z, x_2550.w);
            let x_2553 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2551.x, x_2551.y, x_2553);
            let x_2561 : vec3<f32> = txVec35;
            let x_2563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2561.xy, x_2561.z);
            u_xlat73 = x_2563;
            let x_2564 : f32 = u_xlat73;
            let x_2566 : f32 = u_xlat15.y;
            u_xlat73 = (x_2564 * x_2566);
            let x_2569 : f32 = u_xlat15.x;
            let x_2570 : f32 = u_xlat72;
            let x_2572 : f32 = u_xlat73;
            u_xlat72 = ((x_2569 * x_2570) + x_2572);
            let x_2575 : vec2<f32> = u_xlat52;
            let x_2577 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec36;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat73 = x_2586;
            let x_2588 : f32 = u_xlat15.z;
            let x_2589 : f32 = u_xlat73;
            let x_2591 : f32 = u_xlat72;
            u_xlat72 = ((x_2588 * x_2589) + x_2591);
            let x_2594 : vec4<f32> = u_xlat11;
            let x_2595 : vec2<f32> = vec2<f32>(x_2594.x, x_2594.y);
            let x_2597 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2595.x, x_2595.y, x_2597);
            let x_2604 : vec3<f32> = txVec37;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat73 = x_2606;
            let x_2608 : f32 = u_xlat15.w;
            let x_2609 : f32 = u_xlat73;
            let x_2611 : f32 = u_xlat72;
            u_xlat72 = ((x_2608 * x_2609) + x_2611);
            let x_2614 : vec4<f32> = u_xlat13;
            let x_2615 : vec2<f32> = vec2<f32>(x_2614.x, x_2614.y);
            let x_2617 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2615.x, x_2615.y, x_2617);
            let x_2624 : vec3<f32> = txVec38;
            let x_2626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2624.xy, x_2624.z);
            u_xlat73 = x_2626;
            let x_2628 : f32 = u_xlat16.x;
            let x_2629 : f32 = u_xlat73;
            let x_2631 : f32 = u_xlat72;
            u_xlat72 = ((x_2628 * x_2629) + x_2631);
            let x_2634 : vec4<f32> = u_xlat13;
            let x_2635 : vec2<f32> = vec2<f32>(x_2634.z, x_2634.w);
            let x_2637 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2635.x, x_2635.y, x_2637);
            let x_2644 : vec3<f32> = txVec39;
            let x_2646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2644.xy, x_2644.z);
            u_xlat73 = x_2646;
            let x_2648 : f32 = u_xlat16.y;
            let x_2649 : f32 = u_xlat73;
            let x_2651 : f32 = u_xlat72;
            u_xlat72 = ((x_2648 * x_2649) + x_2651);
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2655 : vec2<f32> = vec2<f32>(x_2654.z, x_2654.w);
            let x_2657 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
            let x_2664 : vec3<f32> = txVec40;
            let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
            u_xlat73 = x_2666;
            let x_2668 : f32 = u_xlat16.z;
            let x_2669 : f32 = u_xlat73;
            let x_2671 : f32 = u_xlat72;
            u_xlat72 = ((x_2668 * x_2669) + x_2671);
            let x_2674 : vec4<f32> = u_xlat10;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.x, x_2674.y);
            let x_2677 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2684 : vec3<f32> = txVec41;
            let x_2686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
            u_xlat73 = x_2686;
            let x_2688 : f32 = u_xlat16.w;
            let x_2689 : f32 = u_xlat73;
            let x_2691 : f32 = u_xlat72;
            u_xlat72 = ((x_2688 * x_2689) + x_2691);
            let x_2694 : vec4<f32> = u_xlat10;
            let x_2695 : vec2<f32> = vec2<f32>(x_2694.z, x_2694.w);
            let x_2697 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2695.x, x_2695.y, x_2697);
            let x_2704 : vec3<f32> = txVec42;
            let x_2706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
            u_xlat73 = x_2706;
            let x_2707 : f32 = u_xlat71;
            let x_2708 : f32 = u_xlat73;
            let x_2710 : f32 = u_xlat72;
            u_xlat70 = ((x_2707 * x_2708) + x_2710);
          } else {
            let x_2713 : vec4<f32> = u_xlat7;
            let x_2716 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2719 : vec2<f32> = ((vec2<f32>(x_2713.x, x_2713.y) * vec2<f32>(x_2716.z, x_2716.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2720 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2719.x, x_2719.y, x_2720.z, x_2720.w);
            let x_2722 : vec4<f32> = u_xlat8;
            let x_2724 : vec2<f32> = floor(vec2<f32>(x_2722.x, x_2722.y));
            let x_2725 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
            let x_2727 : vec4<f32> = u_xlat7;
            let x_2730 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2733 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2727.x, x_2727.y) * vec2<f32>(x_2730.z, x_2730.w)) + -(vec2<f32>(x_2733.x, x_2733.y)));
            let x_2737 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2737.x, x_2737.x, x_2737.y, x_2737.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2740 : vec4<f32> = u_xlat9;
            let x_2742 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2740.x, x_2740.x, x_2740.z, x_2740.z) * vec4<f32>(x_2742.x, x_2742.x, x_2742.z, x_2742.z));
            let x_2745 : vec4<f32> = u_xlat10;
            let x_2747 : vec2<f32> = (vec2<f32>(x_2745.y, x_2745.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2748 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2748.x, x_2747.x, x_2748.z, x_2747.y);
            let x_2750 : vec4<f32> = u_xlat10;
            let x_2753 : vec2<f32> = u_xlat52;
            let x_2755 : vec2<f32> = ((vec2<f32>(x_2750.x, x_2750.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2753));
            let x_2756 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2755.x, x_2756.y, x_2755.y, x_2756.w);
            let x_2758 : vec2<f32> = u_xlat52;
            let x_2760 : vec2<f32> = (-(x_2758) + vec2<f32>(1.0f, 1.0f));
            let x_2761 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2763 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2763, vec2<f32>(0.0f, 0.0f));
            let x_2765 : vec2<f32> = u_xlat54;
            let x_2767 : vec2<f32> = u_xlat54;
            let x_2769 : vec4<f32> = u_xlat10;
            let x_2771 : vec2<f32> = ((-(x_2765) * x_2767) + vec2<f32>(x_2769.x, x_2769.y));
            let x_2772 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2774, vec2<f32>(0.0f, 0.0f));
            let x_2777 : vec2<f32> = u_xlat54;
            let x_2779 : vec2<f32> = u_xlat54;
            let x_2781 : vec4<f32> = u_xlat9;
            let x_2783 : vec2<f32> = ((-(x_2777) * x_2779) + vec2<f32>(x_2781.y, x_2781.w));
            let x_2784 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2783.x, x_2784.y, x_2783.y);
            let x_2786 : vec4<f32> = u_xlat10;
            let x_2788 : vec2<f32> = (vec2<f32>(x_2786.x, x_2786.y) + vec2<f32>(2.0f, 2.0f));
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2788.x, x_2788.y, x_2789.z, x_2789.w);
            let x_2791 : vec3<f32> = u_xlat31;
            let x_2793 : vec2<f32> = (vec2<f32>(x_2791.x, x_2791.z) + vec2<f32>(2.0f, 2.0f));
            let x_2794 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2794.x, x_2793.x, x_2794.z, x_2793.y);
            let x_2797 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2797 * 0.08163200318813323975f);
            let x_2800 : vec4<f32> = u_xlat9;
            let x_2802 : vec3<f32> = (vec3<f32>(x_2800.z, x_2800.x, x_2800.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2803.w);
            let x_2805 : vec4<f32> = u_xlat10;
            let x_2807 : vec2<f32> = (vec2<f32>(x_2805.x, x_2805.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2808 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2807.x, x_2807.y, x_2808.z, x_2808.w);
            let x_2811 : f32 = u_xlat13.y;
            u_xlat12.x = x_2811;
            let x_2813 : vec2<f32> = u_xlat52;
            let x_2816 : vec2<f32> = ((vec2<f32>(x_2813.x, x_2813.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2817 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2817.x, x_2816.x, x_2817.z, x_2816.y);
            let x_2819 : vec2<f32> = u_xlat52;
            let x_2822 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2823 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2822.x, x_2823.y, x_2822.y, x_2823.w);
            let x_2826 : f32 = u_xlat9.x;
            u_xlat10.y = x_2826;
            let x_2829 : f32 = u_xlat11.y;
            u_xlat10.w = x_2829;
            let x_2831 : vec4<f32> = u_xlat10;
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2831 + x_2832);
            let x_2834 : vec2<f32> = u_xlat52;
            let x_2837 : vec2<f32> = ((vec2<f32>(x_2834.y, x_2834.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2838 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2838.x, x_2837.x, x_2838.z, x_2837.y);
            let x_2840 : vec2<f32> = u_xlat52;
            let x_2843 : vec2<f32> = ((vec2<f32>(x_2840.y, x_2840.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2844 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2843.x, x_2844.y, x_2843.y, x_2844.w);
            let x_2847 : f32 = u_xlat9.y;
            u_xlat11.y = x_2847;
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2850 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2849 + x_2850);
            let x_2852 : vec4<f32> = u_xlat10;
            let x_2853 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2852 / x_2853);
            let x_2855 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2855 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2857 : vec4<f32> = u_xlat11;
            let x_2858 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2857 / x_2858);
            let x_2860 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2860 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2862 : vec4<f32> = u_xlat10;
            let x_2865 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2862.w, x_2862.x, x_2862.y, x_2862.z) * vec4<f32>(x_2865.x, x_2865.x, x_2865.x, x_2865.x));
            let x_2868 : vec4<f32> = u_xlat11;
            let x_2871 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2868.x, x_2868.w, x_2868.y, x_2868.z) * vec4<f32>(x_2871.y, x_2871.y, x_2871.y, x_2871.y));
            let x_2874 : vec4<f32> = u_xlat10;
            let x_2875 : vec3<f32> = vec3<f32>(x_2874.y, x_2874.z, x_2874.w);
            let x_2876 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2875.x, x_2876.y, x_2875.y, x_2875.z);
            let x_2879 : f32 = u_xlat11.x;
            u_xlat13.y = x_2879;
            let x_2881 : vec4<f32> = u_xlat8;
            let x_2884 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2881.x, x_2881.y, x_2881.x, x_2881.y) * vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y)) + vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat8;
            let x_2893 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2896 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.w, x_2896.y));
            let x_2900 : f32 = u_xlat13.y;
            u_xlat10.y = x_2900;
            let x_2903 : f32 = u_xlat11.z;
            u_xlat13.y = x_2903;
            let x_2905 : vec4<f32> = u_xlat8;
            let x_2908 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2911 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2905.x, x_2905.y, x_2905.x, x_2905.y) * vec4<f32>(x_2908.x, x_2908.y, x_2908.x, x_2908.y)) + vec4<f32>(x_2911.x, x_2911.y, x_2911.z, x_2911.y));
            let x_2914 : vec4<f32> = u_xlat8;
            let x_2917 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2920 : vec4<f32> = u_xlat13;
            let x_2922 : vec2<f32> = ((vec2<f32>(x_2914.x, x_2914.y) * vec2<f32>(x_2917.x, x_2917.y)) + vec2<f32>(x_2920.w, x_2920.y));
            let x_2923 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2922.x, x_2922.y, x_2923.z, x_2923.w);
            let x_2926 : f32 = u_xlat13.y;
            u_xlat10.z = x_2926;
            let x_2928 : vec4<f32> = u_xlat8;
            let x_2931 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.z));
            let x_2938 : f32 = u_xlat11.w;
            u_xlat13.y = x_2938;
            let x_2940 : vec4<f32> = u_xlat8;
            let x_2943 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y) * vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y)) + vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2946.y));
            let x_2950 : vec4<f32> = u_xlat8;
            let x_2953 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2956 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2950.x, x_2950.y) * vec2<f32>(x_2953.x, x_2953.y)) + vec2<f32>(x_2956.w, x_2956.y));
            let x_2960 : f32 = u_xlat13.y;
            u_xlat10.w = x_2960;
            let x_2963 : vec4<f32> = u_xlat8;
            let x_2966 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2969 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2963.x, x_2963.y) * vec2<f32>(x_2966.x, x_2966.y)) + vec2<f32>(x_2969.x, x_2969.w));
            let x_2972 : vec4<f32> = u_xlat13;
            let x_2973 : vec3<f32> = vec3<f32>(x_2972.x, x_2972.z, x_2972.w);
            let x_2974 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2973.x, x_2974.y, x_2973.y, x_2973.z);
            let x_2976 : vec4<f32> = u_xlat8;
            let x_2979 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2982 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2976.x, x_2976.y, x_2976.x, x_2976.y) * vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y)) + vec4<f32>(x_2982.x, x_2982.y, x_2982.z, x_2982.y));
            let x_2986 : vec4<f32> = u_xlat8;
            let x_2989 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2986.x, x_2986.y) * vec2<f32>(x_2989.x, x_2989.y)) + vec2<f32>(x_2992.w, x_2992.y));
            let x_2996 : f32 = u_xlat10.x;
            u_xlat11.x = x_2996;
            let x_2998 : vec4<f32> = u_xlat8;
            let x_3001 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat11;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.x, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3010 : vec4<f32> = u_xlat9;
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_3010.x, x_3010.x, x_3010.x, x_3010.x) * x_3012);
            let x_3015 : vec4<f32> = u_xlat9;
            let x_3017 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_3015.y, x_3015.y, x_3015.y, x_3015.y) * x_3017);
            let x_3020 : vec4<f32> = u_xlat9;
            let x_3022 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_3020.z, x_3020.z, x_3020.z, x_3020.z) * x_3022);
            let x_3024 : vec4<f32> = u_xlat9;
            let x_3026 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_3024.w, x_3024.w, x_3024.w, x_3024.w) * x_3026);
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec43;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat71 = x_3041;
            let x_3043 : vec4<f32> = u_xlat14;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.z, x_3043.w);
            let x_3046 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec44;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat72 = x_3055;
            let x_3056 : f32 = u_xlat72;
            let x_3058 : f32 = u_xlat19.y;
            u_xlat72 = (x_3056 * x_3058);
            let x_3061 : f32 = u_xlat19.x;
            let x_3062 : f32 = u_xlat71;
            let x_3064 : f32 = u_xlat72;
            u_xlat71 = ((x_3061 * x_3062) + x_3064);
            let x_3067 : vec2<f32> = u_xlat52;
            let x_3069 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec45;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat72 = x_3078;
            let x_3080 : f32 = u_xlat19.z;
            let x_3081 : f32 = u_xlat72;
            let x_3083 : f32 = u_xlat71;
            u_xlat71 = ((x_3080 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat17;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec46;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat72 = x_3098;
            let x_3100 : f32 = u_xlat19.w;
            let x_3101 : f32 = u_xlat72;
            let x_3103 : f32 = u_xlat71;
            u_xlat71 = ((x_3100 * x_3101) + x_3103);
            let x_3106 : vec4<f32> = u_xlat15;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.x, x_3106.y);
            let x_3109 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec47;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat72 = x_3118;
            let x_3120 : f32 = u_xlat20.x;
            let x_3121 : f32 = u_xlat72;
            let x_3123 : f32 = u_xlat71;
            u_xlat71 = ((x_3120 * x_3121) + x_3123);
            let x_3126 : vec4<f32> = u_xlat15;
            let x_3127 : vec2<f32> = vec2<f32>(x_3126.z, x_3126.w);
            let x_3129 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
            let x_3136 : vec3<f32> = txVec48;
            let x_3138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
            u_xlat72 = x_3138;
            let x_3140 : f32 = u_xlat20.y;
            let x_3141 : f32 = u_xlat72;
            let x_3143 : f32 = u_xlat71;
            u_xlat71 = ((x_3140 * x_3141) + x_3143);
            let x_3146 : vec4<f32> = u_xlat16;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.x, x_3146.y);
            let x_3149 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec49;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat72 = x_3158;
            let x_3160 : f32 = u_xlat20.z;
            let x_3161 : f32 = u_xlat72;
            let x_3163 : f32 = u_xlat71;
            u_xlat71 = ((x_3160 * x_3161) + x_3163);
            let x_3166 : vec4<f32> = u_xlat17;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.z, x_3166.w);
            let x_3169 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec50;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat72 = x_3178;
            let x_3180 : f32 = u_xlat20.w;
            let x_3181 : f32 = u_xlat72;
            let x_3183 : f32 = u_xlat71;
            u_xlat71 = ((x_3180 * x_3181) + x_3183);
            let x_3186 : vec4<f32> = u_xlat18;
            let x_3187 : vec2<f32> = vec2<f32>(x_3186.x, x_3186.y);
            let x_3189 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec51;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat72 = x_3198;
            let x_3200 : f32 = u_xlat21.x;
            let x_3201 : f32 = u_xlat72;
            let x_3203 : f32 = u_xlat71;
            u_xlat71 = ((x_3200 * x_3201) + x_3203);
            let x_3206 : vec4<f32> = u_xlat18;
            let x_3207 : vec2<f32> = vec2<f32>(x_3206.z, x_3206.w);
            let x_3209 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec52;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat72 = x_3218;
            let x_3220 : f32 = u_xlat21.y;
            let x_3221 : f32 = u_xlat72;
            let x_3223 : f32 = u_xlat71;
            u_xlat71 = ((x_3220 * x_3221) + x_3223);
            let x_3226 : vec2<f32> = u_xlat32;
            let x_3228 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec53;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat72 = x_3237;
            let x_3239 : f32 = u_xlat21.z;
            let x_3240 : f32 = u_xlat72;
            let x_3242 : f32 = u_xlat71;
            u_xlat71 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec2<f32> = u_xlat60;
            let x_3247 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec54;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat72 = x_3256;
            let x_3258 : f32 = u_xlat21.w;
            let x_3259 : f32 = u_xlat72;
            let x_3261 : f32 = u_xlat71;
            u_xlat71 = ((x_3258 * x_3259) + x_3261);
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3265 : vec2<f32> = vec2<f32>(x_3264.x, x_3264.y);
            let x_3267 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec55;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat72 = x_3276;
            let x_3278 : f32 = u_xlat9.x;
            let x_3279 : f32 = u_xlat72;
            let x_3281 : f32 = u_xlat71;
            u_xlat71 = ((x_3278 * x_3279) + x_3281);
            let x_3284 : vec4<f32> = u_xlat13;
            let x_3285 : vec2<f32> = vec2<f32>(x_3284.z, x_3284.w);
            let x_3287 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3294 : vec3<f32> = txVec56;
            let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
            u_xlat72 = x_3296;
            let x_3298 : f32 = u_xlat9.y;
            let x_3299 : f32 = u_xlat72;
            let x_3301 : f32 = u_xlat71;
            u_xlat71 = ((x_3298 * x_3299) + x_3301);
            let x_3304 : vec2<f32> = u_xlat55;
            let x_3306 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec57;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat72 = x_3315;
            let x_3317 : f32 = u_xlat9.z;
            let x_3318 : f32 = u_xlat72;
            let x_3320 : f32 = u_xlat71;
            u_xlat71 = ((x_3317 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat8;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec58;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat72 = x_3335;
            let x_3337 : f32 = u_xlat9.w;
            let x_3338 : f32 = u_xlat72;
            let x_3340 : f32 = u_xlat71;
            u_xlat70 = ((x_3337 * x_3338) + x_3340);
          }
        }
      } else {
        let x_3344 : vec4<f32> = u_xlat7;
        let x_3345 : vec2<f32> = vec2<f32>(x_3344.x, x_3344.y);
        let x_3347 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
        let x_3354 : vec3<f32> = txVec59;
        let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
        u_xlat70 = x_3356;
      }
      let x_3357 : i32 = u_xlati68;
      let x_3359 : f32 = x_249.x_AdditionalShadowParams[x_3357].x;
      u_xlat71 = (1.0f + -(x_3359));
      let x_3362 : f32 = u_xlat70;
      let x_3363 : i32 = u_xlati68;
      let x_3365 : f32 = x_249.x_AdditionalShadowParams[x_3363].x;
      let x_3367 : f32 = u_xlat71;
      u_xlat70 = ((x_3362 * x_3365) + x_3367);
      let x_3370 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3370);
      let x_3374 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3374 >= 1.0f);
      let x_3376 : bool = u_xlatb71;
      let x_3377 : bool = u_xlatb72;
      u_xlatb71 = (x_3376 | x_3377);
      let x_3379 : bool = u_xlatb71;
      let x_3380 : f32 = u_xlat70;
      u_xlat70 = select(x_3380, 1.0f, x_3379);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3383 : f32 = u_xlat70;
    u_xlat71 = (-(x_3383) + 1.0f);
    let x_3386 : f32 = u_xlat66;
    let x_3387 : f32 = u_xlat71;
    let x_3389 : f32 = u_xlat70;
    u_xlat70 = ((x_3386 * x_3387) + x_3389);
    let x_3391 : f32 = u_xlat69;
    let x_3392 : f32 = u_xlat70;
    u_xlat69 = (x_3391 * x_3392);
    let x_3394 : f32 = u_xlat69;
    let x_3396 : i32 = u_xlati68;
    let x_3398 : vec4<f32> = x_1972.x_AdditionalLightsColor[x_3396];
    let x_3400 : vec3<f32> = (vec3<f32>(x_3394, x_3394, x_3394) * vec3<f32>(x_3398.x, x_3398.y, x_3398.z));
    let x_3401 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3400.x, x_3400.y, x_3400.z, x_3401.w);
    let x_3403 : vec4<f32> = u_xlat2;
    let x_3405 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3403.x, x_3403.y, x_3403.z), vec3<f32>(x_3405.x, x_3405.y, x_3405.z));
    let x_3408 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3408, 0.0f, 1.0f);
    let x_3410 : f32 = u_xlat68;
    let x_3412 : vec4<f32> = u_xlat7;
    let x_3414 : vec3<f32> = (vec3<f32>(x_3410, x_3410, x_3410) * vec3<f32>(x_3412.x, x_3412.y, x_3412.z));
    let x_3415 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3415.w);
    let x_3417 : vec4<f32> = u_xlat1;
    let x_3419 : vec4<f32> = u_xlat6;
    let x_3421 : vec3<f32> = (vec3<f32>(x_3417.y, x_3417.z, x_3417.w) * vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
    let x_3422 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3421.x, x_3421.y, x_3421.z, x_3422.w);
    let x_3424 : vec4<f32> = u_xlat6;
    let x_3426 : vec4<f32> = u_xlat0;
    let x_3429 : vec4<f32> = u_xlat5;
    let x_3431 : vec3<f32> = ((vec3<f32>(x_3424.x, x_3424.y, x_3424.z) * vec3<f32>(x_3426.x, x_3426.x, x_3426.x)) + vec3<f32>(x_3429.x, x_3429.y, x_3429.z));
    let x_3432 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3432.w);

    continuing {
      let x_3434 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3434 + bitcast<u32>(1i));
    }
  }
  let x_3436 : vec4<f32> = u_xlat4;
  let x_3438 : vec4<f32> = u_xlat1;
  let x_3441 : vec4<f32> = u_xlat3;
  let x_3443 : vec3<f32> = ((vec3<f32>(x_3436.x, x_3436.y, x_3436.z) * vec3<f32>(x_3438.y, x_3438.z, x_3438.w)) + vec3<f32>(x_3441.x, x_3441.y, x_3441.z));
  let x_3444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3443.x, x_3443.y, x_3443.z, x_3444.w);
  let x_3448 : vec4<f32> = u_xlat5;
  let x_3450 : vec4<f32> = u_xlat1;
  let x_3452 : vec3<f32> = (vec3<f32>(x_3448.x, x_3448.y, x_3448.z) + vec3<f32>(x_3450.x, x_3450.y, x_3450.z));
  let x_3453 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3453.w);
  let x_3456 : f32 = x_57.x_Surface;
  u_xlatb22 = (x_3456 == 1.0f);
  let x_3458 : bool = u_xlatb22;
  let x_3459 : bool = u_xlatb44;
  u_xlatb22 = (x_3458 | x_3459);
  let x_3461 : bool = u_xlatb22;
  if (x_3461) {
    let x_3466 : f32 = u_xlat0.x;
    x_3462 = x_3466;
  } else {
    x_3462 = 1.0f;
  }
  let x_3468 : f32 = x_3462;
  SV_Target0.w = x_3468;
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


