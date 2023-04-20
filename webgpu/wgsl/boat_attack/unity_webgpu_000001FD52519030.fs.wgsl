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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat75 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb53 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_347 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

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

var<private> u_xlatb78 : bool;

var<private> u_xlat78 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2264 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu26 : u32;

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
  var x_1912 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2396 : f32;
  var x_2406 : f32;
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
  var x_3814 : f32;
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
  let x_336 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres0;
  u_xlat28 = (x_339 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_354 + -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres2;
  let x_367 : vec3<f32> = (x_361 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_373 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres3;
  let x_376 : vec3<f32> = (x_371 + -(vec3<f32>(x_373.x, x_373.y, x_373.z)));
  let x_377 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : vec3<f32> = u_xlat28;
  let x_381 : vec3<f32> = u_xlat28;
  u_xlat9.x = dot(x_380, x_381);
  let x_384 : vec3<f32> = u_xlat6;
  let x_385 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_384, x_385);
  let x_388 : vec4<f32> = u_xlat7;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_394 : vec4<f32> = u_xlat8;
  let x_396 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_403 : vec4<f32> = u_xlat9;
  let x_405 : vec4<f32> = x_347.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_403 < x_405);
  let x_408 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_408);
  let x_412 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_420);
  let x_424 : bool = u_xlatb6.x;
  u_xlat28.x = select(-0.0f, -1.0f, x_424);
  let x_429 : bool = u_xlatb6.y;
  u_xlat28.y = select(-0.0f, -1.0f, x_429);
  let x_433 : bool = u_xlatb6.z;
  u_xlat28.z = select(-0.0f, -1.0f, x_433);
  let x_436 : vec3<f32> = u_xlat28;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat28 = (x_436 + vec3<f32>(x_437.y, x_437.z, x_437.w));
  let x_440 : vec3<f32> = u_xlat28;
  let x_442 : vec3<f32> = max(x_440, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_443.x, x_442.x, x_442.y, x_442.z);
  let x_445 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(x_445, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_450 : f32 = u_xlat75;
  u_xlat75 = (-(x_450) + 4.0f);
  let x_455 : f32 = u_xlat75;
  u_xlatu75 = u32(x_455);
  let x_459 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_459) << bitcast<u32>(2i));
  let x_462 : vec3<f32> = vs_TEXCOORD1;
  let x_464 : i32 = u_xlati75;
  let x_467 : i32 = u_xlati75;
  let x_471 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_464 + 1i) / 4i)][((x_467 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_462.y, x_462.y, x_462.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : i32 = u_xlati75;
  let x_476 : i32 = u_xlati75;
  let x_479 : vec4<f32> = x_347.x_MainLightWorldToShadow[(x_474 / 4i)][(x_476 % 4i)];
  let x_481 : vec3<f32> = vs_TEXCOORD1;
  let x_484 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(x_481.x, x_481.x, x_481.x)) + x_484);
  let x_486 : i32 = u_xlati75;
  let x_489 : i32 = u_xlati75;
  let x_493 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_486 + 2i) / 4i)][((x_489 + 2i) % 4i)];
  let x_495 : vec3<f32> = vs_TEXCOORD1;
  let x_498 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495.z, x_495.z, x_495.z)) + x_498);
  let x_500 : vec3<f32> = u_xlat28;
  let x_501 : i32 = u_xlati75;
  let x_504 : i32 = u_xlati75;
  let x_508 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_501 + 3i) / 4i)][((x_504 + 3i) % 4i)];
  u_xlat28 = (x_500 + vec3<f32>(x_508.x, x_508.y, x_508.z));
  u_xlat4.w = 1.0f;
  let x_514 : vec4<f32> = x_186.unity_SHAr;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_514, x_515);
  let x_520 : vec4<f32> = x_186.unity_SHAg;
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_186.unity_SHAb;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_526, x_527);
  let x_530 : vec4<f32> = u_xlat4;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_530.y, x_530.z, x_530.z, x_530.x) * vec4<f32>(x_532.x, x_532.y, x_532.z, x_532.z));
  let x_537 : vec4<f32> = x_186.unity_SHBr;
  let x_538 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_537, x_538);
  let x_543 : vec4<f32> = x_186.unity_SHBg;
  let x_544 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_543, x_544);
  let x_549 : vec4<f32> = x_186.unity_SHBb;
  let x_550 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_549, x_550);
  let x_554 : f32 = u_xlat4.y;
  let x_556 : f32 = u_xlat4.y;
  u_xlat75 = (x_554 * x_556);
  let x_559 : f32 = u_xlat4.x;
  let x_561 : f32 = u_xlat4.x;
  let x_563 : f32 = u_xlat75;
  u_xlat75 = ((x_559 * x_561) + -(x_563));
  let x_568 : vec4<f32> = x_186.unity_SHC;
  let x_570 : f32 = u_xlat75;
  let x_573 : vec4<f32> = u_xlat8;
  let x_575 : vec3<f32> = ((vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570, x_570, x_570)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat6;
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_578 + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_582, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_585 : f32 = u_xlat1.x;
  u_xlat75 = ((-(x_585) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_590 : f32 = u_xlat75;
  u_xlat51.x = (-(x_590) + 1.0f);
  let x_595 : f32 = u_xlat75;
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_595, x_595, x_595) * vec3<f32>(x_597.y, x_597.z, x_597.w));
  let x_600 : vec4<f32> = u_xlat0;
  let x_603 : vec4<f32> = x_70.x_BaseColor;
  let x_608 : vec3<f32> = ((vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_609 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec2<f32> = u_xlat1;
  let x_613 : vec4<f32> = u_xlat0;
  let x_618 : vec3<f32> = ((vec3<f32>(x_611.x, x_611.x, x_611.x) * vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = u_xlat1.y;
  let x_625 : f32 = x_70.x_Smoothness;
  u_xlat75 = ((-(x_622) * x_625) + 1.0f);
  let x_628 : f32 = u_xlat75;
  let x_629 : f32 = u_xlat75;
  u_xlat1.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat1.x;
  u_xlat76 = (x_639 * x_641);
  let x_645 : f32 = u_xlat1.y;
  let x_647 : f32 = x_70.x_Smoothness;
  let x_650 : f32 = u_xlat51.x;
  u_xlat26 = ((x_645 * x_647) + x_650);
  let x_652 : f32 = u_xlat26;
  u_xlat26 = clamp(x_652, 0.0f, 1.0f);
  let x_655 : f32 = u_xlat1.x;
  u_xlat51.x = ((x_655 * 4.0f) + 2.0f);
  let x_660 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_660, 1.0f);
  let x_665 : f32 = x_347.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_665);
  let x_667 : bool = u_xlatb79;
  if (x_667) {
    let x_671 : f32 = x_347.x_MainLightShadowParams.y;
    u_xlatb79 = (x_671 == 1.0f);
    let x_673 : bool = u_xlatb79;
    if (x_673) {
      let x_676 : vec3<f32> = u_xlat28;
      let x_679 : vec4<f32> = x_347.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y) + x_679);
      let x_683 : vec4<f32> = u_xlat7;
      let x_684 : vec2<f32> = vec2<f32>(x_683.x, x_683.y);
      let x_686 : f32 = u_xlat28.z;
      txVec0 = vec3<f32>(x_684.x, x_684.y, x_686);
      let x_698 : vec3<f32> = txVec0;
      let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_698.xy, x_698.z);
      u_xlat8.x = x_700;
      let x_703 : vec4<f32> = u_xlat7;
      let x_704 : vec2<f32> = vec2<f32>(x_703.z, x_703.w);
      let x_706 : f32 = u_xlat28.z;
      txVec1 = vec3<f32>(x_704.x, x_704.y, x_706);
      let x_713 : vec3<f32> = txVec1;
      let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_713.xy, x_713.z);
      u_xlat8.y = x_715;
      let x_717 : vec3<f32> = u_xlat28;
      let x_720 : vec4<f32> = x_347.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) + x_720);
      let x_723 : vec4<f32> = u_xlat7;
      let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
      let x_726 : f32 = u_xlat28.z;
      txVec2 = vec3<f32>(x_724.x, x_724.y, x_726);
      let x_733 : vec3<f32> = txVec2;
      let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
      u_xlat8.z = x_735;
      let x_738 : vec4<f32> = u_xlat7;
      let x_739 : vec2<f32> = vec2<f32>(x_738.z, x_738.w);
      let x_741 : f32 = u_xlat28.z;
      txVec3 = vec3<f32>(x_739.x, x_739.y, x_741);
      let x_748 : vec3<f32> = txVec3;
      let x_750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_748.xy, x_748.z);
      u_xlat8.w = x_750;
      let x_753 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_753, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_760 : f32 = x_347.x_MainLightShadowParams.y;
      u_xlatb80 = (x_760 == 2.0f);
      let x_762 : bool = u_xlatb80;
      if (x_762) {
        let x_765 : vec3<f32> = u_xlat28;
        let x_769 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_774 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_769.z, x_769.w)) + vec2<f32>(0.5f, 0.5f));
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat7;
        let x_779 : vec2<f32> = floor(vec2<f32>(x_777.x, x_777.y));
        let x_780 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_783 : vec3<f32> = u_xlat28;
        let x_786 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_786.z, x_786.w)) + -(vec2<f32>(x_789.x, x_789.y)));
        let x_793 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_793.x, x_793.x, x_793.y, x_793.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_797 : vec4<f32> = u_xlat8;
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_797.x, x_797.x, x_797.z, x_797.z) * vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z));
        let x_802 : vec4<f32> = u_xlat9;
        let x_806 : vec2<f32> = (vec2<f32>(x_802.y, x_802.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_807.y, x_806.y, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_812 : vec2<f32> = u_xlat57;
        let x_814 : vec2<f32> = ((vec2<f32>(x_809.x, x_809.z) * vec2<f32>(0.5f, 0.5f)) + -(x_812));
        let x_815 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_818 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_818) + vec2<f32>(1.0f, 1.0f));
        let x_823 : vec2<f32> = u_xlat57;
        let x_825 : vec2<f32> = min(x_823, vec2<f32>(0.0f, 0.0f));
        let x_826 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
        let x_828 : vec4<f32> = u_xlat10;
        let x_831 : vec4<f32> = u_xlat10;
        let x_834 : vec2<f32> = u_xlat59;
        let x_835 : vec2<f32> = ((-(vec2<f32>(x_828.x, x_828.y)) * vec2<f32>(x_831.x, x_831.y)) + x_834);
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_838, vec2<f32>(0.0f, 0.0f));
        let x_840 : vec2<f32> = u_xlat57;
        let x_842 : vec2<f32> = u_xlat57;
        let x_844 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_840) * x_842) + vec2<f32>(x_844.y, x_844.w));
        let x_847 : vec4<f32> = u_xlat10;
        let x_849 : vec2<f32> = (vec2<f32>(x_847.x, x_847.y) + vec2<f32>(1.0f, 1.0f));
        let x_850 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_852 + vec2<f32>(1.0f, 1.0f));
        let x_855 : vec4<f32> = u_xlat9;
        let x_859 : vec2<f32> = (vec2<f32>(x_855.x, x_855.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec2<f32> = u_xlat59;
        let x_863 : vec2<f32> = (x_862 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_864 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
        let x_866 : vec4<f32> = u_xlat10;
        let x_868 : vec2<f32> = (vec2<f32>(x_866.x, x_866.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_869 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_872 : vec2<f32> = u_xlat57;
        let x_873 : vec2<f32> = (x_872 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_874 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_876.y, x_876.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_880 : f32 = u_xlat10.x;
        u_xlat11.z = x_880;
        let x_883 : f32 = u_xlat57.x;
        u_xlat11.w = x_883;
        let x_886 : f32 = u_xlat12.x;
        u_xlat9.z = x_886;
        let x_889 : f32 = u_xlat8.x;
        u_xlat9.w = x_889;
        let x_892 : vec4<f32> = u_xlat9;
        let x_894 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_892.z, x_892.w, x_892.x, x_892.z) + vec4<f32>(x_894.z, x_894.w, x_894.x, x_894.z));
        let x_898 : f32 = u_xlat11.y;
        u_xlat10.z = x_898;
        let x_901 : f32 = u_xlat57.y;
        u_xlat10.w = x_901;
        let x_904 : f32 = u_xlat9.y;
        u_xlat12.z = x_904;
        let x_907 : f32 = u_xlat8.z;
        u_xlat12.w = x_907;
        let x_909 : vec4<f32> = u_xlat10;
        let x_911 : vec4<f32> = u_xlat12;
        let x_913 : vec3<f32> = (vec3<f32>(x_909.z, x_909.y, x_909.w) + vec3<f32>(x_911.z, x_911.y, x_911.w));
        let x_914 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
        let x_916 : vec4<f32> = u_xlat9;
        let x_918 : vec4<f32> = u_xlat13;
        let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.z, x_916.w) / vec3<f32>(x_918.z, x_918.w, x_918.y));
        let x_921 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
        let x_923 : vec4<f32> = u_xlat9;
        let x_929 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat12;
        let x_934 : vec4<f32> = u_xlat8;
        let x_936 : vec3<f32> = (vec3<f32>(x_932.z, x_932.y, x_932.w) / vec3<f32>(x_934.x, x_934.y, x_934.z));
        let x_937 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat10;
        let x_941 : vec3<f32> = (vec3<f32>(x_939.x, x_939.y, x_939.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_942 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat9;
        let x_947 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_949 : vec3<f32> = (vec3<f32>(x_944.y, x_944.x, x_944.z) * vec3<f32>(x_947.x, x_947.x, x_947.x));
        let x_950 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat10;
        let x_955 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_957 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) * vec3<f32>(x_955.y, x_955.y, x_955.y));
        let x_958 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
        let x_961 : f32 = u_xlat10.x;
        u_xlat9.w = x_961;
        let x_963 : vec4<f32> = u_xlat7;
        let x_966 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_969 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y) * vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.y)) + vec4<f32>(x_969.y, x_969.w, x_969.x, x_969.w));
        let x_972 : vec4<f32> = u_xlat7;
        let x_975 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_972.x, x_972.y) * vec2<f32>(x_975.x, x_975.y)) + vec2<f32>(x_978.z, x_978.w));
        let x_982 : f32 = u_xlat9.y;
        u_xlat10.w = x_982;
        let x_984 : vec4<f32> = u_xlat10;
        let x_985 : vec2<f32> = vec2<f32>(x_984.y, x_984.z);
        let x_986 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_985.x, x_986.z, x_985.y);
        let x_988 : vec4<f32> = u_xlat7;
        let x_991 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_988.x, x_988.y, x_988.x, x_988.y) * vec4<f32>(x_991.x, x_991.y, x_991.x, x_991.y)) + vec4<f32>(x_994.x, x_994.y, x_994.z, x_994.y));
        let x_997 : vec4<f32> = u_xlat7;
        let x_1000 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y) * vec4<f32>(x_1000.x, x_1000.y, x_1000.x, x_1000.y)) + vec4<f32>(x_1003.w, x_1003.y, x_1003.w, x_1003.z));
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1009 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1012 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y) * vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y)) + vec4<f32>(x_1012.x, x_1012.w, x_1012.z, x_1012.w));
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1018 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1016.x, x_1016.x, x_1016.x, x_1016.y) * vec4<f32>(x_1018.z, x_1018.w, x_1018.y, x_1018.z));
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1022.y, x_1022.y, x_1022.z, x_1022.z) * x_1024);
        let x_1028 : f32 = u_xlat8.z;
        let x_1030 : f32 = u_xlat13.y;
        u_xlat80 = (x_1028 * x_1030);
        let x_1033 : vec4<f32> = u_xlat11;
        let x_1034 : vec2<f32> = vec2<f32>(x_1033.x, x_1033.y);
        let x_1036 : f32 = u_xlat28.z;
        txVec4 = vec3<f32>(x_1034.x, x_1034.y, x_1036);
        let x_1044 : vec3<f32> = txVec4;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
        u_xlat81 = x_1046;
        let x_1048 : vec4<f32> = u_xlat11;
        let x_1049 : vec2<f32> = vec2<f32>(x_1048.z, x_1048.w);
        let x_1051 : f32 = u_xlat28.z;
        txVec5 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
        let x_1058 : vec3<f32> = txVec5;
        let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1058.xy, x_1058.z);
        u_xlat7.x = x_1060;
        let x_1063 : f32 = u_xlat7.x;
        let x_1065 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1063 * x_1065);
        let x_1069 : f32 = u_xlat14.x;
        let x_1070 : f32 = u_xlat81;
        let x_1073 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1069 * x_1070) + x_1073);
        let x_1076 : vec2<f32> = u_xlat57;
        let x_1078 : f32 = u_xlat28.z;
        txVec6 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
        let x_1085 : vec3<f32> = txVec6;
        let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1085.xy, x_1085.z);
        u_xlat7.x = x_1087;
        let x_1090 : f32 = u_xlat14.z;
        let x_1092 : f32 = u_xlat7.x;
        let x_1094 : f32 = u_xlat81;
        u_xlat81 = ((x_1090 * x_1092) + x_1094);
        let x_1097 : vec4<f32> = u_xlat10;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.x, x_1097.y);
        let x_1100 : f32 = u_xlat28.z;
        txVec7 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1107 : vec3<f32> = txVec7;
        let x_1109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1107.xy, x_1107.z);
        u_xlat7.x = x_1109;
        let x_1112 : f32 = u_xlat14.w;
        let x_1114 : f32 = u_xlat7.x;
        let x_1116 : f32 = u_xlat81;
        u_xlat81 = ((x_1112 * x_1114) + x_1116);
        let x_1119 : vec4<f32> = u_xlat12;
        let x_1120 : vec2<f32> = vec2<f32>(x_1119.x, x_1119.y);
        let x_1122 : f32 = u_xlat28.z;
        txVec8 = vec3<f32>(x_1120.x, x_1120.y, x_1122);
        let x_1129 : vec3<f32> = txVec8;
        let x_1131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1129.xy, x_1129.z);
        u_xlat7.x = x_1131;
        let x_1134 : f32 = u_xlat15.x;
        let x_1136 : f32 = u_xlat7.x;
        let x_1138 : f32 = u_xlat81;
        u_xlat81 = ((x_1134 * x_1136) + x_1138);
        let x_1141 : vec4<f32> = u_xlat12;
        let x_1142 : vec2<f32> = vec2<f32>(x_1141.z, x_1141.w);
        let x_1144 : f32 = u_xlat28.z;
        txVec9 = vec3<f32>(x_1142.x, x_1142.y, x_1144);
        let x_1151 : vec3<f32> = txVec9;
        let x_1153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1151.xy, x_1151.z);
        u_xlat7.x = x_1153;
        let x_1156 : f32 = u_xlat15.y;
        let x_1158 : f32 = u_xlat7.x;
        let x_1160 : f32 = u_xlat81;
        u_xlat81 = ((x_1156 * x_1158) + x_1160);
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1164 : vec2<f32> = vec2<f32>(x_1163.z, x_1163.w);
        let x_1166 : f32 = u_xlat28.z;
        txVec10 = vec3<f32>(x_1164.x, x_1164.y, x_1166);
        let x_1173 : vec3<f32> = txVec10;
        let x_1175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1173.xy, x_1173.z);
        u_xlat7.x = x_1175;
        let x_1178 : f32 = u_xlat15.z;
        let x_1180 : f32 = u_xlat7.x;
        let x_1182 : f32 = u_xlat81;
        u_xlat81 = ((x_1178 * x_1180) + x_1182);
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1186 : vec2<f32> = vec2<f32>(x_1185.x, x_1185.y);
        let x_1188 : f32 = u_xlat28.z;
        txVec11 = vec3<f32>(x_1186.x, x_1186.y, x_1188);
        let x_1195 : vec3<f32> = txVec11;
        let x_1197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1195.xy, x_1195.z);
        u_xlat7.x = x_1197;
        let x_1200 : f32 = u_xlat15.w;
        let x_1202 : f32 = u_xlat7.x;
        let x_1204 : f32 = u_xlat81;
        u_xlat81 = ((x_1200 * x_1202) + x_1204);
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1208 : vec2<f32> = vec2<f32>(x_1207.z, x_1207.w);
        let x_1210 : f32 = u_xlat28.z;
        txVec12 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
        let x_1217 : vec3<f32> = txVec12;
        let x_1219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1217.xy, x_1217.z);
        u_xlat7.x = x_1219;
        let x_1221 : f32 = u_xlat80;
        let x_1223 : f32 = u_xlat7.x;
        let x_1225 : f32 = u_xlat81;
        u_xlat79 = ((x_1221 * x_1223) + x_1225);
      } else {
        let x_1228 : vec3<f32> = u_xlat28;
        let x_1231 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(x_1231.z, x_1231.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1239 : vec2<f32> = floor(vec2<f32>(x_1237.x, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1242 : vec3<f32> = u_xlat28;
        let x_1245 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(x_1245.z, x_1245.w)) + -(vec2<f32>(x_1248.x, x_1248.y)));
        let x_1252 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1252.x, x_1252.x, x_1252.y, x_1252.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1255.x, x_1255.x, x_1255.z, x_1255.z) * vec4<f32>(x_1257.x, x_1257.x, x_1257.z, x_1257.z));
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1260.y, x_1260.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1265 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1267 : vec4<f32> = u_xlat9;
        let x_1270 : vec2<f32> = u_xlat57;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1267.x, x_1267.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1270));
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1273.y, x_1272.y, x_1273.w);
        let x_1275 : vec2<f32> = u_xlat57;
        let x_1277 : vec2<f32> = (-(x_1275) + vec2<f32>(1.0f, 1.0f));
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1280 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1280, vec2<f32>(0.0f, 0.0f));
        let x_1282 : vec2<f32> = u_xlat59;
        let x_1284 : vec2<f32> = u_xlat59;
        let x_1286 : vec4<f32> = u_xlat9;
        let x_1288 : vec2<f32> = ((-(x_1282) * x_1284) + vec2<f32>(x_1286.x, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1291, vec2<f32>(0.0f, 0.0f));
        let x_1294 : vec2<f32> = u_xlat59;
        let x_1296 : vec2<f32> = u_xlat59;
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1300 : vec2<f32> = ((-(x_1294) * x_1296) + vec2<f32>(x_1298.y, x_1298.w));
        let x_1301 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1300.x, x_1301.y, x_1300.y);
        let x_1303 : vec4<f32> = u_xlat9;
        let x_1305 : vec2<f32> = (vec2<f32>(x_1303.x, x_1303.y) + vec2<f32>(2.0f, 2.0f));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1308 : vec3<f32> = u_xlat33;
        let x_1310 : vec2<f32> = (vec2<f32>(x_1308.x, x_1308.z) + vec2<f32>(2.0f, 2.0f));
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1311.x, x_1310.x, x_1311.z, x_1310.y);
        let x_1314 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1314 * 0.08163200318813323975f);
        let x_1318 : vec4<f32> = u_xlat8;
        let x_1321 : vec3<f32> = (vec3<f32>(x_1318.z, x_1318.x, x_1318.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1322 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1327 : vec2<f32> = (vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1331 : f32 = u_xlat12.y;
        u_xlat11.x = x_1331;
        let x_1333 : vec2<f32> = u_xlat57;
        let x_1340 : vec2<f32> = ((vec2<f32>(x_1333.x, x_1333.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1341 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1341.x, x_1340.x, x_1341.z, x_1340.y);
        let x_1343 : vec2<f32> = u_xlat57;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1348.w);
        let x_1351 : f32 = u_xlat8.x;
        u_xlat9.y = x_1351;
        let x_1354 : f32 = u_xlat10.y;
        u_xlat9.w = x_1354;
        let x_1356 : vec4<f32> = u_xlat9;
        let x_1357 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1356 + x_1357);
        let x_1359 : vec2<f32> = u_xlat57;
        let x_1362 : vec2<f32> = ((vec2<f32>(x_1359.y, x_1359.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1363 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1363.x, x_1362.x, x_1363.z, x_1362.y);
        let x_1365 : vec2<f32> = u_xlat57;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1365.y, x_1365.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1368.x, x_1369.y, x_1368.y, x_1369.w);
        let x_1372 : f32 = u_xlat8.y;
        u_xlat10.y = x_1372;
        let x_1374 : vec4<f32> = u_xlat10;
        let x_1375 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1374 + x_1375);
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1377 / x_1378);
        let x_1380 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1380 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1386 : vec4<f32> = u_xlat10;
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1386 / x_1387);
        let x_1389 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1389 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1394 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1391.w, x_1391.x, x_1391.y, x_1391.z) * vec4<f32>(x_1394.x, x_1394.x, x_1394.x, x_1394.x));
        let x_1397 : vec4<f32> = u_xlat10;
        let x_1400 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1397.x, x_1397.w, x_1397.y, x_1397.z) * vec4<f32>(x_1400.y, x_1400.y, x_1400.y, x_1400.y));
        let x_1403 : vec4<f32> = u_xlat9;
        let x_1404 : vec3<f32> = vec3<f32>(x_1403.y, x_1403.z, x_1403.w);
        let x_1405 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1404.z);
        let x_1408 : f32 = u_xlat10.x;
        u_xlat12.y = x_1408;
        let x_1410 : vec4<f32> = u_xlat7;
        let x_1413 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y) * vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y)) + vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1416.y));
        let x_1419 : vec4<f32> = u_xlat7;
        let x_1422 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1422.x, x_1422.y)) + vec2<f32>(x_1425.w, x_1425.y));
        let x_1429 : f32 = u_xlat12.y;
        u_xlat9.y = x_1429;
        let x_1432 : f32 = u_xlat10.z;
        u_xlat12.y = x_1432;
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1437 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1440 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1434.x, x_1434.y, x_1434.x, x_1434.y) * vec4<f32>(x_1437.x, x_1437.y, x_1437.x, x_1437.y)) + vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1440.y));
        let x_1443 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1449 : vec4<f32> = u_xlat12;
        let x_1451 : vec2<f32> = ((vec2<f32>(x_1443.x, x_1443.y) * vec2<f32>(x_1446.x, x_1446.y)) + vec2<f32>(x_1449.w, x_1449.y));
        let x_1452 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1451.x, x_1451.y, x_1452.z, x_1452.w);
        let x_1455 : f32 = u_xlat12.y;
        u_xlat9.z = x_1455;
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1461 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y) * vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y)) + vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.z));
        let x_1468 : f32 = u_xlat10.w;
        u_xlat12.y = x_1468;
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y) * vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y)) + vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1477.y));
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1484 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1484.x, x_1484.y)) + vec2<f32>(x_1487.w, x_1487.y));
        let x_1491 : f32 = u_xlat12.y;
        u_xlat9.w = x_1491;
        let x_1494 : vec4<f32> = u_xlat7;
        let x_1497 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1500.x, x_1500.w));
        let x_1503 : vec4<f32> = u_xlat12;
        let x_1504 : vec3<f32> = vec3<f32>(x_1503.x, x_1503.z, x_1503.w);
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1504.x, x_1505.y, x_1504.y, x_1504.z);
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1510 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1507.x, x_1507.y, x_1507.x, x_1507.y) * vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y)) + vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1513.y));
        let x_1517 : vec4<f32> = u_xlat7;
        let x_1520 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1527 : f32 = u_xlat9.x;
        u_xlat10.x = x_1527;
        let x_1529 : vec4<f32> = u_xlat7;
        let x_1532 : vec4<f32> = x_347.x_MainLightShadowmapSize;
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.x, x_1532.y)) + vec2<f32>(x_1535.x, x_1535.y));
        let x_1538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1541.x, x_1541.x, x_1541.x, x_1541.x) * x_1543);
        let x_1546 : vec4<f32> = u_xlat8;
        let x_1548 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1546.y, x_1546.y, x_1546.y, x_1546.y) * x_1548);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1551.z, x_1551.z, x_1551.z, x_1551.z) * x_1553);
        let x_1555 : vec4<f32> = u_xlat8;
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1555.w, x_1555.w, x_1555.w, x_1555.w) * x_1557);
        let x_1560 : vec4<f32> = u_xlat13;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = u_xlat28.z;
        txVec13 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec13;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat80 = x_1572;
        let x_1574 : vec4<f32> = u_xlat13;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat28.z;
        txVec14 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec14;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat81 = x_1586;
        let x_1587 : f32 = u_xlat81;
        let x_1589 : f32 = u_xlat18.y;
        u_xlat81 = (x_1587 * x_1589);
        let x_1592 : f32 = u_xlat18.x;
        let x_1593 : f32 = u_xlat80;
        let x_1595 : f32 = u_xlat81;
        u_xlat80 = ((x_1592 * x_1593) + x_1595);
        let x_1598 : vec2<f32> = u_xlat57;
        let x_1600 : f32 = u_xlat28.z;
        txVec15 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec15;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat81 = x_1609;
        let x_1611 : f32 = u_xlat18.z;
        let x_1612 : f32 = u_xlat81;
        let x_1614 : f32 = u_xlat80;
        u_xlat80 = ((x_1611 * x_1612) + x_1614);
        let x_1617 : vec4<f32> = u_xlat16;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.x, x_1617.y);
        let x_1620 : f32 = u_xlat28.z;
        txVec16 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec16;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat81 = x_1629;
        let x_1631 : f32 = u_xlat18.w;
        let x_1632 : f32 = u_xlat81;
        let x_1634 : f32 = u_xlat80;
        u_xlat80 = ((x_1631 * x_1632) + x_1634);
        let x_1637 : vec4<f32> = u_xlat14;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.x, x_1637.y);
        let x_1640 : f32 = u_xlat28.z;
        txVec17 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec17;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat81 = x_1649;
        let x_1651 : f32 = u_xlat19.x;
        let x_1652 : f32 = u_xlat81;
        let x_1654 : f32 = u_xlat80;
        u_xlat80 = ((x_1651 * x_1652) + x_1654);
        let x_1657 : vec4<f32> = u_xlat14;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.z, x_1657.w);
        let x_1660 : f32 = u_xlat28.z;
        txVec18 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec18;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat81 = x_1669;
        let x_1671 : f32 = u_xlat19.y;
        let x_1672 : f32 = u_xlat81;
        let x_1674 : f32 = u_xlat80;
        u_xlat80 = ((x_1671 * x_1672) + x_1674);
        let x_1677 : vec4<f32> = u_xlat15;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.x, x_1677.y);
        let x_1680 : f32 = u_xlat28.z;
        txVec19 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec19;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat81 = x_1689;
        let x_1691 : f32 = u_xlat19.z;
        let x_1692 : f32 = u_xlat81;
        let x_1694 : f32 = u_xlat80;
        u_xlat80 = ((x_1691 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat16;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat28.z;
        txVec20 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec20;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat81 = x_1709;
        let x_1711 : f32 = u_xlat19.w;
        let x_1712 : f32 = u_xlat81;
        let x_1714 : f32 = u_xlat80;
        u_xlat80 = ((x_1711 * x_1712) + x_1714);
        let x_1717 : vec4<f32> = u_xlat17;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.x, x_1717.y);
        let x_1720 : f32 = u_xlat28.z;
        txVec21 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec21;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat81 = x_1729;
        let x_1731 : f32 = u_xlat20.x;
        let x_1732 : f32 = u_xlat81;
        let x_1734 : f32 = u_xlat80;
        u_xlat80 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec4<f32> = u_xlat17;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.z, x_1737.w);
        let x_1740 : f32 = u_xlat28.z;
        txVec22 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec22;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat81 = x_1749;
        let x_1751 : f32 = u_xlat20.y;
        let x_1752 : f32 = u_xlat81;
        let x_1754 : f32 = u_xlat80;
        u_xlat80 = ((x_1751 * x_1752) + x_1754);
        let x_1757 : vec2<f32> = u_xlat34;
        let x_1759 : f32 = u_xlat28.z;
        txVec23 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec23;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1766.xy, x_1766.z);
        u_xlat81 = x_1768;
        let x_1770 : f32 = u_xlat20.z;
        let x_1771 : f32 = u_xlat81;
        let x_1773 : f32 = u_xlat80;
        u_xlat80 = ((x_1770 * x_1771) + x_1773);
        let x_1776 : vec2<f32> = u_xlat65;
        let x_1778 : f32 = u_xlat28.z;
        txVec24 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec24;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat81 = x_1787;
        let x_1789 : f32 = u_xlat20.w;
        let x_1790 : f32 = u_xlat81;
        let x_1792 : f32 = u_xlat80;
        u_xlat80 = ((x_1789 * x_1790) + x_1792);
        let x_1795 : vec4<f32> = u_xlat12;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.x, x_1795.y);
        let x_1798 : f32 = u_xlat28.z;
        txVec25 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec25;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat81 = x_1807;
        let x_1809 : f32 = u_xlat8.x;
        let x_1810 : f32 = u_xlat81;
        let x_1812 : f32 = u_xlat80;
        u_xlat80 = ((x_1809 * x_1810) + x_1812);
        let x_1815 : vec4<f32> = u_xlat12;
        let x_1816 : vec2<f32> = vec2<f32>(x_1815.z, x_1815.w);
        let x_1818 : f32 = u_xlat28.z;
        txVec26 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec26;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat81 = x_1827;
        let x_1829 : f32 = u_xlat8.y;
        let x_1830 : f32 = u_xlat81;
        let x_1832 : f32 = u_xlat80;
        u_xlat80 = ((x_1829 * x_1830) + x_1832);
        let x_1835 : vec2<f32> = u_xlat60;
        let x_1837 : f32 = u_xlat28.z;
        txVec27 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec27;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1844.xy, x_1844.z);
        u_xlat81 = x_1846;
        let x_1848 : f32 = u_xlat8.z;
        let x_1849 : f32 = u_xlat81;
        let x_1851 : f32 = u_xlat80;
        u_xlat80 = ((x_1848 * x_1849) + x_1851);
        let x_1854 : vec4<f32> = u_xlat7;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.x, x_1854.y);
        let x_1857 : f32 = u_xlat28.z;
        txVec28 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec28;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat81 = x_1866;
        let x_1868 : f32 = u_xlat8.w;
        let x_1869 : f32 = u_xlat81;
        let x_1871 : f32 = u_xlat80;
        u_xlat79 = ((x_1868 * x_1869) + x_1871);
      }
    }
  } else {
    let x_1875 : vec3<f32> = u_xlat28;
    let x_1876 : vec2<f32> = vec2<f32>(x_1875.x, x_1875.y);
    let x_1878 : f32 = u_xlat28.z;
    txVec29 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
    let x_1885 : vec3<f32> = txVec29;
    let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
    u_xlat79 = x_1887;
  }
  let x_1889 : f32 = x_347.x_MainLightShadowParams.x;
  u_xlat28.x = (-(x_1889) + 1.0f);
  let x_1893 : f32 = u_xlat79;
  let x_1895 : f32 = x_347.x_MainLightShadowParams.x;
  let x_1898 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1893 * x_1895) + x_1898);
  let x_1902 : f32 = u_xlat28.z;
  u_xlatb53 = (0.0f >= x_1902);
  let x_1906 : f32 = u_xlat28.z;
  u_xlatb78 = (x_1906 >= 1.0f);
  let x_1908 : bool = u_xlatb78;
  let x_1909 : bool = u_xlatb53;
  u_xlatb53 = (x_1908 | x_1909);
  let x_1911 : bool = u_xlatb53;
  if (x_1911) {
    x_1912 = 1.0f;
  } else {
    let x_1917 : f32 = u_xlat28.x;
    x_1912 = x_1917;
  }
  let x_1918 : f32 = x_1912;
  u_xlat28.x = x_1918;
  let x_1920 : vec3<f32> = vs_TEXCOORD1;
  let x_1922 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1924 : vec3<f32> = (x_1920 + -(x_1922));
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat7;
  let x_1929 : vec4<f32> = u_xlat7;
  u_xlat53 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1933 : f32 = u_xlat53;
  let x_1935 : f32 = x_347.x_MainLightShadowParams.z;
  let x_1938 : f32 = x_347.x_MainLightShadowParams.w;
  u_xlat78 = ((x_1933 * x_1935) + x_1938);
  let x_1940 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1940, 0.0f, 1.0f);
  let x_1943 : f32 = u_xlat28.x;
  u_xlat79 = (-(x_1943) + 1.0f);
  let x_1946 : f32 = u_xlat78;
  let x_1947 : f32 = u_xlat79;
  let x_1950 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1946 * x_1947) + x_1950);
  let x_1953 : vec3<f32> = u_xlat5;
  let x_1955 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(-(x_1953), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : f32 = u_xlat78;
  let x_1959 : f32 = u_xlat78;
  u_xlat78 = (x_1958 + x_1959);
  let x_1961 : vec4<f32> = u_xlat4;
  let x_1963 : f32 = u_xlat78;
  let x_1967 : vec3<f32> = u_xlat5;
  let x_1969 : vec3<f32> = ((vec3<f32>(x_1961.x, x_1961.y, x_1961.z) * -(vec3<f32>(x_1963, x_1963, x_1963))) + -(x_1967));
  let x_1970 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
  let x_1972 : vec4<f32> = u_xlat4;
  let x_1974 : vec3<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), x_1974);
  let x_1976 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1976, 0.0f, 1.0f);
  let x_1978 : f32 = u_xlat78;
  u_xlat78 = (-(x_1978) + 1.0f);
  let x_1981 : f32 = u_xlat78;
  let x_1982 : f32 = u_xlat78;
  u_xlat78 = (x_1981 * x_1982);
  let x_1984 : f32 = u_xlat78;
  let x_1985 : f32 = u_xlat78;
  u_xlat78 = (x_1984 * x_1985);
  let x_1987 : f32 = u_xlat75;
  u_xlat79 = ((-(x_1987) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1993 : f32 = u_xlat75;
  let x_1994 : f32 = u_xlat79;
  u_xlat75 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat75;
  u_xlat75 = (x_1996 * 6.0f);
  let x_2007 : vec4<f32> = u_xlat7;
  let x_2009 : f32 = u_xlat75;
  let x_2010 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2007.x, x_2007.y, x_2007.z), x_2009);
  u_xlat7 = x_2010;
  let x_2012 : f32 = u_xlat7.w;
  u_xlat75 = (x_2012 + -1.0f);
  let x_2015 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_2016 : f32 = u_xlat75;
  u_xlat75 = ((x_2015 * x_2016) + 1.0f);
  let x_2019 : f32 = u_xlat75;
  u_xlat75 = max(x_2019, 0.0f);
  let x_2021 : f32 = u_xlat75;
  u_xlat75 = log2(x_2021);
  let x_2023 : f32 = u_xlat75;
  let x_2025 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_2023 * x_2025);
  let x_2027 : f32 = u_xlat75;
  u_xlat75 = exp2(x_2027);
  let x_2029 : f32 = u_xlat75;
  let x_2031 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_2029 * x_2031);
  let x_2033 : vec4<f32> = u_xlat7;
  let x_2035 : f32 = u_xlat75;
  let x_2037 : vec3<f32> = (vec3<f32>(x_2033.x, x_2033.y, x_2033.z) * vec3<f32>(x_2035, x_2035, x_2035));
  let x_2038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2040 : vec2<f32> = u_xlat1;
  let x_2042 : vec2<f32> = u_xlat1;
  let x_2046 : vec2<f32> = ((vec2<f32>(x_2040.x, x_2040.x) * vec2<f32>(x_2042.x, x_2042.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
  let x_2050 : f32 = u_xlat8.y;
  u_xlat75 = (1.0f / x_2050);
  let x_2052 : vec4<f32> = u_xlat0;
  let x_2055 : f32 = u_xlat26;
  u_xlat33 = (-(vec3<f32>(x_2052.x, x_2052.y, x_2052.z)) + vec3<f32>(x_2055, x_2055, x_2055));
  let x_2058 : f32 = u_xlat78;
  let x_2060 : vec3<f32> = u_xlat33;
  let x_2062 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2058, x_2058, x_2058) * x_2060) + vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
  let x_2065 : f32 = u_xlat75;
  let x_2067 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2065, x_2065, x_2065) * x_2067);
  let x_2069 : vec4<f32> = u_xlat7;
  let x_2071 : vec3<f32> = u_xlat33;
  let x_2072 : vec3<f32> = (vec3<f32>(x_2069.x, x_2069.y, x_2069.z) * x_2071);
  let x_2073 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2075 : vec3<f32> = u_xlat6;
  let x_2076 : vec3<f32> = u_xlat27;
  let x_2078 : vec4<f32> = u_xlat7;
  u_xlat6 = ((x_2075 * x_2076) + vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2082 : f32 = u_xlat28.x;
  let x_2084 : f32 = x_186.unity_LightData.z;
  u_xlat75 = (x_2082 * x_2084);
  let x_2086 : vec4<f32> = u_xlat4;
  let x_2089 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2094 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2094, 0.0f, 1.0f);
  let x_2097 : f32 = u_xlat75;
  let x_2099 : f32 = u_xlat1.x;
  u_xlat75 = (x_2097 * x_2099);
  let x_2101 : f32 = u_xlat75;
  let x_2104 : vec4<f32> = x_45.x_MainLightColor;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2101, x_2101, x_2101) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
  let x_2109 : vec3<f32> = u_xlat5;
  let x_2111 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat33 = (x_2109 + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec3<f32> = u_xlat33;
  let x_2115 : vec3<f32> = u_xlat33;
  u_xlat75 = dot(x_2114, x_2115);
  let x_2117 : f32 = u_xlat75;
  u_xlat75 = max(x_2117, 1.17549435e-38f);
  let x_2120 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2120);
  let x_2122 : f32 = u_xlat75;
  let x_2124 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2122, x_2122, x_2122) * x_2124);
  let x_2126 : vec4<f32> = u_xlat4;
  let x_2128 : vec3<f32> = u_xlat33;
  u_xlat75 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), x_2128);
  let x_2130 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2130, 0.0f, 1.0f);
  let x_2133 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2135 : vec3<f32> = u_xlat33;
  u_xlat1.x = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), x_2135);
  let x_2139 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2139, 0.0f, 1.0f);
  let x_2142 : f32 = u_xlat75;
  let x_2143 : f32 = u_xlat75;
  u_xlat75 = (x_2142 * x_2143);
  let x_2145 : f32 = u_xlat75;
  let x_2147 : f32 = u_xlat8.x;
  u_xlat75 = ((x_2145 * x_2147) + 1.00001001358032226562f);
  let x_2152 : f32 = u_xlat1.x;
  let x_2154 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2152 * x_2154);
  let x_2157 : f32 = u_xlat75;
  let x_2158 : f32 = u_xlat75;
  u_xlat75 = (x_2157 * x_2158);
  let x_2161 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2161, 0.10000000149011611938f);
  let x_2165 : f32 = u_xlat75;
  let x_2167 : f32 = u_xlat1.x;
  u_xlat75 = (x_2165 * x_2167);
  let x_2170 : f32 = u_xlat51.x;
  let x_2171 : f32 = u_xlat75;
  u_xlat75 = (x_2170 * x_2171);
  let x_2173 : f32 = u_xlat76;
  let x_2174 : f32 = u_xlat75;
  u_xlat75 = (x_2173 / x_2174);
  let x_2176 : vec4<f32> = u_xlat0;
  let x_2178 : f32 = u_xlat75;
  let x_2181 : vec3<f32> = u_xlat27;
  u_xlat33 = ((vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178, x_2178, x_2178)) + x_2181);
  let x_2183 : vec4<f32> = u_xlat7;
  let x_2185 : vec3<f32> = u_xlat33;
  let x_2186 : vec3<f32> = (vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * x_2185);
  let x_2187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2190 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2192 : f32 = x_186.unity_LightData.y;
  u_xlat75 = min(x_2190, x_2192);
  let x_2194 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2194));
  let x_2197 : f32 = u_xlat53;
  let x_2200 : f32 = x_347.x_AdditionalShadowFadeParams.x;
  let x_2203 : f32 = x_347.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2197 * x_2200) + x_2203);
  let x_2207 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2207, 0.0f, 1.0f);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2220 : u32 = u_xlatu_loop_1;
    let x_2221 : u32 = u_xlatu75;
    if ((x_2220 < x_2221)) {
    } else {
      break;
    }
    let x_2224 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2224 >> 2u);
    let x_2227 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2227 & 3u));
    let x_2230 : u32 = u_xlatu79;
    let x_2233 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2230)];
    let x_2243 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2248 : vec4<u32> = indexable[x_2243];
    u_xlat79 = dot(x_2233, bitcast<vec4<f32>>(x_2248));
    let x_2252 : f32 = u_xlat79;
    u_xlati79 = i32(x_2252);
    let x_2254 : vec3<f32> = vs_TEXCOORD1;
    let x_2265 : i32 = u_xlati79;
    let x_2267 : vec4<f32> = x_2264.x_AdditionalLightsPosition[x_2265];
    let x_2270 : i32 = u_xlati79;
    let x_2272 : vec4<f32> = x_2264.x_AdditionalLightsPosition[x_2270];
    u_xlat33 = ((-(x_2254) * vec3<f32>(x_2267.w, x_2267.w, x_2267.w)) + vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : vec3<f32> = u_xlat33;
    let x_2276 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2275, x_2276);
    let x_2278 : f32 = u_xlat80;
    u_xlat80 = max(x_2278, 0.00006103515625f);
    let x_2281 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2281);
    let x_2283 : f32 = u_xlat81;
    let x_2285 : vec3<f32> = u_xlat33;
    let x_2286 : vec3<f32> = (vec3<f32>(x_2283, x_2283, x_2283) * x_2285);
    let x_2287 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
    let x_2290 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2290);
    let x_2292 : f32 = u_xlat80;
    let x_2293 : i32 = u_xlati79;
    let x_2295 : f32 = x_2264.x_AdditionalLightsAttenuation[x_2293].x;
    u_xlat80 = (x_2292 * x_2295);
    let x_2297 : f32 = u_xlat80;
    let x_2299 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2297) * x_2299) + 1.0f);
    let x_2302 : f32 = u_xlat80;
    u_xlat80 = max(x_2302, 0.0f);
    let x_2304 : f32 = u_xlat80;
    let x_2305 : f32 = u_xlat80;
    u_xlat80 = (x_2304 * x_2305);
    let x_2307 : f32 = u_xlat80;
    let x_2308 : f32 = u_xlat82;
    u_xlat80 = (x_2307 * x_2308);
    let x_2310 : i32 = u_xlati79;
    let x_2312 : vec4<f32> = x_2264.x_AdditionalLightsSpotDir[x_2310];
    let x_2314 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2312.x, x_2312.y, x_2312.z), vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
    let x_2317 : f32 = u_xlat82;
    let x_2318 : i32 = u_xlati79;
    let x_2320 : f32 = x_2264.x_AdditionalLightsAttenuation[x_2318].z;
    let x_2322 : i32 = u_xlati79;
    let x_2324 : f32 = x_2264.x_AdditionalLightsAttenuation[x_2322].w;
    u_xlat82 = ((x_2317 * x_2320) + x_2324);
    let x_2326 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2326, 0.0f, 1.0f);
    let x_2328 : f32 = u_xlat82;
    let x_2329 : f32 = u_xlat82;
    u_xlat82 = (x_2328 * x_2329);
    let x_2331 : f32 = u_xlat80;
    let x_2332 : f32 = u_xlat82;
    u_xlat80 = (x_2331 * x_2332);
    let x_2336 : i32 = u_xlati79;
    let x_2338 : f32 = x_347.x_AdditionalShadowParams[x_2336].w;
    u_xlati82 = i32(x_2338);
    let x_2341 : i32 = u_xlati82;
    u_xlatb84 = (x_2341 >= 0i);
    let x_2343 : bool = u_xlatb84;
    if (x_2343) {
      let x_2347 : i32 = u_xlati79;
      let x_2349 : f32 = x_347.x_AdditionalShadowParams[x_2347].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2349, x_2349, x_2349, x_2349))));
      let x_2353 : bool = u_xlatb84;
      if (x_2353) {
        let x_2357 : vec4<f32> = u_xlat9;
        let x_2360 : vec4<f32> = u_xlat9;
        let x_2363 : vec4<bool> = (abs(vec4<f32>(x_2357.z, x_2357.z, x_2357.y, x_2357.z)) >= abs(vec4<f32>(x_2360.x, x_2360.y, x_2360.x, x_2360.x)));
        let x_2365 : vec3<bool> = vec3<bool>(x_2363.x, x_2363.y, x_2363.z);
        let x_2366 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
        let x_2369 : bool = u_xlatb10.y;
        let x_2371 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2369 & x_2371);
        let x_2373 : vec4<f32> = u_xlat9;
        let x_2376 : vec4<bool> = (-(vec4<f32>(x_2373.z, x_2373.y, x_2373.z, x_2373.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2377 : vec3<bool> = vec3<bool>(x_2376.x, x_2376.y, x_2376.w);
        let x_2378 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2377.x, x_2377.y, x_2378.z, x_2377.z);
        let x_2381 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2381);
        let x_2386 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2386);
        let x_2391 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2391);
        let x_2395 : bool = u_xlatb10.z;
        if (x_2395) {
          let x_2400 : f32 = u_xlat10.y;
          x_2396 = x_2400;
        } else {
          let x_2402 : f32 = u_xlat85;
          x_2396 = x_2402;
        }
        let x_2403 : f32 = x_2396;
        u_xlat35 = x_2403;
        let x_2405 : bool = u_xlatb84;
        if (x_2405) {
          let x_2410 : f32 = u_xlat10.x;
          x_2406 = x_2410;
        } else {
          let x_2412 : f32 = u_xlat35;
          x_2406 = x_2412;
        }
        let x_2413 : f32 = x_2406;
        u_xlat84 = x_2413;
        let x_2414 : i32 = u_xlati79;
        let x_2416 : f32 = x_347.x_AdditionalShadowParams[x_2414].w;
        u_xlat10.x = trunc(x_2416);
        let x_2419 : f32 = u_xlat84;
        let x_2421 : f32 = u_xlat10.x;
        u_xlat84 = (x_2419 + x_2421);
        let x_2423 : f32 = u_xlat84;
        u_xlati82 = i32(x_2423);
      }
      let x_2425 : i32 = u_xlati82;
      u_xlati82 = (x_2425 << bitcast<u32>(2i));
      let x_2427 : vec3<f32> = vs_TEXCOORD1;
      let x_2430 : i32 = u_xlati82;
      let x_2433 : i32 = u_xlati82;
      let x_2437 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_2430 + 1i) / 4i)][((x_2433 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2427.y, x_2427.y, x_2427.y, x_2427.y) * x_2437);
      let x_2439 : i32 = u_xlati82;
      let x_2441 : i32 = u_xlati82;
      let x_2444 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[(x_2439 / 4i)][(x_2441 % 4i)];
      let x_2445 : vec3<f32> = vs_TEXCOORD1;
      let x_2448 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2444 * vec4<f32>(x_2445.x, x_2445.x, x_2445.x, x_2445.x)) + x_2448);
      let x_2450 : i32 = u_xlati82;
      let x_2453 : i32 = u_xlati82;
      let x_2457 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_2450 + 2i) / 4i)][((x_2453 + 2i) % 4i)];
      let x_2458 : vec3<f32> = vs_TEXCOORD1;
      let x_2461 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2457 * vec4<f32>(x_2458.z, x_2458.z, x_2458.z, x_2458.z)) + x_2461);
      let x_2463 : vec4<f32> = u_xlat10;
      let x_2464 : i32 = u_xlati82;
      let x_2467 : i32 = u_xlati82;
      let x_2471 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_2464 + 3i) / 4i)][((x_2467 + 3i) % 4i)];
      u_xlat10 = (x_2463 + x_2471);
      let x_2473 : vec4<f32> = u_xlat10;
      let x_2475 : vec4<f32> = u_xlat10;
      let x_2477 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) / vec3<f32>(x_2475.w, x_2475.w, x_2475.w));
      let x_2478 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
      let x_2481 : i32 = u_xlati79;
      let x_2483 : f32 = x_347.x_AdditionalShadowParams[x_2481].y;
      u_xlatb82 = (0.0f < x_2483);
      let x_2485 : bool = u_xlatb82;
      if (x_2485) {
        let x_2488 : i32 = u_xlati79;
        let x_2490 : f32 = x_347.x_AdditionalShadowParams[x_2488].y;
        u_xlatb82 = (1.0f == x_2490);
        let x_2492 : bool = u_xlatb82;
        if (x_2492) {
          let x_2495 : vec4<f32> = u_xlat10;
          let x_2498 : vec4<f32> = x_347.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2495.x, x_2495.y, x_2495.x, x_2495.y) + x_2498);
          let x_2501 : vec4<f32> = u_xlat11;
          let x_2502 : vec2<f32> = vec2<f32>(x_2501.x, x_2501.y);
          let x_2504 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2502.x, x_2502.y, x_2504);
          let x_2512 : vec3<f32> = txVec30;
          let x_2514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2512.xy, x_2512.z);
          u_xlat12.x = x_2514;
          let x_2517 : vec4<f32> = u_xlat11;
          let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
          let x_2520 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
          let x_2527 : vec3<f32> = txVec31;
          let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
          u_xlat12.y = x_2529;
          let x_2531 : vec4<f32> = u_xlat10;
          let x_2535 : vec4<f32> = x_347.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2531.x, x_2531.y, x_2531.x, x_2531.y) + x_2535);
          let x_2538 : vec4<f32> = u_xlat11;
          let x_2539 : vec2<f32> = vec2<f32>(x_2538.x, x_2538.y);
          let x_2541 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2539.x, x_2539.y, x_2541);
          let x_2548 : vec3<f32> = txVec32;
          let x_2550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2548.xy, x_2548.z);
          u_xlat12.z = x_2550;
          let x_2553 : vec4<f32> = u_xlat11;
          let x_2554 : vec2<f32> = vec2<f32>(x_2553.z, x_2553.w);
          let x_2556 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2554.x, x_2554.y, x_2556);
          let x_2563 : vec3<f32> = txVec33;
          let x_2565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2563.xy, x_2563.z);
          u_xlat12.w = x_2565;
          let x_2567 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2567, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2570 : i32 = u_xlati79;
          let x_2572 : f32 = x_347.x_AdditionalShadowParams[x_2570].y;
          u_xlatb84 = (2.0f == x_2572);
          let x_2574 : bool = u_xlatb84;
          if (x_2574) {
            let x_2577 : vec4<f32> = u_xlat10;
            let x_2581 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2584 : vec2<f32> = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2581.z, x_2581.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2585 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat11;
            let x_2589 : vec2<f32> = floor(vec2<f32>(x_2587.x, x_2587.y));
            let x_2590 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2593 : vec4<f32> = u_xlat10;
            let x_2596 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2599 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2593.x, x_2593.y) * vec2<f32>(x_2596.z, x_2596.w)) + -(vec2<f32>(x_2599.x, x_2599.y)));
            let x_2603 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2603.x, x_2603.x, x_2603.y, x_2603.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2606 : vec4<f32> = u_xlat12;
            let x_2608 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2606.x, x_2606.x, x_2606.z, x_2606.z) * vec4<f32>(x_2608.x, x_2608.x, x_2608.z, x_2608.z));
            let x_2611 : vec4<f32> = u_xlat13;
            let x_2613 : vec2<f32> = (vec2<f32>(x_2611.y, x_2611.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2614 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2613.x, x_2614.y, x_2613.y, x_2614.w);
            let x_2616 : vec4<f32> = u_xlat13;
            let x_2619 : vec2<f32> = u_xlat61;
            let x_2621 : vec2<f32> = ((vec2<f32>(x_2616.x, x_2616.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2619));
            let x_2622 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
            let x_2625 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2625) + vec2<f32>(1.0f, 1.0f));
            let x_2628 : vec2<f32> = u_xlat61;
            let x_2629 : vec2<f32> = min(x_2628, vec2<f32>(0.0f, 0.0f));
            let x_2630 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat14;
            let x_2635 : vec4<f32> = u_xlat14;
            let x_2638 : vec2<f32> = u_xlat63;
            let x_2639 : vec2<f32> = ((-(vec2<f32>(x_2632.x, x_2632.y)) * vec2<f32>(x_2635.x, x_2635.y)) + x_2638);
            let x_2640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
            let x_2642 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2642, vec2<f32>(0.0f, 0.0f));
            let x_2644 : vec2<f32> = u_xlat61;
            let x_2646 : vec2<f32> = u_xlat61;
            let x_2648 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2644) * x_2646) + vec2<f32>(x_2648.y, x_2648.w));
            let x_2651 : vec4<f32> = u_xlat14;
            let x_2653 : vec2<f32> = (vec2<f32>(x_2651.x, x_2651.y) + vec2<f32>(1.0f, 1.0f));
            let x_2654 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2653.x, x_2653.y, x_2654.z, x_2654.w);
            let x_2656 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2656 + vec2<f32>(1.0f, 1.0f));
            let x_2658 : vec4<f32> = u_xlat13;
            let x_2660 : vec2<f32> = (vec2<f32>(x_2658.x, x_2658.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2661 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2660.x, x_2660.y, x_2661.z, x_2661.w);
            let x_2663 : vec2<f32> = u_xlat63;
            let x_2664 : vec2<f32> = (x_2663 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2665 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat14;
            let x_2669 : vec2<f32> = (vec2<f32>(x_2667.x, x_2667.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2670 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2672 : vec2<f32> = u_xlat61;
            let x_2673 : vec2<f32> = (x_2672 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2674 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2673.x, x_2673.y, x_2674.z, x_2674.w);
            let x_2676 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2676.y, x_2676.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2680 : f32 = u_xlat14.x;
            u_xlat15.z = x_2680;
            let x_2683 : f32 = u_xlat61.x;
            u_xlat15.w = x_2683;
            let x_2686 : f32 = u_xlat16.x;
            u_xlat13.z = x_2686;
            let x_2689 : f32 = u_xlat12.x;
            u_xlat13.w = x_2689;
            let x_2691 : vec4<f32> = u_xlat13;
            let x_2693 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2691.z, x_2691.w, x_2691.x, x_2691.z) + vec4<f32>(x_2693.z, x_2693.w, x_2693.x, x_2693.z));
            let x_2697 : f32 = u_xlat15.y;
            u_xlat14.z = x_2697;
            let x_2700 : f32 = u_xlat61.y;
            u_xlat14.w = x_2700;
            let x_2703 : f32 = u_xlat13.y;
            u_xlat16.z = x_2703;
            let x_2706 : f32 = u_xlat12.z;
            u_xlat16.w = x_2706;
            let x_2708 : vec4<f32> = u_xlat14;
            let x_2710 : vec4<f32> = u_xlat16;
            let x_2712 : vec3<f32> = (vec3<f32>(x_2708.z, x_2708.y, x_2708.w) + vec3<f32>(x_2710.z, x_2710.y, x_2710.w));
            let x_2713 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2713.w);
            let x_2715 : vec4<f32> = u_xlat13;
            let x_2717 : vec4<f32> = u_xlat17;
            let x_2719 : vec3<f32> = (vec3<f32>(x_2715.x, x_2715.z, x_2715.w) / vec3<f32>(x_2717.z, x_2717.w, x_2717.y));
            let x_2720 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);
            let x_2722 : vec4<f32> = u_xlat13;
            let x_2724 : vec3<f32> = (vec3<f32>(x_2722.x, x_2722.y, x_2722.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2725 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2724.x, x_2724.y, x_2724.z, x_2725.w);
            let x_2727 : vec4<f32> = u_xlat16;
            let x_2729 : vec4<f32> = u_xlat12;
            let x_2731 : vec3<f32> = (vec3<f32>(x_2727.z, x_2727.y, x_2727.w) / vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
            let x_2732 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
            let x_2734 : vec4<f32> = u_xlat14;
            let x_2736 : vec3<f32> = (vec3<f32>(x_2734.x, x_2734.y, x_2734.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2737 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2742 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2744 : vec3<f32> = (vec3<f32>(x_2739.y, x_2739.x, x_2739.z) * vec3<f32>(x_2742.x, x_2742.x, x_2742.x));
            let x_2745 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat14;
            let x_2750 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2752 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) * vec3<f32>(x_2750.y, x_2750.y, x_2750.y));
            let x_2753 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
            let x_2756 : f32 = u_xlat14.x;
            u_xlat13.w = x_2756;
            let x_2758 : vec4<f32> = u_xlat11;
            let x_2761 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2764 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.y, x_2764.w, x_2764.x, x_2764.w));
            let x_2767 : vec4<f32> = u_xlat11;
            let x_2770 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2773 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2767.x, x_2767.y) * vec2<f32>(x_2770.x, x_2770.y)) + vec2<f32>(x_2773.z, x_2773.w));
            let x_2777 : f32 = u_xlat13.y;
            u_xlat14.w = x_2777;
            let x_2779 : vec4<f32> = u_xlat14;
            let x_2780 : vec2<f32> = vec2<f32>(x_2779.y, x_2779.z);
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2781.x, x_2780.x, x_2781.z, x_2780.y);
            let x_2783 : vec4<f32> = u_xlat11;
            let x_2786 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y) * vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y)) + vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2789.y));
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2795 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2798 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y) * vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.y)) + vec4<f32>(x_2798.w, x_2798.y, x_2798.w, x_2798.z));
            let x_2801 : vec4<f32> = u_xlat11;
            let x_2804 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_2807 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y) * vec4<f32>(x_2804.x, x_2804.y, x_2804.x, x_2804.y)) + vec4<f32>(x_2807.x, x_2807.w, x_2807.z, x_2807.w));
            let x_2810 : vec4<f32> = u_xlat12;
            let x_2812 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2810.x, x_2810.x, x_2810.x, x_2810.y) * vec4<f32>(x_2812.z, x_2812.w, x_2812.y, x_2812.z));
            let x_2815 : vec4<f32> = u_xlat12;
            let x_2817 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2815.y, x_2815.y, x_2815.z, x_2815.z) * x_2817);
            let x_2820 : f32 = u_xlat12.z;
            let x_2822 : f32 = u_xlat17.y;
            u_xlat84 = (x_2820 * x_2822);
            let x_2825 : vec4<f32> = u_xlat15;
            let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
            let x_2828 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec34;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat85 = x_2837;
            let x_2839 : vec4<f32> = u_xlat15;
            let x_2840 : vec2<f32> = vec2<f32>(x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec35;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat11.x = x_2851;
            let x_2854 : f32 = u_xlat11.x;
            let x_2856 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2854 * x_2856);
            let x_2860 : f32 = u_xlat18.x;
            let x_2861 : f32 = u_xlat85;
            let x_2864 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2860 * x_2861) + x_2864);
            let x_2867 : vec2<f32> = u_xlat61;
            let x_2869 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec36;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat11.x = x_2878;
            let x_2881 : f32 = u_xlat18.z;
            let x_2883 : f32 = u_xlat11.x;
            let x_2885 : f32 = u_xlat85;
            u_xlat85 = ((x_2881 * x_2883) + x_2885);
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2889 : vec2<f32> = vec2<f32>(x_2888.x, x_2888.y);
            let x_2891 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2889.x, x_2889.y, x_2891);
            let x_2898 : vec3<f32> = txVec37;
            let x_2900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2898.xy, x_2898.z);
            u_xlat11.x = x_2900;
            let x_2903 : f32 = u_xlat18.w;
            let x_2905 : f32 = u_xlat11.x;
            let x_2907 : f32 = u_xlat85;
            u_xlat85 = ((x_2903 * x_2905) + x_2907);
            let x_2910 : vec4<f32> = u_xlat16;
            let x_2911 : vec2<f32> = vec2<f32>(x_2910.x, x_2910.y);
            let x_2913 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
            let x_2920 : vec3<f32> = txVec38;
            let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
            u_xlat11.x = x_2922;
            let x_2925 : f32 = u_xlat19.x;
            let x_2927 : f32 = u_xlat11.x;
            let x_2929 : f32 = u_xlat85;
            u_xlat85 = ((x_2925 * x_2927) + x_2929);
            let x_2932 : vec4<f32> = u_xlat16;
            let x_2933 : vec2<f32> = vec2<f32>(x_2932.z, x_2932.w);
            let x_2935 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
            let x_2942 : vec3<f32> = txVec39;
            let x_2944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2942.xy, x_2942.z);
            u_xlat11.x = x_2944;
            let x_2947 : f32 = u_xlat19.y;
            let x_2949 : f32 = u_xlat11.x;
            let x_2951 : f32 = u_xlat85;
            u_xlat85 = ((x_2947 * x_2949) + x_2951);
            let x_2954 : vec4<f32> = u_xlat14;
            let x_2955 : vec2<f32> = vec2<f32>(x_2954.z, x_2954.w);
            let x_2957 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
            let x_2964 : vec3<f32> = txVec40;
            let x_2966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
            u_xlat11.x = x_2966;
            let x_2969 : f32 = u_xlat19.z;
            let x_2971 : f32 = u_xlat11.x;
            let x_2973 : f32 = u_xlat85;
            u_xlat85 = ((x_2969 * x_2971) + x_2973);
            let x_2976 : vec4<f32> = u_xlat13;
            let x_2977 : vec2<f32> = vec2<f32>(x_2976.x, x_2976.y);
            let x_2979 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2986 : vec3<f32> = txVec41;
            let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
            u_xlat11.x = x_2988;
            let x_2991 : f32 = u_xlat19.w;
            let x_2993 : f32 = u_xlat11.x;
            let x_2995 : f32 = u_xlat85;
            u_xlat85 = ((x_2991 * x_2993) + x_2995);
            let x_2998 : vec4<f32> = u_xlat13;
            let x_2999 : vec2<f32> = vec2<f32>(x_2998.z, x_2998.w);
            let x_3001 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
            let x_3008 : vec3<f32> = txVec42;
            let x_3010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
            u_xlat11.x = x_3010;
            let x_3012 : f32 = u_xlat84;
            let x_3014 : f32 = u_xlat11.x;
            let x_3016 : f32 = u_xlat85;
            u_xlat82 = ((x_3012 * x_3014) + x_3016);
          } else {
            let x_3019 : vec4<f32> = u_xlat10;
            let x_3022 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3025 : vec2<f32> = ((vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(x_3022.z, x_3022.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3026 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
            let x_3028 : vec4<f32> = u_xlat11;
            let x_3030 : vec2<f32> = floor(vec2<f32>(x_3028.x, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3033 : vec4<f32> = u_xlat10;
            let x_3036 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.z, x_3036.w)) + -(vec2<f32>(x_3039.x, x_3039.y)));
            let x_3043 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3043.x, x_3043.x, x_3043.y, x_3043.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3048 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3046.x, x_3046.x, x_3046.z, x_3046.z) * vec4<f32>(x_3048.x, x_3048.x, x_3048.z, x_3048.z));
            let x_3051 : vec4<f32> = u_xlat13;
            let x_3053 : vec2<f32> = (vec2<f32>(x_3051.y, x_3051.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3054.x, x_3053.x, x_3054.z, x_3053.y);
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3059 : vec2<f32> = u_xlat61;
            let x_3061 : vec2<f32> = ((vec2<f32>(x_3056.x, x_3056.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3059));
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3061.x, x_3062.y, x_3061.y, x_3062.w);
            let x_3064 : vec2<f32> = u_xlat61;
            let x_3066 : vec2<f32> = (-(x_3064) + vec2<f32>(1.0f, 1.0f));
            let x_3067 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3066.x, x_3066.y, x_3067.z, x_3067.w);
            let x_3069 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3069, vec2<f32>(0.0f, 0.0f));
            let x_3071 : vec2<f32> = u_xlat63;
            let x_3073 : vec2<f32> = u_xlat63;
            let x_3075 : vec4<f32> = u_xlat13;
            let x_3077 : vec2<f32> = ((-(x_3071) * x_3073) + vec2<f32>(x_3075.x, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
            let x_3080 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3080, vec2<f32>(0.0f, 0.0f));
            let x_3083 : vec2<f32> = u_xlat63;
            let x_3085 : vec2<f32> = u_xlat63;
            let x_3087 : vec4<f32> = u_xlat12;
            let x_3089 : vec2<f32> = ((-(x_3083) * x_3085) + vec2<f32>(x_3087.y, x_3087.w));
            let x_3090 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3089.x, x_3090.y, x_3089.y);
            let x_3092 : vec4<f32> = u_xlat13;
            let x_3094 : vec2<f32> = (vec2<f32>(x_3092.x, x_3092.y) + vec2<f32>(2.0f, 2.0f));
            let x_3095 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3094.x, x_3094.y, x_3095.z, x_3095.w);
            let x_3097 : vec3<f32> = u_xlat37;
            let x_3099 : vec2<f32> = (vec2<f32>(x_3097.x, x_3097.z) + vec2<f32>(2.0f, 2.0f));
            let x_3100 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3100.x, x_3099.x, x_3100.z, x_3099.y);
            let x_3103 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3103 * 0.08163200318813323975f);
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3108 : vec3<f32> = (vec3<f32>(x_3106.z, x_3106.x, x_3106.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3109 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);
            let x_3111 : vec4<f32> = u_xlat13;
            let x_3113 : vec2<f32> = (vec2<f32>(x_3111.x, x_3111.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3114 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3113.x, x_3113.y, x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat16.y;
            u_xlat15.x = x_3117;
            let x_3119 : vec2<f32> = u_xlat61;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3123 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3123.x, x_3122.x, x_3123.z, x_3122.y);
            let x_3125 : vec2<f32> = u_xlat61;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3129 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3128.x, x_3129.y, x_3128.y, x_3129.w);
            let x_3132 : f32 = u_xlat12.x;
            u_xlat13.y = x_3132;
            let x_3135 : f32 = u_xlat14.y;
            u_xlat13.w = x_3135;
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3138 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3137 + x_3138);
            let x_3140 : vec2<f32> = u_xlat61;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3140.y, x_3140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3144 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3144.x, x_3143.x, x_3144.z, x_3143.y);
            let x_3146 : vec2<f32> = u_xlat61;
            let x_3149 : vec2<f32> = ((vec2<f32>(x_3146.y, x_3146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3149.x, x_3150.y, x_3149.y, x_3150.w);
            let x_3153 : f32 = u_xlat12.y;
            u_xlat14.y = x_3153;
            let x_3155 : vec4<f32> = u_xlat14;
            let x_3156 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3155 + x_3156);
            let x_3158 : vec4<f32> = u_xlat13;
            let x_3159 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3158 / x_3159);
            let x_3161 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3163 : vec4<f32> = u_xlat14;
            let x_3164 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3163 / x_3164);
            let x_3166 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3166 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3171 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3168.w, x_3168.x, x_3168.y, x_3168.z) * vec4<f32>(x_3171.x, x_3171.x, x_3171.x, x_3171.x));
            let x_3174 : vec4<f32> = u_xlat14;
            let x_3177 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3174.x, x_3174.w, x_3174.y, x_3174.z) * vec4<f32>(x_3177.y, x_3177.y, x_3177.y, x_3177.y));
            let x_3180 : vec4<f32> = u_xlat13;
            let x_3181 : vec3<f32> = vec3<f32>(x_3180.y, x_3180.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3181.x, x_3182.y, x_3181.y, x_3181.z);
            let x_3185 : f32 = u_xlat14.x;
            u_xlat16.y = x_3185;
            let x_3187 : vec4<f32> = u_xlat11;
            let x_3190 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3193.y));
            let x_3196 : vec4<f32> = u_xlat11;
            let x_3199 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.x, x_3199.y)) + vec2<f32>(x_3202.w, x_3202.y));
            let x_3206 : f32 = u_xlat16.y;
            u_xlat13.y = x_3206;
            let x_3209 : f32 = u_xlat14.z;
            u_xlat16.y = x_3209;
            let x_3211 : vec4<f32> = u_xlat11;
            let x_3214 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3217 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y) * vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y)) + vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3217.y));
            let x_3220 : vec4<f32> = u_xlat11;
            let x_3223 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3226 : vec4<f32> = u_xlat16;
            let x_3228 : vec2<f32> = ((vec2<f32>(x_3220.x, x_3220.y) * vec2<f32>(x_3223.x, x_3223.y)) + vec2<f32>(x_3226.w, x_3226.y));
            let x_3229 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3232 : f32 = u_xlat16.y;
            u_xlat13.z = x_3232;
            let x_3234 : vec4<f32> = u_xlat11;
            let x_3237 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3240 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3234.x, x_3234.y, x_3234.x, x_3234.y) * vec4<f32>(x_3237.x, x_3237.y, x_3237.x, x_3237.y)) + vec4<f32>(x_3240.x, x_3240.y, x_3240.x, x_3240.z));
            let x_3244 : f32 = u_xlat14.w;
            u_xlat16.y = x_3244;
            let x_3247 : vec4<f32> = u_xlat11;
            let x_3250 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3253.y));
            let x_3257 : vec4<f32> = u_xlat11;
            let x_3260 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(x_3260.x, x_3260.y)) + vec2<f32>(x_3263.w, x_3263.y));
            let x_3267 : f32 = u_xlat16.y;
            u_xlat13.w = x_3267;
            let x_3270 : vec4<f32> = u_xlat11;
            let x_3273 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3276 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3270.x, x_3270.y) * vec2<f32>(x_3273.x, x_3273.y)) + vec2<f32>(x_3276.x, x_3276.w));
            let x_3279 : vec4<f32> = u_xlat16;
            let x_3280 : vec3<f32> = vec3<f32>(x_3279.x, x_3279.z, x_3279.w);
            let x_3281 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3280.x, x_3281.y, x_3280.y, x_3280.z);
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y) * vec4<f32>(x_3286.x, x_3286.y, x_3286.x, x_3286.y)) + vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3289.y));
            let x_3293 : vec4<f32> = u_xlat11;
            let x_3296 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3299 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3293.x, x_3293.y) * vec2<f32>(x_3296.x, x_3296.y)) + vec2<f32>(x_3299.w, x_3299.y));
            let x_3303 : f32 = u_xlat13.x;
            u_xlat14.x = x_3303;
            let x_3305 : vec4<f32> = u_xlat11;
            let x_3308 : vec4<f32> = x_347.x_AdditionalShadowmapSize;
            let x_3311 : vec4<f32> = u_xlat14;
            let x_3313 : vec2<f32> = ((vec2<f32>(x_3305.x, x_3305.y) * vec2<f32>(x_3308.x, x_3308.y)) + vec2<f32>(x_3311.x, x_3311.y));
            let x_3314 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3313.x, x_3313.y, x_3314.z, x_3314.w);
            let x_3317 : vec4<f32> = u_xlat12;
            let x_3319 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3317.x, x_3317.x, x_3317.x, x_3317.x) * x_3319);
            let x_3322 : vec4<f32> = u_xlat12;
            let x_3324 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3322.y, x_3322.y, x_3322.y, x_3322.y) * x_3324);
            let x_3327 : vec4<f32> = u_xlat12;
            let x_3329 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3327.z, x_3327.z, x_3327.z, x_3327.z) * x_3329);
            let x_3331 : vec4<f32> = u_xlat12;
            let x_3333 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3331.w, x_3331.w, x_3331.w, x_3331.w) * x_3333);
            let x_3336 : vec4<f32> = u_xlat17;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec43;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat84 = x_3348;
            let x_3350 : vec4<f32> = u_xlat17;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.z, x_3350.w);
            let x_3353 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec44;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat85 = x_3362;
            let x_3363 : f32 = u_xlat85;
            let x_3365 : f32 = u_xlat22.y;
            u_xlat85 = (x_3363 * x_3365);
            let x_3368 : f32 = u_xlat22.x;
            let x_3369 : f32 = u_xlat84;
            let x_3371 : f32 = u_xlat85;
            u_xlat84 = ((x_3368 * x_3369) + x_3371);
            let x_3374 : vec2<f32> = u_xlat61;
            let x_3376 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3374.x, x_3374.y, x_3376);
            let x_3383 : vec3<f32> = txVec45;
            let x_3385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3383.xy, x_3383.z);
            u_xlat85 = x_3385;
            let x_3387 : f32 = u_xlat22.z;
            let x_3388 : f32 = u_xlat85;
            let x_3390 : f32 = u_xlat84;
            u_xlat84 = ((x_3387 * x_3388) + x_3390);
            let x_3393 : vec4<f32> = u_xlat20;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.x, x_3393.y);
            let x_3396 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec46;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat85 = x_3405;
            let x_3407 : f32 = u_xlat22.w;
            let x_3408 : f32 = u_xlat85;
            let x_3410 : f32 = u_xlat84;
            u_xlat84 = ((x_3407 * x_3408) + x_3410);
            let x_3413 : vec4<f32> = u_xlat18;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.x, x_3413.y);
            let x_3416 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec47;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat85 = x_3425;
            let x_3427 : f32 = u_xlat23.x;
            let x_3428 : f32 = u_xlat85;
            let x_3430 : f32 = u_xlat84;
            u_xlat84 = ((x_3427 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat18;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.z, x_3433.w);
            let x_3436 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec48;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat85 = x_3445;
            let x_3447 : f32 = u_xlat23.y;
            let x_3448 : f32 = u_xlat85;
            let x_3450 : f32 = u_xlat84;
            u_xlat84 = ((x_3447 * x_3448) + x_3450);
            let x_3453 : vec4<f32> = u_xlat19;
            let x_3454 : vec2<f32> = vec2<f32>(x_3453.x, x_3453.y);
            let x_3456 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec49;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat85 = x_3465;
            let x_3467 : f32 = u_xlat23.z;
            let x_3468 : f32 = u_xlat85;
            let x_3470 : f32 = u_xlat84;
            u_xlat84 = ((x_3467 * x_3468) + x_3470);
            let x_3473 : vec4<f32> = u_xlat20;
            let x_3474 : vec2<f32> = vec2<f32>(x_3473.z, x_3473.w);
            let x_3476 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3474.x, x_3474.y, x_3476);
            let x_3483 : vec3<f32> = txVec50;
            let x_3485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3483.xy, x_3483.z);
            u_xlat85 = x_3485;
            let x_3487 : f32 = u_xlat23.w;
            let x_3488 : f32 = u_xlat85;
            let x_3490 : f32 = u_xlat84;
            u_xlat84 = ((x_3487 * x_3488) + x_3490);
            let x_3493 : vec4<f32> = u_xlat21;
            let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
            let x_3496 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec51;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat85 = x_3505;
            let x_3507 : f32 = u_xlat24.x;
            let x_3508 : f32 = u_xlat85;
            let x_3510 : f32 = u_xlat84;
            u_xlat84 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec4<f32> = u_xlat21;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.z, x_3513.w);
            let x_3516 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec52;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat85 = x_3525;
            let x_3527 : f32 = u_xlat24.y;
            let x_3528 : f32 = u_xlat85;
            let x_3530 : f32 = u_xlat84;
            u_xlat84 = ((x_3527 * x_3528) + x_3530);
            let x_3533 : vec2<f32> = u_xlat38;
            let x_3535 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3533.x, x_3533.y, x_3535);
            let x_3542 : vec3<f32> = txVec53;
            let x_3544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3542.xy, x_3542.z);
            u_xlat85 = x_3544;
            let x_3546 : f32 = u_xlat24.z;
            let x_3547 : f32 = u_xlat85;
            let x_3549 : f32 = u_xlat84;
            u_xlat84 = ((x_3546 * x_3547) + x_3549);
            let x_3552 : vec2<f32> = u_xlat69;
            let x_3554 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3552.x, x_3552.y, x_3554);
            let x_3561 : vec3<f32> = txVec54;
            let x_3563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3561.xy, x_3561.z);
            u_xlat85 = x_3563;
            let x_3565 : f32 = u_xlat24.w;
            let x_3566 : f32 = u_xlat85;
            let x_3568 : f32 = u_xlat84;
            u_xlat84 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec4<f32> = u_xlat16;
            let x_3572 : vec2<f32> = vec2<f32>(x_3571.x, x_3571.y);
            let x_3574 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3572.x, x_3572.y, x_3574);
            let x_3581 : vec3<f32> = txVec55;
            let x_3583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3581.xy, x_3581.z);
            u_xlat85 = x_3583;
            let x_3585 : f32 = u_xlat12.x;
            let x_3586 : f32 = u_xlat85;
            let x_3588 : f32 = u_xlat84;
            u_xlat84 = ((x_3585 * x_3586) + x_3588);
            let x_3591 : vec4<f32> = u_xlat16;
            let x_3592 : vec2<f32> = vec2<f32>(x_3591.z, x_3591.w);
            let x_3594 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec56;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat85 = x_3603;
            let x_3605 : f32 = u_xlat12.y;
            let x_3606 : f32 = u_xlat85;
            let x_3608 : f32 = u_xlat84;
            u_xlat84 = ((x_3605 * x_3606) + x_3608);
            let x_3611 : vec2<f32> = u_xlat64;
            let x_3613 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec57;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat85 = x_3622;
            let x_3624 : f32 = u_xlat12.z;
            let x_3625 : f32 = u_xlat85;
            let x_3627 : f32 = u_xlat84;
            u_xlat84 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat11;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.x, x_3630.y);
            let x_3633 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec58;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat85 = x_3642;
            let x_3644 : f32 = u_xlat12.w;
            let x_3645 : f32 = u_xlat85;
            let x_3647 : f32 = u_xlat84;
            u_xlat82 = ((x_3644 * x_3645) + x_3647);
          }
        }
      } else {
        let x_3651 : vec4<f32> = u_xlat10;
        let x_3652 : vec2<f32> = vec2<f32>(x_3651.x, x_3651.y);
        let x_3654 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
        let x_3661 : vec3<f32> = txVec59;
        let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
        u_xlat82 = x_3663;
      }
      let x_3664 : i32 = u_xlati79;
      let x_3666 : f32 = x_347.x_AdditionalShadowParams[x_3664].x;
      u_xlat84 = (1.0f + -(x_3666));
      let x_3669 : f32 = u_xlat82;
      let x_3670 : i32 = u_xlati79;
      let x_3672 : f32 = x_347.x_AdditionalShadowParams[x_3670].x;
      let x_3674 : f32 = u_xlat84;
      u_xlat82 = ((x_3669 * x_3672) + x_3674);
      let x_3677 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3677);
      let x_3680 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3680 >= 1.0f);
      let x_3683 : bool = u_xlatb84;
      let x_3685 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3683 | x_3685);
      let x_3687 : bool = u_xlatb84;
      let x_3688 : f32 = u_xlat82;
      u_xlat82 = select(x_3688, 1.0f, x_3687);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3691 : f32 = u_xlat82;
    u_xlat84 = (-(x_3691) + 1.0f);
    let x_3695 : f32 = u_xlat1.x;
    let x_3696 : f32 = u_xlat84;
    let x_3698 : f32 = u_xlat82;
    u_xlat82 = ((x_3695 * x_3696) + x_3698);
    let x_3700 : f32 = u_xlat80;
    let x_3701 : f32 = u_xlat82;
    u_xlat80 = (x_3700 * x_3701);
    let x_3703 : vec4<f32> = u_xlat4;
    let x_3705 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3703.x, x_3703.y, x_3703.z), vec3<f32>(x_3705.x, x_3705.y, x_3705.z));
    let x_3708 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3708, 0.0f, 1.0f);
    let x_3710 : f32 = u_xlat80;
    let x_3711 : f32 = u_xlat82;
    u_xlat80 = (x_3710 * x_3711);
    let x_3713 : f32 = u_xlat80;
    let x_3715 : i32 = u_xlati79;
    let x_3717 : vec4<f32> = x_2264.x_AdditionalLightsColor[x_3715];
    let x_3719 : vec3<f32> = (vec3<f32>(x_3713, x_3713, x_3713) * vec3<f32>(x_3717.x, x_3717.y, x_3717.z));
    let x_3720 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3719.x, x_3719.y, x_3719.z, x_3720.w);
    let x_3722 : vec3<f32> = u_xlat33;
    let x_3723 : f32 = u_xlat81;
    let x_3726 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_3722 * vec3<f32>(x_3723, x_3723, x_3723)) + x_3726);
    let x_3728 : vec3<f32> = u_xlat33;
    let x_3729 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_3728, x_3729);
    let x_3731 : f32 = u_xlat79;
    u_xlat79 = max(x_3731, 1.17549435e-38f);
    let x_3733 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3733);
    let x_3735 : f32 = u_xlat79;
    let x_3737 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3735, x_3735, x_3735) * x_3737);
    let x_3739 : vec4<f32> = u_xlat4;
    let x_3741 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_3739.x, x_3739.y, x_3739.z), x_3741);
    let x_3743 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3743, 0.0f, 1.0f);
    let x_3745 : vec4<f32> = u_xlat9;
    let x_3747 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_3745.x, x_3745.y, x_3745.z), x_3747);
    let x_3749 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3749, 0.0f, 1.0f);
    let x_3751 : f32 = u_xlat79;
    let x_3752 : f32 = u_xlat79;
    u_xlat79 = (x_3751 * x_3752);
    let x_3754 : f32 = u_xlat79;
    let x_3756 : f32 = u_xlat8.x;
    u_xlat79 = ((x_3754 * x_3756) + 1.00001001358032226562f);
    let x_3759 : f32 = u_xlat80;
    let x_3760 : f32 = u_xlat80;
    u_xlat80 = (x_3759 * x_3760);
    let x_3762 : f32 = u_xlat79;
    let x_3763 : f32 = u_xlat79;
    u_xlat79 = (x_3762 * x_3763);
    let x_3765 : f32 = u_xlat80;
    u_xlat80 = max(x_3765, 0.10000000149011611938f);
    let x_3767 : f32 = u_xlat79;
    let x_3768 : f32 = u_xlat80;
    u_xlat79 = (x_3767 * x_3768);
    let x_3771 : f32 = u_xlat51.x;
    let x_3772 : f32 = u_xlat79;
    u_xlat79 = (x_3771 * x_3772);
    let x_3774 : f32 = u_xlat76;
    let x_3775 : f32 = u_xlat79;
    u_xlat79 = (x_3774 / x_3775);
    let x_3777 : vec4<f32> = u_xlat0;
    let x_3779 : f32 = u_xlat79;
    let x_3782 : vec3<f32> = u_xlat27;
    u_xlat33 = ((vec3<f32>(x_3777.x, x_3777.y, x_3777.z) * vec3<f32>(x_3779, x_3779, x_3779)) + x_3782);
    let x_3784 : vec3<f32> = u_xlat33;
    let x_3785 : vec4<f32> = u_xlat10;
    let x_3788 : vec3<f32> = u_xlat28;
    u_xlat28 = ((x_3784 * vec3<f32>(x_3785.x, x_3785.y, x_3785.z)) + x_3788);

    continuing {
      let x_3790 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3790 + bitcast<u32>(1i));
    }
  }
  let x_3792 : vec3<f32> = u_xlat6;
  let x_3793 : vec3<f32> = u_xlat3;
  let x_3796 : vec4<f32> = u_xlat7;
  let x_3798 : vec3<f32> = ((x_3792 * vec3<f32>(x_3793.x, x_3793.x, x_3793.x)) + vec3<f32>(x_3796.x, x_3796.y, x_3796.z));
  let x_3799 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3798.x, x_3798.y, x_3798.z, x_3799.w);
  let x_3803 : vec3<f32> = u_xlat28;
  let x_3804 : vec4<f32> = u_xlat0;
  let x_3806 : vec3<f32> = (x_3803 + vec3<f32>(x_3804.x, x_3804.y, x_3804.z));
  let x_3807 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
  let x_3811 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_3811 == 1.0f);
  let x_3813 : bool = u_xlatb0;
  if (x_3813) {
    let x_3818 : f32 = u_xlat2.x;
    x_3814 = x_3818;
  } else {
    x_3814 = 1.0f;
  }
  let x_3820 : f32 = x_3814;
  SV_Target0.w = x_3820;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}


