diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat75 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb53 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_345 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu29 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2277 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu51 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_259 : f32;
  var x_271 : f32;
  var x_282 : f32;
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
  var x_1914 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2409 : f32;
  var x_2419 : f32;
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
  var x_3851 : f32;
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
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_45.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_60, x_62);
  u_xlat1 = vec2<f32>(x_63.x, x_63.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = x_70.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_66.w, x_66.x, x_66.y, x_66.z) * vec4<f32>(x_74.w, x_74.x, x_74.y, x_74.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat51 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat51;
  let x_108 : vec2<f32> = u_xlat51;
  u_xlat75 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat75;
  u_xlat75 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat75;
  u_xlat75 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat75;
  u_xlat75 = sqrt(x_115);
  let x_117 : f32 = u_xlat75;
  u_xlat75 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat51;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat51 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat28.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat28.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_45.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat28;
  u_xlat28 = vec3<f32>(x_165.x, x_165.y, x_166.z);
  let x_173 : vec3<f32> = u_xlat28;
  let x_176 : f32 = x_45.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.y), x_176);
  u_xlat28.x = x_177.w;
  let x_188 : f32 = x_186.unity_LODFade.x;
  u_xlatb53 = (x_188 >= 0.0f);
  let x_191 : bool = u_xlatb53;
  if (x_191) {
    let x_197 : f32 = u_xlat28.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat28.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat28.x = x_204;
  let x_207 : f32 = u_xlat28.x;
  let x_210 : f32 = x_186.unity_LODFade.x;
  u_xlat28.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat28.x;
  u_xlatb28 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb28;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_228 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb28 = (x_228 == 0.0f);
  let x_233 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_239 : vec3<f32> = (-(x_233) + x_238);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_248);
  let x_250 : f32 = u_xlat53;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_250, x_250, x_250) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : bool = u_xlatb28;
  if (x_258) {
    let x_263 : f32 = u_xlat4.x;
    x_259 = x_263;
  } else {
    let x_267 : f32 = x_45.unity_MatrixV[0i].z;
    x_259 = x_267;
  }
  let x_268 : f32 = x_259;
  u_xlat5.x = x_268;
  let x_270 : bool = u_xlatb28;
  if (x_270) {
    let x_275 : f32 = u_xlat4.y;
    x_271 = x_275;
  } else {
    let x_278 : f32 = x_45.unity_MatrixV[1i].z;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat5.y = x_279;
  let x_281 : bool = u_xlatb28;
  if (x_281) {
    let x_286 : f32 = u_xlat4.z;
    x_282 = x_286;
  } else {
    let x_289 : f32 = x_45.unity_MatrixV[2i].z;
    x_282 = x_289;
  }
  let x_290 : f32 = x_282;
  u_xlat5.z = x_290;
  let x_293 : vec3<f32> = vs_TEXCOORD2;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = (vec3<f32>(x_293.z, x_293.x, x_293.y) * vec3<f32>(x_296.y, x_296.z, x_296.x));
  let x_299 : vec3<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = vs_TEXCOORD3;
  let x_304 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : vec3<f32> = u_xlat28;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = (x_307 * vec3<f32>(x_308.w, x_308.w, x_308.w));
  let x_311 : vec2<f32> = u_xlat51;
  let x_313 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_311.y, x_311.y, x_311.y) * x_313);
  let x_315 : vec2<f32> = u_xlat51;
  let x_317 : vec4<f32> = vs_TEXCOORD3;
  let x_320 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_315.x, x_315.x, x_315.x) * vec3<f32>(x_317.x, x_317.y, x_317.z)) + x_320);
  let x_322 : f32 = u_xlat75;
  let x_324 : vec3<f32> = vs_TEXCOORD2;
  let x_326 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_322, x_322, x_322) * x_324) + x_326);
  let x_328 : vec3<f32> = u_xlat28;
  let x_329 : vec3<f32> = u_xlat28;
  u_xlat75 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat75;
  let x_335 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_347 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres0;
  let x_350 : vec3<f32> = (x_337 + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres1;
  let x_359 : vec3<f32> = (x_354 + -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres2;
  let x_369 : vec3<f32> = (x_363 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres3;
  let x_378 : vec3<f32> = (x_373 + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : vec4<f32> = u_xlat6;
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_393 : vec4<f32> = u_xlat7;
  let x_395 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_399 : vec4<f32> = u_xlat8;
  let x_401 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = x_345.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_408 < x_410);
  let x_413 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_413);
  let x_417 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_417);
  let x_421 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_421);
  let x_425 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_425);
  let x_429 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_429);
  let x_434 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_434);
  let x_438 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_438);
  let x_441 : vec4<f32> = u_xlat4;
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) + vec3<f32>(x_443.y, x_443.z, x_443.w));
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = max(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_451.x, x_451.y, x_451.z);
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_454, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_459 : f32 = u_xlat75;
  u_xlat75 = (-(x_459) + 4.0f);
  let x_464 : f32 = u_xlat75;
  u_xlatu75 = u32(x_464);
  let x_468 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_468) << bitcast<u32>(2i));
  let x_471 : vec3<f32> = vs_TEXCOORD1;
  let x_473 : i32 = u_xlati75;
  let x_476 : i32 = u_xlati75;
  let x_480 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_473 + 1i) / 4i)][((x_476 + 1i) % 4i)];
  let x_482 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : i32 = u_xlati75;
  let x_487 : i32 = u_xlati75;
  let x_490 : vec4<f32> = x_345.x_MainLightWorldToShadow[(x_485 / 4i)][(x_487 % 4i)];
  let x_492 : vec3<f32> = vs_TEXCOORD1;
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492.x, x_492.x, x_492.x)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : i32 = u_xlati75;
  let x_503 : i32 = u_xlati75;
  let x_507 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_500 + 2i) / 4i)][((x_503 + 2i) % 4i)];
  let x_509 : vec3<f32> = vs_TEXCOORD1;
  let x_512 : vec4<f32> = u_xlat4;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.z, x_509.z, x_509.z)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : i32 = u_xlati75;
  let x_522 : i32 = u_xlati75;
  let x_526 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_519 + 3i) / 4i)][((x_522 + 3i) % 4i)];
  let x_528 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) + vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_537 : vec2<f32> = vs_TEXCOORD8;
  let x_539 : f32 = x_45.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_537, x_539);
  u_xlat6 = x_540;
  let x_545 : vec2<f32> = vs_TEXCOORD8;
  let x_547 : f32 = x_45.x_GlobalMipBias.x;
  let x_548 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_545, x_547);
  let x_549 : vec3<f32> = vec3<f32>(x_548.x, x_548.y, x_548.z);
  let x_550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat6;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_557 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec3<f32> = u_xlat28;
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_559, vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : f32 = u_xlat75;
  u_xlat75 = (x_563 + 0.5f);
  let x_566 : f32 = u_xlat75;
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat6.w;
  u_xlat75 = max(x_574, 0.00009999999747378752f);
  let x_577 : vec4<f32> = u_xlat6;
  let x_579 : f32 = u_xlat75;
  let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) / vec3<f32>(x_579, x_579, x_579));
  let x_582 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = u_xlat1.x;
  u_xlat75 = ((-(x_585) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_591 : f32 = u_xlat1.y;
  let x_593 : f32 = x_70.x_Smoothness;
  let x_595 : f32 = u_xlat75;
  u_xlat51.x = ((x_591 * x_593) + -(x_595));
  let x_600 : f32 = u_xlat75;
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.y, x_602.z, x_602.w));
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = x_70.x_BaseColor;
  let x_613 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec2<f32> = u_xlat1;
  let x_618 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.x, x_616.x, x_616.x) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat1.y;
  let x_630 : f32 = x_70.x_Smoothness;
  u_xlat75 = ((-(x_627) * x_630) + 1.0f);
  let x_633 : f32 = u_xlat75;
  let x_634 : f32 = u_xlat75;
  u_xlat1.x = (x_633 * x_634);
  let x_638 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_638, 0.0078125f);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  u_xlat26 = (x_644 * x_646);
  let x_649 : f32 = u_xlat51.x;
  u_xlat51.x = (x_649 + 1.0f);
  let x_653 : f32 = u_xlat51.x;
  u_xlat51.x = clamp(x_653, 0.0f, 1.0f);
  let x_658 : f32 = u_xlat1.x;
  u_xlat76 = ((x_658 * 4.0f) + 2.0f);
  let x_662 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_662, 1.0f);
  let x_667 : f32 = x_345.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_667);
  let x_669 : bool = u_xlatb79;
  if (x_669) {
    let x_673 : f32 = x_345.x_MainLightShadowParams.y;
    u_xlatb79 = (x_673 == 1.0f);
    let x_675 : bool = u_xlatb79;
    if (x_675) {
      let x_678 : vec4<f32> = u_xlat4;
      let x_681 : vec4<f32> = x_345.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y) + x_681);
      let x_685 : vec4<f32> = u_xlat7;
      let x_686 : vec2<f32> = vec2<f32>(x_685.x, x_685.y);
      let x_688 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_686.x, x_686.y, x_688);
      let x_700 : vec3<f32> = txVec0;
      let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
      u_xlat8.x = x_702;
      let x_705 : vec4<f32> = u_xlat7;
      let x_706 : vec2<f32> = vec2<f32>(x_705.z, x_705.w);
      let x_708 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_706.x, x_706.y, x_708);
      let x_715 : vec3<f32> = txVec1;
      let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_715.xy, x_715.z);
      u_xlat8.y = x_717;
      let x_719 : vec4<f32> = u_xlat4;
      let x_722 : vec4<f32> = x_345.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) + x_722);
      let x_725 : vec4<f32> = u_xlat7;
      let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
      let x_728 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_726.x, x_726.y, x_728);
      let x_735 : vec3<f32> = txVec2;
      let x_737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_735.xy, x_735.z);
      u_xlat8.z = x_737;
      let x_740 : vec4<f32> = u_xlat7;
      let x_741 : vec2<f32> = vec2<f32>(x_740.z, x_740.w);
      let x_743 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_741.x, x_741.y, x_743);
      let x_750 : vec3<f32> = txVec3;
      let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
      u_xlat8.w = x_752;
      let x_755 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_755, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_762 : f32 = x_345.x_MainLightShadowParams.y;
      u_xlatb80 = (x_762 == 2.0f);
      let x_764 : bool = u_xlatb80;
      if (x_764) {
        let x_767 : vec4<f32> = u_xlat4;
        let x_771 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_775 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_771.z, x_771.w)) + vec2<f32>(0.5f, 0.5f));
        let x_776 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat7;
        let x_780 : vec2<f32> = floor(vec2<f32>(x_778.x, x_778.y));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_784 : vec4<f32> = u_xlat4;
        let x_787 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.z, x_787.w)) + -(vec2<f32>(x_790.x, x_790.y)));
        let x_794 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_794.x, x_794.x, x_794.y, x_794.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_799 : vec4<f32> = u_xlat8;
        let x_801 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z) * vec4<f32>(x_801.x, x_801.x, x_801.z, x_801.z));
        let x_804 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = (vec2<f32>(x_804.y, x_804.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_809.y, x_808.y, x_809.w);
        let x_811 : vec4<f32> = u_xlat9;
        let x_814 : vec2<f32> = u_xlat57;
        let x_816 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.z) * vec2<f32>(0.5f, 0.5f)) + -(x_814));
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_820 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_820) + vec2<f32>(1.0f, 1.0f));
        let x_825 : vec2<f32> = u_xlat57;
        let x_827 : vec2<f32> = min(x_825, vec2<f32>(0.0f, 0.0f));
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat10;
        let x_833 : vec4<f32> = u_xlat10;
        let x_836 : vec2<f32> = u_xlat59;
        let x_837 : vec2<f32> = ((-(vec2<f32>(x_830.x, x_830.y)) * vec2<f32>(x_833.x, x_833.y)) + x_836);
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_840, vec2<f32>(0.0f, 0.0f));
        let x_842 : vec2<f32> = u_xlat57;
        let x_844 : vec2<f32> = u_xlat57;
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_842) * x_844) + vec2<f32>(x_846.y, x_846.w));
        let x_849 : vec4<f32> = u_xlat10;
        let x_851 : vec2<f32> = (vec2<f32>(x_849.x, x_849.y) + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_854 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_854 + vec2<f32>(1.0f, 1.0f));
        let x_857 : vec4<f32> = u_xlat9;
        let x_861 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat59;
        let x_865 : vec2<f32> = (x_864 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat10;
        let x_870 : vec2<f32> = (vec2<f32>(x_868.x, x_868.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_871 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_874 : vec2<f32> = u_xlat57;
        let x_875 : vec2<f32> = (x_874 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_876 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_878.y, x_878.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_882 : f32 = u_xlat10.x;
        u_xlat11.z = x_882;
        let x_885 : f32 = u_xlat57.x;
        u_xlat11.w = x_885;
        let x_888 : f32 = u_xlat12.x;
        u_xlat9.z = x_888;
        let x_891 : f32 = u_xlat8.x;
        u_xlat9.w = x_891;
        let x_894 : vec4<f32> = u_xlat9;
        let x_896 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_894.z, x_894.w, x_894.x, x_894.z) + vec4<f32>(x_896.z, x_896.w, x_896.x, x_896.z));
        let x_900 : f32 = u_xlat11.y;
        u_xlat10.z = x_900;
        let x_903 : f32 = u_xlat57.y;
        u_xlat10.w = x_903;
        let x_906 : f32 = u_xlat9.y;
        u_xlat12.z = x_906;
        let x_909 : f32 = u_xlat8.z;
        u_xlat12.w = x_909;
        let x_911 : vec4<f32> = u_xlat10;
        let x_913 : vec4<f32> = u_xlat12;
        let x_915 : vec3<f32> = (vec3<f32>(x_911.z, x_911.y, x_911.w) + vec3<f32>(x_913.z, x_913.y, x_913.w));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat9;
        let x_920 : vec4<f32> = u_xlat13;
        let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.z, x_918.w) / vec3<f32>(x_920.z, x_920.w, x_920.y));
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
        let x_925 : vec4<f32> = u_xlat9;
        let x_930 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat12;
        let x_935 : vec4<f32> = u_xlat8;
        let x_937 : vec3<f32> = (vec3<f32>(x_933.z, x_933.y, x_933.w) / vec3<f32>(x_935.x, x_935.y, x_935.z));
        let x_938 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat10;
        let x_942 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_943 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat9;
        let x_948 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_950 : vec3<f32> = (vec3<f32>(x_945.y, x_945.x, x_945.z) * vec3<f32>(x_948.x, x_948.x, x_948.x));
        let x_951 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat10;
        let x_956 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_958 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(x_956.y, x_956.y, x_956.y));
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
        let x_962 : f32 = u_xlat10.x;
        u_xlat9.w = x_962;
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_964.x, x_964.y, x_964.x, x_964.y) * vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y)) + vec4<f32>(x_970.y, x_970.w, x_970.x, x_970.w));
        let x_973 : vec4<f32> = u_xlat7;
        let x_976 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_979.z, x_979.w));
        let x_983 : f32 = u_xlat9.y;
        u_xlat10.w = x_983;
        let x_985 : vec4<f32> = u_xlat10;
        let x_986 : vec2<f32> = vec2<f32>(x_985.y, x_985.z);
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_986.x, x_987.z, x_986.y);
        let x_989 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) * vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y)) + vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.y));
        let x_998 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y) * vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y)) + vec4<f32>(x_1004.w, x_1004.y, x_1004.w, x_1004.z));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) * vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y)) + vec4<f32>(x_1013.x, x_1013.w, x_1013.z, x_1013.w));
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1017.x, x_1017.x, x_1017.x, x_1017.y) * vec4<f32>(x_1019.z, x_1019.w, x_1019.y, x_1019.z));
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1025 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1023.y, x_1023.y, x_1023.z, x_1023.z) * x_1025);
        let x_1029 : f32 = u_xlat8.z;
        let x_1031 : f32 = u_xlat13.y;
        u_xlat80 = (x_1029 * x_1031);
        let x_1034 : vec4<f32> = u_xlat11;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
        let x_1037 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1045 : vec3<f32> = txVec4;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
        u_xlat81 = x_1047;
        let x_1049 : vec4<f32> = u_xlat11;
        let x_1050 : vec2<f32> = vec2<f32>(x_1049.z, x_1049.w);
        let x_1052 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec5;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1059.xy, x_1059.z);
        u_xlat7.x = x_1061;
        let x_1064 : f32 = u_xlat7.x;
        let x_1066 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1064 * x_1066);
        let x_1070 : f32 = u_xlat14.x;
        let x_1071 : f32 = u_xlat81;
        let x_1074 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1070 * x_1071) + x_1074);
        let x_1077 : vec2<f32> = u_xlat57;
        let x_1079 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1077.x, x_1077.y, x_1079);
        let x_1086 : vec3<f32> = txVec6;
        let x_1088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1086.xy, x_1086.z);
        u_xlat7.x = x_1088;
        let x_1091 : f32 = u_xlat14.z;
        let x_1093 : f32 = u_xlat7.x;
        let x_1095 : f32 = u_xlat81;
        u_xlat81 = ((x_1091 * x_1093) + x_1095);
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1099 : vec2<f32> = vec2<f32>(x_1098.x, x_1098.y);
        let x_1101 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
        let x_1108 : vec3<f32> = txVec7;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1108.xy, x_1108.z);
        u_xlat7.x = x_1110;
        let x_1113 : f32 = u_xlat14.w;
        let x_1115 : f32 = u_xlat7.x;
        let x_1117 : f32 = u_xlat81;
        u_xlat81 = ((x_1113 * x_1115) + x_1117);
        let x_1120 : vec4<f32> = u_xlat12;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec8;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat7.x = x_1132;
        let x_1135 : f32 = u_xlat15.x;
        let x_1137 : f32 = u_xlat7.x;
        let x_1139 : f32 = u_xlat81;
        u_xlat81 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat12;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.z, x_1142.w);
        let x_1145 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec9;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat7.x = x_1154;
        let x_1157 : f32 = u_xlat15.y;
        let x_1159 : f32 = u_xlat7.x;
        let x_1161 : f32 = u_xlat81;
        u_xlat81 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat10;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.z, x_1164.w);
        let x_1167 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec10;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat7.x = x_1176;
        let x_1179 : f32 = u_xlat15.z;
        let x_1181 : f32 = u_xlat7.x;
        let x_1183 : f32 = u_xlat81;
        u_xlat81 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.x, x_1186.y);
        let x_1189 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec11;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat7.x = x_1198;
        let x_1201 : f32 = u_xlat15.w;
        let x_1203 : f32 = u_xlat7.x;
        let x_1205 : f32 = u_xlat81;
        u_xlat81 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec12;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat7.x = x_1220;
        let x_1222 : f32 = u_xlat80;
        let x_1224 : f32 = u_xlat7.x;
        let x_1226 : f32 = u_xlat81;
        u_xlat79 = ((x_1222 * x_1224) + x_1226);
      } else {
        let x_1229 : vec4<f32> = u_xlat4;
        let x_1232 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.z, x_1232.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1240 : vec2<f32> = floor(vec2<f32>(x_1238.x, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat4;
        let x_1246 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.z, x_1246.w)) + -(vec2<f32>(x_1249.x, x_1249.y)));
        let x_1253 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1253.x, x_1253.x, x_1253.y, x_1253.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1256.x, x_1256.x, x_1256.z, x_1256.z) * vec4<f32>(x_1258.x, x_1258.x, x_1258.z, x_1258.z));
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1261.y, x_1261.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1265.x, x_1266.z, x_1265.y);
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1271 : vec2<f32> = u_xlat57;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1271));
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1273.x, x_1274.y, x_1273.y, x_1274.w);
        let x_1276 : vec2<f32> = u_xlat57;
        let x_1278 : vec2<f32> = (-(x_1276) + vec2<f32>(1.0f, 1.0f));
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1281 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1281, vec2<f32>(0.0f, 0.0f));
        let x_1283 : vec2<f32> = u_xlat59;
        let x_1285 : vec2<f32> = u_xlat59;
        let x_1287 : vec4<f32> = u_xlat9;
        let x_1289 : vec2<f32> = ((-(x_1283) * x_1285) + vec2<f32>(x_1287.x, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1292, vec2<f32>(0.0f, 0.0f));
        let x_1295 : vec2<f32> = u_xlat59;
        let x_1297 : vec2<f32> = u_xlat59;
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1301 : vec2<f32> = ((-(x_1295) * x_1297) + vec2<f32>(x_1299.y, x_1299.w));
        let x_1302 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1301.x, x_1302.y, x_1301.y);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1306 : vec2<f32> = (vec2<f32>(x_1304.x, x_1304.y) + vec2<f32>(2.0f, 2.0f));
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1309 : vec3<f32> = u_xlat33;
        let x_1311 : vec2<f32> = (vec2<f32>(x_1309.x, x_1309.z) + vec2<f32>(2.0f, 2.0f));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1312.x, x_1311.x, x_1312.z, x_1311.y);
        let x_1315 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1315 * 0.08163200318813323975f);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1322 : vec3<f32> = (vec3<f32>(x_1319.z, x_1319.x, x_1319.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1323 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
        let x_1325 : vec4<f32> = u_xlat9;
        let x_1328 : vec2<f32> = (vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
        let x_1332 : f32 = u_xlat12.y;
        u_xlat11.x = x_1332;
        let x_1334 : vec2<f32> = u_xlat57;
        let x_1341 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1341.x, x_1342.z, x_1341.y);
        let x_1344 : vec2<f32> = u_xlat57;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1349.w);
        let x_1352 : f32 = u_xlat8.x;
        u_xlat9.y = x_1352;
        let x_1355 : f32 = u_xlat10.y;
        u_xlat9.w = x_1355;
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1357 + x_1358);
        let x_1360 : vec2<f32> = u_xlat57;
        let x_1363 : vec2<f32> = ((vec2<f32>(x_1360.y, x_1360.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1364 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1364.x, x_1363.x, x_1364.z, x_1363.y);
        let x_1366 : vec2<f32> = u_xlat57;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1366.y, x_1366.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1370 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1369.x, x_1370.y, x_1369.y, x_1370.w);
        let x_1373 : f32 = u_xlat8.y;
        u_xlat10.y = x_1373;
        let x_1375 : vec4<f32> = u_xlat10;
        let x_1376 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1375 + x_1376);
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1378 / x_1379);
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1381 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1387 / x_1388);
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1392 : vec4<f32> = u_xlat9;
        let x_1395 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1392.w, x_1392.x, x_1392.y, x_1392.z) * vec4<f32>(x_1395.x, x_1395.x, x_1395.x, x_1395.x));
        let x_1398 : vec4<f32> = u_xlat10;
        let x_1401 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1398.x, x_1398.w, x_1398.y, x_1398.z) * vec4<f32>(x_1401.y, x_1401.y, x_1401.y, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat9;
        let x_1405 : vec3<f32> = vec3<f32>(x_1404.y, x_1404.z, x_1404.w);
        let x_1406 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1405.x, x_1406.y, x_1405.y, x_1405.z);
        let x_1409 : f32 = u_xlat10.x;
        u_xlat12.y = x_1409;
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1414 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y) * vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y)) + vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1417.y));
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1423 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.w, x_1426.y));
        let x_1430 : f32 = u_xlat12.y;
        u_xlat9.y = x_1430;
        let x_1433 : f32 = u_xlat10.z;
        u_xlat12.y = x_1433;
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1438 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1441 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y) * vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y)) + vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1441.y));
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1447 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat12;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1447.x, x_1447.y)) + vec2<f32>(x_1450.w, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        let x_1456 : f32 = u_xlat12.y;
        u_xlat9.z = x_1456;
        let x_1459 : vec4<f32> = u_xlat7;
        let x_1462 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1459.x, x_1459.y, x_1459.x, x_1459.y) * vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y)) + vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.z));
        let x_1469 : f32 = u_xlat10.w;
        u_xlat12.y = x_1469;
        let x_1472 : vec4<f32> = u_xlat7;
        let x_1475 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1478 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y) * vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y)) + vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1478.y));
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.w, x_1488.y));
        let x_1492 : f32 = u_xlat12.y;
        u_xlat9.w = x_1492;
        let x_1495 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1498.x, x_1498.y)) + vec2<f32>(x_1501.x, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat12;
        let x_1505 : vec3<f32> = vec3<f32>(x_1504.x, x_1504.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1505.x, x_1506.y, x_1505.y, x_1505.z);
        let x_1508 : vec4<f32> = u_xlat7;
        let x_1511 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1518 : vec4<f32> = u_xlat7;
        let x_1521 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.x, x_1521.y)) + vec2<f32>(x_1524.w, x_1524.y));
        let x_1528 : f32 = u_xlat9.x;
        u_xlat10.x = x_1528;
        let x_1530 : vec4<f32> = u_xlat7;
        let x_1533 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat10;
        let x_1538 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1533.x, x_1533.y)) + vec2<f32>(x_1536.x, x_1536.y));
        let x_1539 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1542 : vec4<f32> = u_xlat8;
        let x_1544 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1542.x, x_1542.x, x_1542.x, x_1542.x) * x_1544);
        let x_1547 : vec4<f32> = u_xlat8;
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1547.y, x_1547.y, x_1547.y, x_1547.y) * x_1549);
        let x_1552 : vec4<f32> = u_xlat8;
        let x_1554 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1552.z, x_1552.z, x_1552.z, x_1552.z) * x_1554);
        let x_1556 : vec4<f32> = u_xlat8;
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1556.w, x_1556.w, x_1556.w, x_1556.w) * x_1558);
        let x_1561 : vec4<f32> = u_xlat13;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec13;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat80 = x_1573;
        let x_1575 : vec4<f32> = u_xlat13;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec14;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat81 = x_1587;
        let x_1588 : f32 = u_xlat81;
        let x_1590 : f32 = u_xlat18.y;
        u_xlat81 = (x_1588 * x_1590);
        let x_1593 : f32 = u_xlat18.x;
        let x_1594 : f32 = u_xlat80;
        let x_1596 : f32 = u_xlat81;
        u_xlat80 = ((x_1593 * x_1594) + x_1596);
        let x_1599 : vec2<f32> = u_xlat57;
        let x_1601 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec15;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat81 = x_1610;
        let x_1612 : f32 = u_xlat18.z;
        let x_1613 : f32 = u_xlat81;
        let x_1615 : f32 = u_xlat80;
        u_xlat80 = ((x_1612 * x_1613) + x_1615);
        let x_1618 : vec4<f32> = u_xlat16;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.x, x_1618.y);
        let x_1621 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec16;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat81 = x_1630;
        let x_1632 : f32 = u_xlat18.w;
        let x_1633 : f32 = u_xlat81;
        let x_1635 : f32 = u_xlat80;
        u_xlat80 = ((x_1632 * x_1633) + x_1635);
        let x_1638 : vec4<f32> = u_xlat14;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
        let x_1641 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec17;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat81 = x_1650;
        let x_1652 : f32 = u_xlat19.x;
        let x_1653 : f32 = u_xlat81;
        let x_1655 : f32 = u_xlat80;
        u_xlat80 = ((x_1652 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat14;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec18;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1668.xy, x_1668.z);
        u_xlat81 = x_1670;
        let x_1672 : f32 = u_xlat19.y;
        let x_1673 : f32 = u_xlat81;
        let x_1675 : f32 = u_xlat80;
        u_xlat80 = ((x_1672 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat15;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec19;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat81 = x_1690;
        let x_1692 : f32 = u_xlat19.z;
        let x_1693 : f32 = u_xlat81;
        let x_1695 : f32 = u_xlat80;
        u_xlat80 = ((x_1692 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat16;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.z, x_1698.w);
        let x_1701 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec20;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat81 = x_1710;
        let x_1712 : f32 = u_xlat19.w;
        let x_1713 : f32 = u_xlat81;
        let x_1715 : f32 = u_xlat80;
        u_xlat80 = ((x_1712 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat17;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
        let x_1721 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec21;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat81 = x_1730;
        let x_1732 : f32 = u_xlat20.x;
        let x_1733 : f32 = u_xlat81;
        let x_1735 : f32 = u_xlat80;
        u_xlat80 = ((x_1732 * x_1733) + x_1735);
        let x_1738 : vec4<f32> = u_xlat17;
        let x_1739 : vec2<f32> = vec2<f32>(x_1738.z, x_1738.w);
        let x_1741 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1739.x, x_1739.y, x_1741);
        let x_1748 : vec3<f32> = txVec22;
        let x_1750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1748.xy, x_1748.z);
        u_xlat81 = x_1750;
        let x_1752 : f32 = u_xlat20.y;
        let x_1753 : f32 = u_xlat81;
        let x_1755 : f32 = u_xlat80;
        u_xlat80 = ((x_1752 * x_1753) + x_1755);
        let x_1758 : vec2<f32> = u_xlat34;
        let x_1760 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec23;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat81 = x_1769;
        let x_1771 : f32 = u_xlat20.z;
        let x_1772 : f32 = u_xlat81;
        let x_1774 : f32 = u_xlat80;
        u_xlat80 = ((x_1771 * x_1772) + x_1774);
        let x_1777 : vec2<f32> = u_xlat65;
        let x_1779 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec24;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1786.xy, x_1786.z);
        u_xlat81 = x_1788;
        let x_1790 : f32 = u_xlat20.w;
        let x_1791 : f32 = u_xlat81;
        let x_1793 : f32 = u_xlat80;
        u_xlat80 = ((x_1790 * x_1791) + x_1793);
        let x_1796 : vec4<f32> = u_xlat12;
        let x_1797 : vec2<f32> = vec2<f32>(x_1796.x, x_1796.y);
        let x_1799 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1797.x, x_1797.y, x_1799);
        let x_1806 : vec3<f32> = txVec25;
        let x_1808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1806.xy, x_1806.z);
        u_xlat81 = x_1808;
        let x_1810 : f32 = u_xlat8.x;
        let x_1811 : f32 = u_xlat81;
        let x_1813 : f32 = u_xlat80;
        u_xlat80 = ((x_1810 * x_1811) + x_1813);
        let x_1816 : vec4<f32> = u_xlat12;
        let x_1817 : vec2<f32> = vec2<f32>(x_1816.z, x_1816.w);
        let x_1819 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec26;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1826.xy, x_1826.z);
        u_xlat81 = x_1828;
        let x_1830 : f32 = u_xlat8.y;
        let x_1831 : f32 = u_xlat81;
        let x_1833 : f32 = u_xlat80;
        u_xlat80 = ((x_1830 * x_1831) + x_1833);
        let x_1836 : vec2<f32> = u_xlat60;
        let x_1838 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec27;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1845.xy, x_1845.z);
        u_xlat81 = x_1847;
        let x_1849 : f32 = u_xlat8.z;
        let x_1850 : f32 = u_xlat81;
        let x_1852 : f32 = u_xlat80;
        u_xlat80 = ((x_1849 * x_1850) + x_1852);
        let x_1855 : vec4<f32> = u_xlat7;
        let x_1856 : vec2<f32> = vec2<f32>(x_1855.x, x_1855.y);
        let x_1858 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1856.x, x_1856.y, x_1858);
        let x_1865 : vec3<f32> = txVec28;
        let x_1867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1865.xy, x_1865.z);
        u_xlat81 = x_1867;
        let x_1869 : f32 = u_xlat8.w;
        let x_1870 : f32 = u_xlat81;
        let x_1872 : f32 = u_xlat80;
        u_xlat79 = ((x_1869 * x_1870) + x_1872);
      }
    }
  } else {
    let x_1876 : vec4<f32> = u_xlat4;
    let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
    let x_1879 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
    let x_1886 : vec3<f32> = txVec29;
    let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
    u_xlat79 = x_1888;
  }
  let x_1890 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1890) + 1.0f);
  let x_1894 : f32 = u_xlat79;
  let x_1896 : f32 = x_345.x_MainLightShadowParams.x;
  let x_1899 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1894 * x_1896) + x_1899);
  let x_1904 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1904);
  let x_1908 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1908 >= 1.0f);
  let x_1910 : bool = u_xlatb54;
  let x_1911 : bool = u_xlatb29;
  u_xlatb29 = (x_1910 | x_1911);
  let x_1913 : bool = u_xlatb29;
  if (x_1913) {
    x_1914 = 1.0f;
  } else {
    let x_1919 : f32 = u_xlat4.x;
    x_1914 = x_1919;
  }
  let x_1920 : f32 = x_1914;
  u_xlat4.x = x_1920;
  let x_1923 : vec3<f32> = vs_TEXCOORD1;
  let x_1925 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat29 = (x_1923 + -(x_1925));
  let x_1928 : vec3<f32> = u_xlat29;
  let x_1929 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_1928, x_1929);
  let x_1934 : f32 = u_xlat29.x;
  let x_1936 : f32 = x_345.x_MainLightShadowParams.z;
  let x_1939 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1934 * x_1936) + x_1939);
  let x_1941 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1941, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat4.x;
  u_xlat79 = (-(x_1944) + 1.0f);
  let x_1947 : f32 = u_xlat54;
  let x_1948 : f32 = u_xlat79;
  let x_1951 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1947 * x_1948) + x_1951);
  let x_1954 : vec3<f32> = u_xlat5;
  let x_1956 : vec3<f32> = u_xlat28;
  u_xlat54 = dot(-(x_1954), x_1956);
  let x_1958 : f32 = u_xlat54;
  let x_1959 : f32 = u_xlat54;
  u_xlat54 = (x_1958 + x_1959);
  let x_1961 : vec3<f32> = u_xlat28;
  let x_1962 : f32 = u_xlat54;
  let x_1966 : vec3<f32> = u_xlat5;
  let x_1968 : vec3<f32> = ((x_1961 * -(vec3<f32>(x_1962, x_1962, x_1962))) + -(x_1966));
  let x_1969 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
  let x_1971 : vec3<f32> = u_xlat28;
  let x_1972 : vec3<f32> = u_xlat5;
  u_xlat54 = dot(x_1971, x_1972);
  let x_1974 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1974, 0.0f, 1.0f);
  let x_1976 : f32 = u_xlat54;
  u_xlat54 = (-(x_1976) + 1.0f);
  let x_1979 : f32 = u_xlat54;
  let x_1980 : f32 = u_xlat54;
  u_xlat54 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat54;
  let x_1983 : f32 = u_xlat54;
  u_xlat54 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat75;
  u_xlat79 = ((-(x_1985) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1991 : f32 = u_xlat75;
  let x_1992 : f32 = u_xlat79;
  u_xlat75 = (x_1991 * x_1992);
  let x_1994 : f32 = u_xlat75;
  u_xlat75 = (x_1994 * 6.0f);
  let x_2005 : vec4<f32> = u_xlat7;
  let x_2007 : f32 = u_xlat75;
  let x_2008 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2005.x, x_2005.y, x_2005.z), x_2007);
  u_xlat7 = x_2008;
  let x_2010 : f32 = u_xlat7.w;
  u_xlat75 = (x_2010 + -1.0f);
  let x_2013 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_2014 : f32 = u_xlat75;
  u_xlat75 = ((x_2013 * x_2014) + 1.0f);
  let x_2017 : f32 = u_xlat75;
  u_xlat75 = max(x_2017, 0.0f);
  let x_2019 : f32 = u_xlat75;
  u_xlat75 = log2(x_2019);
  let x_2021 : f32 = u_xlat75;
  let x_2023 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_2021 * x_2023);
  let x_2025 : f32 = u_xlat75;
  u_xlat75 = exp2(x_2025);
  let x_2027 : f32 = u_xlat75;
  let x_2029 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_2027 * x_2029);
  let x_2031 : vec4<f32> = u_xlat7;
  let x_2033 : f32 = u_xlat75;
  let x_2035 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2033, x_2033, x_2033));
  let x_2036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : vec2<f32> = u_xlat1;
  let x_2040 : vec2<f32> = u_xlat1;
  let x_2044 : vec2<f32> = ((vec2<f32>(x_2038.x, x_2038.x) * vec2<f32>(x_2040.x, x_2040.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2045 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2044.x, x_2044.y, x_2045.z, x_2045.w);
  let x_2048 : f32 = u_xlat8.y;
  u_xlat75 = (1.0f / x_2048);
  let x_2050 : vec4<f32> = u_xlat0;
  let x_2053 : vec2<f32> = u_xlat51;
  u_xlat33 = (-(vec3<f32>(x_2050.x, x_2050.y, x_2050.z)) + vec3<f32>(x_2053.x, x_2053.x, x_2053.x));
  let x_2056 : f32 = u_xlat54;
  let x_2058 : vec3<f32> = u_xlat33;
  let x_2060 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2056, x_2056, x_2056) * x_2058) + vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : f32 = u_xlat75;
  let x_2065 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2063, x_2063, x_2063) * x_2065);
  let x_2067 : vec4<f32> = u_xlat7;
  let x_2069 : vec3<f32> = u_xlat33;
  let x_2070 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * x_2069);
  let x_2071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
  let x_2073 : vec4<f32> = u_xlat6;
  let x_2075 : vec3<f32> = u_xlat27;
  let x_2077 : vec4<f32> = u_xlat7;
  let x_2079 : vec3<f32> = ((vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * x_2075) + vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
  let x_2080 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
  let x_2083 : f32 = u_xlat4.x;
  let x_2085 : f32 = x_186.unity_LightData.z;
  u_xlat75 = (x_2083 * x_2085);
  let x_2087 : vec3<f32> = u_xlat28;
  let x_2089 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(x_2087, vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2094 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2094, 0.0f, 1.0f);
  let x_2097 : f32 = u_xlat75;
  let x_2099 : f32 = u_xlat1.x;
  u_xlat75 = (x_2097 * x_2099);
  let x_2101 : f32 = u_xlat75;
  let x_2104 : vec4<f32> = x_45.x_MainLightColor;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2101, x_2101, x_2101) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2106.x, x_2107.y, x_2106.y, x_2106.z);
  let x_2109 : vec3<f32> = u_xlat5;
  let x_2111 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2113 : vec3<f32> = (x_2109 + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
  let x_2116 : vec4<f32> = u_xlat7;
  let x_2118 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : f32 = u_xlat75;
  u_xlat75 = max(x_2121, 1.17549435e-38f);
  let x_2124 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2124);
  let x_2126 : f32 = u_xlat75;
  let x_2128 : vec4<f32> = u_xlat7;
  let x_2130 : vec3<f32> = (vec3<f32>(x_2126, x_2126, x_2126) * vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
  let x_2131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
  let x_2133 : vec3<f32> = u_xlat28;
  let x_2134 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(x_2133, vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2137, 0.0f, 1.0f);
  let x_2140 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2142 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
  let x_2147 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2147, 0.0f, 1.0f);
  let x_2150 : f32 = u_xlat75;
  let x_2151 : f32 = u_xlat75;
  u_xlat75 = (x_2150 * x_2151);
  let x_2153 : f32 = u_xlat75;
  let x_2155 : f32 = u_xlat8.x;
  u_xlat75 = ((x_2153 * x_2155) + 1.00001001358032226562f);
  let x_2160 : f32 = u_xlat1.x;
  let x_2162 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2160 * x_2162);
  let x_2165 : f32 = u_xlat75;
  let x_2166 : f32 = u_xlat75;
  u_xlat75 = (x_2165 * x_2166);
  let x_2169 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2169, 0.10000000149011611938f);
  let x_2173 : f32 = u_xlat75;
  let x_2175 : f32 = u_xlat1.x;
  u_xlat75 = (x_2173 * x_2175);
  let x_2177 : f32 = u_xlat76;
  let x_2178 : f32 = u_xlat75;
  u_xlat75 = (x_2177 * x_2178);
  let x_2180 : f32 = u_xlat26;
  let x_2181 : f32 = u_xlat75;
  u_xlat75 = (x_2180 / x_2181);
  let x_2183 : vec4<f32> = u_xlat0;
  let x_2185 : f32 = u_xlat75;
  let x_2188 : vec3<f32> = u_xlat27;
  let x_2189 : vec3<f32> = ((vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * vec3<f32>(x_2185, x_2185, x_2185)) + x_2188);
  let x_2190 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec4<f32> = u_xlat4;
  let x_2194 : vec4<f32> = u_xlat7;
  let x_2196 : vec3<f32> = (vec3<f32>(x_2192.x, x_2192.z, x_2192.w) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2196.x, x_2197.y, x_2196.y, x_2196.z);
  let x_2200 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2202 : f32 = x_186.unity_LightData.y;
  u_xlat75 = min(x_2200, x_2202);
  let x_2204 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2204));
  let x_2208 : f32 = u_xlat29.x;
  let x_2211 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_2214 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2208 * x_2211) + x_2214);
  let x_2218 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2218, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2231 : u32 = u_xlatu_loop_1;
    let x_2232 : u32 = u_xlatu75;
    if ((x_2231 < x_2232)) {
    } else {
      break;
    }
    let x_2235 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2235 >> 2u);
    let x_2238 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2238 & 3u));
    let x_2241 : u32 = u_xlatu29;
    let x_2244 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2241)];
    let x_2254 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2259 : vec4<u32> = indexable[x_2254];
    u_xlat29.x = dot(x_2244, bitcast<vec4<f32>>(x_2259));
    let x_2265 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2265);
    let x_2267 : vec3<f32> = vs_TEXCOORD1;
    let x_2278 : i32 = u_xlati29;
    let x_2280 : vec4<f32> = x_2277.x_AdditionalLightsPosition[x_2278];
    let x_2283 : i32 = u_xlati29;
    let x_2285 : vec4<f32> = x_2277.x_AdditionalLightsPosition[x_2283];
    u_xlat33 = ((-(x_2267) * vec3<f32>(x_2280.w, x_2280.w, x_2280.w)) + vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
    let x_2288 : vec3<f32> = u_xlat33;
    let x_2289 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2288, x_2289);
    let x_2291 : f32 = u_xlat80;
    u_xlat80 = max(x_2291, 0.00006103515625f);
    let x_2294 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2294);
    let x_2296 : f32 = u_xlat81;
    let x_2298 : vec3<f32> = u_xlat33;
    let x_2299 : vec3<f32> = (vec3<f32>(x_2296, x_2296, x_2296) * x_2298);
    let x_2300 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
    let x_2303 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2303);
    let x_2305 : f32 = u_xlat80;
    let x_2306 : i32 = u_xlati29;
    let x_2308 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2306].x;
    u_xlat80 = (x_2305 * x_2308);
    let x_2310 : f32 = u_xlat80;
    let x_2312 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2310) * x_2312) + 1.0f);
    let x_2315 : f32 = u_xlat80;
    u_xlat80 = max(x_2315, 0.0f);
    let x_2317 : f32 = u_xlat80;
    let x_2318 : f32 = u_xlat80;
    u_xlat80 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat80;
    let x_2321 : f32 = u_xlat82;
    u_xlat80 = (x_2320 * x_2321);
    let x_2323 : i32 = u_xlati29;
    let x_2325 : vec4<f32> = x_2277.x_AdditionalLightsSpotDir[x_2323];
    let x_2327 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2325.x, x_2325.y, x_2325.z), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : f32 = u_xlat82;
    let x_2331 : i32 = u_xlati29;
    let x_2333 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2331].z;
    let x_2335 : i32 = u_xlati29;
    let x_2337 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2335].w;
    u_xlat82 = ((x_2330 * x_2333) + x_2337);
    let x_2339 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2339, 0.0f, 1.0f);
    let x_2341 : f32 = u_xlat82;
    let x_2342 : f32 = u_xlat82;
    u_xlat82 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat80;
    let x_2345 : f32 = u_xlat82;
    u_xlat80 = (x_2344 * x_2345);
    let x_2349 : i32 = u_xlati29;
    let x_2351 : f32 = x_345.x_AdditionalShadowParams[x_2349].w;
    u_xlati82 = i32(x_2351);
    let x_2354 : i32 = u_xlati82;
    u_xlatb84 = (x_2354 >= 0i);
    let x_2356 : bool = u_xlatb84;
    if (x_2356) {
      let x_2360 : i32 = u_xlati29;
      let x_2362 : f32 = x_345.x_AdditionalShadowParams[x_2360].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2362, x_2362, x_2362, x_2362))));
      let x_2366 : bool = u_xlatb84;
      if (x_2366) {
        let x_2370 : vec4<f32> = u_xlat9;
        let x_2373 : vec4<f32> = u_xlat9;
        let x_2376 : vec4<bool> = (abs(vec4<f32>(x_2370.z, x_2370.z, x_2370.y, x_2370.z)) >= abs(vec4<f32>(x_2373.x, x_2373.y, x_2373.x, x_2373.x)));
        let x_2378 : vec3<bool> = vec3<bool>(x_2376.x, x_2376.y, x_2376.z);
        let x_2379 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
        let x_2382 : bool = u_xlatb10.y;
        let x_2384 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2382 & x_2384);
        let x_2386 : vec4<f32> = u_xlat9;
        let x_2389 : vec4<bool> = (-(vec4<f32>(x_2386.z, x_2386.y, x_2386.z, x_2386.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2390 : vec3<bool> = vec3<bool>(x_2389.x, x_2389.y, x_2389.w);
        let x_2391 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2390.x, x_2390.y, x_2391.z, x_2390.z);
        let x_2394 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2394);
        let x_2399 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2399);
        let x_2404 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2404);
        let x_2408 : bool = u_xlatb10.z;
        if (x_2408) {
          let x_2413 : f32 = u_xlat10.y;
          x_2409 = x_2413;
        } else {
          let x_2415 : f32 = u_xlat85;
          x_2409 = x_2415;
        }
        let x_2416 : f32 = x_2409;
        u_xlat35 = x_2416;
        let x_2418 : bool = u_xlatb84;
        if (x_2418) {
          let x_2423 : f32 = u_xlat10.x;
          x_2419 = x_2423;
        } else {
          let x_2425 : f32 = u_xlat35;
          x_2419 = x_2425;
        }
        let x_2426 : f32 = x_2419;
        u_xlat84 = x_2426;
        let x_2427 : i32 = u_xlati29;
        let x_2429 : f32 = x_345.x_AdditionalShadowParams[x_2427].w;
        u_xlat10.x = trunc(x_2429);
        let x_2432 : f32 = u_xlat84;
        let x_2434 : f32 = u_xlat10.x;
        u_xlat84 = (x_2432 + x_2434);
        let x_2436 : f32 = u_xlat84;
        u_xlati82 = i32(x_2436);
      }
      let x_2438 : i32 = u_xlati82;
      u_xlati82 = (x_2438 << bitcast<u32>(2i));
      let x_2440 : vec3<f32> = vs_TEXCOORD1;
      let x_2443 : i32 = u_xlati82;
      let x_2446 : i32 = u_xlati82;
      let x_2450 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2443 + 1i) / 4i)][((x_2446 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2440.y, x_2440.y, x_2440.y, x_2440.y) * x_2450);
      let x_2452 : i32 = u_xlati82;
      let x_2454 : i32 = u_xlati82;
      let x_2457 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_2452 / 4i)][(x_2454 % 4i)];
      let x_2458 : vec3<f32> = vs_TEXCOORD1;
      let x_2461 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2457 * vec4<f32>(x_2458.x, x_2458.x, x_2458.x, x_2458.x)) + x_2461);
      let x_2463 : i32 = u_xlati82;
      let x_2466 : i32 = u_xlati82;
      let x_2470 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2463 + 2i) / 4i)][((x_2466 + 2i) % 4i)];
      let x_2471 : vec3<f32> = vs_TEXCOORD1;
      let x_2474 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2470 * vec4<f32>(x_2471.z, x_2471.z, x_2471.z, x_2471.z)) + x_2474);
      let x_2476 : vec4<f32> = u_xlat10;
      let x_2477 : i32 = u_xlati82;
      let x_2480 : i32 = u_xlati82;
      let x_2484 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2477 + 3i) / 4i)][((x_2480 + 3i) % 4i)];
      u_xlat10 = (x_2476 + x_2484);
      let x_2486 : vec4<f32> = u_xlat10;
      let x_2488 : vec4<f32> = u_xlat10;
      let x_2490 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) / vec3<f32>(x_2488.w, x_2488.w, x_2488.w));
      let x_2491 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
      let x_2494 : i32 = u_xlati29;
      let x_2496 : f32 = x_345.x_AdditionalShadowParams[x_2494].y;
      u_xlatb82 = (0.0f < x_2496);
      let x_2498 : bool = u_xlatb82;
      if (x_2498) {
        let x_2501 : i32 = u_xlati29;
        let x_2503 : f32 = x_345.x_AdditionalShadowParams[x_2501].y;
        u_xlatb82 = (1.0f == x_2503);
        let x_2505 : bool = u_xlatb82;
        if (x_2505) {
          let x_2508 : vec4<f32> = u_xlat10;
          let x_2511 : vec4<f32> = x_345.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y) + x_2511);
          let x_2514 : vec4<f32> = u_xlat11;
          let x_2515 : vec2<f32> = vec2<f32>(x_2514.x, x_2514.y);
          let x_2517 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2515.x, x_2515.y, x_2517);
          let x_2525 : vec3<f32> = txVec30;
          let x_2527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
          u_xlat12.x = x_2527;
          let x_2530 : vec4<f32> = u_xlat11;
          let x_2531 : vec2<f32> = vec2<f32>(x_2530.z, x_2530.w);
          let x_2533 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2531.x, x_2531.y, x_2533);
          let x_2540 : vec3<f32> = txVec31;
          let x_2542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2540.xy, x_2540.z);
          u_xlat12.y = x_2542;
          let x_2544 : vec4<f32> = u_xlat10;
          let x_2548 : vec4<f32> = x_345.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2544.x, x_2544.y, x_2544.x, x_2544.y) + x_2548);
          let x_2551 : vec4<f32> = u_xlat11;
          let x_2552 : vec2<f32> = vec2<f32>(x_2551.x, x_2551.y);
          let x_2554 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2552.x, x_2552.y, x_2554);
          let x_2561 : vec3<f32> = txVec32;
          let x_2563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2561.xy, x_2561.z);
          u_xlat12.z = x_2563;
          let x_2566 : vec4<f32> = u_xlat11;
          let x_2567 : vec2<f32> = vec2<f32>(x_2566.z, x_2566.w);
          let x_2569 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2567.x, x_2567.y, x_2569);
          let x_2576 : vec3<f32> = txVec33;
          let x_2578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2576.xy, x_2576.z);
          u_xlat12.w = x_2578;
          let x_2580 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2580, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2583 : i32 = u_xlati29;
          let x_2585 : f32 = x_345.x_AdditionalShadowParams[x_2583].y;
          u_xlatb84 = (2.0f == x_2585);
          let x_2587 : bool = u_xlatb84;
          if (x_2587) {
            let x_2590 : vec4<f32> = u_xlat10;
            let x_2594 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2597 : vec2<f32> = ((vec2<f32>(x_2590.x, x_2590.y) * vec2<f32>(x_2594.z, x_2594.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2598 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
            let x_2600 : vec4<f32> = u_xlat11;
            let x_2602 : vec2<f32> = floor(vec2<f32>(x_2600.x, x_2600.y));
            let x_2603 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2606 : vec4<f32> = u_xlat10;
            let x_2609 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2612 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2606.x, x_2606.y) * vec2<f32>(x_2609.z, x_2609.w)) + -(vec2<f32>(x_2612.x, x_2612.y)));
            let x_2616 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2616.x, x_2616.x, x_2616.y, x_2616.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2619 : vec4<f32> = u_xlat12;
            let x_2621 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2619.x, x_2619.x, x_2619.z, x_2619.z) * vec4<f32>(x_2621.x, x_2621.x, x_2621.z, x_2621.z));
            let x_2624 : vec4<f32> = u_xlat13;
            let x_2626 : vec2<f32> = (vec2<f32>(x_2624.y, x_2624.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2627 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2626.x, x_2627.y, x_2626.y, x_2627.w);
            let x_2629 : vec4<f32> = u_xlat13;
            let x_2632 : vec2<f32> = u_xlat61;
            let x_2634 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2632));
            let x_2635 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2634.x, x_2634.y, x_2635.z, x_2635.w);
            let x_2638 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2638) + vec2<f32>(1.0f, 1.0f));
            let x_2641 : vec2<f32> = u_xlat61;
            let x_2642 : vec2<f32> = min(x_2641, vec2<f32>(0.0f, 0.0f));
            let x_2643 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat14;
            let x_2648 : vec4<f32> = u_xlat14;
            let x_2651 : vec2<f32> = u_xlat63;
            let x_2652 : vec2<f32> = ((-(vec2<f32>(x_2645.x, x_2645.y)) * vec2<f32>(x_2648.x, x_2648.y)) + x_2651);
            let x_2653 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2652.x, x_2652.y, x_2653.z, x_2653.w);
            let x_2655 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2655, vec2<f32>(0.0f, 0.0f));
            let x_2657 : vec2<f32> = u_xlat61;
            let x_2659 : vec2<f32> = u_xlat61;
            let x_2661 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2657) * x_2659) + vec2<f32>(x_2661.y, x_2661.w));
            let x_2664 : vec4<f32> = u_xlat14;
            let x_2666 : vec2<f32> = (vec2<f32>(x_2664.x, x_2664.y) + vec2<f32>(1.0f, 1.0f));
            let x_2667 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2666.x, x_2666.y, x_2667.z, x_2667.w);
            let x_2669 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2669 + vec2<f32>(1.0f, 1.0f));
            let x_2671 : vec4<f32> = u_xlat13;
            let x_2673 : vec2<f32> = (vec2<f32>(x_2671.x, x_2671.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2674 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2673.x, x_2673.y, x_2674.z, x_2674.w);
            let x_2676 : vec2<f32> = u_xlat63;
            let x_2677 : vec2<f32> = (x_2676 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2678 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2677.x, x_2677.y, x_2678.z, x_2678.w);
            let x_2680 : vec4<f32> = u_xlat14;
            let x_2682 : vec2<f32> = (vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2683 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2682.x, x_2682.y, x_2683.z, x_2683.w);
            let x_2685 : vec2<f32> = u_xlat61;
            let x_2686 : vec2<f32> = (x_2685 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2687 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
            let x_2689 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2689.y, x_2689.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2693 : f32 = u_xlat14.x;
            u_xlat15.z = x_2693;
            let x_2696 : f32 = u_xlat61.x;
            u_xlat15.w = x_2696;
            let x_2699 : f32 = u_xlat16.x;
            u_xlat13.z = x_2699;
            let x_2702 : f32 = u_xlat12.x;
            u_xlat13.w = x_2702;
            let x_2704 : vec4<f32> = u_xlat13;
            let x_2706 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2704.z, x_2704.w, x_2704.x, x_2704.z) + vec4<f32>(x_2706.z, x_2706.w, x_2706.x, x_2706.z));
            let x_2710 : f32 = u_xlat15.y;
            u_xlat14.z = x_2710;
            let x_2713 : f32 = u_xlat61.y;
            u_xlat14.w = x_2713;
            let x_2716 : f32 = u_xlat13.y;
            u_xlat16.z = x_2716;
            let x_2719 : f32 = u_xlat12.z;
            u_xlat16.w = x_2719;
            let x_2721 : vec4<f32> = u_xlat14;
            let x_2723 : vec4<f32> = u_xlat16;
            let x_2725 : vec3<f32> = (vec3<f32>(x_2721.z, x_2721.y, x_2721.w) + vec3<f32>(x_2723.z, x_2723.y, x_2723.w));
            let x_2726 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat13;
            let x_2730 : vec4<f32> = u_xlat17;
            let x_2732 : vec3<f32> = (vec3<f32>(x_2728.x, x_2728.z, x_2728.w) / vec3<f32>(x_2730.z, x_2730.w, x_2730.y));
            let x_2733 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
            let x_2735 : vec4<f32> = u_xlat13;
            let x_2737 : vec3<f32> = (vec3<f32>(x_2735.x, x_2735.y, x_2735.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2738 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
            let x_2740 : vec4<f32> = u_xlat16;
            let x_2742 : vec4<f32> = u_xlat12;
            let x_2744 : vec3<f32> = (vec3<f32>(x_2740.z, x_2740.y, x_2740.w) / vec3<f32>(x_2742.x, x_2742.y, x_2742.z));
            let x_2745 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat14;
            let x_2749 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2750 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
            let x_2752 : vec4<f32> = u_xlat13;
            let x_2755 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2757 : vec3<f32> = (vec3<f32>(x_2752.y, x_2752.x, x_2752.z) * vec3<f32>(x_2755.x, x_2755.x, x_2755.x));
            let x_2758 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
            let x_2760 : vec4<f32> = u_xlat14;
            let x_2763 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2765 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.y, x_2760.z) * vec3<f32>(x_2763.y, x_2763.y, x_2763.y));
            let x_2766 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2765.x, x_2765.y, x_2765.z, x_2766.w);
            let x_2769 : f32 = u_xlat14.x;
            u_xlat13.w = x_2769;
            let x_2771 : vec4<f32> = u_xlat11;
            let x_2774 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2777 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) * vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y)) + vec4<f32>(x_2777.y, x_2777.w, x_2777.x, x_2777.w));
            let x_2780 : vec4<f32> = u_xlat11;
            let x_2783 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2780.x, x_2780.y) * vec2<f32>(x_2783.x, x_2783.y)) + vec2<f32>(x_2786.z, x_2786.w));
            let x_2790 : f32 = u_xlat13.y;
            u_xlat14.w = x_2790;
            let x_2792 : vec4<f32> = u_xlat14;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.y, x_2792.z);
            let x_2794 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2794.x, x_2793.x, x_2794.z, x_2793.y);
            let x_2796 : vec4<f32> = u_xlat11;
            let x_2799 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y) * vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y)) + vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2802.y));
            let x_2805 : vec4<f32> = u_xlat11;
            let x_2808 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2811 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y) * vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y)) + vec4<f32>(x_2811.w, x_2811.y, x_2811.w, x_2811.z));
            let x_2814 : vec4<f32> = u_xlat11;
            let x_2817 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y) * vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.y)) + vec4<f32>(x_2820.x, x_2820.w, x_2820.z, x_2820.w));
            let x_2823 : vec4<f32> = u_xlat12;
            let x_2825 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2823.x, x_2823.x, x_2823.x, x_2823.y) * vec4<f32>(x_2825.z, x_2825.w, x_2825.y, x_2825.z));
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2830 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2828.y, x_2828.y, x_2828.z, x_2828.z) * x_2830);
            let x_2833 : f32 = u_xlat12.z;
            let x_2835 : f32 = u_xlat17.y;
            u_xlat84 = (x_2833 * x_2835);
            let x_2838 : vec4<f32> = u_xlat15;
            let x_2839 : vec2<f32> = vec2<f32>(x_2838.x, x_2838.y);
            let x_2841 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
            let x_2848 : vec3<f32> = txVec34;
            let x_2850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
            u_xlat85 = x_2850;
            let x_2852 : vec4<f32> = u_xlat15;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.z, x_2852.w);
            let x_2855 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec35;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat11.x = x_2864;
            let x_2867 : f32 = u_xlat11.x;
            let x_2869 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2867 * x_2869);
            let x_2873 : f32 = u_xlat18.x;
            let x_2874 : f32 = u_xlat85;
            let x_2877 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2873 * x_2874) + x_2877);
            let x_2880 : vec2<f32> = u_xlat61;
            let x_2882 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec36;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat11.x = x_2891;
            let x_2894 : f32 = u_xlat18.z;
            let x_2896 : f32 = u_xlat11.x;
            let x_2898 : f32 = u_xlat85;
            u_xlat85 = ((x_2894 * x_2896) + x_2898);
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2902 : vec2<f32> = vec2<f32>(x_2901.x, x_2901.y);
            let x_2904 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2902.x, x_2902.y, x_2904);
            let x_2911 : vec3<f32> = txVec37;
            let x_2913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
            u_xlat11.x = x_2913;
            let x_2916 : f32 = u_xlat18.w;
            let x_2918 : f32 = u_xlat11.x;
            let x_2920 : f32 = u_xlat85;
            u_xlat85 = ((x_2916 * x_2918) + x_2920);
            let x_2923 : vec4<f32> = u_xlat16;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.x, x_2923.y);
            let x_2926 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec38;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat11.x = x_2935;
            let x_2938 : f32 = u_xlat19.x;
            let x_2940 : f32 = u_xlat11.x;
            let x_2942 : f32 = u_xlat85;
            u_xlat85 = ((x_2938 * x_2940) + x_2942);
            let x_2945 : vec4<f32> = u_xlat16;
            let x_2946 : vec2<f32> = vec2<f32>(x_2945.z, x_2945.w);
            let x_2948 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
            let x_2955 : vec3<f32> = txVec39;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat11.x = x_2957;
            let x_2960 : f32 = u_xlat19.y;
            let x_2962 : f32 = u_xlat11.x;
            let x_2964 : f32 = u_xlat85;
            u_xlat85 = ((x_2960 * x_2962) + x_2964);
            let x_2967 : vec4<f32> = u_xlat14;
            let x_2968 : vec2<f32> = vec2<f32>(x_2967.z, x_2967.w);
            let x_2970 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
            let x_2977 : vec3<f32> = txVec40;
            let x_2979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2977.xy, x_2977.z);
            u_xlat11.x = x_2979;
            let x_2982 : f32 = u_xlat19.z;
            let x_2984 : f32 = u_xlat11.x;
            let x_2986 : f32 = u_xlat85;
            u_xlat85 = ((x_2982 * x_2984) + x_2986);
            let x_2989 : vec4<f32> = u_xlat13;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.x, x_2989.y);
            let x_2992 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec41;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat11.x = x_3001;
            let x_3004 : f32 = u_xlat19.w;
            let x_3006 : f32 = u_xlat11.x;
            let x_3008 : f32 = u_xlat85;
            u_xlat85 = ((x_3004 * x_3006) + x_3008);
            let x_3011 : vec4<f32> = u_xlat13;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.z, x_3011.w);
            let x_3014 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec42;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat11.x = x_3023;
            let x_3025 : f32 = u_xlat84;
            let x_3027 : f32 = u_xlat11.x;
            let x_3029 : f32 = u_xlat85;
            u_xlat82 = ((x_3025 * x_3027) + x_3029);
          } else {
            let x_3032 : vec4<f32> = u_xlat10;
            let x_3035 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3038 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3035.z, x_3035.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3039 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3041 : vec4<f32> = u_xlat11;
            let x_3043 : vec2<f32> = floor(vec2<f32>(x_3041.x, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3043.x, x_3043.y, x_3044.z, x_3044.w);
            let x_3046 : vec4<f32> = u_xlat10;
            let x_3049 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.z, x_3049.w)) + -(vec2<f32>(x_3052.x, x_3052.y)));
            let x_3056 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3056.x, x_3056.x, x_3056.y, x_3056.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3059 : vec4<f32> = u_xlat12;
            let x_3061 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3059.x, x_3059.x, x_3059.z, x_3059.z) * vec4<f32>(x_3061.x, x_3061.x, x_3061.z, x_3061.z));
            let x_3064 : vec4<f32> = u_xlat13;
            let x_3066 : vec2<f32> = (vec2<f32>(x_3064.y, x_3064.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3067 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3067.x, x_3066.x, x_3067.z, x_3066.y);
            let x_3069 : vec4<f32> = u_xlat13;
            let x_3072 : vec2<f32> = u_xlat61;
            let x_3074 : vec2<f32> = ((vec2<f32>(x_3069.x, x_3069.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3072));
            let x_3075 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3074.x, x_3075.y, x_3074.y, x_3075.w);
            let x_3077 : vec2<f32> = u_xlat61;
            let x_3079 : vec2<f32> = (-(x_3077) + vec2<f32>(1.0f, 1.0f));
            let x_3080 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3079.x, x_3079.y, x_3080.z, x_3080.w);
            let x_3082 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3082, vec2<f32>(0.0f, 0.0f));
            let x_3084 : vec2<f32> = u_xlat63;
            let x_3086 : vec2<f32> = u_xlat63;
            let x_3088 : vec4<f32> = u_xlat13;
            let x_3090 : vec2<f32> = ((-(x_3084) * x_3086) + vec2<f32>(x_3088.x, x_3088.y));
            let x_3091 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3090.x, x_3090.y, x_3091.z, x_3091.w);
            let x_3093 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3093, vec2<f32>(0.0f, 0.0f));
            let x_3096 : vec2<f32> = u_xlat63;
            let x_3098 : vec2<f32> = u_xlat63;
            let x_3100 : vec4<f32> = u_xlat12;
            let x_3102 : vec2<f32> = ((-(x_3096) * x_3098) + vec2<f32>(x_3100.y, x_3100.w));
            let x_3103 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3102.x, x_3103.y, x_3102.y);
            let x_3105 : vec4<f32> = u_xlat13;
            let x_3107 : vec2<f32> = (vec2<f32>(x_3105.x, x_3105.y) + vec2<f32>(2.0f, 2.0f));
            let x_3108 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3107.x, x_3107.y, x_3108.z, x_3108.w);
            let x_3110 : vec3<f32> = u_xlat37;
            let x_3112 : vec2<f32> = (vec2<f32>(x_3110.x, x_3110.z) + vec2<f32>(2.0f, 2.0f));
            let x_3113 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3113.x, x_3112.x, x_3113.z, x_3112.y);
            let x_3116 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3116 * 0.08163200318813323975f);
            let x_3119 : vec4<f32> = u_xlat12;
            let x_3121 : vec3<f32> = (vec3<f32>(x_3119.z, x_3119.x, x_3119.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3122.w);
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3126 : vec2<f32> = (vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3127 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat16.y;
            u_xlat15.x = x_3130;
            let x_3132 : vec2<f32> = u_xlat61;
            let x_3135 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3136 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3136.x, x_3135.x, x_3136.z, x_3135.y);
            let x_3138 : vec2<f32> = u_xlat61;
            let x_3141 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3142 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3141.x, x_3142.y, x_3141.y, x_3142.w);
            let x_3145 : f32 = u_xlat12.x;
            u_xlat13.y = x_3145;
            let x_3148 : f32 = u_xlat14.y;
            u_xlat13.w = x_3148;
            let x_3150 : vec4<f32> = u_xlat13;
            let x_3151 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3150 + x_3151);
            let x_3153 : vec2<f32> = u_xlat61;
            let x_3156 : vec2<f32> = ((vec2<f32>(x_3153.y, x_3153.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3157 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3157.x, x_3156.x, x_3157.z, x_3156.y);
            let x_3159 : vec2<f32> = u_xlat61;
            let x_3162 : vec2<f32> = ((vec2<f32>(x_3159.y, x_3159.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3163 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3162.x, x_3163.y, x_3162.y, x_3163.w);
            let x_3166 : f32 = u_xlat12.y;
            u_xlat14.y = x_3166;
            let x_3168 : vec4<f32> = u_xlat14;
            let x_3169 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3168 + x_3169);
            let x_3171 : vec4<f32> = u_xlat13;
            let x_3172 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3171 / x_3172);
            let x_3174 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3174 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3177 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3176 / x_3177);
            let x_3179 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3179 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3184 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3181.w, x_3181.x, x_3181.y, x_3181.z) * vec4<f32>(x_3184.x, x_3184.x, x_3184.x, x_3184.x));
            let x_3187 : vec4<f32> = u_xlat14;
            let x_3190 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3187.x, x_3187.w, x_3187.y, x_3187.z) * vec4<f32>(x_3190.y, x_3190.y, x_3190.y, x_3190.y));
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3194 : vec3<f32> = vec3<f32>(x_3193.y, x_3193.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3194.x, x_3195.y, x_3194.y, x_3194.z);
            let x_3198 : f32 = u_xlat14.x;
            u_xlat16.y = x_3198;
            let x_3200 : vec4<f32> = u_xlat11;
            let x_3203 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3206 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3200.x, x_3200.y, x_3200.x, x_3200.y) * vec4<f32>(x_3203.x, x_3203.y, x_3203.x, x_3203.y)) + vec4<f32>(x_3206.x, x_3206.y, x_3206.z, x_3206.y));
            let x_3209 : vec4<f32> = u_xlat11;
            let x_3212 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3212.x, x_3212.y)) + vec2<f32>(x_3215.w, x_3215.y));
            let x_3219 : f32 = u_xlat16.y;
            u_xlat13.y = x_3219;
            let x_3222 : f32 = u_xlat14.z;
            u_xlat16.y = x_3222;
            let x_3224 : vec4<f32> = u_xlat11;
            let x_3227 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y) * vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y)) + vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3230.y));
            let x_3233 : vec4<f32> = u_xlat11;
            let x_3236 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat16;
            let x_3241 : vec2<f32> = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.w, x_3239.y));
            let x_3242 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3241.x, x_3241.y, x_3242.z, x_3242.w);
            let x_3245 : f32 = u_xlat16.y;
            u_xlat13.z = x_3245;
            let x_3247 : vec4<f32> = u_xlat11;
            let x_3250 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.z));
            let x_3257 : f32 = u_xlat14.w;
            u_xlat16.y = x_3257;
            let x_3260 : vec4<f32> = u_xlat11;
            let x_3263 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3266 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3260.x, x_3260.y, x_3260.x, x_3260.y) * vec4<f32>(x_3263.x, x_3263.y, x_3263.x, x_3263.y)) + vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3266.y));
            let x_3270 : vec4<f32> = u_xlat11;
            let x_3273 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3276 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3270.x, x_3270.y) * vec2<f32>(x_3273.x, x_3273.y)) + vec2<f32>(x_3276.w, x_3276.y));
            let x_3280 : f32 = u_xlat16.y;
            u_xlat13.w = x_3280;
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(x_3286.x, x_3286.y)) + vec2<f32>(x_3289.x, x_3289.w));
            let x_3292 : vec4<f32> = u_xlat16;
            let x_3293 : vec3<f32> = vec3<f32>(x_3292.x, x_3292.z, x_3292.w);
            let x_3294 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3293.x, x_3294.y, x_3293.y, x_3293.z);
            let x_3296 : vec4<f32> = u_xlat11;
            let x_3299 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3302 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y) * vec4<f32>(x_3299.x, x_3299.y, x_3299.x, x_3299.y)) + vec4<f32>(x_3302.x, x_3302.y, x_3302.z, x_3302.y));
            let x_3306 : vec4<f32> = u_xlat11;
            let x_3309 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.x, x_3309.y)) + vec2<f32>(x_3312.w, x_3312.y));
            let x_3316 : f32 = u_xlat13.x;
            u_xlat14.x = x_3316;
            let x_3318 : vec4<f32> = u_xlat11;
            let x_3321 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3324 : vec4<f32> = u_xlat14;
            let x_3326 : vec2<f32> = ((vec2<f32>(x_3318.x, x_3318.y) * vec2<f32>(x_3321.x, x_3321.y)) + vec2<f32>(x_3324.x, x_3324.y));
            let x_3327 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3326.x, x_3326.y, x_3327.z, x_3327.w);
            let x_3330 : vec4<f32> = u_xlat12;
            let x_3332 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3330.x, x_3330.x, x_3330.x, x_3330.x) * x_3332);
            let x_3335 : vec4<f32> = u_xlat12;
            let x_3337 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3335.y, x_3335.y, x_3335.y, x_3335.y) * x_3337);
            let x_3340 : vec4<f32> = u_xlat12;
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3340.z, x_3340.z, x_3340.z, x_3340.z) * x_3342);
            let x_3344 : vec4<f32> = u_xlat12;
            let x_3346 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3344.w, x_3344.w, x_3344.w, x_3344.w) * x_3346);
            let x_3349 : vec4<f32> = u_xlat17;
            let x_3350 : vec2<f32> = vec2<f32>(x_3349.x, x_3349.y);
            let x_3352 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec43;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat84 = x_3361;
            let x_3363 : vec4<f32> = u_xlat17;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.z, x_3363.w);
            let x_3366 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec44;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat85 = x_3375;
            let x_3376 : f32 = u_xlat85;
            let x_3378 : f32 = u_xlat22.y;
            u_xlat85 = (x_3376 * x_3378);
            let x_3381 : f32 = u_xlat22.x;
            let x_3382 : f32 = u_xlat84;
            let x_3384 : f32 = u_xlat85;
            u_xlat84 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec2<f32> = u_xlat61;
            let x_3389 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec45;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat85 = x_3398;
            let x_3400 : f32 = u_xlat22.z;
            let x_3401 : f32 = u_xlat85;
            let x_3403 : f32 = u_xlat84;
            u_xlat84 = ((x_3400 * x_3401) + x_3403);
            let x_3406 : vec4<f32> = u_xlat20;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.x, x_3406.y);
            let x_3409 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec46;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat85 = x_3418;
            let x_3420 : f32 = u_xlat22.w;
            let x_3421 : f32 = u_xlat85;
            let x_3423 : f32 = u_xlat84;
            u_xlat84 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat18;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec47;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat85 = x_3438;
            let x_3440 : f32 = u_xlat23.x;
            let x_3441 : f32 = u_xlat85;
            let x_3443 : f32 = u_xlat84;
            u_xlat84 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat18;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.z, x_3446.w);
            let x_3449 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec48;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat85 = x_3458;
            let x_3460 : f32 = u_xlat23.y;
            let x_3461 : f32 = u_xlat85;
            let x_3463 : f32 = u_xlat84;
            u_xlat84 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec4<f32> = u_xlat19;
            let x_3467 : vec2<f32> = vec2<f32>(x_3466.x, x_3466.y);
            let x_3469 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec49;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat85 = x_3478;
            let x_3480 : f32 = u_xlat23.z;
            let x_3481 : f32 = u_xlat85;
            let x_3483 : f32 = u_xlat84;
            u_xlat84 = ((x_3480 * x_3481) + x_3483);
            let x_3486 : vec4<f32> = u_xlat20;
            let x_3487 : vec2<f32> = vec2<f32>(x_3486.z, x_3486.w);
            let x_3489 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
            let x_3496 : vec3<f32> = txVec50;
            let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
            u_xlat85 = x_3498;
            let x_3500 : f32 = u_xlat23.w;
            let x_3501 : f32 = u_xlat85;
            let x_3503 : f32 = u_xlat84;
            u_xlat84 = ((x_3500 * x_3501) + x_3503);
            let x_3506 : vec4<f32> = u_xlat21;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.x, x_3506.y);
            let x_3509 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec51;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat85 = x_3518;
            let x_3520 : f32 = u_xlat24.x;
            let x_3521 : f32 = u_xlat85;
            let x_3523 : f32 = u_xlat84;
            u_xlat84 = ((x_3520 * x_3521) + x_3523);
            let x_3526 : vec4<f32> = u_xlat21;
            let x_3527 : vec2<f32> = vec2<f32>(x_3526.z, x_3526.w);
            let x_3529 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3527.x, x_3527.y, x_3529);
            let x_3536 : vec3<f32> = txVec52;
            let x_3538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3536.xy, x_3536.z);
            u_xlat85 = x_3538;
            let x_3540 : f32 = u_xlat24.y;
            let x_3541 : f32 = u_xlat85;
            let x_3543 : f32 = u_xlat84;
            u_xlat84 = ((x_3540 * x_3541) + x_3543);
            let x_3546 : vec2<f32> = u_xlat38;
            let x_3548 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
            let x_3555 : vec3<f32> = txVec53;
            let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
            u_xlat85 = x_3557;
            let x_3559 : f32 = u_xlat24.z;
            let x_3560 : f32 = u_xlat85;
            let x_3562 : f32 = u_xlat84;
            u_xlat84 = ((x_3559 * x_3560) + x_3562);
            let x_3565 : vec2<f32> = u_xlat69;
            let x_3567 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec54;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat85 = x_3576;
            let x_3578 : f32 = u_xlat24.w;
            let x_3579 : f32 = u_xlat85;
            let x_3581 : f32 = u_xlat84;
            u_xlat84 = ((x_3578 * x_3579) + x_3581);
            let x_3584 : vec4<f32> = u_xlat16;
            let x_3585 : vec2<f32> = vec2<f32>(x_3584.x, x_3584.y);
            let x_3587 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3585.x, x_3585.y, x_3587);
            let x_3594 : vec3<f32> = txVec55;
            let x_3596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3594.xy, x_3594.z);
            u_xlat85 = x_3596;
            let x_3598 : f32 = u_xlat12.x;
            let x_3599 : f32 = u_xlat85;
            let x_3601 : f32 = u_xlat84;
            u_xlat84 = ((x_3598 * x_3599) + x_3601);
            let x_3604 : vec4<f32> = u_xlat16;
            let x_3605 : vec2<f32> = vec2<f32>(x_3604.z, x_3604.w);
            let x_3607 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3605.x, x_3605.y, x_3607);
            let x_3614 : vec3<f32> = txVec56;
            let x_3616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3614.xy, x_3614.z);
            u_xlat85 = x_3616;
            let x_3618 : f32 = u_xlat12.y;
            let x_3619 : f32 = u_xlat85;
            let x_3621 : f32 = u_xlat84;
            u_xlat84 = ((x_3618 * x_3619) + x_3621);
            let x_3624 : vec2<f32> = u_xlat64;
            let x_3626 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3624.x, x_3624.y, x_3626);
            let x_3633 : vec3<f32> = txVec57;
            let x_3635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3633.xy, x_3633.z);
            u_xlat85 = x_3635;
            let x_3637 : f32 = u_xlat12.z;
            let x_3638 : f32 = u_xlat85;
            let x_3640 : f32 = u_xlat84;
            u_xlat84 = ((x_3637 * x_3638) + x_3640);
            let x_3643 : vec4<f32> = u_xlat11;
            let x_3644 : vec2<f32> = vec2<f32>(x_3643.x, x_3643.y);
            let x_3646 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3644.x, x_3644.y, x_3646);
            let x_3653 : vec3<f32> = txVec58;
            let x_3655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3653.xy, x_3653.z);
            u_xlat85 = x_3655;
            let x_3657 : f32 = u_xlat12.w;
            let x_3658 : f32 = u_xlat85;
            let x_3660 : f32 = u_xlat84;
            u_xlat82 = ((x_3657 * x_3658) + x_3660);
          }
        }
      } else {
        let x_3664 : vec4<f32> = u_xlat10;
        let x_3665 : vec2<f32> = vec2<f32>(x_3664.x, x_3664.y);
        let x_3667 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
        let x_3674 : vec3<f32> = txVec59;
        let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
        u_xlat82 = x_3676;
      }
      let x_3677 : i32 = u_xlati29;
      let x_3679 : f32 = x_345.x_AdditionalShadowParams[x_3677].x;
      u_xlat84 = (1.0f + -(x_3679));
      let x_3682 : f32 = u_xlat82;
      let x_3683 : i32 = u_xlati29;
      let x_3685 : f32 = x_345.x_AdditionalShadowParams[x_3683].x;
      let x_3687 : f32 = u_xlat84;
      u_xlat82 = ((x_3682 * x_3685) + x_3687);
      let x_3690 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3690);
      let x_3693 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3693 >= 1.0f);
      let x_3696 : bool = u_xlatb84;
      let x_3698 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3696 | x_3698);
      let x_3700 : bool = u_xlatb84;
      let x_3701 : f32 = u_xlat82;
      u_xlat82 = select(x_3701, 1.0f, x_3700);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3704 : f32 = u_xlat82;
    u_xlat84 = (-(x_3704) + 1.0f);
    let x_3708 : f32 = u_xlat1.x;
    let x_3709 : f32 = u_xlat84;
    let x_3711 : f32 = u_xlat82;
    u_xlat82 = ((x_3708 * x_3709) + x_3711);
    let x_3713 : f32 = u_xlat80;
    let x_3714 : f32 = u_xlat82;
    u_xlat80 = (x_3713 * x_3714);
    let x_3716 : vec3<f32> = u_xlat28;
    let x_3717 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_3716, vec3<f32>(x_3717.x, x_3717.y, x_3717.z));
    let x_3720 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3720, 0.0f, 1.0f);
    let x_3722 : f32 = u_xlat80;
    let x_3723 : f32 = u_xlat82;
    u_xlat80 = (x_3722 * x_3723);
    let x_3725 : f32 = u_xlat80;
    let x_3727 : i32 = u_xlati29;
    let x_3729 : vec4<f32> = x_2277.x_AdditionalLightsColor[x_3727];
    let x_3731 : vec3<f32> = (vec3<f32>(x_3725, x_3725, x_3725) * vec3<f32>(x_3729.x, x_3729.y, x_3729.z));
    let x_3732 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3731.x, x_3731.y, x_3731.z, x_3732.w);
    let x_3734 : vec3<f32> = u_xlat33;
    let x_3735 : f32 = u_xlat81;
    let x_3738 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_3734 * vec3<f32>(x_3735, x_3735, x_3735)) + x_3738);
    let x_3740 : vec3<f32> = u_xlat33;
    let x_3741 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3740, x_3741);
    let x_3745 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_3745, 1.17549435e-38f);
    let x_3749 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_3749);
    let x_3752 : vec3<f32> = u_xlat29;
    let x_3754 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3752.x, x_3752.x, x_3752.x) * x_3754);
    let x_3756 : vec3<f32> = u_xlat28;
    let x_3757 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3756, x_3757);
    let x_3761 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_3761, 0.0f, 1.0f);
    let x_3764 : vec4<f32> = u_xlat9;
    let x_3766 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_3764.x, x_3764.y, x_3764.z), x_3766);
    let x_3768 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3768, 0.0f, 1.0f);
    let x_3771 : f32 = u_xlat29.x;
    let x_3773 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3771 * x_3773);
    let x_3777 : f32 = u_xlat29.x;
    let x_3779 : f32 = u_xlat8.x;
    u_xlat29.x = ((x_3777 * x_3779) + 1.00001001358032226562f);
    let x_3783 : f32 = u_xlat80;
    let x_3784 : f32 = u_xlat80;
    u_xlat80 = (x_3783 * x_3784);
    let x_3787 : f32 = u_xlat29.x;
    let x_3789 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3787 * x_3789);
    let x_3792 : f32 = u_xlat80;
    u_xlat80 = max(x_3792, 0.10000000149011611938f);
    let x_3795 : f32 = u_xlat29.x;
    let x_3796 : f32 = u_xlat80;
    u_xlat29.x = (x_3795 * x_3796);
    let x_3799 : f32 = u_xlat76;
    let x_3801 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3799 * x_3801);
    let x_3804 : f32 = u_xlat26;
    let x_3806 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3804 / x_3806);
    let x_3809 : vec4<f32> = u_xlat0;
    let x_3811 : vec3<f32> = u_xlat29;
    let x_3814 : vec3<f32> = u_xlat27;
    u_xlat33 = ((vec3<f32>(x_3809.x, x_3809.y, x_3809.z) * vec3<f32>(x_3811.x, x_3811.x, x_3811.x)) + x_3814);
    let x_3816 : vec3<f32> = u_xlat33;
    let x_3817 : vec4<f32> = u_xlat10;
    let x_3820 : vec4<f32> = u_xlat7;
    let x_3822 : vec3<f32> = ((x_3816 * vec3<f32>(x_3817.x, x_3817.y, x_3817.z)) + vec3<f32>(x_3820.x, x_3820.y, x_3820.z));
    let x_3823 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3822.x, x_3822.y, x_3822.z, x_3823.w);

    continuing {
      let x_3825 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3825 + bitcast<u32>(1i));
    }
  }
  let x_3827 : vec4<f32> = u_xlat6;
  let x_3829 : vec3<f32> = u_xlat3;
  let x_3832 : vec4<f32> = u_xlat4;
  let x_3834 : vec3<f32> = ((vec3<f32>(x_3827.x, x_3827.y, x_3827.z) * vec3<f32>(x_3829.x, x_3829.x, x_3829.x)) + vec3<f32>(x_3832.x, x_3832.z, x_3832.w));
  let x_3835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3834.x, x_3834.y, x_3834.z, x_3835.w);
  let x_3839 : vec4<f32> = u_xlat7;
  let x_3841 : vec4<f32> = u_xlat0;
  let x_3843 : vec3<f32> = (vec3<f32>(x_3839.x, x_3839.y, x_3839.z) + vec3<f32>(x_3841.x, x_3841.y, x_3841.z));
  let x_3844 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3843.x, x_3843.y, x_3843.z, x_3844.w);
  let x_3848 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_3848 == 1.0f);
  let x_3850 : bool = u_xlatb0;
  if (x_3850) {
    let x_3855 : f32 = u_xlat2.x;
    x_3851 = x_3855;
  } else {
    x_3851 = 1.0f;
  }
  let x_3857 : f32 = x_3851;
  SV_Target0.w = x_3857;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}


