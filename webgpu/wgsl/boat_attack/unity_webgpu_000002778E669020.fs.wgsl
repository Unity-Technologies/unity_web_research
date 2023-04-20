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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
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

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_503 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb31 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu26 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2208 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu80 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_192 : f32;
  var x_262 : vec3<f32>;
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
  var x_2351 : f32;
  var x_2362 : f32;
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
  var x_3876 : f32;
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
  let x_162 : f32 = x_45.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat28;
  u_xlat28 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat28;
  let x_175 : f32 = x_45.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat28.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb53 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb53;
  if (x_190) {
    let x_196 : f32 = u_xlat28.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat28.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat28.x = x_203;
  let x_206 : f32 = u_xlat28.x;
  let x_209 : f32 = x_185.unity_LODFade.x;
  u_xlat28.x = (-(x_206) + x_209);
  let x_214 : f32 = u_xlat28.x;
  u_xlatb28 = (x_214 < 0.0f);
  let x_216 : bool = u_xlatb28;
  if (((select(0i, 1i, x_216) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb28 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_232) + x_237);
  let x_240 : vec3<f32> = u_xlat4;
  let x_241 : vec3<f32> = u_xlat4;
  u_xlat53 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat53;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_245, x_245, x_245) * x_247);
  let x_252 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_252;
  let x_255 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_255;
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_258;
  let x_260 : bool = u_xlatb28;
  if (x_260) {
    let x_265 : vec3<f32> = u_xlat4;
    x_262 = x_265;
  } else {
    let x_267 : vec4<f32> = u_xlat5;
    x_262 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  }
  let x_269 : vec3<f32> = x_262;
  u_xlat28 = x_269;
  let x_271 : vec3<f32> = vs_TEXCOORD2;
  let x_274 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_271.z, x_271.x, x_271.y) * vec3<f32>(x_274.y, x_274.z, x_274.x));
  let x_277 : vec3<f32> = vs_TEXCOORD2;
  let x_279 : vec4<f32> = vs_TEXCOORD3;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_277.y, x_277.z, x_277.x) * vec3<f32>(x_279.z, x_279.x, x_279.y)) + -(x_282));
  let x_285 : vec3<f32> = u_xlat4;
  let x_286 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_285 * vec3<f32>(x_286.w, x_286.w, x_286.w));
  let x_289 : vec2<f32> = u_xlat51;
  let x_291 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec2<f32> = u_xlat51;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + x_298);
  let x_300 : f32 = u_xlat75;
  let x_302 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_300, x_300, x_300) * x_302) + x_304);
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat75 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_309);
  let x_311 : f32 = u_xlat75;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_316 : f32 = vs_TEXCOORD1.y;
  let x_318 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat75 = (x_316 * x_318);
  let x_321 : f32 = x_45.unity_MatrixV[0i].z;
  let x_323 : f32 = vs_TEXCOORD1.x;
  let x_325 : f32 = u_xlat75;
  u_xlat75 = ((x_321 * x_323) + x_325);
  let x_328 : f32 = x_45.unity_MatrixV[2i].z;
  let x_330 : f32 = vs_TEXCOORD1.z;
  let x_332 : f32 = u_xlat75;
  u_xlat75 = ((x_328 * x_330) + x_332);
  let x_334 : f32 = u_xlat75;
  let x_337 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat75 = (x_334 + x_337);
  let x_339 : f32 = u_xlat75;
  let x_343 : f32 = x_45.x_ProjectionParams.y;
  u_xlat75 = (-(x_339) + -(x_343));
  let x_346 : f32 = u_xlat75;
  u_xlat75 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat75;
  let x_351 : f32 = x_45.unity_FogParams.x;
  u_xlat75 = (x_348 * x_351);
  let x_359 : vec2<f32> = vs_TEXCOORD8;
  let x_361 : f32 = x_45.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_359, x_361);
  u_xlat5 = x_362;
  let x_368 : vec2<f32> = vs_TEXCOORD8;
  let x_370 : f32 = x_45.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_368, x_370);
  let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat5;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat4;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat51.x = dot(x_382, vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_388 : f32 = u_xlat51.x;
  u_xlat51.x = (x_388 + 0.5f);
  let x_392 : vec2<f32> = u_xlat51;
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.x, x_392.x) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : f32 = u_xlat5.w;
  u_xlat51.x = max(x_400, 0.00009999999747378752f);
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec2<f32> = u_xlat51;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) / vec3<f32>(x_406.x, x_406.x, x_406.x));
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat1.x;
  u_xlat51.x = ((-(x_412) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_420 : f32 = u_xlat1.y;
  let x_422 : f32 = x_70.x_Smoothness;
  let x_425 : f32 = u_xlat51.x;
  u_xlat76 = ((x_420 * x_422) + -(x_425));
  let x_429 : vec2<f32> = u_xlat51;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_429.x, x_429.x, x_429.x) * vec3<f32>(x_431.y, x_431.z, x_431.w));
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_70.x_BaseColor;
  let x_442 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_437.x, x_437.y, x_437.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec2<f32> = u_xlat1;
  let x_447 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = ((vec3<f32>(x_445.x, x_445.x, x_445.x) * vec3<f32>(x_447.x, x_447.y, x_447.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_456 : f32 = u_xlat1.y;
  let x_459 : f32 = x_70.x_Smoothness;
  u_xlat1.x = ((-(x_456) * x_459) + 1.0f);
  let x_465 : f32 = u_xlat1.x;
  let x_467 : f32 = u_xlat1.x;
  u_xlat26.x = (x_465 * x_467);
  let x_471 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_471, 0.0078125f);
  let x_476 : f32 = u_xlat26.x;
  let x_478 : f32 = u_xlat26.x;
  u_xlat51.x = (x_476 * x_478);
  let x_481 : f32 = u_xlat76;
  u_xlat76 = (x_481 + 1.0f);
  let x_483 : f32 = u_xlat76;
  u_xlat76 = clamp(x_483, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat26.x;
  u_xlat79 = ((x_487 * 4.0f) + 2.0f);
  let x_492 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_492, 1.0f);
  let x_505 : f32 = x_503.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_505);
  let x_507 : bool = u_xlatb80;
  if (x_507) {
    let x_511 : f32 = x_503.x_MainLightShadowParams.y;
    u_xlatb80 = (x_511 == 1.0f);
    let x_513 : bool = u_xlatb80;
    if (x_513) {
      let x_517 : vec4<f32> = vs_TEXCOORD6;
      let x_520 : vec4<f32> = x_503.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) + x_520);
      let x_523 : vec4<f32> = u_xlat6;
      let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
      let x_526 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_539 : vec3<f32> = txVec0;
      let x_541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_539.xy, x_539.z);
      u_xlat7.x = x_541;
      let x_544 : vec4<f32> = u_xlat6;
      let x_545 : vec2<f32> = vec2<f32>(x_544.z, x_544.w);
      let x_547 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_545.x, x_545.y, x_547);
      let x_554 : vec3<f32> = txVec1;
      let x_556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_554.xy, x_554.z);
      u_xlat7.y = x_556;
      let x_558 : vec4<f32> = vs_TEXCOORD6;
      let x_561 : vec4<f32> = x_503.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y) + x_561);
      let x_564 : vec4<f32> = u_xlat6;
      let x_565 : vec2<f32> = vec2<f32>(x_564.x, x_564.y);
      let x_567 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_565.x, x_565.y, x_567);
      let x_574 : vec3<f32> = txVec2;
      let x_576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_574.xy, x_574.z);
      u_xlat7.z = x_576;
      let x_579 : vec4<f32> = u_xlat6;
      let x_580 : vec2<f32> = vec2<f32>(x_579.z, x_579.w);
      let x_582 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_580.x, x_580.y, x_582);
      let x_589 : vec3<f32> = txVec3;
      let x_591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_589.xy, x_589.z);
      u_xlat7.w = x_591;
      let x_594 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_594, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_601 : f32 = x_503.x_MainLightShadowParams.y;
      u_xlatb6 = (x_601 == 2.0f);
      let x_603 : bool = u_xlatb6;
      if (x_603) {
        let x_606 : vec4<f32> = vs_TEXCOORD6;
        let x_609 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_613 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_609.z, x_609.w)) + vec2<f32>(0.5f, 0.5f));
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        let x_618 : vec2<f32> = floor(vec2<f32>(x_616.x, x_616.y));
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec4<f32> = vs_TEXCOORD6;
        let x_625 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_622.x, x_622.y) * vec2<f32>(x_625.z, x_625.w)) + -(vec2<f32>(x_628.x, x_628.y)));
        let x_632 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_632.x, x_632.x, x_632.y, x_632.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_637 : vec4<f32> = u_xlat7;
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_637.x, x_637.x, x_637.z, x_637.z) * vec4<f32>(x_639.x, x_639.x, x_639.z, x_639.z));
        let x_642 : vec4<f32> = u_xlat8;
        let x_646 : vec2<f32> = (vec2<f32>(x_642.y, x_642.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_646.x, x_647.y, x_646.y, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_652 : vec2<f32> = u_xlat56;
        let x_654 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.z) * vec2<f32>(0.5f, 0.5f)) + -(x_652));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_658 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_658) + vec2<f32>(1.0f, 1.0f));
        let x_663 : vec2<f32> = u_xlat56;
        let x_665 : vec2<f32> = min(x_663, vec2<f32>(0.0f, 0.0f));
        let x_666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat9;
        let x_671 : vec4<f32> = u_xlat9;
        let x_674 : vec2<f32> = u_xlat58;
        let x_675 : vec2<f32> = ((-(vec2<f32>(x_668.x, x_668.y)) * vec2<f32>(x_671.x, x_671.y)) + x_674);
        let x_676 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_678, vec2<f32>(0.0f, 0.0f));
        let x_680 : vec2<f32> = u_xlat56;
        let x_682 : vec2<f32> = u_xlat56;
        let x_684 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_680) * x_682) + vec2<f32>(x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) + vec2<f32>(1.0f, 1.0f));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_692 + vec2<f32>(1.0f, 1.0f));
        let x_695 : vec4<f32> = u_xlat8;
        let x_699 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec2<f32> = u_xlat58;
        let x_703 : vec2<f32> = (x_702 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = (vec2<f32>(x_706.x, x_706.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_712 : vec2<f32> = u_xlat56;
        let x_713 : vec2<f32> = (x_712 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_716.y, x_716.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_720 : f32 = u_xlat9.x;
        u_xlat10.z = x_720;
        let x_723 : f32 = u_xlat56.x;
        u_xlat10.w = x_723;
        let x_726 : f32 = u_xlat11.x;
        u_xlat8.z = x_726;
        let x_729 : f32 = u_xlat7.x;
        u_xlat8.w = x_729;
        let x_732 : vec4<f32> = u_xlat8;
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_732.z, x_732.w, x_732.x, x_732.z) + vec4<f32>(x_734.z, x_734.w, x_734.x, x_734.z));
        let x_738 : f32 = u_xlat10.y;
        u_xlat9.z = x_738;
        let x_741 : f32 = u_xlat56.y;
        u_xlat9.w = x_741;
        let x_744 : f32 = u_xlat8.y;
        u_xlat11.z = x_744;
        let x_747 : f32 = u_xlat7.z;
        u_xlat11.w = x_747;
        let x_749 : vec4<f32> = u_xlat9;
        let x_751 : vec4<f32> = u_xlat11;
        let x_753 : vec3<f32> = (vec3<f32>(x_749.z, x_749.y, x_749.w) + vec3<f32>(x_751.z, x_751.y, x_751.w));
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec4<f32> = u_xlat12;
        let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.z, x_756.w) / vec3<f32>(x_758.z, x_758.w, x_758.y));
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_769 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat11;
        let x_773 : vec4<f32> = u_xlat7;
        let x_775 : vec3<f32> = (vec3<f32>(x_771.z, x_771.y, x_771.w) / vec3<f32>(x_773.x, x_773.y, x_773.z));
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat9;
        let x_780 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat8;
        let x_786 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_788 : vec3<f32> = (vec3<f32>(x_783.y, x_783.x, x_783.z) * vec3<f32>(x_786.x, x_786.x, x_786.x));
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat9;
        let x_794 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_796 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794.y, x_794.y, x_794.y));
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_800 : f32 = u_xlat9.x;
        u_xlat8.w = x_800;
        let x_802 : vec4<f32> = u_xlat6;
        let x_805 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y) * vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) + vec4<f32>(x_808.y, x_808.w, x_808.x, x_808.w));
        let x_811 : vec4<f32> = u_xlat6;
        let x_814 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_814.x, x_814.y)) + vec2<f32>(x_817.z, x_817.w));
        let x_821 : f32 = u_xlat8.y;
        u_xlat9.w = x_821;
        let x_823 : vec4<f32> = u_xlat9;
        let x_824 : vec2<f32> = vec2<f32>(x_823.y, x_823.z);
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_825.x, x_824.x, x_825.z, x_824.y);
        let x_827 : vec4<f32> = u_xlat6;
        let x_830 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y) * vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y)) + vec4<f32>(x_833.x, x_833.y, x_833.z, x_833.y));
        let x_836 : vec4<f32> = u_xlat6;
        let x_839 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_842 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_836.x, x_836.y, x_836.x, x_836.y) * vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y)) + vec4<f32>(x_842.w, x_842.y, x_842.w, x_842.z));
        let x_845 : vec4<f32> = u_xlat6;
        let x_848 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) * vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y)) + vec4<f32>(x_851.x, x_851.w, x_851.z, x_851.w));
        let x_855 : vec4<f32> = u_xlat7;
        let x_857 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_855.x, x_855.x, x_855.x, x_855.y) * vec4<f32>(x_857.z, x_857.w, x_857.y, x_857.z));
        let x_861 : vec4<f32> = u_xlat7;
        let x_863 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_861.y, x_861.y, x_861.z, x_861.z) * x_863);
        let x_866 : f32 = u_xlat7.z;
        let x_868 : f32 = u_xlat12.y;
        u_xlat6.x = (x_866 * x_868);
        let x_872 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = vec2<f32>(x_872.x, x_872.y);
        let x_875 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_883 : vec3<f32> = txVec4;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat31.x = x_885;
        let x_888 : vec4<f32> = u_xlat10;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec5;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat7.x = x_900;
        let x_903 : f32 = u_xlat7.x;
        let x_905 : f32 = u_xlat13.y;
        u_xlat7.x = (x_903 * x_905);
        let x_909 : f32 = u_xlat13.x;
        let x_911 : f32 = u_xlat31.x;
        let x_914 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_909 * x_911) + x_914);
        let x_918 : vec2<f32> = u_xlat56;
        let x_920 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec6;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_927.xy, x_927.z);
        u_xlat56.x = x_929;
        let x_932 : f32 = u_xlat13.z;
        let x_934 : f32 = u_xlat56.x;
        let x_937 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_932 * x_934) + x_937);
        let x_941 : vec4<f32> = u_xlat9;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec7;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat56.x = x_953;
        let x_956 : f32 = u_xlat13.w;
        let x_958 : f32 = u_xlat56.x;
        let x_961 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_956 * x_958) + x_961);
        let x_965 : vec4<f32> = u_xlat11;
        let x_966 : vec2<f32> = vec2<f32>(x_965.x, x_965.y);
        let x_968 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec8;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
        u_xlat56.x = x_977;
        let x_980 : f32 = u_xlat14.x;
        let x_982 : f32 = u_xlat56.x;
        let x_985 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_980 * x_982) + x_985);
        let x_989 : vec4<f32> = u_xlat11;
        let x_990 : vec2<f32> = vec2<f32>(x_989.z, x_989.w);
        let x_992 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec9;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_999.xy, x_999.z);
        u_xlat56.x = x_1001;
        let x_1004 : f32 = u_xlat14.y;
        let x_1006 : f32 = u_xlat56.x;
        let x_1009 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1004 * x_1006) + x_1009);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.z, x_1013.w);
        let x_1016 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec10;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1023.xy, x_1023.z);
        u_xlat56.x = x_1025;
        let x_1028 : f32 = u_xlat14.z;
        let x_1030 : f32 = u_xlat56.x;
        let x_1033 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1028 * x_1030) + x_1033);
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
        let x_1040 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec11;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
        u_xlat56.x = x_1049;
        let x_1052 : f32 = u_xlat14.w;
        let x_1054 : f32 = u_xlat56.x;
        let x_1057 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1052 * x_1054) + x_1057);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec12;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat56.x = x_1073;
        let x_1076 : f32 = u_xlat6.x;
        let x_1078 : f32 = u_xlat56.x;
        let x_1081 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1076 * x_1078) + x_1081);
      } else {
        let x_1084 : vec4<f32> = vs_TEXCOORD6;
        let x_1087 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1095 : vec2<f32> = floor(vec2<f32>(x_1093.x, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = vs_TEXCOORD6;
        let x_1101 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.z, x_1101.w)) + -(vec2<f32>(x_1104.x, x_1104.y)));
        let x_1108 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.y, x_1108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat7;
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1111.x, x_1111.x, x_1111.z, x_1111.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1120 : vec2<f32> = (vec2<f32>(x_1116.y, x_1116.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1126 : vec2<f32> = u_xlat56;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1126));
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat56;
        let x_1133 : vec2<f32> = (-(x_1131) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1136, vec2<f32>(0.0f, 0.0f));
        let x_1138 : vec2<f32> = u_xlat58;
        let x_1140 : vec2<f32> = u_xlat58;
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1144 : vec2<f32> = ((-(x_1138) * x_1140) + vec2<f32>(x_1142.x, x_1142.y));
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1147, vec2<f32>(0.0f, 0.0f));
        let x_1150 : vec2<f32> = u_xlat58;
        let x_1152 : vec2<f32> = u_xlat58;
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1156 : vec2<f32> = ((-(x_1150) * x_1152) + vec2<f32>(x_1154.y, x_1154.w));
        let x_1157 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1156.x, x_1157.y, x_1156.y);
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1159.x, x_1159.y) + vec2<f32>(2.0f, 2.0f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec3<f32> = u_xlat32;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.z) + vec2<f32>(2.0f, 2.0f));
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1166.x, x_1167.z, x_1166.y);
        let x_1170 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1170 * 0.08163200318813323975f);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1174.z, x_1174.x, x_1174.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat11.y;
        u_xlat10.x = x_1187;
        let x_1189 : vec2<f32> = u_xlat56;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1189.x, x_1189.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1196.x, x_1197.z, x_1196.y);
        let x_1199 : vec2<f32> = u_xlat56;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1199.x, x_1199.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat7.x;
        u_xlat8.y = x_1207;
        let x_1210 : f32 = u_xlat9.y;
        u_xlat8.w = x_1210;
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1212 + x_1213);
        let x_1215 : vec2<f32> = u_xlat56;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1215.y, x_1215.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec2<f32> = u_xlat56;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1228 : f32 = u_xlat7.y;
        u_xlat9.y = x_1228;
        let x_1230 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1230 + x_1231);
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1233 / x_1234);
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1236 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1243 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1242 / x_1243);
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1245 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1247.w, x_1247.x, x_1247.y, x_1247.z) * vec4<f32>(x_1250.x, x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1253.x, x_1253.w, x_1253.y, x_1253.z) * vec4<f32>(x_1256.y, x_1256.y, x_1256.y, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec3<f32> = vec3<f32>(x_1259.y, x_1259.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1260.x, x_1261.y, x_1260.y, x_1260.z);
        let x_1264 : f32 = u_xlat9.x;
        u_xlat11.y = x_1264;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.w, x_1281.y));
        let x_1285 : f32 = u_xlat11.y;
        u_xlat8.y = x_1285;
        let x_1288 : f32 = u_xlat9.z;
        u_xlat11.y = x_1288;
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat6;
        let x_1302 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1308 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.y;
        u_xlat8.z = x_1311;
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.z));
        let x_1324 : f32 = u_xlat9.w;
        u_xlat11.y = x_1324;
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1330 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y) * vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y)) + vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1333.y));
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat11.y;
        u_xlat8.w = x_1347;
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.x, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1360 : vec3<f32> = vec3<f32>(x_1359.x, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1360.x, x_1361.y, x_1360.y, x_1360.z);
        let x_1363 : vec4<f32> = u_xlat6;
        let x_1366 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.y));
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat8.x;
        u_xlat9.x = x_1383;
        let x_1385 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1393 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.y));
        let x_1394 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.x) * x_1399);
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1404);
        let x_1407 : vec4<f32> = u_xlat7;
        let x_1409 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1407.z, x_1407.z, x_1407.z, x_1407.z) * x_1409);
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1413 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1411.w, x_1411.w, x_1411.w, x_1411.w) * x_1413);
        let x_1416 : vec4<f32> = u_xlat12;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec13;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat8.x = x_1428;
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1442 : vec3<f32> = txVec14;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat83 = x_1444;
        let x_1445 : f32 = u_xlat83;
        let x_1447 : f32 = u_xlat17.y;
        u_xlat83 = (x_1445 * x_1447);
        let x_1450 : f32 = u_xlat17.x;
        let x_1452 : f32 = u_xlat8.x;
        let x_1454 : f32 = u_xlat83;
        u_xlat8.x = ((x_1450 * x_1452) + x_1454);
        let x_1458 : vec2<f32> = u_xlat56;
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec15;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat56.x = x_1469;
        let x_1472 : f32 = u_xlat17.z;
        let x_1474 : f32 = u_xlat56.x;
        let x_1477 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1472 * x_1474) + x_1477);
        let x_1481 : vec4<f32> = u_xlat15;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1492 : vec3<f32> = txVec16;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat81 = x_1494;
        let x_1496 : f32 = u_xlat17.w;
        let x_1497 : f32 = u_xlat81;
        let x_1500 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat13;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec17;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat81 = x_1516;
        let x_1518 : f32 = u_xlat18.x;
        let x_1519 : f32 = u_xlat81;
        let x_1522 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat13;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec18;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat81 = x_1538;
        let x_1540 : f32 = u_xlat18.y;
        let x_1541 : f32 = u_xlat81;
        let x_1544 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1540 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat14;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.y);
        let x_1551 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec19;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat81 = x_1560;
        let x_1562 : f32 = u_xlat18.z;
        let x_1563 : f32 = u_xlat81;
        let x_1566 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat15;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.z, x_1570.w);
        let x_1573 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec20;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat81 = x_1582;
        let x_1584 : f32 = u_xlat18.w;
        let x_1585 : f32 = u_xlat81;
        let x_1588 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec4<f32> = u_xlat16;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
        let x_1595 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec21;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
        u_xlat81 = x_1604;
        let x_1606 : f32 = u_xlat19.x;
        let x_1607 : f32 = u_xlat81;
        let x_1610 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec4<f32> = u_xlat16;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.z, x_1614.w);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec22;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat81 = x_1626;
        let x_1628 : f32 = u_xlat19.y;
        let x_1629 : f32 = u_xlat81;
        let x_1632 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec2<f32> = u_xlat33;
        let x_1638 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec23;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat81 = x_1647;
        let x_1649 : f32 = u_xlat19.z;
        let x_1650 : f32 = u_xlat81;
        let x_1653 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1649 * x_1650) + x_1653);
        let x_1657 : vec2<f32> = u_xlat64;
        let x_1659 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec24;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat81 = x_1668;
        let x_1670 : f32 = u_xlat19.w;
        let x_1671 : f32 = u_xlat81;
        let x_1674 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1670 * x_1671) + x_1674);
        let x_1678 : vec4<f32> = u_xlat11;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec25;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat81 = x_1690;
        let x_1692 : f32 = u_xlat7.x;
        let x_1693 : f32 = u_xlat81;
        let x_1696 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1692 * x_1693) + x_1696);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec26;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat81 = x_1712;
        let x_1714 : f32 = u_xlat7.y;
        let x_1715 : f32 = u_xlat81;
        let x_1718 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1714 * x_1715) + x_1718);
        let x_1722 : vec2<f32> = u_xlat59;
        let x_1724 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec27;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat81 = x_1733;
        let x_1735 : f32 = u_xlat7.z;
        let x_1736 : f32 = u_xlat81;
        let x_1739 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1735 * x_1736) + x_1739);
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.x, x_1743.y);
        let x_1746 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec28;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat6.x = x_1755;
        let x_1758 : f32 = u_xlat7.w;
        let x_1760 : f32 = u_xlat6.x;
        let x_1763 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1758 * x_1760) + x_1763);
      }
    }
  } else {
    let x_1767 : vec4<f32> = vs_TEXCOORD6;
    let x_1768 : vec2<f32> = vec2<f32>(x_1767.x, x_1767.y);
    let x_1770 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1768.x, x_1768.y, x_1770);
    let x_1777 : vec3<f32> = txVec29;
    let x_1779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1777.xy, x_1777.z);
    u_xlat80 = x_1779;
  }
  let x_1781 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1781) + 1.0f);
  let x_1785 : f32 = u_xlat80;
  let x_1787 : f32 = x_503.x_MainLightShadowParams.x;
  let x_1790 : f32 = u_xlat6.x;
  u_xlat80 = ((x_1785 * x_1787) + x_1790);
  let x_1793 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1793);
  let x_1797 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_1797 >= 1.0f);
  let x_1799 : bool = u_xlatb31;
  let x_1800 : bool = u_xlatb6;
  u_xlatb6 = (x_1799 | x_1800);
  let x_1802 : bool = u_xlatb6;
  let x_1803 : f32 = u_xlat80;
  u_xlat80 = select(x_1803, 1.0f, x_1802);
  let x_1805 : vec3<f32> = vs_TEXCOORD1;
  let x_1807 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1809 : vec3<f32> = (x_1805 + -(x_1807));
  let x_1810 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
  let x_1812 : vec4<f32> = u_xlat6;
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1812.x, x_1812.y, x_1812.z), vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1819 : f32 = u_xlat6.x;
  let x_1821 : f32 = x_503.x_MainLightShadowParams.z;
  let x_1824 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_1819 * x_1821) + x_1824);
  let x_1828 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_1828, 0.0f, 1.0f);
  let x_1831 : f32 = u_xlat80;
  u_xlat56.x = (-(x_1831) + 1.0f);
  let x_1836 : f32 = u_xlat31.x;
  let x_1838 : f32 = u_xlat56.x;
  let x_1840 : f32 = u_xlat80;
  u_xlat80 = ((x_1836 * x_1838) + x_1840);
  let x_1842 : vec3<f32> = u_xlat28;
  let x_1844 : vec3<f32> = u_xlat4;
  u_xlat31.x = dot(-(x_1842), x_1844);
  let x_1848 : f32 = u_xlat31.x;
  let x_1850 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1848 + x_1850);
  let x_1853 : vec3<f32> = u_xlat4;
  let x_1854 : vec3<f32> = u_xlat31;
  let x_1858 : vec3<f32> = u_xlat28;
  u_xlat31 = ((x_1853 * -(vec3<f32>(x_1854.x, x_1854.x, x_1854.x))) + -(x_1858));
  let x_1861 : vec3<f32> = u_xlat4;
  let x_1862 : vec3<f32> = u_xlat28;
  u_xlat7.x = dot(x_1861, x_1862);
  let x_1866 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1866, 0.0f, 1.0f);
  let x_1870 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_1870) + 1.0f);
  let x_1875 : f32 = u_xlat7.x;
  let x_1877 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1875 * x_1877);
  let x_1881 : f32 = u_xlat7.x;
  let x_1883 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1881 * x_1883);
  let x_1887 : f32 = u_xlat1.x;
  u_xlat32.x = ((-(x_1887) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1895 : f32 = u_xlat1.x;
  let x_1897 : f32 = u_xlat32.x;
  u_xlat1.x = (x_1895 * x_1897);
  let x_1901 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1901 * 6.0f);
  let x_1913 : vec3<f32> = u_xlat31;
  let x_1915 : f32 = u_xlat1.x;
  let x_1916 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1913, x_1915);
  u_xlat8 = x_1916;
  let x_1918 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1918 + -1.0f);
  let x_1922 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_1924 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1922 * x_1924) + 1.0f);
  let x_1929 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1929, 0.0f);
  let x_1933 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1933);
  let x_1937 : f32 = u_xlat1.x;
  let x_1939 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1937 * x_1939);
  let x_1943 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1943);
  let x_1947 : f32 = u_xlat1.x;
  let x_1949 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1947 * x_1949);
  let x_1952 : vec4<f32> = u_xlat8;
  let x_1954 : vec2<f32> = u_xlat1;
  u_xlat31 = (vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * vec3<f32>(x_1954.x, x_1954.x, x_1954.x));
  let x_1957 : vec3<f32> = u_xlat26;
  let x_1959 : vec3<f32> = u_xlat26;
  u_xlat1 = ((vec2<f32>(x_1957.x, x_1957.x) * vec2<f32>(x_1959.x, x_1959.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1965 : f32 = u_xlat1.y;
  u_xlat26.x = (1.0f / x_1965);
  let x_1968 : vec4<f32> = u_xlat0;
  let x_1971 : f32 = u_xlat76;
  u_xlat32 = (-(vec3<f32>(x_1968.x, x_1968.y, x_1968.z)) + vec3<f32>(x_1971, x_1971, x_1971));
  let x_1974 : vec4<f32> = u_xlat7;
  let x_1976 : vec3<f32> = u_xlat32;
  let x_1978 : vec4<f32> = u_xlat0;
  let x_1980 : vec3<f32> = ((vec3<f32>(x_1974.x, x_1974.x, x_1974.x) * x_1976) + vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec3<f32> = u_xlat26;
  let x_1985 : vec4<f32> = u_xlat7;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.x, x_1983.x) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec3<f32> = u_xlat31;
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_1990 * vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : vec4<f32> = u_xlat5;
  let x_1996 : vec3<f32> = u_xlat27;
  let x_1998 : vec3<f32> = u_xlat31;
  let x_1999 : vec3<f32> = ((vec3<f32>(x_1994.x, x_1994.y, x_1994.z) * x_1996) + x_1998);
  let x_2000 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2002 : f32 = u_xlat80;
  let x_2004 : f32 = x_185.unity_LightData.z;
  u_xlat26.x = (x_2002 * x_2004);
  let x_2007 : vec3<f32> = u_xlat4;
  let x_2009 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat76 = dot(x_2007, vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2012, 0.0f, 1.0f);
  let x_2014 : f32 = u_xlat76;
  let x_2016 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2014 * x_2016);
  let x_2019 : vec3<f32> = u_xlat26;
  let x_2022 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2019.x, x_2019.x, x_2019.x) * vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec3<f32> = u_xlat28;
  let x_2027 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2029 : vec3<f32> = (x_2025 + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec4<f32> = u_xlat7;
  let x_2034 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2032.x, x_2032.y, x_2032.z), vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2039 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_2039, 1.17549435e-38f);
  let x_2044 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_2044);
  let x_2047 : vec3<f32> = u_xlat26;
  let x_2049 : vec4<f32> = u_xlat7;
  let x_2051 : vec3<f32> = (vec3<f32>(x_2047.x, x_2047.x, x_2047.x) * vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
  let x_2054 : vec3<f32> = u_xlat4;
  let x_2055 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(x_2054, vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2060 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2060, 0.0f, 1.0f);
  let x_2064 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2066 : vec4<f32> = u_xlat7;
  u_xlat26.z = dot(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2071 : f32 = u_xlat26.z;
  u_xlat26.z = clamp(x_2071, 0.0f, 1.0f);
  let x_2074 : vec3<f32> = u_xlat26;
  let x_2076 : vec3<f32> = u_xlat26;
  let x_2078 : vec2<f32> = (vec2<f32>(x_2074.x, x_2074.z) * vec2<f32>(x_2076.x, x_2076.z));
  let x_2079 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_2078.x, x_2079.y, x_2078.y);
  let x_2082 : f32 = u_xlat26.x;
  let x_2084 : f32 = u_xlat1.x;
  u_xlat26.x = ((x_2082 * x_2084) + 1.00001001358032226562f);
  let x_2090 : f32 = u_xlat26.x;
  let x_2092 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2090 * x_2092);
  let x_2096 : f32 = u_xlat26.z;
  u_xlat76 = max(x_2096, 0.10000000149011611938f);
  let x_2099 : f32 = u_xlat76;
  let x_2101 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2099 * x_2101);
  let x_2104 : f32 = u_xlat79;
  let x_2106 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2104 * x_2106);
  let x_2110 : f32 = u_xlat51.x;
  let x_2112 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2110 / x_2112);
  let x_2115 : vec4<f32> = u_xlat0;
  let x_2117 : vec3<f32> = u_xlat26;
  let x_2120 : vec3<f32> = u_xlat27;
  let x_2121 : vec3<f32> = ((vec3<f32>(x_2115.x, x_2115.y, x_2115.z) * vec3<f32>(x_2117.x, x_2117.x, x_2117.x)) + x_2120);
  let x_2122 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
  let x_2124 : vec3<f32> = u_xlat31;
  let x_2125 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2124 * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2129 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2131 : f32 = x_185.unity_LightData.y;
  u_xlat26.x = min(x_2129, x_2131);
  let x_2137 : f32 = u_xlat26.x;
  u_xlatu26 = bitcast<u32>(i32(x_2137));
  let x_2141 : f32 = u_xlat6.x;
  let x_2144 : f32 = x_503.x_AdditionalShadowFadeParams.x;
  let x_2147 : f32 = x_503.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2141 * x_2144) + x_2147);
  let x_2149 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2149, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2161 : u32 = u_xlatu_loop_1;
    let x_2162 : u32 = u_xlatu26;
    if ((x_2161 < x_2162)) {
    } else {
      break;
    }
    let x_2165 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2165 >> 2u);
    let x_2169 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2169 & 3u));
    let x_2172 : u32 = u_xlatu6;
    let x_2175 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2172)];
    let x_2185 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2190 : vec4<u32> = indexable[x_2185];
    u_xlat6.x = dot(x_2175, bitcast<vec4<f32>>(x_2190));
    let x_2196 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2196);
    let x_2198 : vec3<f32> = vs_TEXCOORD1;
    let x_2209 : i32 = u_xlati6;
    let x_2211 : vec4<f32> = x_2208.x_AdditionalLightsPosition[x_2209];
    let x_2214 : i32 = u_xlati6;
    let x_2216 : vec4<f32> = x_2208.x_AdditionalLightsPosition[x_2214];
    let x_2218 : vec3<f32> = ((-(x_2198) * vec3<f32>(x_2211.w, x_2211.w, x_2211.w)) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
    let x_2222 : vec4<f32> = u_xlat8;
    let x_2224 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2222.x, x_2222.y, x_2222.z), vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
    let x_2227 : f32 = u_xlat82;
    u_xlat82 = max(x_2227, 0.00006103515625f);
    let x_2230 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2230);
    let x_2232 : f32 = u_xlat83;
    let x_2234 : vec4<f32> = u_xlat8;
    let x_2236 : vec3<f32> = (vec3<f32>(x_2232, x_2232, x_2232) * vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
    let x_2237 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
    let x_2240 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2240);
    let x_2242 : f32 = u_xlat82;
    let x_2243 : i32 = u_xlati6;
    let x_2245 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2243].x;
    u_xlat82 = (x_2242 * x_2245);
    let x_2247 : f32 = u_xlat82;
    let x_2249 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2247) * x_2249) + 1.0f);
    let x_2252 : f32 = u_xlat82;
    u_xlat82 = max(x_2252, 0.0f);
    let x_2254 : f32 = u_xlat82;
    let x_2255 : f32 = u_xlat82;
    u_xlat82 = (x_2254 * x_2255);
    let x_2257 : f32 = u_xlat82;
    let x_2258 : f32 = u_xlat84;
    u_xlat82 = (x_2257 * x_2258);
    let x_2260 : i32 = u_xlati6;
    let x_2262 : vec4<f32> = x_2208.x_AdditionalLightsSpotDir[x_2260];
    let x_2264 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2262.x, x_2262.y, x_2262.z), vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
    let x_2267 : f32 = u_xlat84;
    let x_2268 : i32 = u_xlati6;
    let x_2270 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2268].z;
    let x_2272 : i32 = u_xlati6;
    let x_2274 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2272].w;
    u_xlat84 = ((x_2267 * x_2270) + x_2274);
    let x_2276 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2276, 0.0f, 1.0f);
    let x_2278 : f32 = u_xlat84;
    let x_2279 : f32 = u_xlat84;
    u_xlat84 = (x_2278 * x_2279);
    let x_2281 : f32 = u_xlat82;
    let x_2282 : f32 = u_xlat84;
    u_xlat82 = (x_2281 * x_2282);
    let x_2286 : i32 = u_xlati6;
    let x_2288 : f32 = x_503.x_AdditionalShadowParams[x_2286].w;
    u_xlati84 = i32(x_2288);
    let x_2293 : i32 = u_xlati84;
    u_xlatb10.x = (x_2293 >= 0i);
    let x_2297 : bool = u_xlatb10.x;
    if (x_2297) {
      let x_2301 : i32 = u_xlati6;
      let x_2303 : f32 = x_503.x_AdditionalShadowParams[x_2301].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2303, x_2303, x_2303, x_2303))));
      let x_2310 : bool = u_xlatb10.x;
      if (x_2310) {
        let x_2313 : vec4<f32> = u_xlat9;
        let x_2316 : vec4<f32> = u_xlat9;
        let x_2319 : vec4<bool> = (abs(vec4<f32>(x_2313.z, x_2313.z, x_2313.y, x_2313.z)) >= abs(vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.x)));
        u_xlatb10 = vec3<bool>(x_2319.x, x_2319.y, x_2319.z);
        let x_2322 : bool = u_xlatb10.y;
        let x_2324 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2322 & x_2324);
        let x_2328 : vec4<f32> = u_xlat9;
        let x_2331 : vec4<bool> = (-(vec4<f32>(x_2328.z, x_2328.y, x_2328.x, x_2328.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2331.x, x_2331.y, x_2331.z);
        let x_2335 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2335);
        let x_2340 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2340);
        let x_2345 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2345);
        let x_2350 : bool = u_xlatb10.z;
        if (x_2350) {
          let x_2355 : f32 = u_xlat35.z;
          x_2351 = x_2355;
        } else {
          let x_2358 : f32 = u_xlat11.x;
          x_2351 = x_2358;
        }
        let x_2359 : f32 = x_2351;
        u_xlat60 = x_2359;
        let x_2361 : bool = u_xlatb10.x;
        if (x_2361) {
          let x_2366 : f32 = u_xlat35.x;
          x_2362 = x_2366;
        } else {
          let x_2368 : f32 = u_xlat60;
          x_2362 = x_2368;
        }
        let x_2369 : f32 = x_2362;
        u_xlat10.x = x_2369;
        let x_2371 : i32 = u_xlati6;
        let x_2373 : f32 = x_503.x_AdditionalShadowParams[x_2371].w;
        u_xlat35.x = trunc(x_2373);
        let x_2377 : f32 = u_xlat10.x;
        let x_2379 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2377 + x_2379);
        let x_2383 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2383);
      }
      let x_2385 : i32 = u_xlati84;
      u_xlati84 = (x_2385 << bitcast<u32>(2i));
      let x_2387 : vec3<f32> = vs_TEXCOORD1;
      let x_2390 : i32 = u_xlati84;
      let x_2393 : i32 = u_xlati84;
      let x_2397 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2390 + 1i) / 4i)][((x_2393 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2387.y, x_2387.y, x_2387.y, x_2387.y) * x_2397);
      let x_2399 : i32 = u_xlati84;
      let x_2401 : i32 = u_xlati84;
      let x_2404 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[(x_2399 / 4i)][(x_2401 % 4i)];
      let x_2405 : vec3<f32> = vs_TEXCOORD1;
      let x_2408 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2404 * vec4<f32>(x_2405.x, x_2405.x, x_2405.x, x_2405.x)) + x_2408);
      let x_2410 : i32 = u_xlati84;
      let x_2413 : i32 = u_xlati84;
      let x_2417 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2410 + 2i) / 4i)][((x_2413 + 2i) % 4i)];
      let x_2418 : vec3<f32> = vs_TEXCOORD1;
      let x_2421 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2417 * vec4<f32>(x_2418.z, x_2418.z, x_2418.z, x_2418.z)) + x_2421);
      let x_2423 : vec4<f32> = u_xlat10;
      let x_2424 : i32 = u_xlati84;
      let x_2427 : i32 = u_xlati84;
      let x_2431 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2424 + 3i) / 4i)][((x_2427 + 3i) % 4i)];
      u_xlat10 = (x_2423 + x_2431);
      let x_2433 : vec4<f32> = u_xlat10;
      let x_2435 : vec4<f32> = u_xlat10;
      let x_2437 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) / vec3<f32>(x_2435.w, x_2435.w, x_2435.w));
      let x_2438 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
      let x_2441 : i32 = u_xlati6;
      let x_2443 : f32 = x_503.x_AdditionalShadowParams[x_2441].y;
      u_xlatb84 = (0.0f < x_2443);
      let x_2445 : bool = u_xlatb84;
      if (x_2445) {
        let x_2448 : i32 = u_xlati6;
        let x_2450 : f32 = x_503.x_AdditionalShadowParams[x_2448].y;
        u_xlatb84 = (1.0f == x_2450);
        let x_2452 : bool = u_xlatb84;
        if (x_2452) {
          let x_2455 : vec4<f32> = u_xlat10;
          let x_2458 : vec4<f32> = x_503.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2455.x, x_2455.y, x_2455.x, x_2455.y) + x_2458);
          let x_2461 : vec4<f32> = u_xlat11;
          let x_2462 : vec2<f32> = vec2<f32>(x_2461.x, x_2461.y);
          let x_2464 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
          let x_2472 : vec3<f32> = txVec30;
          let x_2474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
          u_xlat12.x = x_2474;
          let x_2477 : vec4<f32> = u_xlat11;
          let x_2478 : vec2<f32> = vec2<f32>(x_2477.z, x_2477.w);
          let x_2480 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
          let x_2487 : vec3<f32> = txVec31;
          let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
          u_xlat12.y = x_2489;
          let x_2491 : vec4<f32> = u_xlat10;
          let x_2495 : vec4<f32> = x_503.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2491.x, x_2491.y, x_2491.x, x_2491.y) + x_2495);
          let x_2498 : vec4<f32> = u_xlat11;
          let x_2499 : vec2<f32> = vec2<f32>(x_2498.x, x_2498.y);
          let x_2501 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2499.x, x_2499.y, x_2501);
          let x_2508 : vec3<f32> = txVec32;
          let x_2510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2508.xy, x_2508.z);
          u_xlat12.z = x_2510;
          let x_2513 : vec4<f32> = u_xlat11;
          let x_2514 : vec2<f32> = vec2<f32>(x_2513.z, x_2513.w);
          let x_2516 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2514.x, x_2514.y, x_2516);
          let x_2523 : vec3<f32> = txVec33;
          let x_2525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2523.xy, x_2523.z);
          u_xlat12.w = x_2525;
          let x_2527 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2527, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2531 : i32 = u_xlati6;
          let x_2533 : f32 = x_503.x_AdditionalShadowParams[x_2531].y;
          u_xlatb85 = (2.0f == x_2533);
          let x_2535 : bool = u_xlatb85;
          if (x_2535) {
            let x_2538 : vec4<f32> = u_xlat10;
            let x_2542 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2545 : vec2<f32> = ((vec2<f32>(x_2538.x, x_2538.y) * vec2<f32>(x_2542.z, x_2542.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2546 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2550 : vec2<f32> = floor(vec2<f32>(x_2548.x, x_2548.y));
            let x_2551 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
            let x_2554 : vec4<f32> = u_xlat10;
            let x_2557 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2560 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2554.x, x_2554.y) * vec2<f32>(x_2557.z, x_2557.w)) + -(vec2<f32>(x_2560.x, x_2560.y)));
            let x_2564 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2564.x, x_2564.x, x_2564.y, x_2564.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2567 : vec4<f32> = u_xlat12;
            let x_2569 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2567.x, x_2567.x, x_2567.z, x_2567.z) * vec4<f32>(x_2569.x, x_2569.x, x_2569.z, x_2569.z));
            let x_2572 : vec4<f32> = u_xlat13;
            let x_2574 : vec2<f32> = (vec2<f32>(x_2572.y, x_2572.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2575 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2574.x, x_2575.y, x_2574.y, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat13;
            let x_2580 : vec2<f32> = u_xlat61;
            let x_2582 : vec2<f32> = ((vec2<f32>(x_2577.x, x_2577.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2580));
            let x_2583 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
            let x_2586 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2586) + vec2<f32>(1.0f, 1.0f));
            let x_2589 : vec2<f32> = u_xlat61;
            let x_2590 : vec2<f32> = min(x_2589, vec2<f32>(0.0f, 0.0f));
            let x_2591 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat14;
            let x_2596 : vec4<f32> = u_xlat14;
            let x_2599 : vec2<f32> = u_xlat63;
            let x_2600 : vec2<f32> = ((-(vec2<f32>(x_2593.x, x_2593.y)) * vec2<f32>(x_2596.x, x_2596.y)) + x_2599);
            let x_2601 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2603, vec2<f32>(0.0f, 0.0f));
            let x_2605 : vec2<f32> = u_xlat61;
            let x_2607 : vec2<f32> = u_xlat61;
            let x_2609 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2605) * x_2607) + vec2<f32>(x_2609.y, x_2609.w));
            let x_2612 : vec4<f32> = u_xlat14;
            let x_2614 : vec2<f32> = (vec2<f32>(x_2612.x, x_2612.y) + vec2<f32>(1.0f, 1.0f));
            let x_2615 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
            let x_2617 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2617 + vec2<f32>(1.0f, 1.0f));
            let x_2619 : vec4<f32> = u_xlat13;
            let x_2621 : vec2<f32> = (vec2<f32>(x_2619.x, x_2619.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2622 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
            let x_2624 : vec2<f32> = u_xlat63;
            let x_2625 : vec2<f32> = (x_2624 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2626 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2625.x, x_2625.y, x_2626.z, x_2626.w);
            let x_2628 : vec4<f32> = u_xlat14;
            let x_2630 : vec2<f32> = (vec2<f32>(x_2628.x, x_2628.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2631 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
            let x_2633 : vec2<f32> = u_xlat61;
            let x_2634 : vec2<f32> = (x_2633 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2635 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2634.x, x_2634.y, x_2635.z, x_2635.w);
            let x_2637 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2637.y, x_2637.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2641 : f32 = u_xlat14.x;
            u_xlat15.z = x_2641;
            let x_2644 : f32 = u_xlat61.x;
            u_xlat15.w = x_2644;
            let x_2647 : f32 = u_xlat16.x;
            u_xlat13.z = x_2647;
            let x_2650 : f32 = u_xlat12.x;
            u_xlat13.w = x_2650;
            let x_2652 : vec4<f32> = u_xlat13;
            let x_2654 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2652.z, x_2652.w, x_2652.x, x_2652.z) + vec4<f32>(x_2654.z, x_2654.w, x_2654.x, x_2654.z));
            let x_2658 : f32 = u_xlat15.y;
            u_xlat14.z = x_2658;
            let x_2661 : f32 = u_xlat61.y;
            u_xlat14.w = x_2661;
            let x_2664 : f32 = u_xlat13.y;
            u_xlat16.z = x_2664;
            let x_2667 : f32 = u_xlat12.z;
            u_xlat16.w = x_2667;
            let x_2669 : vec4<f32> = u_xlat14;
            let x_2671 : vec4<f32> = u_xlat16;
            let x_2673 : vec3<f32> = (vec3<f32>(x_2669.z, x_2669.y, x_2669.w) + vec3<f32>(x_2671.z, x_2671.y, x_2671.w));
            let x_2674 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
            let x_2676 : vec4<f32> = u_xlat13;
            let x_2678 : vec4<f32> = u_xlat17;
            let x_2680 : vec3<f32> = (vec3<f32>(x_2676.x, x_2676.z, x_2676.w) / vec3<f32>(x_2678.z, x_2678.w, x_2678.y));
            let x_2681 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat13;
            let x_2685 : vec3<f32> = (vec3<f32>(x_2683.x, x_2683.y, x_2683.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat16;
            let x_2690 : vec4<f32> = u_xlat12;
            let x_2692 : vec3<f32> = (vec3<f32>(x_2688.z, x_2688.y, x_2688.w) / vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
            let x_2693 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
            let x_2695 : vec4<f32> = u_xlat14;
            let x_2697 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2698 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat13;
            let x_2703 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2705 : vec3<f32> = (vec3<f32>(x_2700.y, x_2700.x, x_2700.z) * vec3<f32>(x_2703.x, x_2703.x, x_2703.x));
            let x_2706 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
            let x_2708 : vec4<f32> = u_xlat14;
            let x_2711 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2713 : vec3<f32> = (vec3<f32>(x_2708.x, x_2708.y, x_2708.z) * vec3<f32>(x_2711.y, x_2711.y, x_2711.y));
            let x_2714 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
            let x_2717 : f32 = u_xlat14.x;
            u_xlat13.w = x_2717;
            let x_2719 : vec4<f32> = u_xlat11;
            let x_2722 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2725 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.y) * vec4<f32>(x_2722.x, x_2722.y, x_2722.x, x_2722.y)) + vec4<f32>(x_2725.y, x_2725.w, x_2725.x, x_2725.w));
            let x_2728 : vec4<f32> = u_xlat11;
            let x_2731 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2734 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.x, x_2731.y)) + vec2<f32>(x_2734.z, x_2734.w));
            let x_2738 : f32 = u_xlat13.y;
            u_xlat14.w = x_2738;
            let x_2740 : vec4<f32> = u_xlat14;
            let x_2741 : vec2<f32> = vec2<f32>(x_2740.y, x_2740.z);
            let x_2742 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2742.x, x_2741.x, x_2742.z, x_2741.y);
            let x_2744 : vec4<f32> = u_xlat11;
            let x_2747 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2750 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y) * vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y)) + vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2750.y));
            let x_2753 : vec4<f32> = u_xlat11;
            let x_2756 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2759 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y) * vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y)) + vec4<f32>(x_2759.w, x_2759.y, x_2759.w, x_2759.z));
            let x_2762 : vec4<f32> = u_xlat11;
            let x_2765 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2768 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y) * vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y)) + vec4<f32>(x_2768.x, x_2768.w, x_2768.z, x_2768.w));
            let x_2771 : vec4<f32> = u_xlat12;
            let x_2773 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2771.x, x_2771.x, x_2771.x, x_2771.y) * vec4<f32>(x_2773.z, x_2773.w, x_2773.y, x_2773.z));
            let x_2776 : vec4<f32> = u_xlat12;
            let x_2778 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2776.y, x_2776.y, x_2776.z, x_2776.z) * x_2778);
            let x_2782 : f32 = u_xlat12.z;
            let x_2784 : f32 = u_xlat17.y;
            u_xlat85 = (x_2782 * x_2784);
            let x_2787 : vec4<f32> = u_xlat15;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec34;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat11.x = x_2799;
            let x_2802 : vec4<f32> = u_xlat15;
            let x_2803 : vec2<f32> = vec2<f32>(x_2802.z, x_2802.w);
            let x_2805 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2803.x, x_2803.y, x_2805);
            let x_2813 : vec3<f32> = txVec35;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat36 = x_2815;
            let x_2816 : f32 = u_xlat36;
            let x_2818 : f32 = u_xlat18.y;
            u_xlat36 = (x_2816 * x_2818);
            let x_2821 : f32 = u_xlat18.x;
            let x_2823 : f32 = u_xlat11.x;
            let x_2825 : f32 = u_xlat36;
            u_xlat11.x = ((x_2821 * x_2823) + x_2825);
            let x_2829 : vec2<f32> = u_xlat61;
            let x_2831 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
            let x_2838 : vec3<f32> = txVec36;
            let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
            u_xlat36 = x_2840;
            let x_2842 : f32 = u_xlat18.z;
            let x_2843 : f32 = u_xlat36;
            let x_2846 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2842 * x_2843) + x_2846);
            let x_2850 : vec4<f32> = u_xlat14;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.x, x_2850.y);
            let x_2853 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
            let x_2860 : vec3<f32> = txVec37;
            let x_2862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
            u_xlat36 = x_2862;
            let x_2864 : f32 = u_xlat18.w;
            let x_2865 : f32 = u_xlat36;
            let x_2868 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2864 * x_2865) + x_2868);
            let x_2872 : vec4<f32> = u_xlat16;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
            let x_2875 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec38;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat36 = x_2884;
            let x_2886 : f32 = u_xlat19.x;
            let x_2887 : f32 = u_xlat36;
            let x_2890 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2886 * x_2887) + x_2890);
            let x_2894 : vec4<f32> = u_xlat16;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.z, x_2894.w);
            let x_2897 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec39;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat36 = x_2906;
            let x_2908 : f32 = u_xlat19.y;
            let x_2909 : f32 = u_xlat36;
            let x_2912 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2908 * x_2909) + x_2912);
            let x_2916 : vec4<f32> = u_xlat14;
            let x_2917 : vec2<f32> = vec2<f32>(x_2916.z, x_2916.w);
            let x_2919 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2917.x, x_2917.y, x_2919);
            let x_2926 : vec3<f32> = txVec40;
            let x_2928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2926.xy, x_2926.z);
            u_xlat36 = x_2928;
            let x_2930 : f32 = u_xlat19.z;
            let x_2931 : f32 = u_xlat36;
            let x_2934 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2930 * x_2931) + x_2934);
            let x_2938 : vec4<f32> = u_xlat13;
            let x_2939 : vec2<f32> = vec2<f32>(x_2938.x, x_2938.y);
            let x_2941 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec41;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat36 = x_2950;
            let x_2952 : f32 = u_xlat19.w;
            let x_2953 : f32 = u_xlat36;
            let x_2956 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2952 * x_2953) + x_2956);
            let x_2960 : vec4<f32> = u_xlat13;
            let x_2961 : vec2<f32> = vec2<f32>(x_2960.z, x_2960.w);
            let x_2963 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec42;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat36 = x_2972;
            let x_2973 : f32 = u_xlat85;
            let x_2974 : f32 = u_xlat36;
            let x_2977 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2973 * x_2974) + x_2977);
          } else {
            let x_2980 : vec4<f32> = u_xlat10;
            let x_2983 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2980.x, x_2980.y) * vec2<f32>(x_2983.z, x_2983.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2987 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
            let x_2989 : vec4<f32> = u_xlat11;
            let x_2991 : vec2<f32> = floor(vec2<f32>(x_2989.x, x_2989.y));
            let x_2992 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2991.x, x_2991.y, x_2992.z, x_2992.w);
            let x_2994 : vec4<f32> = u_xlat10;
            let x_2997 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3000 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2994.x, x_2994.y) * vec2<f32>(x_2997.z, x_2997.w)) + -(vec2<f32>(x_3000.x, x_3000.y)));
            let x_3004 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3004.x, x_3004.x, x_3004.y, x_3004.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3007 : vec4<f32> = u_xlat12;
            let x_3009 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3007.x, x_3007.x, x_3007.z, x_3007.z) * vec4<f32>(x_3009.x, x_3009.x, x_3009.z, x_3009.z));
            let x_3012 : vec4<f32> = u_xlat13;
            let x_3014 : vec2<f32> = (vec2<f32>(x_3012.y, x_3012.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3015 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3015.x, x_3014.x, x_3015.z, x_3014.y);
            let x_3017 : vec4<f32> = u_xlat13;
            let x_3020 : vec2<f32> = u_xlat61;
            let x_3022 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3020));
            let x_3023 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3022.x, x_3023.y, x_3022.y, x_3023.w);
            let x_3025 : vec2<f32> = u_xlat61;
            let x_3027 : vec2<f32> = (-(x_3025) + vec2<f32>(1.0f, 1.0f));
            let x_3028 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3027.x, x_3027.y, x_3028.z, x_3028.w);
            let x_3030 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3030, vec2<f32>(0.0f, 0.0f));
            let x_3032 : vec2<f32> = u_xlat63;
            let x_3034 : vec2<f32> = u_xlat63;
            let x_3036 : vec4<f32> = u_xlat13;
            let x_3038 : vec2<f32> = ((-(x_3032) * x_3034) + vec2<f32>(x_3036.x, x_3036.y));
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3041 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3041, vec2<f32>(0.0f, 0.0f));
            let x_3044 : vec2<f32> = u_xlat63;
            let x_3046 : vec2<f32> = u_xlat63;
            let x_3048 : vec4<f32> = u_xlat12;
            let x_3050 : vec2<f32> = ((-(x_3044) * x_3046) + vec2<f32>(x_3048.y, x_3048.w));
            let x_3051 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3050.x, x_3051.y, x_3050.y);
            let x_3053 : vec4<f32> = u_xlat13;
            let x_3055 : vec2<f32> = (vec2<f32>(x_3053.x, x_3053.y) + vec2<f32>(2.0f, 2.0f));
            let x_3056 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec3<f32> = u_xlat37;
            let x_3060 : vec2<f32> = (vec2<f32>(x_3058.x, x_3058.z) + vec2<f32>(2.0f, 2.0f));
            let x_3061 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3061.x, x_3060.x, x_3061.z, x_3060.y);
            let x_3064 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3064 * 0.08163200318813323975f);
            let x_3067 : vec4<f32> = u_xlat12;
            let x_3069 : vec3<f32> = (vec3<f32>(x_3067.z, x_3067.x, x_3067.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3070 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3070.w);
            let x_3072 : vec4<f32> = u_xlat13;
            let x_3074 : vec2<f32> = (vec2<f32>(x_3072.x, x_3072.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3075 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3074.x, x_3074.y, x_3075.z, x_3075.w);
            let x_3078 : f32 = u_xlat16.y;
            u_xlat15.x = x_3078;
            let x_3080 : vec2<f32> = u_xlat61;
            let x_3083 : vec2<f32> = ((vec2<f32>(x_3080.x, x_3080.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3084 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3084.x, x_3083.x, x_3084.z, x_3083.y);
            let x_3086 : vec2<f32> = u_xlat61;
            let x_3089 : vec2<f32> = ((vec2<f32>(x_3086.x, x_3086.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3090 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3089.x, x_3090.y, x_3089.y, x_3090.w);
            let x_3093 : f32 = u_xlat12.x;
            u_xlat13.y = x_3093;
            let x_3096 : f32 = u_xlat14.y;
            u_xlat13.w = x_3096;
            let x_3098 : vec4<f32> = u_xlat13;
            let x_3099 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3098 + x_3099);
            let x_3101 : vec2<f32> = u_xlat61;
            let x_3104 : vec2<f32> = ((vec2<f32>(x_3101.y, x_3101.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3105 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3105.x, x_3104.x, x_3105.z, x_3104.y);
            let x_3107 : vec2<f32> = u_xlat61;
            let x_3110 : vec2<f32> = ((vec2<f32>(x_3107.y, x_3107.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3110.x, x_3111.y, x_3110.y, x_3111.w);
            let x_3114 : f32 = u_xlat12.y;
            u_xlat14.y = x_3114;
            let x_3116 : vec4<f32> = u_xlat14;
            let x_3117 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3116 + x_3117);
            let x_3119 : vec4<f32> = u_xlat13;
            let x_3120 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3119 / x_3120);
            let x_3122 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3122 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3124 : vec4<f32> = u_xlat14;
            let x_3125 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3124 / x_3125);
            let x_3127 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3127 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3129 : vec4<f32> = u_xlat13;
            let x_3132 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3129.w, x_3129.x, x_3129.y, x_3129.z) * vec4<f32>(x_3132.x, x_3132.x, x_3132.x, x_3132.x));
            let x_3135 : vec4<f32> = u_xlat14;
            let x_3138 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3135.x, x_3135.w, x_3135.y, x_3135.z) * vec4<f32>(x_3138.y, x_3138.y, x_3138.y, x_3138.y));
            let x_3141 : vec4<f32> = u_xlat13;
            let x_3142 : vec3<f32> = vec3<f32>(x_3141.y, x_3141.z, x_3141.w);
            let x_3143 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3142.x, x_3143.y, x_3142.y, x_3142.z);
            let x_3146 : f32 = u_xlat14.x;
            u_xlat16.y = x_3146;
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3151 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3148.x, x_3148.y, x_3148.x, x_3148.y) * vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y)) + vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3154.y));
            let x_3157 : vec4<f32> = u_xlat11;
            let x_3160 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3163 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3157.x, x_3157.y) * vec2<f32>(x_3160.x, x_3160.y)) + vec2<f32>(x_3163.w, x_3163.y));
            let x_3167 : f32 = u_xlat16.y;
            u_xlat13.y = x_3167;
            let x_3170 : f32 = u_xlat14.z;
            u_xlat16.y = x_3170;
            let x_3172 : vec4<f32> = u_xlat11;
            let x_3175 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3172.x, x_3172.y, x_3172.x, x_3172.y) * vec4<f32>(x_3175.x, x_3175.y, x_3175.x, x_3175.y)) + vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3178.y));
            let x_3181 : vec4<f32> = u_xlat11;
            let x_3184 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3187 : vec4<f32> = u_xlat16;
            let x_3189 : vec2<f32> = ((vec2<f32>(x_3181.x, x_3181.y) * vec2<f32>(x_3184.x, x_3184.y)) + vec2<f32>(x_3187.w, x_3187.y));
            let x_3190 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3189.x, x_3189.y, x_3190.z, x_3190.w);
            let x_3193 : f32 = u_xlat16.y;
            u_xlat13.z = x_3193;
            let x_3196 : vec4<f32> = u_xlat11;
            let x_3199 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y) * vec4<f32>(x_3199.x, x_3199.y, x_3199.x, x_3199.y)) + vec4<f32>(x_3202.x, x_3202.y, x_3202.x, x_3202.z));
            let x_3206 : f32 = u_xlat14.w;
            u_xlat16.y = x_3206;
            let x_3209 : vec4<f32> = u_xlat11;
            let x_3212 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3209.x, x_3209.y, x_3209.x, x_3209.y) * vec4<f32>(x_3212.x, x_3212.y, x_3212.x, x_3212.y)) + vec4<f32>(x_3215.x, x_3215.y, x_3215.z, x_3215.y));
            let x_3219 : vec4<f32> = u_xlat11;
            let x_3222 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3219.x, x_3219.y) * vec2<f32>(x_3222.x, x_3222.y)) + vec2<f32>(x_3225.w, x_3225.y));
            let x_3229 : f32 = u_xlat16.y;
            u_xlat13.w = x_3229;
            let x_3232 : vec4<f32> = u_xlat11;
            let x_3235 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3232.x, x_3232.y) * vec2<f32>(x_3235.x, x_3235.y)) + vec2<f32>(x_3238.x, x_3238.w));
            let x_3241 : vec4<f32> = u_xlat16;
            let x_3242 : vec3<f32> = vec3<f32>(x_3241.x, x_3241.z, x_3241.w);
            let x_3243 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3242.x, x_3243.y, x_3242.y, x_3242.z);
            let x_3245 : vec4<f32> = u_xlat11;
            let x_3248 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3251 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3245.x, x_3245.y, x_3245.x, x_3245.y) * vec4<f32>(x_3248.x, x_3248.y, x_3248.x, x_3248.y)) + vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3251.y));
            let x_3254 : vec4<f32> = u_xlat11;
            let x_3257 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3260 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3254.x, x_3254.y) * vec2<f32>(x_3257.x, x_3257.y)) + vec2<f32>(x_3260.w, x_3260.y));
            let x_3264 : f32 = u_xlat13.x;
            u_xlat14.x = x_3264;
            let x_3266 : vec4<f32> = u_xlat11;
            let x_3269 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat14;
            let x_3274 : vec2<f32> = ((vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(x_3269.x, x_3269.y)) + vec2<f32>(x_3272.x, x_3272.y));
            let x_3275 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3274.x, x_3274.y, x_3275.z, x_3275.w);
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3280 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3278.x, x_3278.x, x_3278.x, x_3278.x) * x_3280);
            let x_3283 : vec4<f32> = u_xlat12;
            let x_3285 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3283.y, x_3283.y, x_3283.y, x_3283.y) * x_3285);
            let x_3288 : vec4<f32> = u_xlat12;
            let x_3290 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3288.z, x_3288.z, x_3288.z, x_3288.z) * x_3290);
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3294 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3292.w, x_3292.w, x_3292.w, x_3292.w) * x_3294);
            let x_3297 : vec4<f32> = u_xlat17;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.x, x_3297.y);
            let x_3300 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec43;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat85 = x_3309;
            let x_3311 : vec4<f32> = u_xlat17;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec44;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat13.x = x_3323;
            let x_3326 : f32 = u_xlat13.x;
            let x_3328 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3326 * x_3328);
            let x_3332 : f32 = u_xlat22.x;
            let x_3333 : f32 = u_xlat85;
            let x_3336 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3332 * x_3333) + x_3336);
            let x_3339 : vec2<f32> = u_xlat61;
            let x_3341 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec45;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat61.x = x_3350;
            let x_3353 : f32 = u_xlat22.z;
            let x_3355 : f32 = u_xlat61.x;
            let x_3357 : f32 = u_xlat85;
            u_xlat85 = ((x_3353 * x_3355) + x_3357);
            let x_3360 : vec4<f32> = u_xlat20;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.x, x_3360.y);
            let x_3363 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec46;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat61.x = x_3372;
            let x_3375 : f32 = u_xlat22.w;
            let x_3377 : f32 = u_xlat61.x;
            let x_3379 : f32 = u_xlat85;
            u_xlat85 = ((x_3375 * x_3377) + x_3379);
            let x_3382 : vec4<f32> = u_xlat18;
            let x_3383 : vec2<f32> = vec2<f32>(x_3382.x, x_3382.y);
            let x_3385 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec47;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat61.x = x_3394;
            let x_3397 : f32 = u_xlat23.x;
            let x_3399 : f32 = u_xlat61.x;
            let x_3401 : f32 = u_xlat85;
            u_xlat85 = ((x_3397 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat18;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.z, x_3404.w);
            let x_3407 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec48;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat61.x = x_3416;
            let x_3419 : f32 = u_xlat23.y;
            let x_3421 : f32 = u_xlat61.x;
            let x_3423 : f32 = u_xlat85;
            u_xlat85 = ((x_3419 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat19;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec49;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat61.x = x_3438;
            let x_3441 : f32 = u_xlat23.z;
            let x_3443 : f32 = u_xlat61.x;
            let x_3445 : f32 = u_xlat85;
            u_xlat85 = ((x_3441 * x_3443) + x_3445);
            let x_3448 : vec4<f32> = u_xlat20;
            let x_3449 : vec2<f32> = vec2<f32>(x_3448.z, x_3448.w);
            let x_3451 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec50;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat61.x = x_3460;
            let x_3463 : f32 = u_xlat23.w;
            let x_3465 : f32 = u_xlat61.x;
            let x_3467 : f32 = u_xlat85;
            u_xlat85 = ((x_3463 * x_3465) + x_3467);
            let x_3470 : vec4<f32> = u_xlat21;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.x, x_3470.y);
            let x_3473 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec51;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat61.x = x_3482;
            let x_3485 : f32 = u_xlat24.x;
            let x_3487 : f32 = u_xlat61.x;
            let x_3489 : f32 = u_xlat85;
            u_xlat85 = ((x_3485 * x_3487) + x_3489);
            let x_3492 : vec4<f32> = u_xlat21;
            let x_3493 : vec2<f32> = vec2<f32>(x_3492.z, x_3492.w);
            let x_3495 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3493.x, x_3493.y, x_3495);
            let x_3502 : vec3<f32> = txVec52;
            let x_3504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3502.xy, x_3502.z);
            u_xlat61.x = x_3504;
            let x_3507 : f32 = u_xlat24.y;
            let x_3509 : f32 = u_xlat61.x;
            let x_3511 : f32 = u_xlat85;
            u_xlat85 = ((x_3507 * x_3509) + x_3511);
            let x_3514 : vec2<f32> = u_xlat38;
            let x_3516 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec53;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat61.x = x_3525;
            let x_3528 : f32 = u_xlat24.z;
            let x_3530 : f32 = u_xlat61.x;
            let x_3532 : f32 = u_xlat85;
            u_xlat85 = ((x_3528 * x_3530) + x_3532);
            let x_3535 : vec2<f32> = u_xlat69;
            let x_3537 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec54;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat61.x = x_3546;
            let x_3549 : f32 = u_xlat24.w;
            let x_3551 : f32 = u_xlat61.x;
            let x_3553 : f32 = u_xlat85;
            u_xlat85 = ((x_3549 * x_3551) + x_3553);
            let x_3556 : vec4<f32> = u_xlat16;
            let x_3557 : vec2<f32> = vec2<f32>(x_3556.x, x_3556.y);
            let x_3559 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3557.x, x_3557.y, x_3559);
            let x_3566 : vec3<f32> = txVec55;
            let x_3568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3566.xy, x_3566.z);
            u_xlat61.x = x_3568;
            let x_3571 : f32 = u_xlat12.x;
            let x_3573 : f32 = u_xlat61.x;
            let x_3575 : f32 = u_xlat85;
            u_xlat85 = ((x_3571 * x_3573) + x_3575);
            let x_3578 : vec4<f32> = u_xlat16;
            let x_3579 : vec2<f32> = vec2<f32>(x_3578.z, x_3578.w);
            let x_3581 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3579.x, x_3579.y, x_3581);
            let x_3588 : vec3<f32> = txVec56;
            let x_3590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3588.xy, x_3588.z);
            u_xlat61.x = x_3590;
            let x_3593 : f32 = u_xlat12.y;
            let x_3595 : f32 = u_xlat61.x;
            let x_3597 : f32 = u_xlat85;
            u_xlat85 = ((x_3593 * x_3595) + x_3597);
            let x_3600 : vec2<f32> = u_xlat64;
            let x_3602 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3600.x, x_3600.y, x_3602);
            let x_3609 : vec3<f32> = txVec57;
            let x_3611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3609.xy, x_3609.z);
            u_xlat61.x = x_3611;
            let x_3614 : f32 = u_xlat12.z;
            let x_3616 : f32 = u_xlat61.x;
            let x_3618 : f32 = u_xlat85;
            u_xlat85 = ((x_3614 * x_3616) + x_3618);
            let x_3621 : vec4<f32> = u_xlat11;
            let x_3622 : vec2<f32> = vec2<f32>(x_3621.x, x_3621.y);
            let x_3624 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3622.x, x_3622.y, x_3624);
            let x_3631 : vec3<f32> = txVec58;
            let x_3633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3631.xy, x_3631.z);
            u_xlat11.x = x_3633;
            let x_3636 : f32 = u_xlat12.w;
            let x_3638 : f32 = u_xlat11.x;
            let x_3640 : f32 = u_xlat85;
            u_xlat84 = ((x_3636 * x_3638) + x_3640);
          }
        }
      } else {
        let x_3644 : vec4<f32> = u_xlat10;
        let x_3645 : vec2<f32> = vec2<f32>(x_3644.x, x_3644.y);
        let x_3647 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3645.x, x_3645.y, x_3647);
        let x_3654 : vec3<f32> = txVec59;
        let x_3656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3654.xy, x_3654.z);
        u_xlat84 = x_3656;
      }
      let x_3657 : i32 = u_xlati6;
      let x_3659 : f32 = x_503.x_AdditionalShadowParams[x_3657].x;
      u_xlat10.x = (1.0f + -(x_3659));
      let x_3663 : f32 = u_xlat84;
      let x_3664 : i32 = u_xlati6;
      let x_3666 : f32 = x_503.x_AdditionalShadowParams[x_3664].x;
      let x_3669 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3663 * x_3666) + x_3669);
      let x_3672 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3672);
      let x_3677 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3677 >= 1.0f);
      let x_3679 : bool = u_xlatb35;
      let x_3681 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3679 | x_3681);
      let x_3685 : bool = u_xlatb10.x;
      let x_3686 : f32 = u_xlat84;
      u_xlat84 = select(x_3686, 1.0f, x_3685);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3689 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3689) + 1.0f);
    let x_3693 : f32 = u_xlat76;
    let x_3695 : f32 = u_xlat10.x;
    let x_3697 : f32 = u_xlat84;
    u_xlat84 = ((x_3693 * x_3695) + x_3697);
    let x_3699 : f32 = u_xlat82;
    let x_3700 : f32 = u_xlat84;
    u_xlat82 = (x_3699 * x_3700);
    let x_3702 : vec3<f32> = u_xlat4;
    let x_3703 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3702, vec3<f32>(x_3703.x, x_3703.y, x_3703.z));
    let x_3706 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3706, 0.0f, 1.0f);
    let x_3708 : f32 = u_xlat82;
    let x_3709 : f32 = u_xlat84;
    u_xlat82 = (x_3708 * x_3709);
    let x_3711 : f32 = u_xlat82;
    let x_3713 : i32 = u_xlati6;
    let x_3715 : vec4<f32> = x_2208.x_AdditionalLightsColor[x_3713];
    let x_3717 : vec3<f32> = (vec3<f32>(x_3711, x_3711, x_3711) * vec3<f32>(x_3715.x, x_3715.y, x_3715.z));
    let x_3718 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3717.x, x_3717.y, x_3717.z, x_3718.w);
    let x_3720 : vec4<f32> = u_xlat8;
    let x_3722 : f32 = u_xlat83;
    let x_3725 : vec3<f32> = u_xlat28;
    let x_3726 : vec3<f32> = ((vec3<f32>(x_3720.x, x_3720.y, x_3720.z) * vec3<f32>(x_3722, x_3722, x_3722)) + x_3725);
    let x_3727 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3726.x, x_3726.y, x_3726.z, x_3727.w);
    let x_3729 : vec4<f32> = u_xlat8;
    let x_3731 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3729.x, x_3729.y, x_3729.z), vec3<f32>(x_3731.x, x_3731.y, x_3731.z));
    let x_3736 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3736, 1.17549435e-38f);
    let x_3740 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3740);
    let x_3743 : vec4<f32> = u_xlat6;
    let x_3745 : vec4<f32> = u_xlat8;
    let x_3747 : vec3<f32> = (vec3<f32>(x_3743.x, x_3743.x, x_3743.x) * vec3<f32>(x_3745.x, x_3745.y, x_3745.z));
    let x_3748 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3748.w);
    let x_3750 : vec3<f32> = u_xlat4;
    let x_3751 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_3750, vec3<f32>(x_3751.x, x_3751.y, x_3751.z));
    let x_3756 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3756, 0.0f, 1.0f);
    let x_3759 : vec4<f32> = u_xlat9;
    let x_3761 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3759.x, x_3759.y, x_3759.z), vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
    let x_3764 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3764, 0.0f, 1.0f);
    let x_3767 : f32 = u_xlat6.x;
    let x_3769 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3767 * x_3769);
    let x_3773 : f32 = u_xlat6.x;
    let x_3775 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_3773 * x_3775) + 1.00001001358032226562f);
    let x_3779 : f32 = u_xlat82;
    let x_3780 : f32 = u_xlat82;
    u_xlat82 = (x_3779 * x_3780);
    let x_3783 : f32 = u_xlat6.x;
    let x_3785 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3783 * x_3785);
    let x_3788 : f32 = u_xlat82;
    u_xlat82 = max(x_3788, 0.10000000149011611938f);
    let x_3791 : f32 = u_xlat6.x;
    let x_3792 : f32 = u_xlat82;
    u_xlat6.x = (x_3791 * x_3792);
    let x_3795 : f32 = u_xlat79;
    let x_3797 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3795 * x_3797);
    let x_3801 : f32 = u_xlat51.x;
    let x_3803 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3801 / x_3803);
    let x_3806 : vec4<f32> = u_xlat0;
    let x_3808 : vec4<f32> = u_xlat6;
    let x_3811 : vec3<f32> = u_xlat27;
    let x_3812 : vec3<f32> = ((vec3<f32>(x_3806.x, x_3806.y, x_3806.z) * vec3<f32>(x_3808.x, x_3808.x, x_3808.x)) + x_3811);
    let x_3813 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3812.x, x_3812.y, x_3812.z, x_3813.w);
    let x_3815 : vec4<f32> = u_xlat8;
    let x_3817 : vec4<f32> = u_xlat10;
    let x_3820 : vec4<f32> = u_xlat7;
    let x_3822 : vec3<f32> = ((vec3<f32>(x_3815.x, x_3815.y, x_3815.z) * vec3<f32>(x_3817.x, x_3817.y, x_3817.z)) + vec3<f32>(x_3820.x, x_3820.y, x_3820.z));
    let x_3823 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3822.x, x_3822.y, x_3822.z, x_3823.w);

    continuing {
      let x_3825 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3825 + bitcast<u32>(1i));
    }
  }
  let x_3827 : vec4<f32> = u_xlat5;
  let x_3829 : vec3<f32> = u_xlat3;
  let x_3832 : vec3<f32> = u_xlat31;
  let x_3833 : vec3<f32> = ((vec3<f32>(x_3827.x, x_3827.y, x_3827.z) * vec3<f32>(x_3829.x, x_3829.x, x_3829.x)) + x_3832);
  let x_3834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3833.x, x_3833.y, x_3833.z, x_3834.w);
  let x_3836 : vec4<f32> = u_xlat7;
  let x_3838 : vec4<f32> = u_xlat0;
  let x_3840 : vec3<f32> = (vec3<f32>(x_3836.x, x_3836.y, x_3836.z) + vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
  let x_3841 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
  let x_3843 : f32 = u_xlat75;
  let x_3844 : f32 = u_xlat75;
  u_xlat75 = (x_3843 * -(x_3844));
  let x_3847 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3847);
  let x_3849 : vec4<f32> = u_xlat0;
  let x_3852 : vec4<f32> = x_45.unity_FogColor;
  let x_3855 : vec3<f32> = (vec3<f32>(x_3849.x, x_3849.y, x_3849.z) + -(vec3<f32>(x_3852.x, x_3852.y, x_3852.z)));
  let x_3856 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3855.x, x_3855.y, x_3855.z, x_3856.w);
  let x_3860 : f32 = u_xlat75;
  let x_3862 : vec4<f32> = u_xlat0;
  let x_3866 : vec4<f32> = x_45.unity_FogColor;
  let x_3868 : vec3<f32> = ((vec3<f32>(x_3860, x_3860, x_3860) * vec3<f32>(x_3862.x, x_3862.y, x_3862.z)) + vec3<f32>(x_3866.x, x_3866.y, x_3866.z));
  let x_3869 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3868.x, x_3868.y, x_3868.z, x_3869.w);
  let x_3873 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_3873 == 1.0f);
  let x_3875 : bool = u_xlatb0;
  if (x_3875) {
    let x_3880 : f32 = u_xlat2.x;
    x_3876 = x_3880;
  } else {
    x_3876 = 1.0f;
  }
  let x_3882 : f32 = x_3876;
  SV_Target0.w = x_3882;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


