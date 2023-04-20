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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

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

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb66 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_351 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1763 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

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
  var x_1905 : f32;
  var x_1915 : f32;
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
  var x_3303 : f32;
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
  u_xlat2 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_240 : f32 = vs_TEXCOORD1.y;
  let x_243 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat22.x = (x_240 * x_243);
  let x_247 : f32 = x_45.unity_MatrixV[0i].z;
  let x_249 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_247 * x_249) + x_252);
  let x_256 : f32 = x_45.unity_MatrixV[2i].z;
  let x_258 : f32 = vs_TEXCOORD1.z;
  let x_261 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat22.x;
  let x_268 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat22.x = (x_265 + x_268);
  let x_272 : f32 = u_xlat22.x;
  let x_276 : f32 = x_45.x_ProjectionParams.y;
  u_xlat22.x = (-(x_272) + -(x_276));
  let x_281 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_281, 0.0f);
  let x_285 : f32 = u_xlat22.x;
  let x_288 : f32 = x_45.unity_FogParams.x;
  u_xlat22.x = (x_285 * x_288);
  let x_298 : vec2<f32> = vs_TEXCOORD7;
  let x_300 : f32 = x_45.x_GlobalMipBias.x;
  let x_301 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_298, x_300);
  u_xlat3 = x_301;
  let x_307 : vec2<f32> = vs_TEXCOORD7;
  let x_309 : f32 = x_45.x_GlobalMipBias.x;
  let x_310 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_307, x_309);
  let x_311 : vec3<f32> = vec3<f32>(x_310.x, x_310.y, x_310.z);
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat3;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat66;
  u_xlat66 = (x_325 + 0.5f);
  let x_327 : f32 = u_xlat66;
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : f32 = u_xlat3.w;
  u_xlat66 = max(x_335, 0.00009999999747378752f);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : f32 = u_xlat66;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) / vec3<f32>(x_339, x_339, x_339));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_354 : f32 = x_351.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_354);
  let x_356 : bool = u_xlatb66;
  if (x_356) {
    let x_360 : f32 = x_351.x_MainLightShadowParams.y;
    u_xlatb66 = (x_360 == 1.0f);
    let x_362 : bool = u_xlatb66;
    if (x_362) {
      let x_366 : vec4<f32> = vs_TEXCOORD6;
      let x_369 : vec4<f32> = x_351.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_366.x, x_366.y, x_366.x, x_366.y) + x_369);
      let x_373 : vec4<f32> = u_xlat4;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_389 : vec3<f32> = txVec0;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_389.xy, x_389.z);
      u_xlat5.x = x_391;
      let x_394 : vec4<f32> = u_xlat4;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec1;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_404.xy, x_404.z);
      u_xlat5.y = x_406;
      let x_408 : vec4<f32> = vs_TEXCOORD6;
      let x_411 : vec4<f32> = x_351.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) + x_411);
      let x_414 : vec4<f32> = u_xlat4;
      let x_415 : vec2<f32> = vec2<f32>(x_414.x, x_414.y);
      let x_417 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_415.x, x_415.y, x_417);
      let x_424 : vec3<f32> = txVec2;
      let x_426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_424.xy, x_424.z);
      u_xlat5.z = x_426;
      let x_429 : vec4<f32> = u_xlat4;
      let x_430 : vec2<f32> = vec2<f32>(x_429.z, x_429.w);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_430.x, x_430.y, x_432);
      let x_439 : vec3<f32> = txVec3;
      let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_439.xy, x_439.z);
      u_xlat5.w = x_441;
      let x_443 : vec4<f32> = u_xlat5;
      u_xlat66 = dot(x_443, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_450 : f32 = x_351.x_MainLightShadowParams.y;
      u_xlatb1 = (x_450 == 2.0f);
      let x_453 : bool = u_xlatb1;
      if (x_453) {
        let x_456 : vec4<f32> = vs_TEXCOORD6;
        let x_459 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_463 : vec2<f32> = ((vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_459.z, x_459.w)) + vec2<f32>(0.5f, 0.5f));
        let x_464 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec4<f32> = u_xlat4;
        let x_468 : vec2<f32> = floor(vec2<f32>(x_466.x, x_466.y));
        let x_469 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_473 : vec4<f32> = vs_TEXCOORD6;
        let x_476 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_479 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_473.x, x_473.y) * vec2<f32>(x_476.z, x_476.w)) + -(vec2<f32>(x_479.x, x_479.y)));
        let x_483 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_483.x, x_483.x, x_483.y, x_483.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_488 : vec4<f32> = u_xlat5;
        let x_490 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_488.x, x_488.x, x_488.z, x_488.z) * vec4<f32>(x_490.x, x_490.x, x_490.z, x_490.z));
        let x_493 : vec4<f32> = u_xlat6;
        let x_497 : vec2<f32> = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_498 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_497.x, x_498.y, x_497.y, x_498.w);
        let x_500 : vec4<f32> = u_xlat6;
        let x_503 : vec2<f32> = u_xlat48;
        let x_505 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.z) * vec2<f32>(0.5f, 0.5f)) + -(x_503));
        let x_506 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_509 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_509) + vec2<f32>(1.0f, 1.0f));
        let x_514 : vec2<f32> = u_xlat48;
        let x_516 : vec2<f32> = min(x_514, vec2<f32>(0.0f, 0.0f));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat7;
        let x_522 : vec4<f32> = u_xlat7;
        let x_525 : vec2<f32> = u_xlat50;
        let x_526 : vec2<f32> = ((-(vec2<f32>(x_519.x, x_519.y)) * vec2<f32>(x_522.x, x_522.y)) + x_525);
        let x_527 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_529 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_529, vec2<f32>(0.0f, 0.0f));
        let x_531 : vec2<f32> = u_xlat48;
        let x_533 : vec2<f32> = u_xlat48;
        let x_535 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_531) * x_533) + vec2<f32>(x_535.y, x_535.w));
        let x_538 : vec4<f32> = u_xlat7;
        let x_540 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) + vec2<f32>(1.0f, 1.0f));
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_543 + vec2<f32>(1.0f, 1.0f));
        let x_546 : vec4<f32> = u_xlat6;
        let x_550 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_551 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_553 : vec2<f32> = u_xlat50;
        let x_554 : vec2<f32> = (x_553 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec2<f32> = (vec2<f32>(x_557.x, x_557.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_563 : vec2<f32> = u_xlat48;
        let x_564 : vec2<f32> = (x_563 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_567.y, x_567.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_571 : f32 = u_xlat7.x;
        u_xlat8.z = x_571;
        let x_574 : f32 = u_xlat48.x;
        u_xlat8.w = x_574;
        let x_577 : f32 = u_xlat9.x;
        u_xlat6.z = x_577;
        let x_580 : f32 = u_xlat5.x;
        u_xlat6.w = x_580;
        let x_583 : vec4<f32> = u_xlat6;
        let x_585 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_583.z, x_583.w, x_583.x, x_583.z) + vec4<f32>(x_585.z, x_585.w, x_585.x, x_585.z));
        let x_589 : f32 = u_xlat8.y;
        u_xlat7.z = x_589;
        let x_592 : f32 = u_xlat48.y;
        u_xlat7.w = x_592;
        let x_595 : f32 = u_xlat6.y;
        u_xlat9.z = x_595;
        let x_598 : f32 = u_xlat5.z;
        u_xlat9.w = x_598;
        let x_600 : vec4<f32> = u_xlat7;
        let x_602 : vec4<f32> = u_xlat9;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.z, x_600.y, x_600.w) + vec3<f32>(x_602.z, x_602.y, x_602.w));
        let x_605 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = u_xlat10;
        let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.z, x_607.w) / vec3<f32>(x_609.z, x_609.w, x_609.y));
        let x_612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat6;
        let x_619 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_620 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
        let x_622 : vec4<f32> = u_xlat9;
        let x_624 : vec4<f32> = u_xlat5;
        let x_626 : vec3<f32> = (vec3<f32>(x_622.z, x_622.y, x_622.w) / vec3<f32>(x_624.x, x_624.y, x_624.z));
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
        let x_629 : vec4<f32> = u_xlat7;
        let x_631 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat6;
        let x_637 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_639 : vec3<f32> = (vec3<f32>(x_634.y, x_634.x, x_634.z) * vec3<f32>(x_637.x, x_637.x, x_637.x));
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat7;
        let x_645 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_647 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_645.y, x_645.y, x_645.y));
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
        let x_651 : f32 = u_xlat7.x;
        u_xlat6.w = x_651;
        let x_653 : vec4<f32> = u_xlat4;
        let x_656 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y) * vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y)) + vec4<f32>(x_659.y, x_659.w, x_659.x, x_659.w));
        let x_662 : vec4<f32> = u_xlat4;
        let x_665 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_668 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_662.x, x_662.y) * vec2<f32>(x_665.x, x_665.y)) + vec2<f32>(x_668.z, x_668.w));
        let x_672 : f32 = u_xlat6.y;
        u_xlat7.w = x_672;
        let x_674 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = vec2<f32>(x_674.y, x_674.z);
        let x_676 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_676.x, x_675.x, x_676.z, x_675.y);
        let x_678 : vec4<f32> = u_xlat4;
        let x_681 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_684 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y) * vec4<f32>(x_681.x, x_681.y, x_681.x, x_681.y)) + vec4<f32>(x_684.x, x_684.y, x_684.z, x_684.y));
        let x_687 : vec4<f32> = u_xlat4;
        let x_690 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_693 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y) * vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y)) + vec4<f32>(x_693.w, x_693.y, x_693.w, x_693.z));
        let x_696 : vec4<f32> = u_xlat4;
        let x_699 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y) * vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y)) + vec4<f32>(x_702.x, x_702.w, x_702.z, x_702.w));
        let x_706 : vec4<f32> = u_xlat5;
        let x_708 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_706.x, x_706.x, x_706.x, x_706.y) * vec4<f32>(x_708.z, x_708.w, x_708.y, x_708.z));
        let x_712 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_712.y, x_712.y, x_712.z, x_712.z) * x_714);
        let x_717 : f32 = u_xlat5.z;
        let x_719 : f32 = u_xlat10.y;
        u_xlat1.x = (x_717 * x_719);
        let x_723 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_734 : vec3<f32> = txVec4;
        let x_736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_734.xy, x_734.z);
        u_xlat68 = x_736;
        let x_738 : vec4<f32> = u_xlat8;
        let x_739 : vec2<f32> = vec2<f32>(x_738.z, x_738.w);
        let x_741 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_749 : vec3<f32> = txVec5;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_749.xy, x_749.z);
        u_xlat69 = x_751;
        let x_752 : f32 = u_xlat69;
        let x_754 : f32 = u_xlat11.y;
        u_xlat69 = (x_752 * x_754);
        let x_757 : f32 = u_xlat11.x;
        let x_758 : f32 = u_xlat68;
        let x_760 : f32 = u_xlat69;
        u_xlat68 = ((x_757 * x_758) + x_760);
        let x_763 : vec2<f32> = u_xlat48;
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec6;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
        u_xlat69 = x_774;
        let x_776 : f32 = u_xlat11.z;
        let x_777 : f32 = u_xlat69;
        let x_779 : f32 = u_xlat68;
        u_xlat68 = ((x_776 * x_777) + x_779);
        let x_782 : vec4<f32> = u_xlat7;
        let x_783 : vec2<f32> = vec2<f32>(x_782.x, x_782.y);
        let x_785 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_783.x, x_783.y, x_785);
        let x_792 : vec3<f32> = txVec7;
        let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_792.xy, x_792.z);
        u_xlat69 = x_794;
        let x_796 : f32 = u_xlat11.w;
        let x_797 : f32 = u_xlat69;
        let x_799 : f32 = u_xlat68;
        u_xlat68 = ((x_796 * x_797) + x_799);
        let x_802 : vec4<f32> = u_xlat9;
        let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
        let x_805 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_803.x, x_803.y, x_805);
        let x_812 : vec3<f32> = txVec8;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
        u_xlat69 = x_814;
        let x_816 : f32 = u_xlat12.x;
        let x_817 : f32 = u_xlat69;
        let x_819 : f32 = u_xlat68;
        u_xlat68 = ((x_816 * x_817) + x_819);
        let x_822 : vec4<f32> = u_xlat9;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec9;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat69 = x_834;
        let x_836 : f32 = u_xlat12.y;
        let x_837 : f32 = u_xlat69;
        let x_839 : f32 = u_xlat68;
        u_xlat68 = ((x_836 * x_837) + x_839);
        let x_842 : vec4<f32> = u_xlat7;
        let x_843 : vec2<f32> = vec2<f32>(x_842.z, x_842.w);
        let x_845 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec10;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_852.xy, x_852.z);
        u_xlat69 = x_854;
        let x_856 : f32 = u_xlat12.z;
        let x_857 : f32 = u_xlat69;
        let x_859 : f32 = u_xlat68;
        u_xlat68 = ((x_856 * x_857) + x_859);
        let x_862 : vec4<f32> = u_xlat6;
        let x_863 : vec2<f32> = vec2<f32>(x_862.x, x_862.y);
        let x_865 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_872 : vec3<f32> = txVec11;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_872.xy, x_872.z);
        u_xlat69 = x_874;
        let x_876 : f32 = u_xlat12.w;
        let x_877 : f32 = u_xlat69;
        let x_879 : f32 = u_xlat68;
        u_xlat68 = ((x_876 * x_877) + x_879);
        let x_882 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = vec2<f32>(x_882.z, x_882.w);
        let x_885 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec12;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat69 = x_894;
        let x_896 : f32 = u_xlat1.x;
        let x_897 : f32 = u_xlat69;
        let x_899 : f32 = u_xlat68;
        u_xlat66 = ((x_896 * x_897) + x_899);
      } else {
        let x_902 : vec4<f32> = vs_TEXCOORD6;
        let x_905 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_908 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_905.z, x_905.w)) + vec2<f32>(0.5f, 0.5f));
        let x_909 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat4;
        let x_913 : vec2<f32> = floor(vec2<f32>(x_911.x, x_911.y));
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec4<f32> = vs_TEXCOORD6;
        let x_919 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_916.x, x_916.y) * vec2<f32>(x_919.z, x_919.w)) + -(vec2<f32>(x_922.x, x_922.y)));
        let x_926 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_926.x, x_926.x, x_926.y, x_926.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_929 : vec4<f32> = u_xlat5;
        let x_931 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_929.x, x_929.x, x_929.z, x_929.z) * vec4<f32>(x_931.x, x_931.x, x_931.z, x_931.z));
        let x_934 : vec4<f32> = u_xlat6;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.y, x_934.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_939.x, x_938.x, x_939.z, x_938.y);
        let x_941 : vec4<f32> = u_xlat6;
        let x_944 : vec2<f32> = u_xlat48;
        let x_946 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.z) * vec2<f32>(0.5f, 0.5f)) + -(x_944));
        let x_947 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_946.x, x_947.y, x_946.y, x_947.w);
        let x_949 : vec2<f32> = u_xlat48;
        let x_951 : vec2<f32> = (-(x_949) + vec2<f32>(1.0f, 1.0f));
        let x_952 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_954, vec2<f32>(0.0f, 0.0f));
        let x_956 : vec2<f32> = u_xlat50;
        let x_958 : vec2<f32> = u_xlat50;
        let x_960 : vec4<f32> = u_xlat6;
        let x_962 : vec2<f32> = ((-(x_956) * x_958) + vec2<f32>(x_960.x, x_960.y));
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_965, vec2<f32>(0.0f, 0.0f));
        let x_968 : vec2<f32> = u_xlat50;
        let x_970 : vec2<f32> = u_xlat50;
        let x_972 : vec4<f32> = u_xlat5;
        let x_974 : vec2<f32> = ((-(x_968) * x_970) + vec2<f32>(x_972.y, x_972.w));
        let x_975 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_974.x, x_975.y, x_974.y);
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) + vec2<f32>(2.0f, 2.0f));
        let x_981 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec3<f32> = u_xlat27;
        let x_985 : vec2<f32> = (vec2<f32>(x_983.x, x_983.z) + vec2<f32>(2.0f, 2.0f));
        let x_986 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_986.x, x_985.x, x_986.z, x_985.y);
        let x_989 : f32 = u_xlat5.y;
        u_xlat8.z = (x_989 * 0.08163200318813323975f);
        let x_993 : vec4<f32> = u_xlat5;
        let x_996 : vec3<f32> = (vec3<f32>(x_993.z, x_993.x, x_993.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = (vec2<f32>(x_999.x, x_999.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1003 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1006 : f32 = u_xlat9.y;
        u_xlat8.x = x_1006;
        let x_1008 : vec2<f32> = u_xlat48;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec2<f32> = u_xlat48;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1023 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1026 : f32 = u_xlat5.x;
        u_xlat6.y = x_1026;
        let x_1029 : f32 = u_xlat7.y;
        u_xlat6.w = x_1029;
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1031 + x_1032);
        let x_1034 : vec2<f32> = u_xlat48;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1034.y, x_1034.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1038.x, x_1037.x, x_1038.z, x_1037.y);
        let x_1040 : vec2<f32> = u_xlat48;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1040.y, x_1040.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
        let x_1047 : f32 = u_xlat5.y;
        u_xlat7.y = x_1047;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1049 + x_1050);
        let x_1052 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1052 / x_1053);
        let x_1055 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1055 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1061 / x_1062);
        let x_1064 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1066.w, x_1066.x, x_1066.y, x_1066.z) * vec4<f32>(x_1069.x, x_1069.x, x_1069.x, x_1069.x));
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1075 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1072.x, x_1072.w, x_1072.y, x_1072.z) * vec4<f32>(x_1075.y, x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1079 : vec3<f32> = vec3<f32>(x_1078.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1079.z);
        let x_1083 : f32 = u_xlat7.x;
        u_xlat9.y = x_1083;
        let x_1085 : vec4<f32> = u_xlat4;
        let x_1088 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1104 : f32 = u_xlat9.y;
        u_xlat6.y = x_1104;
        let x_1107 : f32 = u_xlat7.z;
        u_xlat9.y = x_1107;
        let x_1109 : vec4<f32> = u_xlat4;
        let x_1112 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y) * vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y)) + vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1115.y));
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.w, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat9.y;
        u_xlat6.z = x_1130;
        let x_1133 : vec4<f32> = u_xlat4;
        let x_1136 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y) * vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y)) + vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.z));
        let x_1143 : f32 = u_xlat7.w;
        u_xlat9.y = x_1143;
        let x_1146 : vec4<f32> = u_xlat4;
        let x_1149 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y) * vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y)) + vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.y));
        let x_1156 : vec4<f32> = u_xlat4;
        let x_1159 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat9.y;
        u_xlat6.w = x_1166;
        let x_1169 : vec4<f32> = u_xlat4;
        let x_1172 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.x, x_1175.w));
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1179 : vec3<f32> = vec3<f32>(x_1178.x, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1179.z);
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1192 : vec4<f32> = u_xlat4;
        let x_1195 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.w, x_1198.y));
        let x_1202 : f32 = u_xlat6.x;
        u_xlat7.x = x_1202;
        let x_1204 : vec4<f32> = u_xlat4;
        let x_1207 : vec4<f32> = x_351.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.x, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1216.x, x_1216.x, x_1216.x, x_1216.x) * x_1218);
        let x_1221 : vec4<f32> = u_xlat5;
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1221.y, x_1221.y, x_1221.y, x_1221.y) * x_1223);
        let x_1226 : vec4<f32> = u_xlat5;
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1226.z, x_1226.z, x_1226.z, x_1226.z) * x_1228);
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1230.w, x_1230.w, x_1230.w, x_1230.w) * x_1232);
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.x, x_1235.y);
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec13;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
        u_xlat1.x = x_1247;
        let x_1250 : vec4<f32> = u_xlat10;
        let x_1251 : vec2<f32> = vec2<f32>(x_1250.z, x_1250.w);
        let x_1253 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1251.x, x_1251.y, x_1253);
        let x_1260 : vec3<f32> = txVec14;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1260.xy, x_1260.z);
        u_xlat68 = x_1262;
        let x_1263 : f32 = u_xlat68;
        let x_1265 : f32 = u_xlat15.y;
        u_xlat68 = (x_1263 * x_1265);
        let x_1268 : f32 = u_xlat15.x;
        let x_1270 : f32 = u_xlat1.x;
        let x_1272 : f32 = u_xlat68;
        u_xlat1.x = ((x_1268 * x_1270) + x_1272);
        let x_1276 : vec2<f32> = u_xlat48;
        let x_1278 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec15;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1285.xy, x_1285.z);
        u_xlat68 = x_1287;
        let x_1289 : f32 = u_xlat15.z;
        let x_1290 : f32 = u_xlat68;
        let x_1293 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1289 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat13;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec16;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat68 = x_1309;
        let x_1311 : f32 = u_xlat15.w;
        let x_1312 : f32 = u_xlat68;
        let x_1315 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1311 * x_1312) + x_1315);
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec17;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat68 = x_1331;
        let x_1333 : f32 = u_xlat16.x;
        let x_1334 : f32 = u_xlat68;
        let x_1337 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1333 * x_1334) + x_1337);
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec18;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat68 = x_1353;
        let x_1355 : f32 = u_xlat16.y;
        let x_1356 : f32 = u_xlat68;
        let x_1359 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1355 * x_1356) + x_1359);
        let x_1363 : vec4<f32> = u_xlat12;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec19;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat68 = x_1375;
        let x_1377 : f32 = u_xlat16.z;
        let x_1378 : f32 = u_xlat68;
        let x_1381 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1377 * x_1378) + x_1381);
        let x_1385 : vec4<f32> = u_xlat13;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec20;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat68 = x_1397;
        let x_1399 : f32 = u_xlat16.w;
        let x_1400 : f32 = u_xlat68;
        let x_1403 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1399 * x_1400) + x_1403);
        let x_1407 : vec4<f32> = u_xlat14;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec21;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat68 = x_1419;
        let x_1421 : f32 = u_xlat17.x;
        let x_1422 : f32 = u_xlat68;
        let x_1425 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1421 * x_1422) + x_1425);
        let x_1429 : vec4<f32> = u_xlat14;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec22;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat68 = x_1441;
        let x_1443 : f32 = u_xlat17.y;
        let x_1444 : f32 = u_xlat68;
        let x_1447 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1443 * x_1444) + x_1447);
        let x_1451 : vec2<f32> = u_xlat28;
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec23;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat68 = x_1462;
        let x_1464 : f32 = u_xlat17.z;
        let x_1465 : f32 = u_xlat68;
        let x_1468 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec2<f32> = u_xlat56;
        let x_1474 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec24;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat68 = x_1483;
        let x_1485 : f32 = u_xlat17.w;
        let x_1486 : f32 = u_xlat68;
        let x_1489 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1485 * x_1486) + x_1489);
        let x_1493 : vec4<f32> = u_xlat9;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec25;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat68 = x_1505;
        let x_1507 : f32 = u_xlat5.x;
        let x_1508 : f32 = u_xlat68;
        let x_1511 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1507 * x_1508) + x_1511);
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec26;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat68 = x_1527;
        let x_1529 : f32 = u_xlat5.y;
        let x_1530 : f32 = u_xlat68;
        let x_1533 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1529 * x_1530) + x_1533);
        let x_1537 : vec2<f32> = u_xlat51;
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec27;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat68 = x_1548;
        let x_1550 : f32 = u_xlat5.z;
        let x_1551 : f32 = u_xlat68;
        let x_1554 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec4<f32> = u_xlat4;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.x, x_1558.y);
        let x_1561 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec28;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1568.xy, x_1568.z);
        u_xlat68 = x_1570;
        let x_1572 : f32 = u_xlat5.w;
        let x_1573 : f32 = u_xlat68;
        let x_1576 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1572 * x_1573) + x_1576);
      }
    }
  } else {
    let x_1580 : vec4<f32> = vs_TEXCOORD6;
    let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.y);
    let x_1583 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
    let x_1590 : vec3<f32> = txVec29;
    let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1590.xy, x_1590.z);
    u_xlat66 = x_1592;
  }
  let x_1594 : f32 = x_351.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1594) + 1.0f);
  let x_1598 : f32 = u_xlat66;
  let x_1600 : f32 = x_351.x_MainLightShadowParams.x;
  let x_1603 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1598 * x_1600) + x_1603);
  let x_1606 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1606);
  let x_1610 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (x_1610 >= 1.0f);
  let x_1612 : bool = u_xlatb1;
  let x_1613 : bool = u_xlatb68;
  u_xlatb1 = (x_1612 | x_1613);
  let x_1615 : bool = u_xlatb1;
  let x_1616 : f32 = u_xlat66;
  u_xlat66 = select(x_1616, 1.0f, x_1615);
  let x_1618 : vec3<f32> = vs_TEXCOORD1;
  let x_1622 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1624 : vec3<f32> = (x_1618 + -(x_1622));
  let x_1625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1627 : vec4<f32> = u_xlat4;
  let x_1629 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1627.x, x_1627.y, x_1627.z), vec3<f32>(x_1629.x, x_1629.y, x_1629.z));
  let x_1634 : f32 = u_xlat1.x;
  let x_1636 : f32 = x_351.x_MainLightShadowParams.z;
  let x_1639 : f32 = x_351.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1634 * x_1636) + x_1639);
  let x_1641 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1641, 0.0f, 1.0f);
  let x_1643 : f32 = u_xlat66;
  u_xlat69 = (-(x_1643) + 1.0f);
  let x_1646 : f32 = u_xlat68;
  let x_1647 : f32 = u_xlat69;
  let x_1649 : f32 = u_xlat66;
  u_xlat66 = ((x_1646 * x_1647) + x_1649);
  let x_1651 : f32 = u_xlat66;
  let x_1653 : f32 = x_186.unity_LightData.z;
  u_xlat66 = (x_1651 * x_1653);
  let x_1655 : f32 = u_xlat66;
  let x_1658 : vec4<f32> = x_45.x_MainLightColor;
  let x_1660 : vec3<f32> = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
  let x_1661 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
  let x_1663 : vec3<f32> = u_xlat2;
  let x_1665 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat66 = dot(x_1663, vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1668, 0.0f, 1.0f);
  let x_1670 : f32 = u_xlat66;
  let x_1672 : vec4<f32> = u_xlat4;
  let x_1674 : vec3<f32> = (vec3<f32>(x_1670, x_1670, x_1670) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
  let x_1675 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
  let x_1677 : vec4<f32> = u_xlat1;
  let x_1679 : vec4<f32> = u_xlat4;
  let x_1681 : vec3<f32> = (vec3<f32>(x_1677.y, x_1677.z, x_1677.w) * vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
  let x_1682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1685 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1687 : f32 = x_186.unity_LightData.y;
  u_xlat66 = min(x_1685, x_1687);
  let x_1691 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1691));
  let x_1695 : f32 = u_xlat1.x;
  let x_1698 : f32 = x_351.x_AdditionalShadowFadeParams.x;
  let x_1701 : f32 = x_351.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1695 * x_1698) + x_1701);
  let x_1705 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1705, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1718 : u32 = u_xlatu_loop_1;
    let x_1719 : u32 = u_xlatu66;
    if ((x_1718 < x_1719)) {
    } else {
      break;
    }
    let x_1722 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1722 >> 2u);
    let x_1726 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1726 & 3u));
    let x_1729 : u32 = u_xlatu69;
    let x_1732 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1729)];
    let x_1742 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1747 : vec4<u32> = indexable[x_1742];
    u_xlat69 = dot(x_1732, bitcast<vec4<f32>>(x_1747));
    let x_1751 : f32 = u_xlat69;
    u_xlati69 = i32(x_1751);
    let x_1753 : vec3<f32> = vs_TEXCOORD1;
    let x_1764 : i32 = u_xlati69;
    let x_1766 : vec4<f32> = x_1763.x_AdditionalLightsPosition[x_1764];
    let x_1769 : i32 = u_xlati69;
    let x_1771 : vec4<f32> = x_1763.x_AdditionalLightsPosition[x_1769];
    let x_1773 : vec3<f32> = ((-(x_1753) * vec3<f32>(x_1766.w, x_1766.w, x_1766.w)) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
    let x_1777 : vec4<f32> = u_xlat6;
    let x_1779 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1777.x, x_1777.y, x_1777.z), vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
    let x_1782 : f32 = u_xlat70;
    u_xlat70 = max(x_1782, 0.00006103515625f);
    let x_1786 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1786);
    let x_1788 : f32 = u_xlat71;
    let x_1790 : vec4<f32> = u_xlat6;
    let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1795);
    let x_1797 : f32 = u_xlat70;
    let x_1798 : i32 = u_xlati69;
    let x_1800 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1798].x;
    u_xlat70 = (x_1797 * x_1800);
    let x_1802 : f32 = u_xlat70;
    let x_1804 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1802) * x_1804) + 1.0f);
    let x_1807 : f32 = u_xlat70;
    u_xlat70 = max(x_1807, 0.0f);
    let x_1809 : f32 = u_xlat70;
    let x_1810 : f32 = u_xlat70;
    u_xlat70 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat70;
    let x_1813 : f32 = u_xlat71;
    u_xlat70 = (x_1812 * x_1813);
    let x_1815 : i32 = u_xlati69;
    let x_1817 : vec4<f32> = x_1763.x_AdditionalLightsSpotDir[x_1815];
    let x_1819 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : f32 = u_xlat71;
    let x_1823 : i32 = u_xlati69;
    let x_1825 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1823].z;
    let x_1827 : i32 = u_xlati69;
    let x_1829 : f32 = x_1763.x_AdditionalLightsAttenuation[x_1827].w;
    u_xlat71 = ((x_1822 * x_1825) + x_1829);
    let x_1831 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1831, 0.0f, 1.0f);
    let x_1833 : f32 = u_xlat71;
    let x_1834 : f32 = u_xlat71;
    u_xlat71 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat70;
    let x_1837 : f32 = u_xlat71;
    u_xlat70 = (x_1836 * x_1837);
    let x_1841 : i32 = u_xlati69;
    let x_1843 : f32 = x_351.x_AdditionalShadowParams[x_1841].w;
    u_xlati71 = i32(x_1843);
    let x_1846 : i32 = u_xlati71;
    u_xlatb72 = (x_1846 >= 0i);
    let x_1848 : bool = u_xlatb72;
    if (x_1848) {
      let x_1852 : i32 = u_xlati69;
      let x_1854 : f32 = x_351.x_AdditionalShadowParams[x_1852].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1854, x_1854, x_1854, x_1854))));
      let x_1859 : bool = u_xlatb72;
      if (x_1859) {
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1867 : vec4<f32> = u_xlat6;
        let x_1870 : vec4<bool> = (abs(vec4<f32>(x_1864.z, x_1864.z, x_1864.y, x_1864.z)) >= abs(vec4<f32>(x_1867.x, x_1867.y, x_1867.x, x_1867.x)));
        let x_1872 : vec3<bool> = vec3<bool>(x_1870.x, x_1870.y, x_1870.z);
        let x_1873 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
        let x_1876 : bool = u_xlatb7.y;
        let x_1878 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1876 & x_1878);
        let x_1880 : vec4<f32> = u_xlat6;
        let x_1883 : vec4<bool> = (-(vec4<f32>(x_1880.z, x_1880.y, x_1880.z, x_1880.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1884 : vec3<bool> = vec3<bool>(x_1883.x, x_1883.y, x_1883.w);
        let x_1885 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1884.x, x_1884.y, x_1885.z, x_1884.z);
        let x_1888 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1888);
        let x_1894 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1894);
        let x_1900 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1900);
        let x_1904 : bool = u_xlatb7.z;
        if (x_1904) {
          let x_1909 : f32 = u_xlat7.y;
          x_1905 = x_1909;
        } else {
          let x_1911 : f32 = u_xlat73;
          x_1905 = x_1911;
        }
        let x_1912 : f32 = x_1905;
        u_xlat29 = x_1912;
        let x_1914 : bool = u_xlatb72;
        if (x_1914) {
          let x_1919 : f32 = u_xlat7.x;
          x_1915 = x_1919;
        } else {
          let x_1921 : f32 = u_xlat29;
          x_1915 = x_1921;
        }
        let x_1922 : f32 = x_1915;
        u_xlat72 = x_1922;
        let x_1923 : i32 = u_xlati69;
        let x_1925 : f32 = x_351.x_AdditionalShadowParams[x_1923].w;
        u_xlat7.x = trunc(x_1925);
        let x_1928 : f32 = u_xlat72;
        let x_1930 : f32 = u_xlat7.x;
        u_xlat72 = (x_1928 + x_1930);
        let x_1932 : f32 = u_xlat72;
        u_xlati71 = i32(x_1932);
      }
      let x_1934 : i32 = u_xlati71;
      u_xlati71 = (x_1934 << bitcast<u32>(2i));
      let x_1936 : vec3<f32> = vs_TEXCOORD1;
      let x_1939 : i32 = u_xlati71;
      let x_1942 : i32 = u_xlati71;
      let x_1946 : vec4<f32> = x_351.x_AdditionalLightsWorldToShadow[((x_1939 + 1i) / 4i)][((x_1942 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1936.y, x_1936.y, x_1936.y, x_1936.y) * x_1946);
      let x_1948 : i32 = u_xlati71;
      let x_1950 : i32 = u_xlati71;
      let x_1953 : vec4<f32> = x_351.x_AdditionalLightsWorldToShadow[(x_1948 / 4i)][(x_1950 % 4i)];
      let x_1954 : vec3<f32> = vs_TEXCOORD1;
      let x_1957 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1953 * vec4<f32>(x_1954.x, x_1954.x, x_1954.x, x_1954.x)) + x_1957);
      let x_1959 : i32 = u_xlati71;
      let x_1962 : i32 = u_xlati71;
      let x_1966 : vec4<f32> = x_351.x_AdditionalLightsWorldToShadow[((x_1959 + 2i) / 4i)][((x_1962 + 2i) % 4i)];
      let x_1967 : vec3<f32> = vs_TEXCOORD1;
      let x_1970 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1966 * vec4<f32>(x_1967.z, x_1967.z, x_1967.z, x_1967.z)) + x_1970);
      let x_1972 : vec4<f32> = u_xlat7;
      let x_1973 : i32 = u_xlati71;
      let x_1976 : i32 = u_xlati71;
      let x_1980 : vec4<f32> = x_351.x_AdditionalLightsWorldToShadow[((x_1973 + 3i) / 4i)][((x_1976 + 3i) % 4i)];
      u_xlat7 = (x_1972 + x_1980);
      let x_1982 : vec4<f32> = u_xlat7;
      let x_1984 : vec4<f32> = u_xlat7;
      let x_1986 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.y, x_1982.z) / vec3<f32>(x_1984.w, x_1984.w, x_1984.w));
      let x_1987 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
      let x_1990 : i32 = u_xlati69;
      let x_1992 : f32 = x_351.x_AdditionalShadowParams[x_1990].y;
      u_xlatb71 = (0.0f < x_1992);
      let x_1994 : bool = u_xlatb71;
      if (x_1994) {
        let x_1997 : i32 = u_xlati69;
        let x_1999 : f32 = x_351.x_AdditionalShadowParams[x_1997].y;
        u_xlatb71 = (1.0f == x_1999);
        let x_2001 : bool = u_xlatb71;
        if (x_2001) {
          let x_2004 : vec4<f32> = u_xlat7;
          let x_2007 : vec4<f32> = x_351.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y) + x_2007);
          let x_2010 : vec4<f32> = u_xlat8;
          let x_2011 : vec2<f32> = vec2<f32>(x_2010.x, x_2010.y);
          let x_2013 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
          let x_2021 : vec3<f32> = txVec30;
          let x_2023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2021.xy, x_2021.z);
          u_xlat9.x = x_2023;
          let x_2026 : vec4<f32> = u_xlat8;
          let x_2027 : vec2<f32> = vec2<f32>(x_2026.z, x_2026.w);
          let x_2029 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
          let x_2036 : vec3<f32> = txVec31;
          let x_2038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2036.xy, x_2036.z);
          u_xlat9.y = x_2038;
          let x_2040 : vec4<f32> = u_xlat7;
          let x_2044 : vec4<f32> = x_351.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2040.x, x_2040.y, x_2040.x, x_2040.y) + x_2044);
          let x_2047 : vec4<f32> = u_xlat8;
          let x_2048 : vec2<f32> = vec2<f32>(x_2047.x, x_2047.y);
          let x_2050 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
          let x_2057 : vec3<f32> = txVec32;
          let x_2059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2057.xy, x_2057.z);
          u_xlat9.z = x_2059;
          let x_2062 : vec4<f32> = u_xlat8;
          let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
          let x_2065 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
          let x_2072 : vec3<f32> = txVec33;
          let x_2074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
          u_xlat9.w = x_2074;
          let x_2076 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2076, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2079 : i32 = u_xlati69;
          let x_2081 : f32 = x_351.x_AdditionalShadowParams[x_2079].y;
          u_xlatb72 = (2.0f == x_2081);
          let x_2083 : bool = u_xlatb72;
          if (x_2083) {
            let x_2086 : vec4<f32> = u_xlat7;
            let x_2090 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2093 : vec2<f32> = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2090.z, x_2090.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2094 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2093.x, x_2093.y, x_2094.z, x_2094.w);
            let x_2096 : vec4<f32> = u_xlat8;
            let x_2098 : vec2<f32> = floor(vec2<f32>(x_2096.x, x_2096.y));
            let x_2099 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
            let x_2102 : vec4<f32> = u_xlat7;
            let x_2105 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2108 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2102.x, x_2102.y) * vec2<f32>(x_2105.z, x_2105.w)) + -(vec2<f32>(x_2108.x, x_2108.y)));
            let x_2112 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2112.x, x_2112.x, x_2112.y, x_2112.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2115 : vec4<f32> = u_xlat9;
            let x_2117 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2115.x, x_2115.x, x_2115.z, x_2115.z) * vec4<f32>(x_2117.x, x_2117.x, x_2117.z, x_2117.z));
            let x_2120 : vec4<f32> = u_xlat10;
            let x_2122 : vec2<f32> = (vec2<f32>(x_2120.y, x_2120.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2123 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2122.x, x_2123.y, x_2122.y, x_2123.w);
            let x_2125 : vec4<f32> = u_xlat10;
            let x_2128 : vec2<f32> = u_xlat52;
            let x_2130 : vec2<f32> = ((vec2<f32>(x_2125.x, x_2125.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2128));
            let x_2131 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2130.x, x_2130.y, x_2131.z, x_2131.w);
            let x_2134 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2134) + vec2<f32>(1.0f, 1.0f));
            let x_2137 : vec2<f32> = u_xlat52;
            let x_2138 : vec2<f32> = min(x_2137, vec2<f32>(0.0f, 0.0f));
            let x_2139 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2138.x, x_2138.y, x_2139.z, x_2139.w);
            let x_2141 : vec4<f32> = u_xlat11;
            let x_2144 : vec4<f32> = u_xlat11;
            let x_2147 : vec2<f32> = u_xlat54;
            let x_2148 : vec2<f32> = ((-(vec2<f32>(x_2141.x, x_2141.y)) * vec2<f32>(x_2144.x, x_2144.y)) + x_2147);
            let x_2149 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
            let x_2151 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2151, vec2<f32>(0.0f, 0.0f));
            let x_2153 : vec2<f32> = u_xlat52;
            let x_2155 : vec2<f32> = u_xlat52;
            let x_2157 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2153) * x_2155) + vec2<f32>(x_2157.y, x_2157.w));
            let x_2160 : vec4<f32> = u_xlat11;
            let x_2162 : vec2<f32> = (vec2<f32>(x_2160.x, x_2160.y) + vec2<f32>(1.0f, 1.0f));
            let x_2163 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
            let x_2165 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2165 + vec2<f32>(1.0f, 1.0f));
            let x_2167 : vec4<f32> = u_xlat10;
            let x_2169 : vec2<f32> = (vec2<f32>(x_2167.x, x_2167.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2170 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2169.x, x_2169.y, x_2170.z, x_2170.w);
            let x_2172 : vec2<f32> = u_xlat54;
            let x_2173 : vec2<f32> = (x_2172 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2174 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
            let x_2176 : vec4<f32> = u_xlat11;
            let x_2178 : vec2<f32> = (vec2<f32>(x_2176.x, x_2176.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2179 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2178.x, x_2178.y, x_2179.z, x_2179.w);
            let x_2181 : vec2<f32> = u_xlat52;
            let x_2182 : vec2<f32> = (x_2181 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2183 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
            let x_2185 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2185.y, x_2185.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2189 : f32 = u_xlat11.x;
            u_xlat12.z = x_2189;
            let x_2192 : f32 = u_xlat52.x;
            u_xlat12.w = x_2192;
            let x_2195 : f32 = u_xlat13.x;
            u_xlat10.z = x_2195;
            let x_2198 : f32 = u_xlat9.x;
            u_xlat10.w = x_2198;
            let x_2200 : vec4<f32> = u_xlat10;
            let x_2202 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2200.z, x_2200.w, x_2200.x, x_2200.z) + vec4<f32>(x_2202.z, x_2202.w, x_2202.x, x_2202.z));
            let x_2206 : f32 = u_xlat12.y;
            u_xlat11.z = x_2206;
            let x_2209 : f32 = u_xlat52.y;
            u_xlat11.w = x_2209;
            let x_2212 : f32 = u_xlat10.y;
            u_xlat13.z = x_2212;
            let x_2215 : f32 = u_xlat9.z;
            u_xlat13.w = x_2215;
            let x_2217 : vec4<f32> = u_xlat11;
            let x_2219 : vec4<f32> = u_xlat13;
            let x_2221 : vec3<f32> = (vec3<f32>(x_2217.z, x_2217.y, x_2217.w) + vec3<f32>(x_2219.z, x_2219.y, x_2219.w));
            let x_2222 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
            let x_2224 : vec4<f32> = u_xlat10;
            let x_2226 : vec4<f32> = u_xlat14;
            let x_2228 : vec3<f32> = (vec3<f32>(x_2224.x, x_2224.z, x_2224.w) / vec3<f32>(x_2226.z, x_2226.w, x_2226.y));
            let x_2229 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
            let x_2231 : vec4<f32> = u_xlat10;
            let x_2233 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2234 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat13;
            let x_2238 : vec4<f32> = u_xlat9;
            let x_2240 : vec3<f32> = (vec3<f32>(x_2236.z, x_2236.y, x_2236.w) / vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
            let x_2241 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
            let x_2243 : vec4<f32> = u_xlat11;
            let x_2245 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2246 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
            let x_2248 : vec4<f32> = u_xlat10;
            let x_2251 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2253 : vec3<f32> = (vec3<f32>(x_2248.y, x_2248.x, x_2248.z) * vec3<f32>(x_2251.x, x_2251.x, x_2251.x));
            let x_2254 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
            let x_2256 : vec4<f32> = u_xlat11;
            let x_2259 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2261 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.y, x_2256.z) * vec3<f32>(x_2259.y, x_2259.y, x_2259.y));
            let x_2262 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
            let x_2265 : f32 = u_xlat11.x;
            u_xlat10.w = x_2265;
            let x_2267 : vec4<f32> = u_xlat8;
            let x_2270 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2273 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2267.x, x_2267.y, x_2267.x, x_2267.y) * vec4<f32>(x_2270.x, x_2270.y, x_2270.x, x_2270.y)) + vec4<f32>(x_2273.y, x_2273.w, x_2273.x, x_2273.w));
            let x_2276 : vec4<f32> = u_xlat8;
            let x_2279 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2282 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2276.x, x_2276.y) * vec2<f32>(x_2279.x, x_2279.y)) + vec2<f32>(x_2282.z, x_2282.w));
            let x_2286 : f32 = u_xlat10.y;
            u_xlat11.w = x_2286;
            let x_2288 : vec4<f32> = u_xlat11;
            let x_2289 : vec2<f32> = vec2<f32>(x_2288.y, x_2288.z);
            let x_2290 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2290.x, x_2289.x, x_2290.z, x_2289.y);
            let x_2292 : vec4<f32> = u_xlat8;
            let x_2295 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2298 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2292.x, x_2292.y, x_2292.x, x_2292.y) * vec4<f32>(x_2295.x, x_2295.y, x_2295.x, x_2295.y)) + vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2298.y));
            let x_2301 : vec4<f32> = u_xlat8;
            let x_2304 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2307 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y) * vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y)) + vec4<f32>(x_2307.w, x_2307.y, x_2307.w, x_2307.z));
            let x_2310 : vec4<f32> = u_xlat8;
            let x_2313 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2316 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.y) * vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y)) + vec4<f32>(x_2316.x, x_2316.w, x_2316.z, x_2316.w));
            let x_2319 : vec4<f32> = u_xlat9;
            let x_2321 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2319.x, x_2319.x, x_2319.x, x_2319.y) * vec4<f32>(x_2321.z, x_2321.w, x_2321.y, x_2321.z));
            let x_2324 : vec4<f32> = u_xlat9;
            let x_2326 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2324.y, x_2324.y, x_2324.z, x_2324.z) * x_2326);
            let x_2329 : f32 = u_xlat9.z;
            let x_2331 : f32 = u_xlat14.y;
            u_xlat72 = (x_2329 * x_2331);
            let x_2334 : vec4<f32> = u_xlat12;
            let x_2335 : vec2<f32> = vec2<f32>(x_2334.x, x_2334.y);
            let x_2337 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2335.x, x_2335.y, x_2337);
            let x_2344 : vec3<f32> = txVec34;
            let x_2346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2344.xy, x_2344.z);
            u_xlat73 = x_2346;
            let x_2348 : vec4<f32> = u_xlat12;
            let x_2349 : vec2<f32> = vec2<f32>(x_2348.z, x_2348.w);
            let x_2351 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
            let x_2358 : vec3<f32> = txVec35;
            let x_2360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
            u_xlat8.x = x_2360;
            let x_2363 : f32 = u_xlat8.x;
            let x_2365 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2363 * x_2365);
            let x_2369 : f32 = u_xlat15.x;
            let x_2370 : f32 = u_xlat73;
            let x_2373 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2369 * x_2370) + x_2373);
            let x_2376 : vec2<f32> = u_xlat52;
            let x_2378 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
            let x_2385 : vec3<f32> = txVec36;
            let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
            u_xlat8.x = x_2387;
            let x_2390 : f32 = u_xlat15.z;
            let x_2392 : f32 = u_xlat8.x;
            let x_2394 : f32 = u_xlat73;
            u_xlat73 = ((x_2390 * x_2392) + x_2394);
            let x_2397 : vec4<f32> = u_xlat11;
            let x_2398 : vec2<f32> = vec2<f32>(x_2397.x, x_2397.y);
            let x_2400 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
            let x_2407 : vec3<f32> = txVec37;
            let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
            u_xlat8.x = x_2409;
            let x_2412 : f32 = u_xlat15.w;
            let x_2414 : f32 = u_xlat8.x;
            let x_2416 : f32 = u_xlat73;
            u_xlat73 = ((x_2412 * x_2414) + x_2416);
            let x_2419 : vec4<f32> = u_xlat13;
            let x_2420 : vec2<f32> = vec2<f32>(x_2419.x, x_2419.y);
            let x_2422 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2420.x, x_2420.y, x_2422);
            let x_2429 : vec3<f32> = txVec38;
            let x_2431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2429.xy, x_2429.z);
            u_xlat8.x = x_2431;
            let x_2434 : f32 = u_xlat16.x;
            let x_2436 : f32 = u_xlat8.x;
            let x_2438 : f32 = u_xlat73;
            u_xlat73 = ((x_2434 * x_2436) + x_2438);
            let x_2441 : vec4<f32> = u_xlat13;
            let x_2442 : vec2<f32> = vec2<f32>(x_2441.z, x_2441.w);
            let x_2444 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2442.x, x_2442.y, x_2444);
            let x_2451 : vec3<f32> = txVec39;
            let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
            u_xlat8.x = x_2453;
            let x_2456 : f32 = u_xlat16.y;
            let x_2458 : f32 = u_xlat8.x;
            let x_2460 : f32 = u_xlat73;
            u_xlat73 = ((x_2456 * x_2458) + x_2460);
            let x_2463 : vec4<f32> = u_xlat11;
            let x_2464 : vec2<f32> = vec2<f32>(x_2463.z, x_2463.w);
            let x_2466 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2464.x, x_2464.y, x_2466);
            let x_2473 : vec3<f32> = txVec40;
            let x_2475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2473.xy, x_2473.z);
            u_xlat8.x = x_2475;
            let x_2478 : f32 = u_xlat16.z;
            let x_2480 : f32 = u_xlat8.x;
            let x_2482 : f32 = u_xlat73;
            u_xlat73 = ((x_2478 * x_2480) + x_2482);
            let x_2485 : vec4<f32> = u_xlat10;
            let x_2486 : vec2<f32> = vec2<f32>(x_2485.x, x_2485.y);
            let x_2488 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2486.x, x_2486.y, x_2488);
            let x_2495 : vec3<f32> = txVec41;
            let x_2497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2495.xy, x_2495.z);
            u_xlat8.x = x_2497;
            let x_2500 : f32 = u_xlat16.w;
            let x_2502 : f32 = u_xlat8.x;
            let x_2504 : f32 = u_xlat73;
            u_xlat73 = ((x_2500 * x_2502) + x_2504);
            let x_2507 : vec4<f32> = u_xlat10;
            let x_2508 : vec2<f32> = vec2<f32>(x_2507.z, x_2507.w);
            let x_2510 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
            let x_2517 : vec3<f32> = txVec42;
            let x_2519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2517.xy, x_2517.z);
            u_xlat8.x = x_2519;
            let x_2521 : f32 = u_xlat72;
            let x_2523 : f32 = u_xlat8.x;
            let x_2525 : f32 = u_xlat73;
            u_xlat71 = ((x_2521 * x_2523) + x_2525);
          } else {
            let x_2528 : vec4<f32> = u_xlat7;
            let x_2531 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2534 : vec2<f32> = ((vec2<f32>(x_2528.x, x_2528.y) * vec2<f32>(x_2531.z, x_2531.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2535 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2535.z, x_2535.w);
            let x_2537 : vec4<f32> = u_xlat8;
            let x_2539 : vec2<f32> = floor(vec2<f32>(x_2537.x, x_2537.y));
            let x_2540 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2539.x, x_2539.y, x_2540.z, x_2540.w);
            let x_2542 : vec4<f32> = u_xlat7;
            let x_2545 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2548 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2545.z, x_2545.w)) + -(vec2<f32>(x_2548.x, x_2548.y)));
            let x_2552 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2552.x, x_2552.x, x_2552.y, x_2552.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2555 : vec4<f32> = u_xlat9;
            let x_2557 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2555.x, x_2555.x, x_2555.z, x_2555.z) * vec4<f32>(x_2557.x, x_2557.x, x_2557.z, x_2557.z));
            let x_2560 : vec4<f32> = u_xlat10;
            let x_2562 : vec2<f32> = (vec2<f32>(x_2560.y, x_2560.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2563 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2563.x, x_2562.x, x_2563.z, x_2562.y);
            let x_2565 : vec4<f32> = u_xlat10;
            let x_2568 : vec2<f32> = u_xlat52;
            let x_2570 : vec2<f32> = ((vec2<f32>(x_2565.x, x_2565.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2568));
            let x_2571 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2570.x, x_2571.y, x_2570.y, x_2571.w);
            let x_2573 : vec2<f32> = u_xlat52;
            let x_2575 : vec2<f32> = (-(x_2573) + vec2<f32>(1.0f, 1.0f));
            let x_2576 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
            let x_2578 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2578, vec2<f32>(0.0f, 0.0f));
            let x_2580 : vec2<f32> = u_xlat54;
            let x_2582 : vec2<f32> = u_xlat54;
            let x_2584 : vec4<f32> = u_xlat10;
            let x_2586 : vec2<f32> = ((-(x_2580) * x_2582) + vec2<f32>(x_2584.x, x_2584.y));
            let x_2587 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2586.x, x_2586.y, x_2587.z, x_2587.w);
            let x_2589 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2589, vec2<f32>(0.0f, 0.0f));
            let x_2592 : vec2<f32> = u_xlat54;
            let x_2594 : vec2<f32> = u_xlat54;
            let x_2596 : vec4<f32> = u_xlat9;
            let x_2598 : vec2<f32> = ((-(x_2592) * x_2594) + vec2<f32>(x_2596.y, x_2596.w));
            let x_2599 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2598.x, x_2599.y, x_2598.y);
            let x_2601 : vec4<f32> = u_xlat10;
            let x_2603 : vec2<f32> = (vec2<f32>(x_2601.x, x_2601.y) + vec2<f32>(2.0f, 2.0f));
            let x_2604 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
            let x_2606 : vec3<f32> = u_xlat31;
            let x_2608 : vec2<f32> = (vec2<f32>(x_2606.x, x_2606.z) + vec2<f32>(2.0f, 2.0f));
            let x_2609 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2609.x, x_2608.x, x_2609.z, x_2608.y);
            let x_2612 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2612 * 0.08163200318813323975f);
            let x_2615 : vec4<f32> = u_xlat9;
            let x_2617 : vec3<f32> = (vec3<f32>(x_2615.z, x_2615.x, x_2615.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2618 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
            let x_2620 : vec4<f32> = u_xlat10;
            let x_2622 : vec2<f32> = (vec2<f32>(x_2620.x, x_2620.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2623 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2622.x, x_2622.y, x_2623.z, x_2623.w);
            let x_2626 : f32 = u_xlat13.y;
            u_xlat12.x = x_2626;
            let x_2628 : vec2<f32> = u_xlat52;
            let x_2631 : vec2<f32> = ((vec2<f32>(x_2628.x, x_2628.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2632 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2632.x, x_2631.x, x_2632.z, x_2631.y);
            let x_2634 : vec2<f32> = u_xlat52;
            let x_2637 : vec2<f32> = ((vec2<f32>(x_2634.x, x_2634.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2638 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2637.x, x_2638.y, x_2637.y, x_2638.w);
            let x_2641 : f32 = u_xlat9.x;
            u_xlat10.y = x_2641;
            let x_2644 : f32 = u_xlat11.y;
            u_xlat10.w = x_2644;
            let x_2646 : vec4<f32> = u_xlat10;
            let x_2647 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2646 + x_2647);
            let x_2649 : vec2<f32> = u_xlat52;
            let x_2652 : vec2<f32> = ((vec2<f32>(x_2649.y, x_2649.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2653 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
            let x_2655 : vec2<f32> = u_xlat52;
            let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.y, x_2655.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2659 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2658.x, x_2659.y, x_2658.y, x_2659.w);
            let x_2662 : f32 = u_xlat9.y;
            u_xlat11.y = x_2662;
            let x_2664 : vec4<f32> = u_xlat11;
            let x_2665 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2664 + x_2665);
            let x_2667 : vec4<f32> = u_xlat10;
            let x_2668 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2667 / x_2668);
            let x_2670 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2670 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2672 : vec4<f32> = u_xlat11;
            let x_2673 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2672 / x_2673);
            let x_2675 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2675 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2677 : vec4<f32> = u_xlat10;
            let x_2680 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2677.w, x_2677.x, x_2677.y, x_2677.z) * vec4<f32>(x_2680.x, x_2680.x, x_2680.x, x_2680.x));
            let x_2683 : vec4<f32> = u_xlat11;
            let x_2686 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2683.x, x_2683.w, x_2683.y, x_2683.z) * vec4<f32>(x_2686.y, x_2686.y, x_2686.y, x_2686.y));
            let x_2689 : vec4<f32> = u_xlat10;
            let x_2690 : vec3<f32> = vec3<f32>(x_2689.y, x_2689.z, x_2689.w);
            let x_2691 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2690.x, x_2691.y, x_2690.y, x_2690.z);
            let x_2694 : f32 = u_xlat11.x;
            u_xlat13.y = x_2694;
            let x_2696 : vec4<f32> = u_xlat8;
            let x_2699 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2702 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2696.x, x_2696.y, x_2696.x, x_2696.y) * vec4<f32>(x_2699.x, x_2699.y, x_2699.x, x_2699.y)) + vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2702.y));
            let x_2705 : vec4<f32> = u_xlat8;
            let x_2708 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2711 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2708.x, x_2708.y)) + vec2<f32>(x_2711.w, x_2711.y));
            let x_2715 : f32 = u_xlat13.y;
            u_xlat10.y = x_2715;
            let x_2718 : f32 = u_xlat11.z;
            u_xlat13.y = x_2718;
            let x_2720 : vec4<f32> = u_xlat8;
            let x_2723 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2726 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y) * vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y)) + vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2726.y));
            let x_2729 : vec4<f32> = u_xlat8;
            let x_2732 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2735 : vec4<f32> = u_xlat13;
            let x_2737 : vec2<f32> = ((vec2<f32>(x_2729.x, x_2729.y) * vec2<f32>(x_2732.x, x_2732.y)) + vec2<f32>(x_2735.w, x_2735.y));
            let x_2738 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
            let x_2741 : f32 = u_xlat13.y;
            u_xlat10.z = x_2741;
            let x_2743 : vec4<f32> = u_xlat8;
            let x_2746 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2749 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y) * vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y)) + vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.z));
            let x_2753 : f32 = u_xlat11.w;
            u_xlat13.y = x_2753;
            let x_2756 : vec4<f32> = u_xlat8;
            let x_2759 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2762.y));
            let x_2766 : vec4<f32> = u_xlat8;
            let x_2769 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2772 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2766.x, x_2766.y) * vec2<f32>(x_2769.x, x_2769.y)) + vec2<f32>(x_2772.w, x_2772.y));
            let x_2776 : f32 = u_xlat13.y;
            u_xlat10.w = x_2776;
            let x_2779 : vec4<f32> = u_xlat8;
            let x_2782 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2782.x, x_2782.y)) + vec2<f32>(x_2785.x, x_2785.w));
            let x_2788 : vec4<f32> = u_xlat13;
            let x_2789 : vec3<f32> = vec3<f32>(x_2788.x, x_2788.z, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2789.x, x_2790.y, x_2789.y, x_2789.z);
            let x_2792 : vec4<f32> = u_xlat8;
            let x_2795 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2798 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y) * vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.y)) + vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2798.y));
            let x_2802 : vec4<f32> = u_xlat8;
            let x_2805 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2808 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2802.x, x_2802.y) * vec2<f32>(x_2805.x, x_2805.y)) + vec2<f32>(x_2808.w, x_2808.y));
            let x_2812 : f32 = u_xlat10.x;
            u_xlat11.x = x_2812;
            let x_2814 : vec4<f32> = u_xlat8;
            let x_2817 : vec4<f32> = x_351.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat11;
            let x_2822 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2817.x, x_2817.y)) + vec2<f32>(x_2820.x, x_2820.y));
            let x_2823 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2826 : vec4<f32> = u_xlat9;
            let x_2828 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2826.x, x_2826.x, x_2826.x, x_2826.x) * x_2828);
            let x_2831 : vec4<f32> = u_xlat9;
            let x_2833 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2831.y, x_2831.y, x_2831.y, x_2831.y) * x_2833);
            let x_2836 : vec4<f32> = u_xlat9;
            let x_2838 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2836.z, x_2836.z, x_2836.z, x_2836.z) * x_2838);
            let x_2840 : vec4<f32> = u_xlat9;
            let x_2842 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2840.w, x_2840.w, x_2840.w, x_2840.w) * x_2842);
            let x_2845 : vec4<f32> = u_xlat14;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.x, x_2845.y);
            let x_2848 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec43;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat72 = x_2857;
            let x_2859 : vec4<f32> = u_xlat14;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.z, x_2859.w);
            let x_2862 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec44;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat73 = x_2871;
            let x_2872 : f32 = u_xlat73;
            let x_2874 : f32 = u_xlat19.y;
            u_xlat73 = (x_2872 * x_2874);
            let x_2877 : f32 = u_xlat19.x;
            let x_2878 : f32 = u_xlat72;
            let x_2880 : f32 = u_xlat73;
            u_xlat72 = ((x_2877 * x_2878) + x_2880);
            let x_2883 : vec2<f32> = u_xlat52;
            let x_2885 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
            let x_2892 : vec3<f32> = txVec45;
            let x_2894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
            u_xlat73 = x_2894;
            let x_2896 : f32 = u_xlat19.z;
            let x_2897 : f32 = u_xlat73;
            let x_2899 : f32 = u_xlat72;
            u_xlat72 = ((x_2896 * x_2897) + x_2899);
            let x_2902 : vec4<f32> = u_xlat17;
            let x_2903 : vec2<f32> = vec2<f32>(x_2902.x, x_2902.y);
            let x_2905 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec46;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat73 = x_2914;
            let x_2916 : f32 = u_xlat19.w;
            let x_2917 : f32 = u_xlat73;
            let x_2919 : f32 = u_xlat72;
            u_xlat72 = ((x_2916 * x_2917) + x_2919);
            let x_2922 : vec4<f32> = u_xlat15;
            let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
            let x_2925 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
            let x_2932 : vec3<f32> = txVec47;
            let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
            u_xlat73 = x_2934;
            let x_2936 : f32 = u_xlat20.x;
            let x_2937 : f32 = u_xlat73;
            let x_2939 : f32 = u_xlat72;
            u_xlat72 = ((x_2936 * x_2937) + x_2939);
            let x_2942 : vec4<f32> = u_xlat15;
            let x_2943 : vec2<f32> = vec2<f32>(x_2942.z, x_2942.w);
            let x_2945 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
            let x_2952 : vec3<f32> = txVec48;
            let x_2954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
            u_xlat73 = x_2954;
            let x_2956 : f32 = u_xlat20.y;
            let x_2957 : f32 = u_xlat73;
            let x_2959 : f32 = u_xlat72;
            u_xlat72 = ((x_2956 * x_2957) + x_2959);
            let x_2962 : vec4<f32> = u_xlat16;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
            let x_2965 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec49;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat73 = x_2974;
            let x_2976 : f32 = u_xlat20.z;
            let x_2977 : f32 = u_xlat73;
            let x_2979 : f32 = u_xlat72;
            u_xlat72 = ((x_2976 * x_2977) + x_2979);
            let x_2982 : vec4<f32> = u_xlat17;
            let x_2983 : vec2<f32> = vec2<f32>(x_2982.z, x_2982.w);
            let x_2985 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2983.x, x_2983.y, x_2985);
            let x_2992 : vec3<f32> = txVec50;
            let x_2994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2992.xy, x_2992.z);
            u_xlat73 = x_2994;
            let x_2996 : f32 = u_xlat20.w;
            let x_2997 : f32 = u_xlat73;
            let x_2999 : f32 = u_xlat72;
            u_xlat72 = ((x_2996 * x_2997) + x_2999);
            let x_3002 : vec4<f32> = u_xlat18;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
            let x_3005 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec51;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat73 = x_3014;
            let x_3016 : f32 = u_xlat21.x;
            let x_3017 : f32 = u_xlat73;
            let x_3019 : f32 = u_xlat72;
            u_xlat72 = ((x_3016 * x_3017) + x_3019);
            let x_3022 : vec4<f32> = u_xlat18;
            let x_3023 : vec2<f32> = vec2<f32>(x_3022.z, x_3022.w);
            let x_3025 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec52;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat73 = x_3034;
            let x_3036 : f32 = u_xlat21.y;
            let x_3037 : f32 = u_xlat73;
            let x_3039 : f32 = u_xlat72;
            u_xlat72 = ((x_3036 * x_3037) + x_3039);
            let x_3042 : vec2<f32> = u_xlat32;
            let x_3044 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3042.x, x_3042.y, x_3044);
            let x_3051 : vec3<f32> = txVec53;
            let x_3053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3051.xy, x_3051.z);
            u_xlat73 = x_3053;
            let x_3055 : f32 = u_xlat21.z;
            let x_3056 : f32 = u_xlat73;
            let x_3058 : f32 = u_xlat72;
            u_xlat72 = ((x_3055 * x_3056) + x_3058);
            let x_3061 : vec2<f32> = u_xlat60;
            let x_3063 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec54;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat73 = x_3072;
            let x_3074 : f32 = u_xlat21.w;
            let x_3075 : f32 = u_xlat73;
            let x_3077 : f32 = u_xlat72;
            u_xlat72 = ((x_3074 * x_3075) + x_3077);
            let x_3080 : vec4<f32> = u_xlat13;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.x, x_3080.y);
            let x_3083 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec55;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat73 = x_3092;
            let x_3094 : f32 = u_xlat9.x;
            let x_3095 : f32 = u_xlat73;
            let x_3097 : f32 = u_xlat72;
            u_xlat72 = ((x_3094 * x_3095) + x_3097);
            let x_3100 : vec4<f32> = u_xlat13;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.z, x_3100.w);
            let x_3103 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec56;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat73 = x_3112;
            let x_3114 : f32 = u_xlat9.y;
            let x_3115 : f32 = u_xlat73;
            let x_3117 : f32 = u_xlat72;
            u_xlat72 = ((x_3114 * x_3115) + x_3117);
            let x_3120 : vec2<f32> = u_xlat55;
            let x_3122 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3120.x, x_3120.y, x_3122);
            let x_3129 : vec3<f32> = txVec57;
            let x_3131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3129.xy, x_3129.z);
            u_xlat73 = x_3131;
            let x_3133 : f32 = u_xlat9.z;
            let x_3134 : f32 = u_xlat73;
            let x_3136 : f32 = u_xlat72;
            u_xlat72 = ((x_3133 * x_3134) + x_3136);
            let x_3139 : vec4<f32> = u_xlat8;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec58;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat73 = x_3151;
            let x_3153 : f32 = u_xlat9.w;
            let x_3154 : f32 = u_xlat73;
            let x_3156 : f32 = u_xlat72;
            u_xlat71 = ((x_3153 * x_3154) + x_3156);
          }
        }
      } else {
        let x_3160 : vec4<f32> = u_xlat7;
        let x_3161 : vec2<f32> = vec2<f32>(x_3160.x, x_3160.y);
        let x_3163 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
        let x_3170 : vec3<f32> = txVec59;
        let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
        u_xlat71 = x_3172;
      }
      let x_3173 : i32 = u_xlati69;
      let x_3175 : f32 = x_351.x_AdditionalShadowParams[x_3173].x;
      u_xlat72 = (1.0f + -(x_3175));
      let x_3178 : f32 = u_xlat71;
      let x_3179 : i32 = u_xlati69;
      let x_3181 : f32 = x_351.x_AdditionalShadowParams[x_3179].x;
      let x_3183 : f32 = u_xlat72;
      u_xlat71 = ((x_3178 * x_3181) + x_3183);
      let x_3186 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3186);
      let x_3189 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3189 >= 1.0f);
      let x_3192 : bool = u_xlatb72;
      let x_3194 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3192 | x_3194);
      let x_3196 : bool = u_xlatb72;
      let x_3197 : f32 = u_xlat71;
      u_xlat71 = select(x_3197, 1.0f, x_3196);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3200 : f32 = u_xlat71;
    u_xlat72 = (-(x_3200) + 1.0f);
    let x_3204 : f32 = u_xlat1.x;
    let x_3205 : f32 = u_xlat72;
    let x_3207 : f32 = u_xlat71;
    u_xlat71 = ((x_3204 * x_3205) + x_3207);
    let x_3209 : f32 = u_xlat70;
    let x_3210 : f32 = u_xlat71;
    u_xlat70 = (x_3209 * x_3210);
    let x_3212 : f32 = u_xlat70;
    let x_3214 : i32 = u_xlati69;
    let x_3216 : vec4<f32> = x_1763.x_AdditionalLightsColor[x_3214];
    let x_3218 : vec3<f32> = (vec3<f32>(x_3212, x_3212, x_3212) * vec3<f32>(x_3216.x, x_3216.y, x_3216.z));
    let x_3219 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
    let x_3221 : vec3<f32> = u_xlat2;
    let x_3222 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(x_3221, vec3<f32>(x_3222.x, x_3222.y, x_3222.z));
    let x_3225 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3225, 0.0f, 1.0f);
    let x_3227 : f32 = u_xlat69;
    let x_3229 : vec4<f32> = u_xlat7;
    let x_3231 : vec3<f32> = (vec3<f32>(x_3227, x_3227, x_3227) * vec3<f32>(x_3229.x, x_3229.y, x_3229.z));
    let x_3232 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
    let x_3234 : vec4<f32> = u_xlat6;
    let x_3236 : vec4<f32> = u_xlat1;
    let x_3239 : vec4<f32> = u_xlat5;
    let x_3241 : vec3<f32> = ((vec3<f32>(x_3234.x, x_3234.y, x_3234.z) * vec3<f32>(x_3236.y, x_3236.z, x_3236.w)) + vec3<f32>(x_3239.x, x_3239.y, x_3239.z));
    let x_3242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);

    continuing {
      let x_3244 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3244 + bitcast<u32>(1i));
    }
  }
  let x_3246 : vec4<f32> = u_xlat3;
  let x_3248 : vec4<f32> = u_xlat1;
  let x_3251 : vec4<f32> = u_xlat4;
  let x_3253 : vec3<f32> = ((vec3<f32>(x_3246.x, x_3246.y, x_3246.z) * vec3<f32>(x_3248.y, x_3248.z, x_3248.w)) + vec3<f32>(x_3251.x, x_3251.y, x_3251.z));
  let x_3254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3254.w);
  let x_3256 : vec4<f32> = u_xlat5;
  let x_3258 : vec4<f32> = u_xlat1;
  let x_3260 : vec3<f32> = (vec3<f32>(x_3256.x, x_3256.y, x_3256.z) + vec3<f32>(x_3258.x, x_3258.y, x_3258.z));
  let x_3261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3261.w);
  let x_3264 : f32 = u_xlat22.x;
  let x_3266 : f32 = u_xlat22.x;
  u_xlat22.x = (x_3264 * -(x_3266));
  let x_3271 : f32 = u_xlat22.x;
  u_xlat22.x = exp2(x_3271);
  let x_3274 : vec4<f32> = u_xlat1;
  let x_3277 : vec4<f32> = x_45.unity_FogColor;
  let x_3280 : vec3<f32> = (vec3<f32>(x_3274.x, x_3274.y, x_3274.z) + -(vec3<f32>(x_3277.x, x_3277.y, x_3277.z)));
  let x_3281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
  let x_3285 : vec3<f32> = u_xlat22;
  let x_3287 : vec4<f32> = u_xlat1;
  let x_3291 : vec4<f32> = x_45.unity_FogColor;
  let x_3293 : vec3<f32> = ((vec3<f32>(x_3285.x, x_3285.x, x_3285.x) * vec3<f32>(x_3287.x, x_3287.y, x_3287.z)) + vec3<f32>(x_3291.x, x_3291.y, x_3291.z));
  let x_3294 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3293.x, x_3293.y, x_3293.z, x_3294.w);
  let x_3297 : f32 = x_58.x_Surface;
  u_xlatb22 = (x_3297 == 1.0f);
  let x_3299 : bool = u_xlatb22;
  let x_3300 : bool = u_xlatb44;
  u_xlatb22 = (x_3299 | x_3300);
  let x_3302 : bool = u_xlatb22;
  if (x_3302) {
    let x_3307 : f32 = u_xlat0.x;
    x_3303 = x_3307;
  } else {
    x_3303 = 1.0f;
  }
  let x_3309 : f32 = x_3303;
  SV_Target0.w = x_3309;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


