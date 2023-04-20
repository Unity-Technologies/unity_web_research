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
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

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

var<private> u_xlatb1 : bool;

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

var<private> u_xlat69 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1989 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2126 : f32;
  var x_2137 : f32;
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
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat22.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat66;
  let x_108 : f32 = u_xlat44;
  u_xlat44 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat44;
  u_xlat44 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat22.x;
  let x_116 : f32 = u_xlat44;
  u_xlat22.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat22.x;
  u_xlat22.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb44;
  if (x_132) {
    let x_137 : f32 = u_xlat22.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat22.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat22.x;
  u_xlatb22 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb22;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat22;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat22.x = x_178.w;
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
  let x_444 : f32 = vs_TEXCOORD1.y;
  let x_447 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat22.x = (x_444 * x_447);
  let x_451 : f32 = x_45.unity_MatrixV[0i].z;
  let x_453 : f32 = vs_TEXCOORD1.x;
  let x_456 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_451 * x_453) + x_456);
  let x_460 : f32 = x_45.unity_MatrixV[2i].z;
  let x_462 : f32 = vs_TEXCOORD1.z;
  let x_465 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_460 * x_462) + x_465);
  let x_469 : f32 = u_xlat22.x;
  let x_471 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat22.x = (x_469 + x_471);
  let x_475 : f32 = u_xlat22.x;
  let x_479 : f32 = x_45.x_ProjectionParams.y;
  u_xlat22.x = (-(x_475) + -(x_479));
  let x_484 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_484, 0.0f);
  let x_488 : f32 = u_xlat22.x;
  let x_491 : f32 = x_45.unity_FogParams.x;
  u_xlat22.x = (x_488 * x_491);
  u_xlat2.w = 1.0f;
  let x_497 : vec4<f32> = x_186.unity_SHAr;
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_497, x_498);
  let x_503 : vec4<f32> = x_186.unity_SHAg;
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_503, x_504);
  let x_509 : vec4<f32> = x_186.unity_SHAb;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_509, x_510);
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_513.y, x_513.z, x_513.z, x_513.x) * vec4<f32>(x_515.x, x_515.y, x_515.z, x_515.z));
  let x_520 : vec4<f32> = x_186.unity_SHBr;
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_186.unity_SHBg;
  let x_527 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_186.unity_SHBb;
  let x_533 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_532, x_533);
  let x_537 : f32 = u_xlat2.y;
  let x_539 : f32 = u_xlat2.y;
  u_xlat66 = (x_537 * x_539);
  let x_542 : f32 = u_xlat2.x;
  let x_544 : f32 = u_xlat2.x;
  let x_546 : f32 = u_xlat66;
  u_xlat66 = ((x_542 * x_544) + -(x_546));
  let x_551 : vec4<f32> = x_186.unity_SHC;
  let x_553 : f32 = u_xlat66;
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553, x_553, x_553)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = u_xlat5;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat4;
  let x_570 : vec3<f32> = max(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_575 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_575);
  let x_577 : bool = u_xlatb66;
  if (x_577) {
    let x_581 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb66 = (x_581 == 1.0f);
    let x_583 : bool = u_xlatb66;
    if (x_583) {
      let x_586 : vec4<f32> = u_xlat3;
      let x_589 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y) + x_589);
      let x_593 : vec4<f32> = u_xlat5;
      let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
      let x_596 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_594.x, x_594.y, x_596);
      let x_608 : vec3<f32> = txVec0;
      let x_610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_608.xy, x_608.z);
      u_xlat6.x = x_610;
      let x_613 : vec4<f32> = u_xlat5;
      let x_614 : vec2<f32> = vec2<f32>(x_613.z, x_613.w);
      let x_616 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_614.x, x_614.y, x_616);
      let x_623 : vec3<f32> = txVec1;
      let x_625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_623.xy, x_623.z);
      u_xlat6.y = x_625;
      let x_627 : vec4<f32> = u_xlat3;
      let x_630 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y) + x_630);
      let x_633 : vec4<f32> = u_xlat5;
      let x_634 : vec2<f32> = vec2<f32>(x_633.x, x_633.y);
      let x_636 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_634.x, x_634.y, x_636);
      let x_643 : vec3<f32> = txVec2;
      let x_645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_643.xy, x_643.z);
      u_xlat6.z = x_645;
      let x_648 : vec4<f32> = u_xlat5;
      let x_649 : vec2<f32> = vec2<f32>(x_648.z, x_648.w);
      let x_651 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_649.x, x_649.y, x_651);
      let x_658 : vec3<f32> = txVec3;
      let x_660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_658.xy, x_658.z);
      u_xlat6.w = x_660;
      let x_662 : vec4<f32> = u_xlat6;
      u_xlat66 = dot(x_662, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_669 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb1 = (x_669 == 2.0f);
      let x_671 : bool = u_xlatb1;
      if (x_671) {
        let x_674 : vec4<f32> = u_xlat3;
        let x_677 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_681 : vec2<f32> = ((vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.z, x_677.w)) + vec2<f32>(0.5f, 0.5f));
        let x_682 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat5;
        let x_686 : vec2<f32> = floor(vec2<f32>(x_684.x, x_684.y));
        let x_687 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_691 : vec4<f32> = u_xlat3;
        let x_694 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_691.x, x_691.y) * vec2<f32>(x_694.z, x_694.w)) + -(vec2<f32>(x_697.x, x_697.y)));
        let x_701 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_701.x, x_701.x, x_701.y, x_701.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_706 : vec4<f32> = u_xlat6;
        let x_708 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_706.x, x_706.x, x_706.z, x_706.z) * vec4<f32>(x_708.x, x_708.x, x_708.z, x_708.z));
        let x_711 : vec4<f32> = u_xlat7;
        let x_715 : vec2<f32> = (vec2<f32>(x_711.y, x_711.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_716 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_715.x, x_716.y, x_715.y, x_716.w);
        let x_718 : vec4<f32> = u_xlat7;
        let x_721 : vec2<f32> = u_xlat49;
        let x_723 : vec2<f32> = ((vec2<f32>(x_718.x, x_718.z) * vec2<f32>(0.5f, 0.5f)) + -(x_721));
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_727 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_727) + vec2<f32>(1.0f, 1.0f));
        let x_732 : vec2<f32> = u_xlat49;
        let x_734 : vec2<f32> = min(x_732, vec2<f32>(0.0f, 0.0f));
        let x_735 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec4<f32> = u_xlat8;
        let x_740 : vec4<f32> = u_xlat8;
        let x_743 : vec2<f32> = u_xlat51;
        let x_744 : vec2<f32> = ((-(vec2<f32>(x_737.x, x_737.y)) * vec2<f32>(x_740.x, x_740.y)) + x_743);
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_747, vec2<f32>(0.0f, 0.0f));
        let x_749 : vec2<f32> = u_xlat49;
        let x_751 : vec2<f32> = u_xlat49;
        let x_753 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_749) * x_751) + vec2<f32>(x_753.y, x_753.w));
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) + vec2<f32>(1.0f, 1.0f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_761 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_761 + vec2<f32>(1.0f, 1.0f));
        let x_764 : vec4<f32> = u_xlat7;
        let x_768 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_771 : vec2<f32> = u_xlat51;
        let x_772 : vec2<f32> = (x_771 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_773 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat8;
        let x_777 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_781 : vec2<f32> = u_xlat49;
        let x_782 : vec2<f32> = (x_781 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_783 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_785.y, x_785.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_789 : f32 = u_xlat8.x;
        u_xlat9.z = x_789;
        let x_792 : f32 = u_xlat49.x;
        u_xlat9.w = x_792;
        let x_795 : f32 = u_xlat10.x;
        u_xlat7.z = x_795;
        let x_798 : f32 = u_xlat6.x;
        u_xlat7.w = x_798;
        let x_801 : vec4<f32> = u_xlat7;
        let x_803 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_801.z, x_801.w, x_801.x, x_801.z) + vec4<f32>(x_803.z, x_803.w, x_803.x, x_803.z));
        let x_807 : f32 = u_xlat9.y;
        u_xlat8.z = x_807;
        let x_810 : f32 = u_xlat49.y;
        u_xlat8.w = x_810;
        let x_813 : f32 = u_xlat7.y;
        u_xlat10.z = x_813;
        let x_816 : f32 = u_xlat6.z;
        u_xlat10.w = x_816;
        let x_818 : vec4<f32> = u_xlat8;
        let x_820 : vec4<f32> = u_xlat10;
        let x_822 : vec3<f32> = (vec3<f32>(x_818.z, x_818.y, x_818.w) + vec3<f32>(x_820.z, x_820.y, x_820.w));
        let x_823 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat7;
        let x_827 : vec4<f32> = u_xlat11;
        let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.z, x_825.w) / vec3<f32>(x_827.z, x_827.w, x_827.y));
        let x_830 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat7;
        let x_838 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_839 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
        let x_841 : vec4<f32> = u_xlat10;
        let x_843 : vec4<f32> = u_xlat6;
        let x_845 : vec3<f32> = (vec3<f32>(x_841.z, x_841.y, x_841.w) / vec3<f32>(x_843.x, x_843.y, x_843.z));
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat8;
        let x_850 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat7;
        let x_856 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_858 : vec3<f32> = (vec3<f32>(x_853.y, x_853.x, x_853.z) * vec3<f32>(x_856.x, x_856.x, x_856.x));
        let x_859 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
        let x_861 : vec4<f32> = u_xlat8;
        let x_864 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_866 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_864.y, x_864.y, x_864.y));
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_870 : f32 = u_xlat8.x;
        u_xlat7.w = x_870;
        let x_872 : vec4<f32> = u_xlat5;
        let x_875 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_872.x, x_872.y, x_872.x, x_872.y) * vec4<f32>(x_875.x, x_875.y, x_875.x, x_875.y)) + vec4<f32>(x_878.y, x_878.w, x_878.x, x_878.w));
        let x_881 : vec4<f32> = u_xlat5;
        let x_884 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_887 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.x, x_884.y)) + vec2<f32>(x_887.z, x_887.w));
        let x_891 : f32 = u_xlat7.y;
        u_xlat8.w = x_891;
        let x_893 : vec4<f32> = u_xlat8;
        let x_894 : vec2<f32> = vec2<f32>(x_893.y, x_893.z);
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_895.x, x_894.x, x_895.z, x_894.y);
        let x_897 : vec4<f32> = u_xlat5;
        let x_900 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y) * vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y)) + vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.y));
        let x_906 : vec4<f32> = u_xlat5;
        let x_909 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y) * vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y)) + vec4<f32>(x_912.w, x_912.y, x_912.w, x_912.z));
        let x_915 : vec4<f32> = u_xlat5;
        let x_918 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_915.x, x_915.y, x_915.x, x_915.y) * vec4<f32>(x_918.x, x_918.y, x_918.x, x_918.y)) + vec4<f32>(x_921.x, x_921.w, x_921.z, x_921.w));
        let x_925 : vec4<f32> = u_xlat6;
        let x_927 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_925.x, x_925.x, x_925.x, x_925.y) * vec4<f32>(x_927.z, x_927.w, x_927.y, x_927.z));
        let x_931 : vec4<f32> = u_xlat6;
        let x_933 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_931.y, x_931.y, x_931.z, x_931.z) * x_933);
        let x_936 : f32 = u_xlat6.z;
        let x_938 : f32 = u_xlat11.y;
        u_xlat1.x = (x_936 * x_938);
        let x_942 : vec4<f32> = u_xlat9;
        let x_943 : vec2<f32> = vec2<f32>(x_942.x, x_942.y);
        let x_945 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_953 : vec3<f32> = txVec4;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat68 = x_955;
        let x_957 : vec4<f32> = u_xlat9;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_968 : vec3<f32> = txVec5;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
        u_xlat69 = x_970;
        let x_971 : f32 = u_xlat69;
        let x_973 : f32 = u_xlat12.y;
        u_xlat69 = (x_971 * x_973);
        let x_976 : f32 = u_xlat12.x;
        let x_977 : f32 = u_xlat68;
        let x_979 : f32 = u_xlat69;
        u_xlat68 = ((x_976 * x_977) + x_979);
        let x_982 : vec2<f32> = u_xlat49;
        let x_984 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec6;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat69 = x_993;
        let x_995 : f32 = u_xlat12.z;
        let x_996 : f32 = u_xlat69;
        let x_998 : f32 = u_xlat68;
        u_xlat68 = ((x_995 * x_996) + x_998);
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
        let x_1004 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec7;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
        u_xlat69 = x_1013;
        let x_1015 : f32 = u_xlat12.w;
        let x_1016 : f32 = u_xlat69;
        let x_1018 : f32 = u_xlat68;
        u_xlat68 = ((x_1015 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat10;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
        let x_1024 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec8;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat69 = x_1033;
        let x_1035 : f32 = u_xlat13.x;
        let x_1036 : f32 = u_xlat69;
        let x_1038 : f32 = u_xlat68;
        u_xlat68 = ((x_1035 * x_1036) + x_1038);
        let x_1041 : vec4<f32> = u_xlat10;
        let x_1042 : vec2<f32> = vec2<f32>(x_1041.z, x_1041.w);
        let x_1044 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1042.x, x_1042.y, x_1044);
        let x_1051 : vec3<f32> = txVec9;
        let x_1053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1051.xy, x_1051.z);
        u_xlat69 = x_1053;
        let x_1055 : f32 = u_xlat13.y;
        let x_1056 : f32 = u_xlat69;
        let x_1058 : f32 = u_xlat68;
        u_xlat68 = ((x_1055 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec10;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat69 = x_1073;
        let x_1075 : f32 = u_xlat13.z;
        let x_1076 : f32 = u_xlat69;
        let x_1078 : f32 = u_xlat68;
        u_xlat68 = ((x_1075 * x_1076) + x_1078);
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1082 : vec2<f32> = vec2<f32>(x_1081.x, x_1081.y);
        let x_1084 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
        let x_1091 : vec3<f32> = txVec11;
        let x_1093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1091.xy, x_1091.z);
        u_xlat69 = x_1093;
        let x_1095 : f32 = u_xlat13.w;
        let x_1096 : f32 = u_xlat69;
        let x_1098 : f32 = u_xlat68;
        u_xlat68 = ((x_1095 * x_1096) + x_1098);
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.z, x_1101.w);
        let x_1104 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1111 : vec3<f32> = txVec12;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
        u_xlat69 = x_1113;
        let x_1115 : f32 = u_xlat1.x;
        let x_1116 : f32 = u_xlat69;
        let x_1118 : f32 = u_xlat68;
        u_xlat66 = ((x_1115 * x_1116) + x_1118);
      } else {
        let x_1121 : vec4<f32> = u_xlat3;
        let x_1124 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.z, x_1124.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1128 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat5;
        let x_1132 : vec2<f32> = floor(vec2<f32>(x_1130.x, x_1130.y));
        let x_1133 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat3;
        let x_1138 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + -(vec2<f32>(x_1141.x, x_1141.y)));
        let x_1145 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.y, x_1145.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1150 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1157 : vec2<f32> = (vec2<f32>(x_1153.y, x_1153.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1158.x, x_1157.x, x_1158.z, x_1157.y);
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1163 : vec2<f32> = u_xlat49;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1163));
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat49;
        let x_1170 : vec2<f32> = (-(x_1168) + vec2<f32>(1.0f, 1.0f));
        let x_1171 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1173 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1173, vec2<f32>(0.0f, 0.0f));
        let x_1175 : vec2<f32> = u_xlat51;
        let x_1177 : vec2<f32> = u_xlat51;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((-(x_1175) * x_1177) + vec2<f32>(x_1179.x, x_1179.y));
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1184, vec2<f32>(0.0f, 0.0f));
        let x_1187 : vec2<f32> = u_xlat51;
        let x_1189 : vec2<f32> = u_xlat51;
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1193 : vec2<f32> = ((-(x_1187) * x_1189) + vec2<f32>(x_1191.y, x_1191.w));
        let x_1194 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1193.x, x_1194.y, x_1193.y);
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1199 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.y) + vec2<f32>(2.0f, 2.0f));
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec3<f32> = u_xlat28;
        let x_1204 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.z) + vec2<f32>(2.0f, 2.0f));
        let x_1205 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1208 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1208 * 0.08163200318813323975f);
        let x_1212 : vec4<f32> = u_xlat6;
        let x_1215 : vec3<f32> = (vec3<f32>(x_1212.z, x_1212.x, x_1212.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1222 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1225 : f32 = u_xlat10.y;
        u_xlat9.x = x_1225;
        let x_1227 : vec2<f32> = u_xlat49;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1234.x, x_1235.z, x_1234.y);
        let x_1237 : vec2<f32> = u_xlat49;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1242.w);
        let x_1245 : f32 = u_xlat6.x;
        u_xlat7.y = x_1245;
        let x_1248 : f32 = u_xlat8.y;
        u_xlat7.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1250 + x_1251);
        let x_1253 : vec2<f32> = u_xlat49;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec2<f32> = u_xlat49;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1263 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1266 : f32 = u_xlat6.y;
        u_xlat8.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat8;
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1268 + x_1269);
        let x_1271 : vec4<f32> = u_xlat7;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1271 / x_1272);
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1274 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1281 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1285 : vec4<f32> = u_xlat7;
        let x_1288 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1285.w, x_1285.x, x_1285.y, x_1285.z) * vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.x));
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1294 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1291.x, x_1291.w, x_1291.y, x_1291.z) * vec4<f32>(x_1294.y, x_1294.y, x_1294.y, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat7;
        let x_1298 : vec3<f32> = vec3<f32>(x_1297.y, x_1297.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1298.x, x_1299.y, x_1298.y, x_1298.z);
        let x_1302 : f32 = u_xlat8.x;
        u_xlat10.y = x_1302;
        let x_1304 : vec4<f32> = u_xlat5;
        let x_1307 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1323 : f32 = u_xlat10.y;
        u_xlat7.y = x_1323;
        let x_1326 : f32 = u_xlat8.z;
        u_xlat10.y = x_1326;
        let x_1328 : vec4<f32> = u_xlat5;
        let x_1331 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1337 : vec4<f32> = u_xlat5;
        let x_1340 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1346 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1349 : f32 = u_xlat10.y;
        u_xlat7.z = x_1349;
        let x_1352 : vec4<f32> = u_xlat5;
        let x_1355 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.z));
        let x_1362 : f32 = u_xlat8.w;
        u_xlat10.y = x_1362;
        let x_1365 : vec4<f32> = u_xlat5;
        let x_1368 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1371.y));
        let x_1375 : vec4<f32> = u_xlat5;
        let x_1378 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.w, x_1381.y));
        let x_1385 : f32 = u_xlat10.y;
        u_xlat7.w = x_1385;
        let x_1388 : vec4<f32> = u_xlat5;
        let x_1391 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.x, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat10;
        let x_1398 : vec3<f32> = vec3<f32>(x_1397.x, x_1397.z, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1398.z);
        let x_1401 : vec4<f32> = u_xlat5;
        let x_1404 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y) * vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y)) + vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1407.y));
        let x_1411 : vec4<f32> = u_xlat5;
        let x_1414 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.w, x_1417.y));
        let x_1421 : f32 = u_xlat7.x;
        u_xlat8.x = x_1421;
        let x_1423 : vec4<f32> = u_xlat5;
        let x_1426 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1429.x, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1435 : vec4<f32> = u_xlat6;
        let x_1437 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1435.x, x_1435.x, x_1435.x, x_1435.x) * x_1437);
        let x_1440 : vec4<f32> = u_xlat6;
        let x_1442 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1442);
        let x_1445 : vec4<f32> = u_xlat6;
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1445.z, x_1445.z, x_1445.z, x_1445.z) * x_1447);
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1449.w, x_1449.w, x_1449.w, x_1449.w) * x_1451);
        let x_1454 : vec4<f32> = u_xlat11;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec13;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat1.x = x_1466;
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec14;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat68 = x_1481;
        let x_1482 : f32 = u_xlat68;
        let x_1484 : f32 = u_xlat16.y;
        u_xlat68 = (x_1482 * x_1484);
        let x_1487 : f32 = u_xlat16.x;
        let x_1489 : f32 = u_xlat1.x;
        let x_1491 : f32 = u_xlat68;
        u_xlat1.x = ((x_1487 * x_1489) + x_1491);
        let x_1495 : vec2<f32> = u_xlat49;
        let x_1497 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec15;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat68 = x_1506;
        let x_1508 : f32 = u_xlat16.z;
        let x_1509 : f32 = u_xlat68;
        let x_1512 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1508 * x_1509) + x_1512);
        let x_1516 : vec4<f32> = u_xlat14;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec16;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat68 = x_1528;
        let x_1530 : f32 = u_xlat16.w;
        let x_1531 : f32 = u_xlat68;
        let x_1534 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1530 * x_1531) + x_1534);
        let x_1538 : vec4<f32> = u_xlat12;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec17;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat68 = x_1550;
        let x_1552 : f32 = u_xlat17.x;
        let x_1553 : f32 = u_xlat68;
        let x_1556 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1552 * x_1553) + x_1556);
        let x_1560 : vec4<f32> = u_xlat12;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.z, x_1560.w);
        let x_1563 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec18;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat68 = x_1572;
        let x_1574 : f32 = u_xlat17.y;
        let x_1575 : f32 = u_xlat68;
        let x_1578 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1574 * x_1575) + x_1578);
        let x_1582 : vec4<f32> = u_xlat13;
        let x_1583 : vec2<f32> = vec2<f32>(x_1582.x, x_1582.y);
        let x_1585 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec19;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1592.xy, x_1592.z);
        u_xlat68 = x_1594;
        let x_1596 : f32 = u_xlat17.z;
        let x_1597 : f32 = u_xlat68;
        let x_1600 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1596 * x_1597) + x_1600);
        let x_1604 : vec4<f32> = u_xlat14;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.z, x_1604.w);
        let x_1607 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1614 : vec3<f32> = txVec20;
        let x_1616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1614.xy, x_1614.z);
        u_xlat68 = x_1616;
        let x_1618 : f32 = u_xlat17.w;
        let x_1619 : f32 = u_xlat68;
        let x_1622 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1618 * x_1619) + x_1622);
        let x_1626 : vec4<f32> = u_xlat15;
        let x_1627 : vec2<f32> = vec2<f32>(x_1626.x, x_1626.y);
        let x_1629 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec21;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1636.xy, x_1636.z);
        u_xlat68 = x_1638;
        let x_1640 : f32 = u_xlat18.x;
        let x_1641 : f32 = u_xlat68;
        let x_1644 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1640 * x_1641) + x_1644);
        let x_1648 : vec4<f32> = u_xlat15;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.z, x_1648.w);
        let x_1651 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec22;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
        u_xlat68 = x_1660;
        let x_1662 : f32 = u_xlat18.y;
        let x_1663 : f32 = u_xlat68;
        let x_1666 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1662 * x_1663) + x_1666);
        let x_1670 : vec2<f32> = u_xlat29;
        let x_1672 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec23;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat68 = x_1681;
        let x_1683 : f32 = u_xlat18.z;
        let x_1684 : f32 = u_xlat68;
        let x_1687 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1683 * x_1684) + x_1687);
        let x_1691 : vec2<f32> = u_xlat57;
        let x_1693 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec24;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1700.xy, x_1700.z);
        u_xlat68 = x_1702;
        let x_1704 : f32 = u_xlat18.w;
        let x_1705 : f32 = u_xlat68;
        let x_1708 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1704 * x_1705) + x_1708);
        let x_1712 : vec4<f32> = u_xlat10;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.x, x_1712.y);
        let x_1715 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec25;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1722.xy, x_1722.z);
        u_xlat68 = x_1724;
        let x_1726 : f32 = u_xlat6.x;
        let x_1727 : f32 = u_xlat68;
        let x_1730 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1726 * x_1727) + x_1730);
        let x_1734 : vec4<f32> = u_xlat10;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.z, x_1734.w);
        let x_1737 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec26;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1744.xy, x_1744.z);
        u_xlat68 = x_1746;
        let x_1748 : f32 = u_xlat6.y;
        let x_1749 : f32 = u_xlat68;
        let x_1752 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1748 * x_1749) + x_1752);
        let x_1756 : vec2<f32> = u_xlat52;
        let x_1758 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec27;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat68 = x_1767;
        let x_1769 : f32 = u_xlat6.z;
        let x_1770 : f32 = u_xlat68;
        let x_1773 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1769 * x_1770) + x_1773);
        let x_1777 : vec4<f32> = u_xlat5;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.x, x_1777.y);
        let x_1780 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec28;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1787.xy, x_1787.z);
        u_xlat68 = x_1789;
        let x_1791 : f32 = u_xlat6.w;
        let x_1792 : f32 = u_xlat68;
        let x_1795 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1791 * x_1792) + x_1795);
      }
    }
  } else {
    let x_1799 : vec4<f32> = u_xlat3;
    let x_1800 : vec2<f32> = vec2<f32>(x_1799.x, x_1799.y);
    let x_1802 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
    let x_1809 : vec3<f32> = txVec29;
    let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1809.xy, x_1809.z);
    u_xlat66 = x_1811;
  }
  let x_1813 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1813) + 1.0f);
  let x_1817 : f32 = u_xlat66;
  let x_1819 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1822 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1817 * x_1819) + x_1822);
  let x_1825 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_1825);
  let x_1829 : f32 = u_xlat3.z;
  u_xlatb68 = (x_1829 >= 1.0f);
  let x_1831 : bool = u_xlatb1;
  let x_1832 : bool = u_xlatb68;
  u_xlatb1 = (x_1831 | x_1832);
  let x_1834 : bool = u_xlatb1;
  let x_1835 : f32 = u_xlat66;
  u_xlat66 = select(x_1835, 1.0f, x_1834);
  let x_1837 : vec3<f32> = vs_TEXCOORD1;
  let x_1840 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1842 : vec3<f32> = (x_1837 + -(x_1840));
  let x_1843 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
  let x_1845 : vec4<f32> = u_xlat3;
  let x_1847 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_1845.x, x_1845.y, x_1845.z), vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
  let x_1852 : f32 = u_xlat1.x;
  let x_1854 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1857 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1852 * x_1854) + x_1857);
  let x_1859 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1859, 0.0f, 1.0f);
  let x_1861 : f32 = u_xlat66;
  u_xlat3.x = (-(x_1861) + 1.0f);
  let x_1865 : f32 = u_xlat68;
  let x_1867 : f32 = u_xlat3.x;
  let x_1869 : f32 = u_xlat66;
  u_xlat66 = ((x_1865 * x_1867) + x_1869);
  let x_1871 : f32 = u_xlat66;
  let x_1873 : f32 = x_186.unity_LightData.z;
  u_xlat66 = (x_1871 * x_1873);
  let x_1875 : f32 = u_xlat66;
  let x_1878 : vec4<f32> = x_45.x_MainLightColor;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1875, x_1875, x_1875) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1883 : vec4<f32> = u_xlat2;
  let x_1886 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1889, 0.0f, 1.0f);
  let x_1891 : f32 = u_xlat66;
  let x_1893 : vec4<f32> = u_xlat3;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891, x_1891, x_1891) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat1;
  let x_1900 : vec4<f32> = u_xlat3;
  let x_1902 : vec3<f32> = (vec3<f32>(x_1898.y, x_1898.z, x_1898.w) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1905 : vec4<f32> = u_xlat0;
  let x_1907 : vec4<f32> = u_xlat3;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.x, x_1905.x) * vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1913 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1915 : f32 = x_186.unity_LightData.y;
  u_xlat66 = min(x_1913, x_1915);
  let x_1918 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1918));
  let x_1922 : f32 = u_xlat1.x;
  let x_1925 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_1928 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1922 * x_1925) + x_1928);
  let x_1932 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1932, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1945 : u32 = u_xlatu_loop_1;
    let x_1946 : u32 = u_xlatu66;
    if ((x_1945 < x_1946)) {
    } else {
      break;
    }
    let x_1949 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1949 >> 2u);
    let x_1952 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1952 & 3u));
    let x_1955 : u32 = u_xlatu69;
    let x_1958 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1955)];
    let x_1968 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1973 : vec4<u32> = indexable[x_1968];
    u_xlat69 = dot(x_1958, bitcast<vec4<f32>>(x_1973));
    let x_1977 : f32 = u_xlat69;
    u_xlati69 = i32(x_1977);
    let x_1979 : vec3<f32> = vs_TEXCOORD1;
    let x_1990 : i32 = u_xlati69;
    let x_1992 : vec4<f32> = x_1989.x_AdditionalLightsPosition[x_1990];
    let x_1995 : i32 = u_xlati69;
    let x_1997 : vec4<f32> = x_1989.x_AdditionalLightsPosition[x_1995];
    let x_1999 : vec3<f32> = ((-(x_1979) * vec3<f32>(x_1992.w, x_1992.w, x_1992.w)) + vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2003 : vec4<f32> = u_xlat6;
    let x_2005 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : f32 = u_xlat70;
    u_xlat70 = max(x_2008, 0.00006103515625f);
    let x_2012 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2012);
    let x_2014 : f32 = u_xlat71;
    let x_2016 : vec4<f32> = u_xlat6;
    let x_2018 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
    let x_2021 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_2021);
    let x_2023 : f32 = u_xlat70;
    let x_2024 : i32 = u_xlati69;
    let x_2026 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2024].x;
    u_xlat70 = (x_2023 * x_2026);
    let x_2028 : f32 = u_xlat70;
    let x_2030 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2028) * x_2030) + 1.0f);
    let x_2033 : f32 = u_xlat70;
    u_xlat70 = max(x_2033, 0.0f);
    let x_2035 : f32 = u_xlat70;
    let x_2036 : f32 = u_xlat70;
    u_xlat70 = (x_2035 * x_2036);
    let x_2038 : f32 = u_xlat70;
    let x_2039 : f32 = u_xlat71;
    u_xlat70 = (x_2038 * x_2039);
    let x_2041 : i32 = u_xlati69;
    let x_2043 : vec4<f32> = x_1989.x_AdditionalLightsSpotDir[x_2041];
    let x_2045 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_2043.x, x_2043.y, x_2043.z), vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : f32 = u_xlat71;
    let x_2049 : i32 = u_xlati69;
    let x_2051 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2049].z;
    let x_2053 : i32 = u_xlati69;
    let x_2055 : f32 = x_1989.x_AdditionalLightsAttenuation[x_2053].w;
    u_xlat71 = ((x_2048 * x_2051) + x_2055);
    let x_2057 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2057, 0.0f, 1.0f);
    let x_2059 : f32 = u_xlat71;
    let x_2060 : f32 = u_xlat71;
    u_xlat71 = (x_2059 * x_2060);
    let x_2062 : f32 = u_xlat70;
    let x_2063 : f32 = u_xlat71;
    u_xlat70 = (x_2062 * x_2063);
    let x_2067 : i32 = u_xlati69;
    let x_2069 : f32 = x_249.x_AdditionalShadowParams[x_2067].w;
    u_xlati71 = i32(x_2069);
    let x_2072 : i32 = u_xlati71;
    u_xlatb72 = (x_2072 >= 0i);
    let x_2074 : bool = u_xlatb72;
    if (x_2074) {
      let x_2078 : i32 = u_xlati69;
      let x_2080 : f32 = x_249.x_AdditionalShadowParams[x_2078].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2080, x_2080, x_2080, x_2080))));
      let x_2084 : bool = u_xlatb72;
      if (x_2084) {
        let x_2088 : vec4<f32> = u_xlat6;
        let x_2091 : vec4<f32> = u_xlat6;
        let x_2094 : vec4<bool> = (abs(vec4<f32>(x_2088.z, x_2088.z, x_2088.y, x_2088.z)) >= abs(vec4<f32>(x_2091.x, x_2091.y, x_2091.x, x_2091.x)));
        let x_2096 : vec3<bool> = vec3<bool>(x_2094.x, x_2094.y, x_2094.z);
        let x_2097 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
        let x_2100 : bool = u_xlatb7.y;
        let x_2102 : bool = u_xlatb7.x;
        u_xlatb72 = (x_2100 & x_2102);
        let x_2104 : vec4<f32> = u_xlat6;
        let x_2107 : vec4<bool> = (-(vec4<f32>(x_2104.z, x_2104.y, x_2104.z, x_2104.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2108 : vec3<bool> = vec3<bool>(x_2107.x, x_2107.y, x_2107.w);
        let x_2109 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2108.x, x_2108.y, x_2109.z, x_2108.z);
        let x_2112 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_2112);
        let x_2117 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_2117);
        let x_2122 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_2122);
        let x_2125 : bool = u_xlatb7.z;
        if (x_2125) {
          let x_2130 : f32 = u_xlat7.y;
          x_2126 = x_2130;
        } else {
          let x_2132 : f32 = u_xlat73;
          x_2126 = x_2132;
        }
        let x_2133 : f32 = x_2126;
        u_xlat29.x = x_2133;
        let x_2136 : bool = u_xlatb72;
        if (x_2136) {
          let x_2141 : f32 = u_xlat7.x;
          x_2137 = x_2141;
        } else {
          let x_2144 : f32 = u_xlat29.x;
          x_2137 = x_2144;
        }
        let x_2145 : f32 = x_2137;
        u_xlat72 = x_2145;
        let x_2146 : i32 = u_xlati69;
        let x_2148 : f32 = x_249.x_AdditionalShadowParams[x_2146].w;
        u_xlat7.x = trunc(x_2148);
        let x_2151 : f32 = u_xlat72;
        let x_2153 : f32 = u_xlat7.x;
        u_xlat72 = (x_2151 + x_2153);
        let x_2155 : f32 = u_xlat72;
        u_xlati71 = i32(x_2155);
      }
      let x_2157 : i32 = u_xlati71;
      u_xlati71 = (x_2157 << bitcast<u32>(2i));
      let x_2159 : vec3<f32> = vs_TEXCOORD1;
      let x_2162 : i32 = u_xlati71;
      let x_2165 : i32 = u_xlati71;
      let x_2169 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2162 + 1i) / 4i)][((x_2165 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2159.y, x_2159.y, x_2159.y, x_2159.y) * x_2169);
      let x_2171 : i32 = u_xlati71;
      let x_2173 : i32 = u_xlati71;
      let x_2176 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2171 / 4i)][(x_2173 % 4i)];
      let x_2177 : vec3<f32> = vs_TEXCOORD1;
      let x_2180 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2176 * vec4<f32>(x_2177.x, x_2177.x, x_2177.x, x_2177.x)) + x_2180);
      let x_2182 : i32 = u_xlati71;
      let x_2185 : i32 = u_xlati71;
      let x_2189 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2182 + 2i) / 4i)][((x_2185 + 2i) % 4i)];
      let x_2190 : vec3<f32> = vs_TEXCOORD1;
      let x_2193 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2189 * vec4<f32>(x_2190.z, x_2190.z, x_2190.z, x_2190.z)) + x_2193);
      let x_2195 : vec4<f32> = u_xlat7;
      let x_2196 : i32 = u_xlati71;
      let x_2199 : i32 = u_xlati71;
      let x_2203 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2196 + 3i) / 4i)][((x_2199 + 3i) % 4i)];
      u_xlat7 = (x_2195 + x_2203);
      let x_2205 : vec4<f32> = u_xlat7;
      let x_2207 : vec4<f32> = u_xlat7;
      let x_2209 : vec3<f32> = (vec3<f32>(x_2205.x, x_2205.y, x_2205.z) / vec3<f32>(x_2207.w, x_2207.w, x_2207.w));
      let x_2210 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
      let x_2213 : i32 = u_xlati69;
      let x_2215 : f32 = x_249.x_AdditionalShadowParams[x_2213].y;
      u_xlatb71 = (0.0f < x_2215);
      let x_2217 : bool = u_xlatb71;
      if (x_2217) {
        let x_2220 : i32 = u_xlati69;
        let x_2222 : f32 = x_249.x_AdditionalShadowParams[x_2220].y;
        u_xlatb71 = (1.0f == x_2222);
        let x_2224 : bool = u_xlatb71;
        if (x_2224) {
          let x_2227 : vec4<f32> = u_xlat7;
          let x_2230 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2227.x, x_2227.y, x_2227.x, x_2227.y) + x_2230);
          let x_2233 : vec4<f32> = u_xlat8;
          let x_2234 : vec2<f32> = vec2<f32>(x_2233.x, x_2233.y);
          let x_2236 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2234.x, x_2234.y, x_2236);
          let x_2244 : vec3<f32> = txVec30;
          let x_2246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2244.xy, x_2244.z);
          u_xlat9.x = x_2246;
          let x_2249 : vec4<f32> = u_xlat8;
          let x_2250 : vec2<f32> = vec2<f32>(x_2249.z, x_2249.w);
          let x_2252 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2250.x, x_2250.y, x_2252);
          let x_2259 : vec3<f32> = txVec31;
          let x_2261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2259.xy, x_2259.z);
          u_xlat9.y = x_2261;
          let x_2263 : vec4<f32> = u_xlat7;
          let x_2267 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2263.x, x_2263.y, x_2263.x, x_2263.y) + x_2267);
          let x_2270 : vec4<f32> = u_xlat8;
          let x_2271 : vec2<f32> = vec2<f32>(x_2270.x, x_2270.y);
          let x_2273 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2271.x, x_2271.y, x_2273);
          let x_2280 : vec3<f32> = txVec32;
          let x_2282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2280.xy, x_2280.z);
          u_xlat9.z = x_2282;
          let x_2285 : vec4<f32> = u_xlat8;
          let x_2286 : vec2<f32> = vec2<f32>(x_2285.z, x_2285.w);
          let x_2288 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
          let x_2295 : vec3<f32> = txVec33;
          let x_2297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
          u_xlat9.w = x_2297;
          let x_2299 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2299, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2302 : i32 = u_xlati69;
          let x_2304 : f32 = x_249.x_AdditionalShadowParams[x_2302].y;
          u_xlatb72 = (2.0f == x_2304);
          let x_2306 : bool = u_xlatb72;
          if (x_2306) {
            let x_2309 : vec4<f32> = u_xlat7;
            let x_2313 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2316 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(x_2313.z, x_2313.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2317 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
            let x_2319 : vec4<f32> = u_xlat8;
            let x_2321 : vec2<f32> = floor(vec2<f32>(x_2319.x, x_2319.y));
            let x_2322 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
            let x_2324 : vec4<f32> = u_xlat7;
            let x_2327 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2330 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2324.x, x_2324.y) * vec2<f32>(x_2327.z, x_2327.w)) + -(vec2<f32>(x_2330.x, x_2330.y)));
            let x_2334 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2334.x, x_2334.x, x_2334.y, x_2334.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2337 : vec4<f32> = u_xlat9;
            let x_2339 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2337.x, x_2337.x, x_2337.z, x_2337.z) * vec4<f32>(x_2339.x, x_2339.x, x_2339.z, x_2339.z));
            let x_2342 : vec4<f32> = u_xlat10;
            let x_2344 : vec2<f32> = (vec2<f32>(x_2342.y, x_2342.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2345 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2344.x, x_2345.y, x_2344.y, x_2345.w);
            let x_2347 : vec4<f32> = u_xlat10;
            let x_2350 : vec2<f32> = u_xlat52;
            let x_2352 : vec2<f32> = ((vec2<f32>(x_2347.x, x_2347.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2350));
            let x_2353 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2352.x, x_2352.y, x_2353.z, x_2353.w);
            let x_2356 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2356) + vec2<f32>(1.0f, 1.0f));
            let x_2359 : vec2<f32> = u_xlat52;
            let x_2360 : vec2<f32> = min(x_2359, vec2<f32>(0.0f, 0.0f));
            let x_2361 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
            let x_2363 : vec4<f32> = u_xlat11;
            let x_2366 : vec4<f32> = u_xlat11;
            let x_2369 : vec2<f32> = u_xlat54;
            let x_2370 : vec2<f32> = ((-(vec2<f32>(x_2363.x, x_2363.y)) * vec2<f32>(x_2366.x, x_2366.y)) + x_2369);
            let x_2371 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2370.x, x_2370.y, x_2371.z, x_2371.w);
            let x_2373 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2373, vec2<f32>(0.0f, 0.0f));
            let x_2375 : vec2<f32> = u_xlat52;
            let x_2377 : vec2<f32> = u_xlat52;
            let x_2379 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2375) * x_2377) + vec2<f32>(x_2379.y, x_2379.w));
            let x_2382 : vec4<f32> = u_xlat11;
            let x_2384 : vec2<f32> = (vec2<f32>(x_2382.x, x_2382.y) + vec2<f32>(1.0f, 1.0f));
            let x_2385 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2387 + vec2<f32>(1.0f, 1.0f));
            let x_2389 : vec4<f32> = u_xlat10;
            let x_2391 : vec2<f32> = (vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2392 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2391.x, x_2391.y, x_2392.z, x_2392.w);
            let x_2394 : vec2<f32> = u_xlat54;
            let x_2395 : vec2<f32> = (x_2394 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2396 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2398 : vec4<f32> = u_xlat11;
            let x_2400 : vec2<f32> = (vec2<f32>(x_2398.x, x_2398.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2401 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec2<f32> = u_xlat52;
            let x_2404 : vec2<f32> = (x_2403 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2405 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2404.x, x_2404.y, x_2405.z, x_2405.w);
            let x_2407 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2407.y, x_2407.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2411 : f32 = u_xlat11.x;
            u_xlat12.z = x_2411;
            let x_2414 : f32 = u_xlat52.x;
            u_xlat12.w = x_2414;
            let x_2417 : f32 = u_xlat13.x;
            u_xlat10.z = x_2417;
            let x_2420 : f32 = u_xlat9.x;
            u_xlat10.w = x_2420;
            let x_2422 : vec4<f32> = u_xlat10;
            let x_2424 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2422.z, x_2422.w, x_2422.x, x_2422.z) + vec4<f32>(x_2424.z, x_2424.w, x_2424.x, x_2424.z));
            let x_2428 : f32 = u_xlat12.y;
            u_xlat11.z = x_2428;
            let x_2431 : f32 = u_xlat52.y;
            u_xlat11.w = x_2431;
            let x_2434 : f32 = u_xlat10.y;
            u_xlat13.z = x_2434;
            let x_2437 : f32 = u_xlat9.z;
            u_xlat13.w = x_2437;
            let x_2439 : vec4<f32> = u_xlat11;
            let x_2441 : vec4<f32> = u_xlat13;
            let x_2443 : vec3<f32> = (vec3<f32>(x_2439.z, x_2439.y, x_2439.w) + vec3<f32>(x_2441.z, x_2441.y, x_2441.w));
            let x_2444 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
            let x_2446 : vec4<f32> = u_xlat10;
            let x_2448 : vec4<f32> = u_xlat14;
            let x_2450 : vec3<f32> = (vec3<f32>(x_2446.x, x_2446.z, x_2446.w) / vec3<f32>(x_2448.z, x_2448.w, x_2448.y));
            let x_2451 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
            let x_2453 : vec4<f32> = u_xlat10;
            let x_2455 : vec3<f32> = (vec3<f32>(x_2453.x, x_2453.y, x_2453.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2456 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
            let x_2458 : vec4<f32> = u_xlat13;
            let x_2460 : vec4<f32> = u_xlat9;
            let x_2462 : vec3<f32> = (vec3<f32>(x_2458.z, x_2458.y, x_2458.w) / vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
            let x_2463 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
            let x_2465 : vec4<f32> = u_xlat11;
            let x_2467 : vec3<f32> = (vec3<f32>(x_2465.x, x_2465.y, x_2465.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2468 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
            let x_2470 : vec4<f32> = u_xlat10;
            let x_2473 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2475 : vec3<f32> = (vec3<f32>(x_2470.y, x_2470.x, x_2470.z) * vec3<f32>(x_2473.x, x_2473.x, x_2473.x));
            let x_2476 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
            let x_2478 : vec4<f32> = u_xlat11;
            let x_2481 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2483 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) * vec3<f32>(x_2481.y, x_2481.y, x_2481.y));
            let x_2484 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
            let x_2487 : f32 = u_xlat11.x;
            u_xlat10.w = x_2487;
            let x_2489 : vec4<f32> = u_xlat8;
            let x_2492 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2495 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.y) * vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y)) + vec4<f32>(x_2495.y, x_2495.w, x_2495.x, x_2495.w));
            let x_2498 : vec4<f32> = u_xlat8;
            let x_2501 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2504 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2498.x, x_2498.y) * vec2<f32>(x_2501.x, x_2501.y)) + vec2<f32>(x_2504.z, x_2504.w));
            let x_2508 : f32 = u_xlat10.y;
            u_xlat11.w = x_2508;
            let x_2510 : vec4<f32> = u_xlat11;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.y, x_2510.z);
            let x_2512 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2512.x, x_2511.x, x_2512.z, x_2511.y);
            let x_2514 : vec4<f32> = u_xlat8;
            let x_2517 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2520 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2514.x, x_2514.y, x_2514.x, x_2514.y) * vec4<f32>(x_2517.x, x_2517.y, x_2517.x, x_2517.y)) + vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2520.y));
            let x_2523 : vec4<f32> = u_xlat8;
            let x_2526 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2529 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2523.x, x_2523.y, x_2523.x, x_2523.y) * vec4<f32>(x_2526.x, x_2526.y, x_2526.x, x_2526.y)) + vec4<f32>(x_2529.w, x_2529.y, x_2529.w, x_2529.z));
            let x_2532 : vec4<f32> = u_xlat8;
            let x_2535 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2538 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y) * vec4<f32>(x_2535.x, x_2535.y, x_2535.x, x_2535.y)) + vec4<f32>(x_2538.x, x_2538.w, x_2538.z, x_2538.w));
            let x_2541 : vec4<f32> = u_xlat9;
            let x_2543 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2541.x, x_2541.x, x_2541.x, x_2541.y) * vec4<f32>(x_2543.z, x_2543.w, x_2543.y, x_2543.z));
            let x_2546 : vec4<f32> = u_xlat9;
            let x_2548 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2546.y, x_2546.y, x_2546.z, x_2546.z) * x_2548);
            let x_2551 : f32 = u_xlat9.z;
            let x_2553 : f32 = u_xlat14.y;
            u_xlat72 = (x_2551 * x_2553);
            let x_2556 : vec4<f32> = u_xlat12;
            let x_2557 : vec2<f32> = vec2<f32>(x_2556.x, x_2556.y);
            let x_2559 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
            let x_2566 : vec3<f32> = txVec34;
            let x_2568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
            u_xlat73 = x_2568;
            let x_2570 : vec4<f32> = u_xlat12;
            let x_2571 : vec2<f32> = vec2<f32>(x_2570.z, x_2570.w);
            let x_2573 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2571.x, x_2571.y, x_2573);
            let x_2580 : vec3<f32> = txVec35;
            let x_2582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2580.xy, x_2580.z);
            u_xlat8.x = x_2582;
            let x_2585 : f32 = u_xlat8.x;
            let x_2587 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2585 * x_2587);
            let x_2591 : f32 = u_xlat15.x;
            let x_2592 : f32 = u_xlat73;
            let x_2595 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2591 * x_2592) + x_2595);
            let x_2598 : vec2<f32> = u_xlat52;
            let x_2600 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2598.x, x_2598.y, x_2600);
            let x_2607 : vec3<f32> = txVec36;
            let x_2609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2607.xy, x_2607.z);
            u_xlat8.x = x_2609;
            let x_2612 : f32 = u_xlat15.z;
            let x_2614 : f32 = u_xlat8.x;
            let x_2616 : f32 = u_xlat73;
            u_xlat73 = ((x_2612 * x_2614) + x_2616);
            let x_2619 : vec4<f32> = u_xlat11;
            let x_2620 : vec2<f32> = vec2<f32>(x_2619.x, x_2619.y);
            let x_2622 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2620.x, x_2620.y, x_2622);
            let x_2629 : vec3<f32> = txVec37;
            let x_2631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2629.xy, x_2629.z);
            u_xlat8.x = x_2631;
            let x_2634 : f32 = u_xlat15.w;
            let x_2636 : f32 = u_xlat8.x;
            let x_2638 : f32 = u_xlat73;
            u_xlat73 = ((x_2634 * x_2636) + x_2638);
            let x_2641 : vec4<f32> = u_xlat13;
            let x_2642 : vec2<f32> = vec2<f32>(x_2641.x, x_2641.y);
            let x_2644 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2642.x, x_2642.y, x_2644);
            let x_2651 : vec3<f32> = txVec38;
            let x_2653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2651.xy, x_2651.z);
            u_xlat8.x = x_2653;
            let x_2656 : f32 = u_xlat16.x;
            let x_2658 : f32 = u_xlat8.x;
            let x_2660 : f32 = u_xlat73;
            u_xlat73 = ((x_2656 * x_2658) + x_2660);
            let x_2663 : vec4<f32> = u_xlat13;
            let x_2664 : vec2<f32> = vec2<f32>(x_2663.z, x_2663.w);
            let x_2666 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2664.x, x_2664.y, x_2666);
            let x_2673 : vec3<f32> = txVec39;
            let x_2675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2673.xy, x_2673.z);
            u_xlat8.x = x_2675;
            let x_2678 : f32 = u_xlat16.y;
            let x_2680 : f32 = u_xlat8.x;
            let x_2682 : f32 = u_xlat73;
            u_xlat73 = ((x_2678 * x_2680) + x_2682);
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2686 : vec2<f32> = vec2<f32>(x_2685.z, x_2685.w);
            let x_2688 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2686.x, x_2686.y, x_2688);
            let x_2695 : vec3<f32> = txVec40;
            let x_2697 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2695.xy, x_2695.z);
            u_xlat8.x = x_2697;
            let x_2700 : f32 = u_xlat16.z;
            let x_2702 : f32 = u_xlat8.x;
            let x_2704 : f32 = u_xlat73;
            u_xlat73 = ((x_2700 * x_2702) + x_2704);
            let x_2707 : vec4<f32> = u_xlat10;
            let x_2708 : vec2<f32> = vec2<f32>(x_2707.x, x_2707.y);
            let x_2710 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
            let x_2717 : vec3<f32> = txVec41;
            let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
            u_xlat8.x = x_2719;
            let x_2722 : f32 = u_xlat16.w;
            let x_2724 : f32 = u_xlat8.x;
            let x_2726 : f32 = u_xlat73;
            u_xlat73 = ((x_2722 * x_2724) + x_2726);
            let x_2729 : vec4<f32> = u_xlat10;
            let x_2730 : vec2<f32> = vec2<f32>(x_2729.z, x_2729.w);
            let x_2732 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
            let x_2739 : vec3<f32> = txVec42;
            let x_2741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
            u_xlat8.x = x_2741;
            let x_2743 : f32 = u_xlat72;
            let x_2745 : f32 = u_xlat8.x;
            let x_2747 : f32 = u_xlat73;
            u_xlat71 = ((x_2743 * x_2745) + x_2747);
          } else {
            let x_2750 : vec4<f32> = u_xlat7;
            let x_2753 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2756 : vec2<f32> = ((vec2<f32>(x_2750.x, x_2750.y) * vec2<f32>(x_2753.z, x_2753.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2757 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
            let x_2759 : vec4<f32> = u_xlat8;
            let x_2761 : vec2<f32> = floor(vec2<f32>(x_2759.x, x_2759.y));
            let x_2762 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2761.x, x_2761.y, x_2762.z, x_2762.w);
            let x_2764 : vec4<f32> = u_xlat7;
            let x_2767 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2770 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(x_2767.z, x_2767.w)) + -(vec2<f32>(x_2770.x, x_2770.y)));
            let x_2774 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2774.x, x_2774.x, x_2774.y, x_2774.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2777 : vec4<f32> = u_xlat9;
            let x_2779 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2777.x, x_2777.x, x_2777.z, x_2777.z) * vec4<f32>(x_2779.x, x_2779.x, x_2779.z, x_2779.z));
            let x_2782 : vec4<f32> = u_xlat10;
            let x_2784 : vec2<f32> = (vec2<f32>(x_2782.y, x_2782.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2785 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2785.x, x_2784.x, x_2785.z, x_2784.y);
            let x_2787 : vec4<f32> = u_xlat10;
            let x_2790 : vec2<f32> = u_xlat52;
            let x_2792 : vec2<f32> = ((vec2<f32>(x_2787.x, x_2787.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2790));
            let x_2793 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2792.x, x_2793.y, x_2792.y, x_2793.w);
            let x_2795 : vec2<f32> = u_xlat52;
            let x_2797 : vec2<f32> = (-(x_2795) + vec2<f32>(1.0f, 1.0f));
            let x_2798 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
            let x_2800 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2800, vec2<f32>(0.0f, 0.0f));
            let x_2802 : vec2<f32> = u_xlat54;
            let x_2804 : vec2<f32> = u_xlat54;
            let x_2806 : vec4<f32> = u_xlat10;
            let x_2808 : vec2<f32> = ((-(x_2802) * x_2804) + vec2<f32>(x_2806.x, x_2806.y));
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
            let x_2811 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2811, vec2<f32>(0.0f, 0.0f));
            let x_2814 : vec2<f32> = u_xlat54;
            let x_2816 : vec2<f32> = u_xlat54;
            let x_2818 : vec4<f32> = u_xlat9;
            let x_2820 : vec2<f32> = ((-(x_2814) * x_2816) + vec2<f32>(x_2818.y, x_2818.w));
            let x_2821 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2820.x, x_2821.y, x_2820.y);
            let x_2823 : vec4<f32> = u_xlat10;
            let x_2825 : vec2<f32> = (vec2<f32>(x_2823.x, x_2823.y) + vec2<f32>(2.0f, 2.0f));
            let x_2826 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec3<f32> = u_xlat31;
            let x_2830 : vec2<f32> = (vec2<f32>(x_2828.x, x_2828.z) + vec2<f32>(2.0f, 2.0f));
            let x_2831 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2831.x, x_2830.x, x_2831.z, x_2830.y);
            let x_2834 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2834 * 0.08163200318813323975f);
            let x_2837 : vec4<f32> = u_xlat9;
            let x_2839 : vec3<f32> = (vec3<f32>(x_2837.z, x_2837.x, x_2837.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2840 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
            let x_2842 : vec4<f32> = u_xlat10;
            let x_2844 : vec2<f32> = (vec2<f32>(x_2842.x, x_2842.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2845 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2844.x, x_2844.y, x_2845.z, x_2845.w);
            let x_2848 : f32 = u_xlat13.y;
            u_xlat12.x = x_2848;
            let x_2850 : vec2<f32> = u_xlat52;
            let x_2853 : vec2<f32> = ((vec2<f32>(x_2850.x, x_2850.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2854.x, x_2853.x, x_2854.z, x_2853.y);
            let x_2856 : vec2<f32> = u_xlat52;
            let x_2859 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2860 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2859.x, x_2860.y, x_2859.y, x_2860.w);
            let x_2863 : f32 = u_xlat9.x;
            u_xlat10.y = x_2863;
            let x_2866 : f32 = u_xlat11.y;
            u_xlat10.w = x_2866;
            let x_2868 : vec4<f32> = u_xlat10;
            let x_2869 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2868 + x_2869);
            let x_2871 : vec2<f32> = u_xlat52;
            let x_2874 : vec2<f32> = ((vec2<f32>(x_2871.y, x_2871.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2875.x, x_2874.x, x_2875.z, x_2874.y);
            let x_2877 : vec2<f32> = u_xlat52;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2877.y, x_2877.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2881 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2880.x, x_2881.y, x_2880.y, x_2881.w);
            let x_2884 : f32 = u_xlat9.y;
            u_xlat11.y = x_2884;
            let x_2886 : vec4<f32> = u_xlat11;
            let x_2887 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2886 + x_2887);
            let x_2889 : vec4<f32> = u_xlat10;
            let x_2890 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2889 / x_2890);
            let x_2892 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2892 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2895 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2894 / x_2895);
            let x_2897 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2897 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2899 : vec4<f32> = u_xlat10;
            let x_2902 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2899.w, x_2899.x, x_2899.y, x_2899.z) * vec4<f32>(x_2902.x, x_2902.x, x_2902.x, x_2902.x));
            let x_2905 : vec4<f32> = u_xlat11;
            let x_2908 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2905.x, x_2905.w, x_2905.y, x_2905.z) * vec4<f32>(x_2908.y, x_2908.y, x_2908.y, x_2908.y));
            let x_2911 : vec4<f32> = u_xlat10;
            let x_2912 : vec3<f32> = vec3<f32>(x_2911.y, x_2911.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2912.x, x_2913.y, x_2912.y, x_2912.z);
            let x_2916 : f32 = u_xlat11.x;
            u_xlat13.y = x_2916;
            let x_2918 : vec4<f32> = u_xlat8;
            let x_2921 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2924 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2918.x, x_2918.y, x_2918.x, x_2918.y) * vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.y)) + vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2924.y));
            let x_2927 : vec4<f32> = u_xlat8;
            let x_2930 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2933 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2927.x, x_2927.y) * vec2<f32>(x_2930.x, x_2930.y)) + vec2<f32>(x_2933.w, x_2933.y));
            let x_2937 : f32 = u_xlat13.y;
            u_xlat10.y = x_2937;
            let x_2940 : f32 = u_xlat11.z;
            u_xlat13.y = x_2940;
            let x_2942 : vec4<f32> = u_xlat8;
            let x_2945 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2942.x, x_2942.y, x_2942.x, x_2942.y) * vec4<f32>(x_2945.x, x_2945.y, x_2945.x, x_2945.y)) + vec4<f32>(x_2948.x, x_2948.y, x_2948.z, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat8;
            let x_2954 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat13;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2954.x, x_2954.y)) + vec2<f32>(x_2957.w, x_2957.y));
            let x_2960 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2959.x, x_2959.y, x_2960.z, x_2960.w);
            let x_2963 : f32 = u_xlat13.y;
            u_xlat10.z = x_2963;
            let x_2965 : vec4<f32> = u_xlat8;
            let x_2968 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2971 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2965.x, x_2965.y, x_2965.x, x_2965.y) * vec4<f32>(x_2968.x, x_2968.y, x_2968.x, x_2968.y)) + vec4<f32>(x_2971.x, x_2971.y, x_2971.x, x_2971.z));
            let x_2975 : f32 = u_xlat11.w;
            u_xlat13.y = x_2975;
            let x_2977 : vec4<f32> = u_xlat8;
            let x_2980 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2983 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y) * vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y)) + vec4<f32>(x_2983.x, x_2983.y, x_2983.z, x_2983.y));
            let x_2987 : vec4<f32> = u_xlat8;
            let x_2990 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2987.x, x_2987.y) * vec2<f32>(x_2990.x, x_2990.y)) + vec2<f32>(x_2993.w, x_2993.y));
            let x_2997 : f32 = u_xlat13.y;
            u_xlat10.w = x_2997;
            let x_3000 : vec4<f32> = u_xlat8;
            let x_3003 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_3000.x, x_3000.y) * vec2<f32>(x_3003.x, x_3003.y)) + vec2<f32>(x_3006.x, x_3006.w));
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3010 : vec3<f32> = vec3<f32>(x_3009.x, x_3009.z, x_3009.w);
            let x_3011 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3010.x, x_3011.y, x_3010.y, x_3010.z);
            let x_3013 : vec4<f32> = u_xlat8;
            let x_3016 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3023 : vec4<f32> = u_xlat8;
            let x_3026 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_3023.x, x_3023.y) * vec2<f32>(x_3026.x, x_3026.y)) + vec2<f32>(x_3029.w, x_3029.y));
            let x_3033 : f32 = u_xlat10.x;
            u_xlat11.x = x_3033;
            let x_3035 : vec4<f32> = u_xlat8;
            let x_3038 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat11;
            let x_3043 : vec2<f32> = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3038.x, x_3038.y)) + vec2<f32>(x_3041.x, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_3043.x, x_3043.y, x_3044.z, x_3044.w);
            let x_3047 : vec4<f32> = u_xlat9;
            let x_3049 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_3047.x, x_3047.x, x_3047.x, x_3047.x) * x_3049);
            let x_3052 : vec4<f32> = u_xlat9;
            let x_3054 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_3052.y, x_3052.y, x_3052.y, x_3052.y) * x_3054);
            let x_3057 : vec4<f32> = u_xlat9;
            let x_3059 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_3057.z, x_3057.z, x_3057.z, x_3057.z) * x_3059);
            let x_3061 : vec4<f32> = u_xlat9;
            let x_3063 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_3061.w, x_3061.w, x_3061.w, x_3061.w) * x_3063);
            let x_3066 : vec4<f32> = u_xlat14;
            let x_3067 : vec2<f32> = vec2<f32>(x_3066.x, x_3066.y);
            let x_3069 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec43;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat72 = x_3078;
            let x_3080 : vec4<f32> = u_xlat14;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec44;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat73 = x_3092;
            let x_3093 : f32 = u_xlat73;
            let x_3095 : f32 = u_xlat19.y;
            u_xlat73 = (x_3093 * x_3095);
            let x_3098 : f32 = u_xlat19.x;
            let x_3099 : f32 = u_xlat72;
            let x_3101 : f32 = u_xlat73;
            u_xlat72 = ((x_3098 * x_3099) + x_3101);
            let x_3104 : vec2<f32> = u_xlat52;
            let x_3106 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec45;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat73 = x_3115;
            let x_3117 : f32 = u_xlat19.z;
            let x_3118 : f32 = u_xlat73;
            let x_3120 : f32 = u_xlat72;
            u_xlat72 = ((x_3117 * x_3118) + x_3120);
            let x_3123 : vec4<f32> = u_xlat17;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.x, x_3123.y);
            let x_3126 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec46;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat73 = x_3135;
            let x_3137 : f32 = u_xlat19.w;
            let x_3138 : f32 = u_xlat73;
            let x_3140 : f32 = u_xlat72;
            u_xlat72 = ((x_3137 * x_3138) + x_3140);
            let x_3143 : vec4<f32> = u_xlat15;
            let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
            let x_3146 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec47;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat73 = x_3155;
            let x_3157 : f32 = u_xlat20.x;
            let x_3158 : f32 = u_xlat73;
            let x_3160 : f32 = u_xlat72;
            u_xlat72 = ((x_3157 * x_3158) + x_3160);
            let x_3163 : vec4<f32> = u_xlat15;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.z, x_3163.w);
            let x_3166 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec48;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat73 = x_3175;
            let x_3177 : f32 = u_xlat20.y;
            let x_3178 : f32 = u_xlat73;
            let x_3180 : f32 = u_xlat72;
            u_xlat72 = ((x_3177 * x_3178) + x_3180);
            let x_3183 : vec4<f32> = u_xlat16;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.x, x_3183.y);
            let x_3186 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec49;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat73 = x_3195;
            let x_3197 : f32 = u_xlat20.z;
            let x_3198 : f32 = u_xlat73;
            let x_3200 : f32 = u_xlat72;
            u_xlat72 = ((x_3197 * x_3198) + x_3200);
            let x_3203 : vec4<f32> = u_xlat17;
            let x_3204 : vec2<f32> = vec2<f32>(x_3203.z, x_3203.w);
            let x_3206 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec50;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat73 = x_3215;
            let x_3217 : f32 = u_xlat20.w;
            let x_3218 : f32 = u_xlat73;
            let x_3220 : f32 = u_xlat72;
            u_xlat72 = ((x_3217 * x_3218) + x_3220);
            let x_3223 : vec4<f32> = u_xlat18;
            let x_3224 : vec2<f32> = vec2<f32>(x_3223.x, x_3223.y);
            let x_3226 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec51;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat73 = x_3235;
            let x_3237 : f32 = u_xlat21.x;
            let x_3238 : f32 = u_xlat73;
            let x_3240 : f32 = u_xlat72;
            u_xlat72 = ((x_3237 * x_3238) + x_3240);
            let x_3243 : vec4<f32> = u_xlat18;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.z, x_3243.w);
            let x_3246 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec52;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat73 = x_3255;
            let x_3257 : f32 = u_xlat21.y;
            let x_3258 : f32 = u_xlat73;
            let x_3260 : f32 = u_xlat72;
            u_xlat72 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec2<f32> = u_xlat32;
            let x_3265 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
            let x_3272 : vec3<f32> = txVec53;
            let x_3274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
            u_xlat73 = x_3274;
            let x_3276 : f32 = u_xlat21.z;
            let x_3277 : f32 = u_xlat73;
            let x_3279 : f32 = u_xlat72;
            u_xlat72 = ((x_3276 * x_3277) + x_3279);
            let x_3282 : vec2<f32> = u_xlat60;
            let x_3284 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec54;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat73 = x_3293;
            let x_3295 : f32 = u_xlat21.w;
            let x_3296 : f32 = u_xlat73;
            let x_3298 : f32 = u_xlat72;
            u_xlat72 = ((x_3295 * x_3296) + x_3298);
            let x_3301 : vec4<f32> = u_xlat13;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.x, x_3301.y);
            let x_3304 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec55;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat73 = x_3313;
            let x_3315 : f32 = u_xlat9.x;
            let x_3316 : f32 = u_xlat73;
            let x_3318 : f32 = u_xlat72;
            u_xlat72 = ((x_3315 * x_3316) + x_3318);
            let x_3321 : vec4<f32> = u_xlat13;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.z, x_3321.w);
            let x_3324 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec56;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat73 = x_3333;
            let x_3335 : f32 = u_xlat9.y;
            let x_3336 : f32 = u_xlat73;
            let x_3338 : f32 = u_xlat72;
            u_xlat72 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec2<f32> = u_xlat55;
            let x_3343 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec57;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat73 = x_3352;
            let x_3354 : f32 = u_xlat9.z;
            let x_3355 : f32 = u_xlat73;
            let x_3357 : f32 = u_xlat72;
            u_xlat72 = ((x_3354 * x_3355) + x_3357);
            let x_3360 : vec4<f32> = u_xlat8;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.x, x_3360.y);
            let x_3363 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec58;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat73 = x_3372;
            let x_3374 : f32 = u_xlat9.w;
            let x_3375 : f32 = u_xlat73;
            let x_3377 : f32 = u_xlat72;
            u_xlat71 = ((x_3374 * x_3375) + x_3377);
          }
        }
      } else {
        let x_3381 : vec4<f32> = u_xlat7;
        let x_3382 : vec2<f32> = vec2<f32>(x_3381.x, x_3381.y);
        let x_3384 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
        let x_3391 : vec3<f32> = txVec59;
        let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
        u_xlat71 = x_3393;
      }
      let x_3394 : i32 = u_xlati69;
      let x_3396 : f32 = x_249.x_AdditionalShadowParams[x_3394].x;
      u_xlat72 = (1.0f + -(x_3396));
      let x_3399 : f32 = u_xlat71;
      let x_3400 : i32 = u_xlati69;
      let x_3402 : f32 = x_249.x_AdditionalShadowParams[x_3400].x;
      let x_3404 : f32 = u_xlat72;
      u_xlat71 = ((x_3399 * x_3402) + x_3404);
      let x_3407 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3407);
      let x_3410 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3410 >= 1.0f);
      let x_3413 : bool = u_xlatb72;
      let x_3415 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3413 | x_3415);
      let x_3417 : bool = u_xlatb72;
      let x_3418 : f32 = u_xlat71;
      u_xlat71 = select(x_3418, 1.0f, x_3417);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3421 : f32 = u_xlat71;
    u_xlat72 = (-(x_3421) + 1.0f);
    let x_3425 : f32 = u_xlat1.x;
    let x_3426 : f32 = u_xlat72;
    let x_3428 : f32 = u_xlat71;
    u_xlat71 = ((x_3425 * x_3426) + x_3428);
    let x_3430 : f32 = u_xlat70;
    let x_3431 : f32 = u_xlat71;
    u_xlat70 = (x_3430 * x_3431);
    let x_3433 : f32 = u_xlat70;
    let x_3435 : i32 = u_xlati69;
    let x_3437 : vec4<f32> = x_1989.x_AdditionalLightsColor[x_3435];
    let x_3439 : vec3<f32> = (vec3<f32>(x_3433, x_3433, x_3433) * vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
    let x_3440 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3439.x, x_3439.y, x_3439.z, x_3440.w);
    let x_3442 : vec4<f32> = u_xlat2;
    let x_3444 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_3442.x, x_3442.y, x_3442.z), vec3<f32>(x_3444.x, x_3444.y, x_3444.z));
    let x_3447 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3447, 0.0f, 1.0f);
    let x_3449 : f32 = u_xlat69;
    let x_3451 : vec4<f32> = u_xlat7;
    let x_3453 : vec3<f32> = (vec3<f32>(x_3449, x_3449, x_3449) * vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
    let x_3454 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
    let x_3456 : vec4<f32> = u_xlat1;
    let x_3458 : vec4<f32> = u_xlat6;
    let x_3460 : vec3<f32> = (vec3<f32>(x_3456.y, x_3456.z, x_3456.w) * vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
    let x_3461 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
    let x_3463 : vec4<f32> = u_xlat6;
    let x_3465 : vec4<f32> = u_xlat0;
    let x_3468 : vec4<f32> = u_xlat5;
    let x_3470 : vec3<f32> = ((vec3<f32>(x_3463.x, x_3463.y, x_3463.z) * vec3<f32>(x_3465.x, x_3465.x, x_3465.x)) + vec3<f32>(x_3468.x, x_3468.y, x_3468.z));
    let x_3471 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3470.x, x_3470.y, x_3470.z, x_3471.w);

    continuing {
      let x_3473 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3473 + bitcast<u32>(1i));
    }
  }
  let x_3475 : vec4<f32> = u_xlat4;
  let x_3477 : vec4<f32> = u_xlat1;
  let x_3480 : vec4<f32> = u_xlat3;
  let x_3482 : vec3<f32> = ((vec3<f32>(x_3475.x, x_3475.y, x_3475.z) * vec3<f32>(x_3477.y, x_3477.z, x_3477.w)) + vec3<f32>(x_3480.x, x_3480.y, x_3480.z));
  let x_3483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
  let x_3485 : vec4<f32> = u_xlat5;
  let x_3487 : vec4<f32> = u_xlat1;
  let x_3489 : vec3<f32> = (vec3<f32>(x_3485.x, x_3485.y, x_3485.z) + vec3<f32>(x_3487.x, x_3487.y, x_3487.z));
  let x_3490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3489.x, x_3489.y, x_3489.z, x_3490.w);
  let x_3493 : f32 = u_xlat22.x;
  let x_3495 : f32 = u_xlat22.x;
  u_xlat22.x = (x_3493 * -(x_3495));
  let x_3500 : f32 = u_xlat22.x;
  u_xlat22.x = exp2(x_3500);
  let x_3503 : vec4<f32> = u_xlat1;
  let x_3506 : vec4<f32> = x_45.unity_FogColor;
  let x_3509 : vec3<f32> = (vec3<f32>(x_3503.x, x_3503.y, x_3503.z) + -(vec3<f32>(x_3506.x, x_3506.y, x_3506.z)));
  let x_3510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
  let x_3514 : vec3<f32> = u_xlat22;
  let x_3516 : vec4<f32> = u_xlat1;
  let x_3520 : vec4<f32> = x_45.unity_FogColor;
  let x_3522 : vec3<f32> = ((vec3<f32>(x_3514.x, x_3514.x, x_3514.x) * vec3<f32>(x_3516.x, x_3516.y, x_3516.z)) + vec3<f32>(x_3520.x, x_3520.y, x_3520.z));
  let x_3523 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3522.x, x_3522.y, x_3522.z, x_3523.w);
  let x_3526 : f32 = x_58.x_Surface;
  u_xlatb22 = (x_3526 == 1.0f);
  let x_3528 : bool = u_xlatb22;
  let x_3529 : bool = u_xlatb44;
  u_xlatb22 = (x_3528 | x_3529);
  let x_3531 : bool = u_xlatb22;
  if (x_3531) {
    let x_3536 : f32 = u_xlat0.x;
    x_3532 = x_3536;
  } else {
    x_3532 = 1.0f;
  }
  let x_3538 : f32 = x_3532;
  SV_Target0.w = x_3538;
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


