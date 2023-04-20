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

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_553 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu26 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2261 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_269 : vec3<f32>;
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
  var x_2404 : f32;
  var x_2415 : f32;
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
  var x_3930 : f32;
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
  let x_238 : vec3<f32> = (-(x_232) + x_237);
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat53;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_265 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_265;
  let x_267 : bool = u_xlatb28;
  if (x_267) {
    let x_272 : vec4<f32> = u_xlat4;
    x_269 = vec3<f32>(x_272.x, x_272.y, x_272.z);
  } else {
    let x_275 : vec3<f32> = u_xlat5;
    x_269 = x_275;
  }
  let x_276 : vec3<f32> = x_269;
  u_xlat28 = x_276;
  let x_278 : vec3<f32> = vs_TEXCOORD2;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_283 : vec3<f32> = (vec3<f32>(x_278.z, x_278.x, x_278.y) * vec3<f32>(x_281.y, x_281.z, x_281.x));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = vs_TEXCOORD2;
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_286.y, x_286.z, x_286.x) * vec3<f32>(x_288.z, x_288.x, x_288.y)) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec2<f32> = u_xlat51;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec2<f32> = u_xlat51;
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : f32 = u_xlat75;
  let x_323 : vec3<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * x_323) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat75;
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = vs_TEXCOORD1.y;
  let x_347 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat75 = (x_345 * x_347);
  let x_350 : f32 = x_45.unity_MatrixV[0i].z;
  let x_352 : f32 = vs_TEXCOORD1.x;
  let x_354 : f32 = u_xlat75;
  u_xlat75 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = x_45.unity_MatrixV[2i].z;
  let x_359 : f32 = vs_TEXCOORD1.z;
  let x_361 : f32 = u_xlat75;
  u_xlat75 = ((x_357 * x_359) + x_361);
  let x_363 : f32 = u_xlat75;
  let x_366 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat75 = (x_363 + x_366);
  let x_368 : f32 = u_xlat75;
  let x_372 : f32 = x_45.x_ProjectionParams.y;
  u_xlat75 = (-(x_368) + -(x_372));
  let x_375 : f32 = u_xlat75;
  u_xlat75 = max(x_375, 0.0f);
  let x_377 : f32 = u_xlat75;
  let x_380 : f32 = x_45.unity_FogParams.x;
  u_xlat75 = (x_377 * x_380);
  u_xlat4.w = 1.0f;
  let x_385 : vec4<f32> = x_185.unity_SHAr;
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_185.unity_SHAg;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_391, x_392);
  let x_397 : vec4<f32> = x_185.unity_SHAb;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_397, x_398);
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_402.y, x_402.z, x_402.z, x_402.x) * vec4<f32>(x_404.x, x_404.y, x_404.z, x_404.z));
  let x_410 : vec4<f32> = x_185.unity_SHBr;
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_185.unity_SHBg;
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_185.unity_SHBb;
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_422, x_423);
  let x_427 : f32 = u_xlat4.y;
  let x_429 : f32 = u_xlat4.y;
  u_xlat51.x = (x_427 * x_429);
  let x_433 : f32 = u_xlat4.x;
  let x_435 : f32 = u_xlat4.x;
  let x_438 : f32 = u_xlat51.x;
  u_xlat51.x = ((x_433 * x_435) + -(x_438));
  let x_444 : vec4<f32> = x_185.unity_SHC;
  let x_446 : vec2<f32> = u_xlat51;
  let x_449 : vec4<f32> = u_xlat7;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.x, x_446.x, x_446.x)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec3<f32> = u_xlat5;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_454 + vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_458, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_462 : f32 = u_xlat1.x;
  u_xlat51.x = ((-(x_462) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_470 : f32 = u_xlat1.y;
  let x_472 : f32 = x_70.x_Smoothness;
  let x_475 : f32 = u_xlat51.x;
  u_xlat76 = ((x_470 * x_472) + -(x_475));
  let x_479 : vec2<f32> = u_xlat51;
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_479.x, x_479.x, x_479.x) * vec3<f32>(x_481.y, x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = x_70.x_BaseColor;
  let x_492 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_487.x, x_487.y, x_487.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec2<f32> = u_xlat1;
  let x_497 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.x, x_495.x) * vec3<f32>(x_497.x, x_497.y, x_497.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = u_xlat1.y;
  let x_509 : f32 = x_70.x_Smoothness;
  u_xlat1.x = ((-(x_506) * x_509) + 1.0f);
  let x_515 : f32 = u_xlat1.x;
  let x_517 : f32 = u_xlat1.x;
  u_xlat26.x = (x_515 * x_517);
  let x_521 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_521, 0.0078125f);
  let x_526 : f32 = u_xlat26.x;
  let x_528 : f32 = u_xlat26.x;
  u_xlat51.x = (x_526 * x_528);
  let x_531 : f32 = u_xlat76;
  u_xlat76 = (x_531 + 1.0f);
  let x_533 : f32 = u_xlat76;
  u_xlat76 = clamp(x_533, 0.0f, 1.0f);
  let x_537 : f32 = u_xlat26.x;
  u_xlat79 = ((x_537 * 4.0f) + 2.0f);
  let x_542 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_542, 1.0f);
  let x_555 : f32 = x_553.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_555);
  let x_557 : bool = u_xlatb80;
  if (x_557) {
    let x_561 : f32 = x_553.x_MainLightShadowParams.y;
    u_xlatb80 = (x_561 == 1.0f);
    let x_563 : bool = u_xlatb80;
    if (x_563) {
      let x_567 : vec4<f32> = vs_TEXCOORD6;
      let x_570 : vec4<f32> = x_553.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) + x_570);
      let x_573 : vec4<f32> = u_xlat6;
      let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
      let x_576 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_574.x, x_574.y, x_576);
      let x_588 : vec3<f32> = txVec0;
      let x_590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_588.xy, x_588.z);
      u_xlat7.x = x_590;
      let x_593 : vec4<f32> = u_xlat6;
      let x_594 : vec2<f32> = vec2<f32>(x_593.z, x_593.w);
      let x_596 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_594.x, x_594.y, x_596);
      let x_603 : vec3<f32> = txVec1;
      let x_605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_603.xy, x_603.z);
      u_xlat7.y = x_605;
      let x_607 : vec4<f32> = vs_TEXCOORD6;
      let x_610 : vec4<f32> = x_553.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) + x_610);
      let x_613 : vec4<f32> = u_xlat6;
      let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
      let x_616 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_614.x, x_614.y, x_616);
      let x_623 : vec3<f32> = txVec2;
      let x_625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_623.xy, x_623.z);
      u_xlat7.z = x_625;
      let x_628 : vec4<f32> = u_xlat6;
      let x_629 : vec2<f32> = vec2<f32>(x_628.z, x_628.w);
      let x_631 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_629.x, x_629.y, x_631);
      let x_638 : vec3<f32> = txVec3;
      let x_640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_638.xy, x_638.z);
      u_xlat7.w = x_640;
      let x_643 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_643, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_650 : f32 = x_553.x_MainLightShadowParams.y;
      u_xlatb6 = (x_650 == 2.0f);
      let x_652 : bool = u_xlatb6;
      if (x_652) {
        let x_655 : vec4<f32> = vs_TEXCOORD6;
        let x_658 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_663 : vec2<f32> = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.z, x_658.w)) + vec2<f32>(0.5f, 0.5f));
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat6;
        let x_668 : vec2<f32> = floor(vec2<f32>(x_666.x, x_666.y));
        let x_669 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_672 : vec4<f32> = vs_TEXCOORD6;
        let x_675 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_675.z, x_675.w)) + -(vec2<f32>(x_678.x, x_678.y)));
        let x_682 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_682.x, x_682.x, x_682.y, x_682.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_687 : vec4<f32> = u_xlat7;
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_687.x, x_687.x, x_687.z, x_687.z) * vec4<f32>(x_689.x, x_689.x, x_689.z, x_689.z));
        let x_692 : vec4<f32> = u_xlat8;
        let x_696 : vec2<f32> = (vec2<f32>(x_692.y, x_692.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_697.y, x_696.y, x_697.w);
        let x_699 : vec4<f32> = u_xlat8;
        let x_702 : vec2<f32> = u_xlat56;
        let x_704 : vec2<f32> = ((vec2<f32>(x_699.x, x_699.z) * vec2<f32>(0.5f, 0.5f)) + -(x_702));
        let x_705 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_708) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec2<f32> = u_xlat56;
        let x_715 : vec2<f32> = min(x_713, vec2<f32>(0.0f, 0.0f));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat9;
        let x_724 : vec2<f32> = u_xlat58;
        let x_725 : vec2<f32> = ((-(vec2<f32>(x_718.x, x_718.y)) * vec2<f32>(x_721.x, x_721.y)) + x_724);
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_728, vec2<f32>(0.0f, 0.0f));
        let x_730 : vec2<f32> = u_xlat56;
        let x_732 : vec2<f32> = u_xlat56;
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_730) * x_732) + vec2<f32>(x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat9;
        let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) + vec2<f32>(1.0f, 1.0f));
        let x_740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_742 + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat8;
        let x_749 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_750 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_752 : vec2<f32> = u_xlat58;
        let x_753 : vec2<f32> = (x_752 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat9;
        let x_758 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_762 : vec2<f32> = u_xlat56;
        let x_763 : vec2<f32> = (x_762 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_766.y, x_766.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_770 : f32 = u_xlat9.x;
        u_xlat10.z = x_770;
        let x_773 : f32 = u_xlat56.x;
        u_xlat10.w = x_773;
        let x_776 : f32 = u_xlat11.x;
        u_xlat8.z = x_776;
        let x_779 : f32 = u_xlat7.x;
        u_xlat8.w = x_779;
        let x_782 : vec4<f32> = u_xlat8;
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_782.z, x_782.w, x_782.x, x_782.z) + vec4<f32>(x_784.z, x_784.w, x_784.x, x_784.z));
        let x_788 : f32 = u_xlat10.y;
        u_xlat9.z = x_788;
        let x_791 : f32 = u_xlat56.y;
        u_xlat9.w = x_791;
        let x_794 : f32 = u_xlat8.y;
        u_xlat11.z = x_794;
        let x_797 : f32 = u_xlat7.z;
        u_xlat11.w = x_797;
        let x_799 : vec4<f32> = u_xlat9;
        let x_801 : vec4<f32> = u_xlat11;
        let x_803 : vec3<f32> = (vec3<f32>(x_799.z, x_799.y, x_799.w) + vec3<f32>(x_801.z, x_801.y, x_801.w));
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat8;
        let x_808 : vec4<f32> = u_xlat12;
        let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.z, x_806.w) / vec3<f32>(x_808.z, x_808.w, x_808.y));
        let x_811 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat8;
        let x_819 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat11;
        let x_824 : vec4<f32> = u_xlat7;
        let x_826 : vec3<f32> = (vec3<f32>(x_822.z, x_822.y, x_822.w) / vec3<f32>(x_824.x, x_824.y, x_824.z));
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat9;
        let x_831 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat8;
        let x_837 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_839 : vec3<f32> = (vec3<f32>(x_834.y, x_834.x, x_834.z) * vec3<f32>(x_837.x, x_837.x, x_837.x));
        let x_840 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat9;
        let x_845 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845.y, x_845.y, x_845.y));
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_851 : f32 = u_xlat9.x;
        u_xlat8.w = x_851;
        let x_853 : vec4<f32> = u_xlat6;
        let x_856 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y)) + vec4<f32>(x_859.y, x_859.w, x_859.x, x_859.w));
        let x_862 : vec4<f32> = u_xlat6;
        let x_865 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_865.x, x_865.y)) + vec2<f32>(x_868.z, x_868.w));
        let x_872 : f32 = u_xlat8.y;
        u_xlat9.w = x_872;
        let x_874 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = vec2<f32>(x_874.y, x_874.z);
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_878 : vec4<f32> = u_xlat6;
        let x_881 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y) * vec4<f32>(x_881.x, x_881.y, x_881.x, x_881.y)) + vec4<f32>(x_884.x, x_884.y, x_884.z, x_884.y));
        let x_887 : vec4<f32> = u_xlat6;
        let x_890 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y) * vec4<f32>(x_890.x, x_890.y, x_890.x, x_890.y)) + vec4<f32>(x_893.w, x_893.y, x_893.w, x_893.z));
        let x_896 : vec4<f32> = u_xlat6;
        let x_899 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y) * vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.y)) + vec4<f32>(x_902.x, x_902.w, x_902.z, x_902.w));
        let x_906 : vec4<f32> = u_xlat7;
        let x_908 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_906.x, x_906.x, x_906.x, x_906.y) * vec4<f32>(x_908.z, x_908.w, x_908.y, x_908.z));
        let x_912 : vec4<f32> = u_xlat7;
        let x_914 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_912.y, x_912.y, x_912.z, x_912.z) * x_914);
        let x_917 : f32 = u_xlat7.z;
        let x_919 : f32 = u_xlat12.y;
        u_xlat6.x = (x_917 * x_919);
        let x_923 : vec4<f32> = u_xlat10;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_934 : vec3<f32> = txVec4;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat31.x = x_936;
        let x_939 : vec4<f32> = u_xlat10;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec5;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
        u_xlat7.x = x_951;
        let x_954 : f32 = u_xlat7.x;
        let x_956 : f32 = u_xlat13.y;
        u_xlat7.x = (x_954 * x_956);
        let x_960 : f32 = u_xlat13.x;
        let x_962 : f32 = u_xlat31.x;
        let x_965 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_960 * x_962) + x_965);
        let x_969 : vec2<f32> = u_xlat56;
        let x_971 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec6;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat56.x = x_980;
        let x_983 : f32 = u_xlat13.z;
        let x_985 : f32 = u_xlat56.x;
        let x_988 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_983 * x_985) + x_988);
        let x_992 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
        let x_995 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec7;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat56.x = x_1004;
        let x_1007 : f32 = u_xlat13.w;
        let x_1009 : f32 = u_xlat56.x;
        let x_1012 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1007 * x_1009) + x_1012);
        let x_1016 : vec4<f32> = u_xlat11;
        let x_1017 : vec2<f32> = vec2<f32>(x_1016.x, x_1016.y);
        let x_1019 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec8;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
        u_xlat56.x = x_1028;
        let x_1031 : f32 = u_xlat14.x;
        let x_1033 : f32 = u_xlat56.x;
        let x_1036 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1031 * x_1033) + x_1036);
        let x_1040 : vec4<f32> = u_xlat11;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.z, x_1040.w);
        let x_1043 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec9;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1050.xy, x_1050.z);
        u_xlat56.x = x_1052;
        let x_1055 : f32 = u_xlat14.y;
        let x_1057 : f32 = u_xlat56.x;
        let x_1060 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1055 * x_1057) + x_1060);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.z, x_1064.w);
        let x_1067 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec10;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1074.xy, x_1074.z);
        u_xlat56.x = x_1076;
        let x_1079 : f32 = u_xlat14.z;
        let x_1081 : f32 = u_xlat56.x;
        let x_1084 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1079 * x_1081) + x_1084);
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1089 : vec2<f32> = vec2<f32>(x_1088.x, x_1088.y);
        let x_1091 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1089.x, x_1089.y, x_1091);
        let x_1098 : vec3<f32> = txVec11;
        let x_1100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1098.xy, x_1098.z);
        u_xlat56.x = x_1100;
        let x_1103 : f32 = u_xlat14.w;
        let x_1105 : f32 = u_xlat56.x;
        let x_1108 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1103 * x_1105) + x_1108);
        let x_1112 : vec4<f32> = u_xlat8;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.z, x_1112.w);
        let x_1115 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec12;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
        u_xlat56.x = x_1124;
        let x_1127 : f32 = u_xlat6.x;
        let x_1129 : f32 = u_xlat56.x;
        let x_1132 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1127 * x_1129) + x_1132);
      } else {
        let x_1135 : vec4<f32> = vs_TEXCOORD6;
        let x_1138 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat6;
        let x_1146 : vec2<f32> = floor(vec2<f32>(x_1144.x, x_1144.y));
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = vs_TEXCOORD6;
        let x_1152 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1152.z, x_1152.w)) + -(vec2<f32>(x_1155.x, x_1155.y)));
        let x_1159 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1159.x, x_1159.x, x_1159.y, x_1159.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1162.x, x_1162.x, x_1162.z, x_1162.z) * vec4<f32>(x_1164.x, x_1164.x, x_1164.z, x_1164.z));
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1177 : vec2<f32> = u_xlat56;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1177));
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1182 : vec2<f32> = u_xlat56;
        let x_1184 : vec2<f32> = (-(x_1182) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1187, vec2<f32>(0.0f, 0.0f));
        let x_1189 : vec2<f32> = u_xlat58;
        let x_1191 : vec2<f32> = u_xlat58;
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1195 : vec2<f32> = ((-(x_1189) * x_1191) + vec2<f32>(x_1193.x, x_1193.y));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1198, vec2<f32>(0.0f, 0.0f));
        let x_1201 : vec2<f32> = u_xlat58;
        let x_1203 : vec2<f32> = u_xlat58;
        let x_1205 : vec4<f32> = u_xlat7;
        let x_1207 : vec2<f32> = ((-(x_1201) * x_1203) + vec2<f32>(x_1205.y, x_1205.w));
        let x_1208 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1207.x, x_1208.y, x_1207.y);
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1210.x, x_1210.y) + vec2<f32>(2.0f, 2.0f));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec3<f32> = u_xlat32;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.z) + vec2<f32>(2.0f, 2.0f));
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1221 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1221 * 0.08163200318813323975f);
        let x_1225 : vec4<f32> = u_xlat7;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1225.z, x_1225.x, x_1225.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1234 : vec2<f32> = (vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : f32 = u_xlat11.y;
        u_xlat10.x = x_1238;
        let x_1240 : vec2<f32> = u_xlat56;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1248.x, x_1247.x, x_1248.z, x_1247.y);
        let x_1250 : vec2<f32> = u_xlat56;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1250.x, x_1250.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1255 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
        let x_1258 : f32 = u_xlat7.x;
        u_xlat8.y = x_1258;
        let x_1261 : f32 = u_xlat9.y;
        u_xlat8.w = x_1261;
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1264 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1263 + x_1264);
        let x_1266 : vec2<f32> = u_xlat56;
        let x_1269 : vec2<f32> = ((vec2<f32>(x_1266.y, x_1266.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1270.x, x_1269.x, x_1270.z, x_1269.y);
        let x_1272 : vec2<f32> = u_xlat56;
        let x_1275 : vec2<f32> = ((vec2<f32>(x_1272.y, x_1272.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1275.x, x_1276.y, x_1275.y, x_1276.w);
        let x_1279 : f32 = u_xlat7.y;
        u_xlat9.y = x_1279;
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1281 + x_1282);
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1293 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1293 / x_1294);
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1296 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1301 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1298.w, x_1298.x, x_1298.y, x_1298.z) * vec4<f32>(x_1301.x, x_1301.x, x_1301.x, x_1301.x));
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1304.x, x_1304.w, x_1304.y, x_1304.z) * vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1315 : f32 = u_xlat9.x;
        u_xlat11.y = x_1315;
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1323.y));
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1332.w, x_1332.y));
        let x_1336 : f32 = u_xlat11.y;
        u_xlat8.y = x_1336;
        let x_1339 : f32 = u_xlat9.z;
        u_xlat11.y = x_1339;
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.w, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1362 : f32 = u_xlat11.y;
        u_xlat8.z = x_1362;
        let x_1365 : vec4<f32> = u_xlat6;
        let x_1368 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.z));
        let x_1375 : f32 = u_xlat9.w;
        u_xlat11.y = x_1375;
        let x_1378 : vec4<f32> = u_xlat6;
        let x_1381 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1384 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y) * vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y)) + vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1384.y));
        let x_1388 : vec4<f32> = u_xlat6;
        let x_1391 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.w, x_1394.y));
        let x_1398 : f32 = u_xlat11.y;
        u_xlat8.w = x_1398;
        let x_1401 : vec4<f32> = u_xlat6;
        let x_1404 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(x_1404.x, x_1404.y)) + vec2<f32>(x_1407.x, x_1407.w));
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1411 : vec3<f32> = vec3<f32>(x_1410.x, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1411.z);
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y) * vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y)) + vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1420.y));
        let x_1424 : vec4<f32> = u_xlat6;
        let x_1427 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1427.x, x_1427.y)) + vec2<f32>(x_1430.w, x_1430.y));
        let x_1434 : f32 = u_xlat8.x;
        u_xlat9.x = x_1434;
        let x_1436 : vec4<f32> = u_xlat6;
        let x_1439 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = ((vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(x_1439.x, x_1439.y)) + vec2<f32>(x_1442.x, x_1442.y));
        let x_1445 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1448.x, x_1448.x, x_1448.x, x_1448.x) * x_1450);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1453.y, x_1453.y, x_1453.y, x_1453.y) * x_1455);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1460 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1458.z, x_1458.z, x_1458.z, x_1458.z) * x_1460);
        let x_1462 : vec4<f32> = u_xlat7;
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1462.w, x_1462.w, x_1462.w, x_1462.w) * x_1464);
        let x_1467 : vec4<f32> = u_xlat12;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec13;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat8.x = x_1479;
        let x_1482 : vec4<f32> = u_xlat12;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1493 : vec3<f32> = txVec14;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat83 = x_1495;
        let x_1496 : f32 = u_xlat83;
        let x_1498 : f32 = u_xlat17.y;
        u_xlat83 = (x_1496 * x_1498);
        let x_1501 : f32 = u_xlat17.x;
        let x_1503 : f32 = u_xlat8.x;
        let x_1505 : f32 = u_xlat83;
        u_xlat8.x = ((x_1501 * x_1503) + x_1505);
        let x_1509 : vec2<f32> = u_xlat56;
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec15;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat56.x = x_1520;
        let x_1523 : f32 = u_xlat17.z;
        let x_1525 : f32 = u_xlat56.x;
        let x_1528 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1523 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat15;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1543 : vec3<f32> = txVec16;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1543.xy, x_1543.z);
        u_xlat81 = x_1545;
        let x_1547 : f32 = u_xlat17.w;
        let x_1548 : f32 = u_xlat81;
        let x_1551 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec4<f32> = u_xlat13;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec17;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat81 = x_1567;
        let x_1569 : f32 = u_xlat18.x;
        let x_1570 : f32 = u_xlat81;
        let x_1573 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1569 * x_1570) + x_1573);
        let x_1577 : vec4<f32> = u_xlat13;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec18;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat81 = x_1589;
        let x_1591 : f32 = u_xlat18.y;
        let x_1592 : f32 = u_xlat81;
        let x_1595 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1591 * x_1592) + x_1595);
        let x_1599 : vec4<f32> = u_xlat14;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec19;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat81 = x_1611;
        let x_1613 : f32 = u_xlat18.z;
        let x_1614 : f32 = u_xlat81;
        let x_1617 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1613 * x_1614) + x_1617);
        let x_1621 : vec4<f32> = u_xlat15;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.z, x_1621.w);
        let x_1624 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec20;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat81 = x_1633;
        let x_1635 : f32 = u_xlat18.w;
        let x_1636 : f32 = u_xlat81;
        let x_1639 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1635 * x_1636) + x_1639);
        let x_1643 : vec4<f32> = u_xlat16;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec21;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1653.xy, x_1653.z);
        u_xlat81 = x_1655;
        let x_1657 : f32 = u_xlat19.x;
        let x_1658 : f32 = u_xlat81;
        let x_1661 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1657 * x_1658) + x_1661);
        let x_1665 : vec4<f32> = u_xlat16;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec22;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat81 = x_1677;
        let x_1679 : f32 = u_xlat19.y;
        let x_1680 : f32 = u_xlat81;
        let x_1683 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1679 * x_1680) + x_1683);
        let x_1687 : vec2<f32> = u_xlat33;
        let x_1689 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec23;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1696.xy, x_1696.z);
        u_xlat81 = x_1698;
        let x_1700 : f32 = u_xlat19.z;
        let x_1701 : f32 = u_xlat81;
        let x_1704 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1700 * x_1701) + x_1704);
        let x_1708 : vec2<f32> = u_xlat64;
        let x_1710 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec24;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1717.xy, x_1717.z);
        u_xlat81 = x_1719;
        let x_1721 : f32 = u_xlat19.w;
        let x_1722 : f32 = u_xlat81;
        let x_1725 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1721 * x_1722) + x_1725);
        let x_1729 : vec4<f32> = u_xlat11;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec25;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1739.xy, x_1739.z);
        u_xlat81 = x_1741;
        let x_1743 : f32 = u_xlat7.x;
        let x_1744 : f32 = u_xlat81;
        let x_1747 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1743 * x_1744) + x_1747);
        let x_1751 : vec4<f32> = u_xlat11;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec26;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1761.xy, x_1761.z);
        u_xlat81 = x_1763;
        let x_1765 : f32 = u_xlat7.y;
        let x_1766 : f32 = u_xlat81;
        let x_1769 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1765 * x_1766) + x_1769);
        let x_1773 : vec2<f32> = u_xlat59;
        let x_1775 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec27;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
        u_xlat81 = x_1784;
        let x_1786 : f32 = u_xlat7.z;
        let x_1787 : f32 = u_xlat81;
        let x_1790 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1786 * x_1787) + x_1790);
        let x_1794 : vec4<f32> = u_xlat6;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec28;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat6.x = x_1806;
        let x_1809 : f32 = u_xlat7.w;
        let x_1811 : f32 = u_xlat6.x;
        let x_1814 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1809 * x_1811) + x_1814);
      }
    }
  } else {
    let x_1818 : vec4<f32> = vs_TEXCOORD6;
    let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
    let x_1821 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
    let x_1828 : vec3<f32> = txVec29;
    let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
    u_xlat80 = x_1830;
  }
  let x_1832 : f32 = x_553.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1832) + 1.0f);
  let x_1836 : f32 = u_xlat80;
  let x_1838 : f32 = x_553.x_MainLightShadowParams.x;
  let x_1841 : f32 = u_xlat6.x;
  u_xlat80 = ((x_1836 * x_1838) + x_1841);
  let x_1844 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1844);
  let x_1848 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_1848 >= 1.0f);
  let x_1850 : bool = u_xlatb31;
  let x_1851 : bool = u_xlatb6;
  u_xlatb6 = (x_1850 | x_1851);
  let x_1853 : bool = u_xlatb6;
  let x_1854 : f32 = u_xlat80;
  u_xlat80 = select(x_1854, 1.0f, x_1853);
  let x_1856 : vec3<f32> = vs_TEXCOORD1;
  let x_1858 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1860 : vec3<f32> = (x_1856 + -(x_1858));
  let x_1861 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec4<f32> = u_xlat6;
  let x_1865 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1863.x, x_1863.y, x_1863.z), vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1870 : f32 = u_xlat6.x;
  let x_1872 : f32 = x_553.x_MainLightShadowParams.z;
  let x_1875 : f32 = x_553.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_1870 * x_1872) + x_1875);
  let x_1879 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_1879, 0.0f, 1.0f);
  let x_1882 : f32 = u_xlat80;
  u_xlat56.x = (-(x_1882) + 1.0f);
  let x_1887 : f32 = u_xlat31.x;
  let x_1889 : f32 = u_xlat56.x;
  let x_1891 : f32 = u_xlat80;
  u_xlat80 = ((x_1887 * x_1889) + x_1891);
  let x_1893 : vec3<f32> = u_xlat28;
  let x_1895 : vec4<f32> = u_xlat4;
  u_xlat31.x = dot(-(x_1893), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1900 : f32 = u_xlat31.x;
  let x_1902 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1900 + x_1902);
  let x_1905 : vec4<f32> = u_xlat4;
  let x_1907 : vec3<f32> = u_xlat31;
  let x_1911 : vec3<f32> = u_xlat28;
  u_xlat31 = ((vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * -(vec3<f32>(x_1907.x, x_1907.x, x_1907.x))) + -(x_1911));
  let x_1914 : vec4<f32> = u_xlat4;
  let x_1916 : vec3<f32> = u_xlat28;
  u_xlat7.x = dot(vec3<f32>(x_1914.x, x_1914.y, x_1914.z), x_1916);
  let x_1920 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1920, 0.0f, 1.0f);
  let x_1924 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_1924) + 1.0f);
  let x_1929 : f32 = u_xlat7.x;
  let x_1931 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1929 * x_1931);
  let x_1935 : f32 = u_xlat7.x;
  let x_1937 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1935 * x_1937);
  let x_1941 : f32 = u_xlat1.x;
  u_xlat32.x = ((-(x_1941) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1949 : f32 = u_xlat1.x;
  let x_1951 : f32 = u_xlat32.x;
  u_xlat1.x = (x_1949 * x_1951);
  let x_1955 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1955 * 6.0f);
  let x_1967 : vec3<f32> = u_xlat31;
  let x_1969 : f32 = u_xlat1.x;
  let x_1970 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1967, x_1969);
  u_xlat8 = x_1970;
  let x_1972 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1972 + -1.0f);
  let x_1976 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_1978 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1976 * x_1978) + 1.0f);
  let x_1983 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1983, 0.0f);
  let x_1987 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1987);
  let x_1991 : f32 = u_xlat1.x;
  let x_1993 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1991 * x_1993);
  let x_1997 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1997);
  let x_2001 : f32 = u_xlat1.x;
  let x_2003 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2001 * x_2003);
  let x_2006 : vec4<f32> = u_xlat8;
  let x_2008 : vec2<f32> = u_xlat1;
  u_xlat31 = (vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * vec3<f32>(x_2008.x, x_2008.x, x_2008.x));
  let x_2011 : vec3<f32> = u_xlat26;
  let x_2013 : vec3<f32> = u_xlat26;
  u_xlat1 = ((vec2<f32>(x_2011.x, x_2011.x) * vec2<f32>(x_2013.x, x_2013.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2019 : f32 = u_xlat1.y;
  u_xlat26.x = (1.0f / x_2019);
  let x_2022 : vec4<f32> = u_xlat0;
  let x_2025 : f32 = u_xlat76;
  u_xlat32 = (-(vec3<f32>(x_2022.x, x_2022.y, x_2022.z)) + vec3<f32>(x_2025, x_2025, x_2025));
  let x_2028 : vec4<f32> = u_xlat7;
  let x_2030 : vec3<f32> = u_xlat32;
  let x_2032 : vec4<f32> = u_xlat0;
  let x_2034 : vec3<f32> = ((vec3<f32>(x_2028.x, x_2028.x, x_2028.x) * x_2030) + vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2035 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2035.w);
  let x_2037 : vec3<f32> = u_xlat26;
  let x_2039 : vec4<f32> = u_xlat7;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.x, x_2037.x) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
  let x_2042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2044 : vec3<f32> = u_xlat31;
  let x_2045 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2044 * vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
  let x_2048 : vec3<f32> = u_xlat5;
  let x_2049 : vec3<f32> = u_xlat27;
  let x_2051 : vec3<f32> = u_xlat31;
  u_xlat5 = ((x_2048 * x_2049) + x_2051);
  let x_2053 : f32 = u_xlat80;
  let x_2055 : f32 = x_185.unity_LightData.z;
  u_xlat26.x = (x_2053 * x_2055);
  let x_2058 : vec4<f32> = u_xlat4;
  let x_2061 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_2058.x, x_2058.y, x_2058.z), vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2064, 0.0f, 1.0f);
  let x_2066 : f32 = u_xlat76;
  let x_2068 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2066 * x_2068);
  let x_2071 : vec3<f32> = u_xlat26;
  let x_2074 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2071.x, x_2071.x, x_2071.x) * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec3<f32> = u_xlat28;
  let x_2079 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2081 : vec3<f32> = (x_2077 + vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
  let x_2084 : vec4<f32> = u_xlat7;
  let x_2086 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
  let x_2091 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_2091, 1.17549435e-38f);
  let x_2096 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_2096);
  let x_2099 : vec3<f32> = u_xlat26;
  let x_2101 : vec4<f32> = u_xlat7;
  let x_2103 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.x, x_2099.x) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2106 : vec4<f32> = u_xlat4;
  let x_2108 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2113 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2113, 0.0f, 1.0f);
  let x_2117 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2119 : vec4<f32> = u_xlat7;
  u_xlat26.z = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
  let x_2124 : f32 = u_xlat26.z;
  u_xlat26.z = clamp(x_2124, 0.0f, 1.0f);
  let x_2127 : vec3<f32> = u_xlat26;
  let x_2129 : vec3<f32> = u_xlat26;
  let x_2131 : vec2<f32> = (vec2<f32>(x_2127.x, x_2127.z) * vec2<f32>(x_2129.x, x_2129.z));
  let x_2132 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_2131.x, x_2132.y, x_2131.y);
  let x_2135 : f32 = u_xlat26.x;
  let x_2137 : f32 = u_xlat1.x;
  u_xlat26.x = ((x_2135 * x_2137) + 1.00001001358032226562f);
  let x_2143 : f32 = u_xlat26.x;
  let x_2145 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2143 * x_2145);
  let x_2149 : f32 = u_xlat26.z;
  u_xlat76 = max(x_2149, 0.10000000149011611938f);
  let x_2152 : f32 = u_xlat76;
  let x_2154 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2152 * x_2154);
  let x_2157 : f32 = u_xlat79;
  let x_2159 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2157 * x_2159);
  let x_2163 : f32 = u_xlat51.x;
  let x_2165 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2163 / x_2165);
  let x_2168 : vec4<f32> = u_xlat0;
  let x_2170 : vec3<f32> = u_xlat26;
  let x_2173 : vec3<f32> = u_xlat27;
  let x_2174 : vec3<f32> = ((vec3<f32>(x_2168.x, x_2168.y, x_2168.z) * vec3<f32>(x_2170.x, x_2170.x, x_2170.x)) + x_2173);
  let x_2175 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
  let x_2177 : vec3<f32> = u_xlat31;
  let x_2178 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2177 * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2182 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2184 : f32 = x_185.unity_LightData.y;
  u_xlat26.x = min(x_2182, x_2184);
  let x_2190 : f32 = u_xlat26.x;
  u_xlatu26 = bitcast<u32>(i32(x_2190));
  let x_2194 : f32 = u_xlat6.x;
  let x_2197 : f32 = x_553.x_AdditionalShadowFadeParams.x;
  let x_2200 : f32 = x_553.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2194 * x_2197) + x_2200);
  let x_2202 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2202, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2214 : u32 = u_xlatu_loop_1;
    let x_2215 : u32 = u_xlatu26;
    if ((x_2214 < x_2215)) {
    } else {
      break;
    }
    let x_2218 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2218 >> 2u);
    let x_2222 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2222 & 3u));
    let x_2225 : u32 = u_xlatu6;
    let x_2228 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2225)];
    let x_2238 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2243 : vec4<u32> = indexable[x_2238];
    u_xlat6.x = dot(x_2228, bitcast<vec4<f32>>(x_2243));
    let x_2249 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2249);
    let x_2251 : vec3<f32> = vs_TEXCOORD1;
    let x_2262 : i32 = u_xlati6;
    let x_2264 : vec4<f32> = x_2261.x_AdditionalLightsPosition[x_2262];
    let x_2267 : i32 = u_xlati6;
    let x_2269 : vec4<f32> = x_2261.x_AdditionalLightsPosition[x_2267];
    let x_2271 : vec3<f32> = ((-(x_2251) * vec3<f32>(x_2264.w, x_2264.w, x_2264.w)) + vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
    let x_2272 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
    let x_2275 : vec4<f32> = u_xlat8;
    let x_2277 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2275.x, x_2275.y, x_2275.z), vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
    let x_2280 : f32 = u_xlat82;
    u_xlat82 = max(x_2280, 0.00006103515625f);
    let x_2283 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2283);
    let x_2285 : f32 = u_xlat83;
    let x_2287 : vec4<f32> = u_xlat8;
    let x_2289 : vec3<f32> = (vec3<f32>(x_2285, x_2285, x_2285) * vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
    let x_2290 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
    let x_2293 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2293);
    let x_2295 : f32 = u_xlat82;
    let x_2296 : i32 = u_xlati6;
    let x_2298 : f32 = x_2261.x_AdditionalLightsAttenuation[x_2296].x;
    u_xlat82 = (x_2295 * x_2298);
    let x_2300 : f32 = u_xlat82;
    let x_2302 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2300) * x_2302) + 1.0f);
    let x_2305 : f32 = u_xlat82;
    u_xlat82 = max(x_2305, 0.0f);
    let x_2307 : f32 = u_xlat82;
    let x_2308 : f32 = u_xlat82;
    u_xlat82 = (x_2307 * x_2308);
    let x_2310 : f32 = u_xlat82;
    let x_2311 : f32 = u_xlat84;
    u_xlat82 = (x_2310 * x_2311);
    let x_2313 : i32 = u_xlati6;
    let x_2315 : vec4<f32> = x_2261.x_AdditionalLightsSpotDir[x_2313];
    let x_2317 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2315.x, x_2315.y, x_2315.z), vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : f32 = u_xlat84;
    let x_2321 : i32 = u_xlati6;
    let x_2323 : f32 = x_2261.x_AdditionalLightsAttenuation[x_2321].z;
    let x_2325 : i32 = u_xlati6;
    let x_2327 : f32 = x_2261.x_AdditionalLightsAttenuation[x_2325].w;
    u_xlat84 = ((x_2320 * x_2323) + x_2327);
    let x_2329 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2329, 0.0f, 1.0f);
    let x_2331 : f32 = u_xlat84;
    let x_2332 : f32 = u_xlat84;
    u_xlat84 = (x_2331 * x_2332);
    let x_2334 : f32 = u_xlat82;
    let x_2335 : f32 = u_xlat84;
    u_xlat82 = (x_2334 * x_2335);
    let x_2339 : i32 = u_xlati6;
    let x_2341 : f32 = x_553.x_AdditionalShadowParams[x_2339].w;
    u_xlati84 = i32(x_2341);
    let x_2346 : i32 = u_xlati84;
    u_xlatb10.x = (x_2346 >= 0i);
    let x_2350 : bool = u_xlatb10.x;
    if (x_2350) {
      let x_2354 : i32 = u_xlati6;
      let x_2356 : f32 = x_553.x_AdditionalShadowParams[x_2354].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2356, x_2356, x_2356, x_2356))));
      let x_2363 : bool = u_xlatb10.x;
      if (x_2363) {
        let x_2366 : vec4<f32> = u_xlat9;
        let x_2369 : vec4<f32> = u_xlat9;
        let x_2372 : vec4<bool> = (abs(vec4<f32>(x_2366.z, x_2366.z, x_2366.y, x_2366.z)) >= abs(vec4<f32>(x_2369.x, x_2369.y, x_2369.x, x_2369.x)));
        u_xlatb10 = vec3<bool>(x_2372.x, x_2372.y, x_2372.z);
        let x_2375 : bool = u_xlatb10.y;
        let x_2377 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2375 & x_2377);
        let x_2381 : vec4<f32> = u_xlat9;
        let x_2384 : vec4<bool> = (-(vec4<f32>(x_2381.z, x_2381.y, x_2381.x, x_2381.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2384.x, x_2384.y, x_2384.z);
        let x_2388 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2388);
        let x_2393 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2393);
        let x_2398 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2398);
        let x_2403 : bool = u_xlatb10.z;
        if (x_2403) {
          let x_2408 : f32 = u_xlat35.z;
          x_2404 = x_2408;
        } else {
          let x_2411 : f32 = u_xlat11.x;
          x_2404 = x_2411;
        }
        let x_2412 : f32 = x_2404;
        u_xlat60 = x_2412;
        let x_2414 : bool = u_xlatb10.x;
        if (x_2414) {
          let x_2419 : f32 = u_xlat35.x;
          x_2415 = x_2419;
        } else {
          let x_2421 : f32 = u_xlat60;
          x_2415 = x_2421;
        }
        let x_2422 : f32 = x_2415;
        u_xlat10.x = x_2422;
        let x_2424 : i32 = u_xlati6;
        let x_2426 : f32 = x_553.x_AdditionalShadowParams[x_2424].w;
        u_xlat35.x = trunc(x_2426);
        let x_2430 : f32 = u_xlat10.x;
        let x_2432 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2430 + x_2432);
        let x_2436 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2436);
      }
      let x_2438 : i32 = u_xlati84;
      u_xlati84 = (x_2438 << bitcast<u32>(2i));
      let x_2440 : vec3<f32> = vs_TEXCOORD1;
      let x_2443 : i32 = u_xlati84;
      let x_2446 : i32 = u_xlati84;
      let x_2450 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2443 + 1i) / 4i)][((x_2446 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2440.y, x_2440.y, x_2440.y, x_2440.y) * x_2450);
      let x_2452 : i32 = u_xlati84;
      let x_2454 : i32 = u_xlati84;
      let x_2457 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[(x_2452 / 4i)][(x_2454 % 4i)];
      let x_2458 : vec3<f32> = vs_TEXCOORD1;
      let x_2461 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2457 * vec4<f32>(x_2458.x, x_2458.x, x_2458.x, x_2458.x)) + x_2461);
      let x_2463 : i32 = u_xlati84;
      let x_2466 : i32 = u_xlati84;
      let x_2470 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2463 + 2i) / 4i)][((x_2466 + 2i) % 4i)];
      let x_2471 : vec3<f32> = vs_TEXCOORD1;
      let x_2474 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2470 * vec4<f32>(x_2471.z, x_2471.z, x_2471.z, x_2471.z)) + x_2474);
      let x_2476 : vec4<f32> = u_xlat10;
      let x_2477 : i32 = u_xlati84;
      let x_2480 : i32 = u_xlati84;
      let x_2484 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2477 + 3i) / 4i)][((x_2480 + 3i) % 4i)];
      u_xlat10 = (x_2476 + x_2484);
      let x_2486 : vec4<f32> = u_xlat10;
      let x_2488 : vec4<f32> = u_xlat10;
      let x_2490 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) / vec3<f32>(x_2488.w, x_2488.w, x_2488.w));
      let x_2491 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
      let x_2494 : i32 = u_xlati6;
      let x_2496 : f32 = x_553.x_AdditionalShadowParams[x_2494].y;
      u_xlatb84 = (0.0f < x_2496);
      let x_2498 : bool = u_xlatb84;
      if (x_2498) {
        let x_2501 : i32 = u_xlati6;
        let x_2503 : f32 = x_553.x_AdditionalShadowParams[x_2501].y;
        u_xlatb84 = (1.0f == x_2503);
        let x_2505 : bool = u_xlatb84;
        if (x_2505) {
          let x_2508 : vec4<f32> = u_xlat10;
          let x_2511 : vec4<f32> = x_553.x_AdditionalShadowOffset0;
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
          let x_2548 : vec4<f32> = x_553.x_AdditionalShadowOffset1;
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
          u_xlat84 = dot(x_2580, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2584 : i32 = u_xlati6;
          let x_2586 : f32 = x_553.x_AdditionalShadowParams[x_2584].y;
          u_xlatb85 = (2.0f == x_2586);
          let x_2588 : bool = u_xlatb85;
          if (x_2588) {
            let x_2591 : vec4<f32> = u_xlat10;
            let x_2595 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2598 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2595.z, x_2595.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2599 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat11;
            let x_2603 : vec2<f32> = floor(vec2<f32>(x_2601.x, x_2601.y));
            let x_2604 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2603.x, x_2603.y, x_2604.z, x_2604.w);
            let x_2607 : vec4<f32> = u_xlat10;
            let x_2610 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2613 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2607.x, x_2607.y) * vec2<f32>(x_2610.z, x_2610.w)) + -(vec2<f32>(x_2613.x, x_2613.y)));
            let x_2617 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2617.x, x_2617.x, x_2617.y, x_2617.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2620 : vec4<f32> = u_xlat12;
            let x_2622 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2620.x, x_2620.x, x_2620.z, x_2620.z) * vec4<f32>(x_2622.x, x_2622.x, x_2622.z, x_2622.z));
            let x_2625 : vec4<f32> = u_xlat13;
            let x_2627 : vec2<f32> = (vec2<f32>(x_2625.y, x_2625.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2628 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2627.x, x_2628.y, x_2627.y, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat13;
            let x_2633 : vec2<f32> = u_xlat61;
            let x_2635 : vec2<f32> = ((vec2<f32>(x_2630.x, x_2630.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2633));
            let x_2636 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2639 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2639) + vec2<f32>(1.0f, 1.0f));
            let x_2642 : vec2<f32> = u_xlat61;
            let x_2643 : vec2<f32> = min(x_2642, vec2<f32>(0.0f, 0.0f));
            let x_2644 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
            let x_2646 : vec4<f32> = u_xlat14;
            let x_2649 : vec4<f32> = u_xlat14;
            let x_2652 : vec2<f32> = u_xlat63;
            let x_2653 : vec2<f32> = ((-(vec2<f32>(x_2646.x, x_2646.y)) * vec2<f32>(x_2649.x, x_2649.y)) + x_2652);
            let x_2654 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2653.x, x_2653.y, x_2654.z, x_2654.w);
            let x_2656 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2656, vec2<f32>(0.0f, 0.0f));
            let x_2658 : vec2<f32> = u_xlat61;
            let x_2660 : vec2<f32> = u_xlat61;
            let x_2662 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2658) * x_2660) + vec2<f32>(x_2662.y, x_2662.w));
            let x_2665 : vec4<f32> = u_xlat14;
            let x_2667 : vec2<f32> = (vec2<f32>(x_2665.x, x_2665.y) + vec2<f32>(1.0f, 1.0f));
            let x_2668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
            let x_2670 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2670 + vec2<f32>(1.0f, 1.0f));
            let x_2672 : vec4<f32> = u_xlat13;
            let x_2674 : vec2<f32> = (vec2<f32>(x_2672.x, x_2672.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2675 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2674.x, x_2674.y, x_2675.z, x_2675.w);
            let x_2677 : vec2<f32> = u_xlat63;
            let x_2678 : vec2<f32> = (x_2677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2679 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2678.x, x_2678.y, x_2679.z, x_2679.w);
            let x_2681 : vec4<f32> = u_xlat14;
            let x_2683 : vec2<f32> = (vec2<f32>(x_2681.x, x_2681.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2684 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2683.x, x_2683.y, x_2684.z, x_2684.w);
            let x_2686 : vec2<f32> = u_xlat61;
            let x_2687 : vec2<f32> = (x_2686 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2688 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2687.x, x_2687.y, x_2688.z, x_2688.w);
            let x_2690 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2690.y, x_2690.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2694 : f32 = u_xlat14.x;
            u_xlat15.z = x_2694;
            let x_2697 : f32 = u_xlat61.x;
            u_xlat15.w = x_2697;
            let x_2700 : f32 = u_xlat16.x;
            u_xlat13.z = x_2700;
            let x_2703 : f32 = u_xlat12.x;
            u_xlat13.w = x_2703;
            let x_2705 : vec4<f32> = u_xlat13;
            let x_2707 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2705.z, x_2705.w, x_2705.x, x_2705.z) + vec4<f32>(x_2707.z, x_2707.w, x_2707.x, x_2707.z));
            let x_2711 : f32 = u_xlat15.y;
            u_xlat14.z = x_2711;
            let x_2714 : f32 = u_xlat61.y;
            u_xlat14.w = x_2714;
            let x_2717 : f32 = u_xlat13.y;
            u_xlat16.z = x_2717;
            let x_2720 : f32 = u_xlat12.z;
            u_xlat16.w = x_2720;
            let x_2722 : vec4<f32> = u_xlat14;
            let x_2724 : vec4<f32> = u_xlat16;
            let x_2726 : vec3<f32> = (vec3<f32>(x_2722.z, x_2722.y, x_2722.w) + vec3<f32>(x_2724.z, x_2724.y, x_2724.w));
            let x_2727 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
            let x_2729 : vec4<f32> = u_xlat13;
            let x_2731 : vec4<f32> = u_xlat17;
            let x_2733 : vec3<f32> = (vec3<f32>(x_2729.x, x_2729.z, x_2729.w) / vec3<f32>(x_2731.z, x_2731.w, x_2731.y));
            let x_2734 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
            let x_2736 : vec4<f32> = u_xlat13;
            let x_2738 : vec3<f32> = (vec3<f32>(x_2736.x, x_2736.y, x_2736.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2739 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat16;
            let x_2743 : vec4<f32> = u_xlat12;
            let x_2745 : vec3<f32> = (vec3<f32>(x_2741.z, x_2741.y, x_2741.w) / vec3<f32>(x_2743.x, x_2743.y, x_2743.z));
            let x_2746 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat14;
            let x_2750 : vec3<f32> = (vec3<f32>(x_2748.x, x_2748.y, x_2748.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat13;
            let x_2756 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2758 : vec3<f32> = (vec3<f32>(x_2753.y, x_2753.x, x_2753.z) * vec3<f32>(x_2756.x, x_2756.x, x_2756.x));
            let x_2759 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
            let x_2761 : vec4<f32> = u_xlat14;
            let x_2764 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2766 : vec3<f32> = (vec3<f32>(x_2761.x, x_2761.y, x_2761.z) * vec3<f32>(x_2764.y, x_2764.y, x_2764.y));
            let x_2767 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
            let x_2770 : f32 = u_xlat14.x;
            u_xlat13.w = x_2770;
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2775 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y) * vec4<f32>(x_2775.x, x_2775.y, x_2775.x, x_2775.y)) + vec4<f32>(x_2778.y, x_2778.w, x_2778.x, x_2778.w));
            let x_2781 : vec4<f32> = u_xlat11;
            let x_2784 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2781.x, x_2781.y) * vec2<f32>(x_2784.x, x_2784.y)) + vec2<f32>(x_2787.z, x_2787.w));
            let x_2791 : f32 = u_xlat13.y;
            u_xlat14.w = x_2791;
            let x_2793 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.y, x_2793.z);
            let x_2795 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2795.x, x_2794.x, x_2795.z, x_2794.y);
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2800 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y) * vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y)) + vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2803.y));
            let x_2806 : vec4<f32> = u_xlat11;
            let x_2809 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) * vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y)) + vec4<f32>(x_2812.w, x_2812.y, x_2812.w, x_2812.z));
            let x_2815 : vec4<f32> = u_xlat11;
            let x_2818 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y) * vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y)) + vec4<f32>(x_2821.x, x_2821.w, x_2821.z, x_2821.w));
            let x_2824 : vec4<f32> = u_xlat12;
            let x_2826 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2824.x, x_2824.x, x_2824.x, x_2824.y) * vec4<f32>(x_2826.z, x_2826.w, x_2826.y, x_2826.z));
            let x_2829 : vec4<f32> = u_xlat12;
            let x_2831 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2829.y, x_2829.y, x_2829.z, x_2829.z) * x_2831);
            let x_2835 : f32 = u_xlat12.z;
            let x_2837 : f32 = u_xlat17.y;
            u_xlat85 = (x_2835 * x_2837);
            let x_2840 : vec4<f32> = u_xlat15;
            let x_2841 : vec2<f32> = vec2<f32>(x_2840.x, x_2840.y);
            let x_2843 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
            let x_2850 : vec3<f32> = txVec34;
            let x_2852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
            u_xlat11.x = x_2852;
            let x_2855 : vec4<f32> = u_xlat15;
            let x_2856 : vec2<f32> = vec2<f32>(x_2855.z, x_2855.w);
            let x_2858 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2856.x, x_2856.y, x_2858);
            let x_2866 : vec3<f32> = txVec35;
            let x_2868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
            u_xlat36 = x_2868;
            let x_2869 : f32 = u_xlat36;
            let x_2871 : f32 = u_xlat18.y;
            u_xlat36 = (x_2869 * x_2871);
            let x_2874 : f32 = u_xlat18.x;
            let x_2876 : f32 = u_xlat11.x;
            let x_2878 : f32 = u_xlat36;
            u_xlat11.x = ((x_2874 * x_2876) + x_2878);
            let x_2882 : vec2<f32> = u_xlat61;
            let x_2884 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
            let x_2891 : vec3<f32> = txVec36;
            let x_2893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
            u_xlat36 = x_2893;
            let x_2895 : f32 = u_xlat18.z;
            let x_2896 : f32 = u_xlat36;
            let x_2899 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2895 * x_2896) + x_2899);
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.x, x_2903.y);
            let x_2906 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec37;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat36 = x_2915;
            let x_2917 : f32 = u_xlat18.w;
            let x_2918 : f32 = u_xlat36;
            let x_2921 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2917 * x_2918) + x_2921);
            let x_2925 : vec4<f32> = u_xlat16;
            let x_2926 : vec2<f32> = vec2<f32>(x_2925.x, x_2925.y);
            let x_2928 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2926.x, x_2926.y, x_2928);
            let x_2935 : vec3<f32> = txVec38;
            let x_2937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2935.xy, x_2935.z);
            u_xlat36 = x_2937;
            let x_2939 : f32 = u_xlat19.x;
            let x_2940 : f32 = u_xlat36;
            let x_2943 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2939 * x_2940) + x_2943);
            let x_2947 : vec4<f32> = u_xlat16;
            let x_2948 : vec2<f32> = vec2<f32>(x_2947.z, x_2947.w);
            let x_2950 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2948.x, x_2948.y, x_2950);
            let x_2957 : vec3<f32> = txVec39;
            let x_2959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2957.xy, x_2957.z);
            u_xlat36 = x_2959;
            let x_2961 : f32 = u_xlat19.y;
            let x_2962 : f32 = u_xlat36;
            let x_2965 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2961 * x_2962) + x_2965);
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2970 : vec2<f32> = vec2<f32>(x_2969.z, x_2969.w);
            let x_2972 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2970.x, x_2970.y, x_2972);
            let x_2979 : vec3<f32> = txVec40;
            let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
            u_xlat36 = x_2981;
            let x_2983 : f32 = u_xlat19.z;
            let x_2984 : f32 = u_xlat36;
            let x_2987 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2983 * x_2984) + x_2987);
            let x_2991 : vec4<f32> = u_xlat13;
            let x_2992 : vec2<f32> = vec2<f32>(x_2991.x, x_2991.y);
            let x_2994 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2992.x, x_2992.y, x_2994);
            let x_3001 : vec3<f32> = txVec41;
            let x_3003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3001.xy, x_3001.z);
            u_xlat36 = x_3003;
            let x_3005 : f32 = u_xlat19.w;
            let x_3006 : f32 = u_xlat36;
            let x_3009 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3005 * x_3006) + x_3009);
            let x_3013 : vec4<f32> = u_xlat13;
            let x_3014 : vec2<f32> = vec2<f32>(x_3013.z, x_3013.w);
            let x_3016 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3014.x, x_3014.y, x_3016);
            let x_3023 : vec3<f32> = txVec42;
            let x_3025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3023.xy, x_3023.z);
            u_xlat36 = x_3025;
            let x_3026 : f32 = u_xlat85;
            let x_3027 : f32 = u_xlat36;
            let x_3030 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3026 * x_3027) + x_3030);
          } else {
            let x_3033 : vec4<f32> = u_xlat10;
            let x_3036 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3039 : vec2<f32> = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.z, x_3036.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3040 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3039.x, x_3039.y, x_3040.z, x_3040.w);
            let x_3042 : vec4<f32> = u_xlat11;
            let x_3044 : vec2<f32> = floor(vec2<f32>(x_3042.x, x_3042.y));
            let x_3045 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3047 : vec4<f32> = u_xlat10;
            let x_3050 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3050.z, x_3050.w)) + -(vec2<f32>(x_3053.x, x_3053.y)));
            let x_3057 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3057.x, x_3057.x, x_3057.y, x_3057.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3060.x, x_3060.x, x_3060.z, x_3060.z) * vec4<f32>(x_3062.x, x_3062.x, x_3062.z, x_3062.z));
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3067 : vec2<f32> = (vec2<f32>(x_3065.y, x_3065.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3068.x, x_3067.x, x_3068.z, x_3067.y);
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3073 : vec2<f32> = u_xlat61;
            let x_3075 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3073));
            let x_3076 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3075.x, x_3076.y, x_3075.y, x_3076.w);
            let x_3078 : vec2<f32> = u_xlat61;
            let x_3080 : vec2<f32> = (-(x_3078) + vec2<f32>(1.0f, 1.0f));
            let x_3081 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3080.x, x_3080.y, x_3081.z, x_3081.w);
            let x_3083 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3083, vec2<f32>(0.0f, 0.0f));
            let x_3085 : vec2<f32> = u_xlat63;
            let x_3087 : vec2<f32> = u_xlat63;
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3091 : vec2<f32> = ((-(x_3085) * x_3087) + vec2<f32>(x_3089.x, x_3089.y));
            let x_3092 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3091.x, x_3091.y, x_3092.z, x_3092.w);
            let x_3094 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3094, vec2<f32>(0.0f, 0.0f));
            let x_3097 : vec2<f32> = u_xlat63;
            let x_3099 : vec2<f32> = u_xlat63;
            let x_3101 : vec4<f32> = u_xlat12;
            let x_3103 : vec2<f32> = ((-(x_3097) * x_3099) + vec2<f32>(x_3101.y, x_3101.w));
            let x_3104 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3103.x, x_3104.y, x_3103.y);
            let x_3106 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = (vec2<f32>(x_3106.x, x_3106.y) + vec2<f32>(2.0f, 2.0f));
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
            let x_3111 : vec3<f32> = u_xlat37;
            let x_3113 : vec2<f32> = (vec2<f32>(x_3111.x, x_3111.z) + vec2<f32>(2.0f, 2.0f));
            let x_3114 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3114.x, x_3113.x, x_3114.z, x_3113.y);
            let x_3117 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3117 * 0.08163200318813323975f);
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3122 : vec3<f32> = (vec3<f32>(x_3120.z, x_3120.x, x_3120.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3123 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3123.w);
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3127 : vec2<f32> = (vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3128 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
            let x_3131 : f32 = u_xlat16.y;
            u_xlat15.x = x_3131;
            let x_3133 : vec2<f32> = u_xlat61;
            let x_3136 : vec2<f32> = ((vec2<f32>(x_3133.x, x_3133.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3137 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3137.x, x_3136.x, x_3137.z, x_3136.y);
            let x_3139 : vec2<f32> = u_xlat61;
            let x_3142 : vec2<f32> = ((vec2<f32>(x_3139.x, x_3139.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3143 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3142.x, x_3143.y, x_3142.y, x_3143.w);
            let x_3146 : f32 = u_xlat12.x;
            u_xlat13.y = x_3146;
            let x_3149 : f32 = u_xlat14.y;
            u_xlat13.w = x_3149;
            let x_3151 : vec4<f32> = u_xlat13;
            let x_3152 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3151 + x_3152);
            let x_3154 : vec2<f32> = u_xlat61;
            let x_3157 : vec2<f32> = ((vec2<f32>(x_3154.y, x_3154.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3158 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3158.x, x_3157.x, x_3158.z, x_3157.y);
            let x_3160 : vec2<f32> = u_xlat61;
            let x_3163 : vec2<f32> = ((vec2<f32>(x_3160.y, x_3160.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3163.x, x_3164.y, x_3163.y, x_3164.w);
            let x_3167 : f32 = u_xlat12.y;
            u_xlat14.y = x_3167;
            let x_3169 : vec4<f32> = u_xlat14;
            let x_3170 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3169 + x_3170);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3173 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3172 / x_3173);
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3175 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3177 : vec4<f32> = u_xlat14;
            let x_3178 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3177 / x_3178);
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3180 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3182 : vec4<f32> = u_xlat13;
            let x_3185 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3182.w, x_3182.x, x_3182.y, x_3182.z) * vec4<f32>(x_3185.x, x_3185.x, x_3185.x, x_3185.x));
            let x_3188 : vec4<f32> = u_xlat14;
            let x_3191 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3188.x, x_3188.w, x_3188.y, x_3188.z) * vec4<f32>(x_3191.y, x_3191.y, x_3191.y, x_3191.y));
            let x_3194 : vec4<f32> = u_xlat13;
            let x_3195 : vec3<f32> = vec3<f32>(x_3194.y, x_3194.z, x_3194.w);
            let x_3196 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3195.x, x_3196.y, x_3195.y, x_3195.z);
            let x_3199 : f32 = u_xlat14.x;
            u_xlat16.y = x_3199;
            let x_3201 : vec4<f32> = u_xlat11;
            let x_3204 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3207 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3201.x, x_3201.y, x_3201.x, x_3201.y) * vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.y)) + vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3207.y));
            let x_3210 : vec4<f32> = u_xlat11;
            let x_3213 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3216 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3210.x, x_3210.y) * vec2<f32>(x_3213.x, x_3213.y)) + vec2<f32>(x_3216.w, x_3216.y));
            let x_3220 : f32 = u_xlat16.y;
            u_xlat13.y = x_3220;
            let x_3223 : f32 = u_xlat14.z;
            u_xlat16.y = x_3223;
            let x_3225 : vec4<f32> = u_xlat11;
            let x_3228 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3231 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3225.x, x_3225.y, x_3225.x, x_3225.y) * vec4<f32>(x_3228.x, x_3228.y, x_3228.x, x_3228.y)) + vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3231.y));
            let x_3234 : vec4<f32> = u_xlat11;
            let x_3237 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3240 : vec4<f32> = u_xlat16;
            let x_3242 : vec2<f32> = ((vec2<f32>(x_3234.x, x_3234.y) * vec2<f32>(x_3237.x, x_3237.y)) + vec2<f32>(x_3240.w, x_3240.y));
            let x_3243 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3242.x, x_3242.y, x_3243.z, x_3243.w);
            let x_3246 : f32 = u_xlat16.y;
            u_xlat13.z = x_3246;
            let x_3249 : vec4<f32> = u_xlat11;
            let x_3252 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3255 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3249.x, x_3249.y, x_3249.x, x_3249.y) * vec4<f32>(x_3252.x, x_3252.y, x_3252.x, x_3252.y)) + vec4<f32>(x_3255.x, x_3255.y, x_3255.x, x_3255.z));
            let x_3259 : f32 = u_xlat14.w;
            u_xlat16.y = x_3259;
            let x_3262 : vec4<f32> = u_xlat11;
            let x_3265 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3268 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3262.x, x_3262.y, x_3262.x, x_3262.y) * vec4<f32>(x_3265.x, x_3265.y, x_3265.x, x_3265.y)) + vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3268.y));
            let x_3272 : vec4<f32> = u_xlat11;
            let x_3275 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3272.x, x_3272.y) * vec2<f32>(x_3275.x, x_3275.y)) + vec2<f32>(x_3278.w, x_3278.y));
            let x_3282 : f32 = u_xlat16.y;
            u_xlat13.w = x_3282;
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3291 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3285.x, x_3285.y) * vec2<f32>(x_3288.x, x_3288.y)) + vec2<f32>(x_3291.x, x_3291.w));
            let x_3294 : vec4<f32> = u_xlat16;
            let x_3295 : vec3<f32> = vec3<f32>(x_3294.x, x_3294.z, x_3294.w);
            let x_3296 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3295.x, x_3296.y, x_3295.y, x_3295.z);
            let x_3298 : vec4<f32> = u_xlat11;
            let x_3301 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3304 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3298.x, x_3298.y, x_3298.x, x_3298.y) * vec4<f32>(x_3301.x, x_3301.y, x_3301.x, x_3301.y)) + vec4<f32>(x_3304.x, x_3304.y, x_3304.z, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat11;
            let x_3310 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3313 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3307.x, x_3307.y) * vec2<f32>(x_3310.x, x_3310.y)) + vec2<f32>(x_3313.w, x_3313.y));
            let x_3317 : f32 = u_xlat13.x;
            u_xlat14.x = x_3317;
            let x_3319 : vec4<f32> = u_xlat11;
            let x_3322 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat14;
            let x_3327 : vec2<f32> = ((vec2<f32>(x_3319.x, x_3319.y) * vec2<f32>(x_3322.x, x_3322.y)) + vec2<f32>(x_3325.x, x_3325.y));
            let x_3328 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
            let x_3331 : vec4<f32> = u_xlat12;
            let x_3333 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3331.x, x_3331.x, x_3331.x, x_3331.x) * x_3333);
            let x_3336 : vec4<f32> = u_xlat12;
            let x_3338 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3336.y, x_3336.y, x_3336.y, x_3336.y) * x_3338);
            let x_3341 : vec4<f32> = u_xlat12;
            let x_3343 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3341.z, x_3341.z, x_3341.z, x_3341.z) * x_3343);
            let x_3345 : vec4<f32> = u_xlat12;
            let x_3347 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3345.w, x_3345.w, x_3345.w, x_3345.w) * x_3347);
            let x_3350 : vec4<f32> = u_xlat17;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.x, x_3350.y);
            let x_3353 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec43;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat85 = x_3362;
            let x_3364 : vec4<f32> = u_xlat17;
            let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
            let x_3374 : vec3<f32> = txVec44;
            let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
            u_xlat13.x = x_3376;
            let x_3379 : f32 = u_xlat13.x;
            let x_3381 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3379 * x_3381);
            let x_3385 : f32 = u_xlat22.x;
            let x_3386 : f32 = u_xlat85;
            let x_3389 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3385 * x_3386) + x_3389);
            let x_3392 : vec2<f32> = u_xlat61;
            let x_3394 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3392.x, x_3392.y, x_3394);
            let x_3401 : vec3<f32> = txVec45;
            let x_3403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3401.xy, x_3401.z);
            u_xlat61.x = x_3403;
            let x_3406 : f32 = u_xlat22.z;
            let x_3408 : f32 = u_xlat61.x;
            let x_3410 : f32 = u_xlat85;
            u_xlat85 = ((x_3406 * x_3408) + x_3410);
            let x_3413 : vec4<f32> = u_xlat20;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.x, x_3413.y);
            let x_3416 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec46;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat61.x = x_3425;
            let x_3428 : f32 = u_xlat22.w;
            let x_3430 : f32 = u_xlat61.x;
            let x_3432 : f32 = u_xlat85;
            u_xlat85 = ((x_3428 * x_3430) + x_3432);
            let x_3435 : vec4<f32> = u_xlat18;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.x, x_3435.y);
            let x_3438 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec47;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat61.x = x_3447;
            let x_3450 : f32 = u_xlat23.x;
            let x_3452 : f32 = u_xlat61.x;
            let x_3454 : f32 = u_xlat85;
            u_xlat85 = ((x_3450 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat18;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.z, x_3457.w);
            let x_3460 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec48;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat61.x = x_3469;
            let x_3472 : f32 = u_xlat23.y;
            let x_3474 : f32 = u_xlat61.x;
            let x_3476 : f32 = u_xlat85;
            u_xlat85 = ((x_3472 * x_3474) + x_3476);
            let x_3479 : vec4<f32> = u_xlat19;
            let x_3480 : vec2<f32> = vec2<f32>(x_3479.x, x_3479.y);
            let x_3482 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3480.x, x_3480.y, x_3482);
            let x_3489 : vec3<f32> = txVec49;
            let x_3491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3489.xy, x_3489.z);
            u_xlat61.x = x_3491;
            let x_3494 : f32 = u_xlat23.z;
            let x_3496 : f32 = u_xlat61.x;
            let x_3498 : f32 = u_xlat85;
            u_xlat85 = ((x_3494 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat20;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.z, x_3501.w);
            let x_3504 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec50;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat61.x = x_3513;
            let x_3516 : f32 = u_xlat23.w;
            let x_3518 : f32 = u_xlat61.x;
            let x_3520 : f32 = u_xlat85;
            u_xlat85 = ((x_3516 * x_3518) + x_3520);
            let x_3523 : vec4<f32> = u_xlat21;
            let x_3524 : vec2<f32> = vec2<f32>(x_3523.x, x_3523.y);
            let x_3526 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3524.x, x_3524.y, x_3526);
            let x_3533 : vec3<f32> = txVec51;
            let x_3535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3533.xy, x_3533.z);
            u_xlat61.x = x_3535;
            let x_3538 : f32 = u_xlat24.x;
            let x_3540 : f32 = u_xlat61.x;
            let x_3542 : f32 = u_xlat85;
            u_xlat85 = ((x_3538 * x_3540) + x_3542);
            let x_3545 : vec4<f32> = u_xlat21;
            let x_3546 : vec2<f32> = vec2<f32>(x_3545.z, x_3545.w);
            let x_3548 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
            let x_3555 : vec3<f32> = txVec52;
            let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
            u_xlat61.x = x_3557;
            let x_3560 : f32 = u_xlat24.y;
            let x_3562 : f32 = u_xlat61.x;
            let x_3564 : f32 = u_xlat85;
            u_xlat85 = ((x_3560 * x_3562) + x_3564);
            let x_3567 : vec2<f32> = u_xlat38;
            let x_3569 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec53;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat61.x = x_3578;
            let x_3581 : f32 = u_xlat24.z;
            let x_3583 : f32 = u_xlat61.x;
            let x_3585 : f32 = u_xlat85;
            u_xlat85 = ((x_3581 * x_3583) + x_3585);
            let x_3588 : vec2<f32> = u_xlat69;
            let x_3590 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3588.x, x_3588.y, x_3590);
            let x_3597 : vec3<f32> = txVec54;
            let x_3599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3597.xy, x_3597.z);
            u_xlat61.x = x_3599;
            let x_3602 : f32 = u_xlat24.w;
            let x_3604 : f32 = u_xlat61.x;
            let x_3606 : f32 = u_xlat85;
            u_xlat85 = ((x_3602 * x_3604) + x_3606);
            let x_3609 : vec4<f32> = u_xlat16;
            let x_3610 : vec2<f32> = vec2<f32>(x_3609.x, x_3609.y);
            let x_3612 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3610.x, x_3610.y, x_3612);
            let x_3619 : vec3<f32> = txVec55;
            let x_3621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3619.xy, x_3619.z);
            u_xlat61.x = x_3621;
            let x_3624 : f32 = u_xlat12.x;
            let x_3626 : f32 = u_xlat61.x;
            let x_3628 : f32 = u_xlat85;
            u_xlat85 = ((x_3624 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat16;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.z, x_3631.w);
            let x_3634 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec56;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat61.x = x_3643;
            let x_3646 : f32 = u_xlat12.y;
            let x_3648 : f32 = u_xlat61.x;
            let x_3650 : f32 = u_xlat85;
            u_xlat85 = ((x_3646 * x_3648) + x_3650);
            let x_3653 : vec2<f32> = u_xlat64;
            let x_3655 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec57;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat61.x = x_3664;
            let x_3667 : f32 = u_xlat12.z;
            let x_3669 : f32 = u_xlat61.x;
            let x_3671 : f32 = u_xlat85;
            u_xlat85 = ((x_3667 * x_3669) + x_3671);
            let x_3674 : vec4<f32> = u_xlat11;
            let x_3675 : vec2<f32> = vec2<f32>(x_3674.x, x_3674.y);
            let x_3677 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3675.x, x_3675.y, x_3677);
            let x_3684 : vec3<f32> = txVec58;
            let x_3686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3684.xy, x_3684.z);
            u_xlat11.x = x_3686;
            let x_3689 : f32 = u_xlat12.w;
            let x_3691 : f32 = u_xlat11.x;
            let x_3693 : f32 = u_xlat85;
            u_xlat84 = ((x_3689 * x_3691) + x_3693);
          }
        }
      } else {
        let x_3697 : vec4<f32> = u_xlat10;
        let x_3698 : vec2<f32> = vec2<f32>(x_3697.x, x_3697.y);
        let x_3700 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
        let x_3707 : vec3<f32> = txVec59;
        let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
        u_xlat84 = x_3709;
      }
      let x_3710 : i32 = u_xlati6;
      let x_3712 : f32 = x_553.x_AdditionalShadowParams[x_3710].x;
      u_xlat10.x = (1.0f + -(x_3712));
      let x_3716 : f32 = u_xlat84;
      let x_3717 : i32 = u_xlati6;
      let x_3719 : f32 = x_553.x_AdditionalShadowParams[x_3717].x;
      let x_3722 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3716 * x_3719) + x_3722);
      let x_3725 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3725);
      let x_3730 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3730 >= 1.0f);
      let x_3732 : bool = u_xlatb35;
      let x_3734 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3732 | x_3734);
      let x_3738 : bool = u_xlatb10.x;
      let x_3739 : f32 = u_xlat84;
      u_xlat84 = select(x_3739, 1.0f, x_3738);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3742 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3742) + 1.0f);
    let x_3746 : f32 = u_xlat76;
    let x_3748 : f32 = u_xlat10.x;
    let x_3750 : f32 = u_xlat84;
    u_xlat84 = ((x_3746 * x_3748) + x_3750);
    let x_3752 : f32 = u_xlat82;
    let x_3753 : f32 = u_xlat84;
    u_xlat82 = (x_3752 * x_3753);
    let x_3755 : vec4<f32> = u_xlat4;
    let x_3757 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3755.x, x_3755.y, x_3755.z), vec3<f32>(x_3757.x, x_3757.y, x_3757.z));
    let x_3760 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3760, 0.0f, 1.0f);
    let x_3762 : f32 = u_xlat82;
    let x_3763 : f32 = u_xlat84;
    u_xlat82 = (x_3762 * x_3763);
    let x_3765 : f32 = u_xlat82;
    let x_3767 : i32 = u_xlati6;
    let x_3769 : vec4<f32> = x_2261.x_AdditionalLightsColor[x_3767];
    let x_3771 : vec3<f32> = (vec3<f32>(x_3765, x_3765, x_3765) * vec3<f32>(x_3769.x, x_3769.y, x_3769.z));
    let x_3772 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3771.x, x_3771.y, x_3771.z, x_3772.w);
    let x_3774 : vec4<f32> = u_xlat8;
    let x_3776 : f32 = u_xlat83;
    let x_3779 : vec3<f32> = u_xlat28;
    let x_3780 : vec3<f32> = ((vec3<f32>(x_3774.x, x_3774.y, x_3774.z) * vec3<f32>(x_3776, x_3776, x_3776)) + x_3779);
    let x_3781 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3780.x, x_3780.y, x_3780.z, x_3781.w);
    let x_3783 : vec4<f32> = u_xlat8;
    let x_3785 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3783.x, x_3783.y, x_3783.z), vec3<f32>(x_3785.x, x_3785.y, x_3785.z));
    let x_3790 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3790, 1.17549435e-38f);
    let x_3794 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3794);
    let x_3797 : vec4<f32> = u_xlat6;
    let x_3799 : vec4<f32> = u_xlat8;
    let x_3801 : vec3<f32> = (vec3<f32>(x_3797.x, x_3797.x, x_3797.x) * vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
    let x_3802 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
    let x_3804 : vec4<f32> = u_xlat4;
    let x_3806 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3804.x, x_3804.y, x_3804.z), vec3<f32>(x_3806.x, x_3806.y, x_3806.z));
    let x_3811 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3811, 0.0f, 1.0f);
    let x_3814 : vec4<f32> = u_xlat9;
    let x_3816 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3814.x, x_3814.y, x_3814.z), vec3<f32>(x_3816.x, x_3816.y, x_3816.z));
    let x_3819 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3819, 0.0f, 1.0f);
    let x_3822 : f32 = u_xlat6.x;
    let x_3824 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3822 * x_3824);
    let x_3828 : f32 = u_xlat6.x;
    let x_3830 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_3828 * x_3830) + 1.00001001358032226562f);
    let x_3834 : f32 = u_xlat82;
    let x_3835 : f32 = u_xlat82;
    u_xlat82 = (x_3834 * x_3835);
    let x_3838 : f32 = u_xlat6.x;
    let x_3840 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3838 * x_3840);
    let x_3843 : f32 = u_xlat82;
    u_xlat82 = max(x_3843, 0.10000000149011611938f);
    let x_3846 : f32 = u_xlat6.x;
    let x_3847 : f32 = u_xlat82;
    u_xlat6.x = (x_3846 * x_3847);
    let x_3850 : f32 = u_xlat79;
    let x_3852 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3850 * x_3852);
    let x_3856 : f32 = u_xlat51.x;
    let x_3858 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3856 / x_3858);
    let x_3861 : vec4<f32> = u_xlat0;
    let x_3863 : vec4<f32> = u_xlat6;
    let x_3866 : vec3<f32> = u_xlat27;
    let x_3867 : vec3<f32> = ((vec3<f32>(x_3861.x, x_3861.y, x_3861.z) * vec3<f32>(x_3863.x, x_3863.x, x_3863.x)) + x_3866);
    let x_3868 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
    let x_3870 : vec4<f32> = u_xlat8;
    let x_3872 : vec4<f32> = u_xlat10;
    let x_3875 : vec4<f32> = u_xlat7;
    let x_3877 : vec3<f32> = ((vec3<f32>(x_3870.x, x_3870.y, x_3870.z) * vec3<f32>(x_3872.x, x_3872.y, x_3872.z)) + vec3<f32>(x_3875.x, x_3875.y, x_3875.z));
    let x_3878 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3877.x, x_3877.y, x_3877.z, x_3878.w);

    continuing {
      let x_3880 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3880 + bitcast<u32>(1i));
    }
  }
  let x_3882 : vec3<f32> = u_xlat5;
  let x_3883 : vec3<f32> = u_xlat3;
  let x_3886 : vec3<f32> = u_xlat31;
  let x_3887 : vec3<f32> = ((x_3882 * vec3<f32>(x_3883.x, x_3883.x, x_3883.x)) + x_3886);
  let x_3888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3887.x, x_3887.y, x_3887.z, x_3888.w);
  let x_3890 : vec4<f32> = u_xlat7;
  let x_3892 : vec4<f32> = u_xlat0;
  let x_3894 : vec3<f32> = (vec3<f32>(x_3890.x, x_3890.y, x_3890.z) + vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
  let x_3895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
  let x_3897 : f32 = u_xlat75;
  let x_3898 : f32 = u_xlat75;
  u_xlat75 = (x_3897 * -(x_3898));
  let x_3901 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3901);
  let x_3903 : vec4<f32> = u_xlat0;
  let x_3906 : vec4<f32> = x_45.unity_FogColor;
  let x_3909 : vec3<f32> = (vec3<f32>(x_3903.x, x_3903.y, x_3903.z) + -(vec3<f32>(x_3906.x, x_3906.y, x_3906.z)));
  let x_3910 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3909.x, x_3909.y, x_3909.z, x_3910.w);
  let x_3914 : f32 = u_xlat75;
  let x_3916 : vec4<f32> = u_xlat0;
  let x_3920 : vec4<f32> = x_45.unity_FogColor;
  let x_3922 : vec3<f32> = ((vec3<f32>(x_3914, x_3914, x_3914) * vec3<f32>(x_3916.x, x_3916.y, x_3916.z)) + vec3<f32>(x_3920.x, x_3920.y, x_3920.z));
  let x_3923 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
  let x_3927 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_3927 == 1.0f);
  let x_3929 : bool = u_xlatb0;
  if (x_3929) {
    let x_3934 : f32 = u_xlat2.x;
    x_3930 = x_3934;
  } else {
    x_3930 = 1.0f;
  }
  let x_3936 : f32 = x_3930;
  SV_Target0.w = x_3936;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


