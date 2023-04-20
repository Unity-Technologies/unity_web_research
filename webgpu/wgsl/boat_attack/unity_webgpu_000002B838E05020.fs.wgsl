diagnostic(off, derivative_uniformity);

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(1) @binding(2) var<uniform> x_1050 : UnityPerDraw;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1639 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1231 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1774 : f32;
  var x_1785 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat43;
  u_xlat43 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat43;
  u_xlat4 = (x_282 / vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat12;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat11;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.z, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat6;
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : f32 = x_113.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_360.x, x_360.y), x_363);
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat6.x;
  let x_371 : f32 = u_xlat6.z;
  u_xlat6.x = (x_369 * x_371);
  let x_374 : vec4<f32> = u_xlat6;
  let x_379 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat43;
  u_xlat43 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat43;
  u_xlat43 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_392);
  let x_394 : f32 = u_xlat43;
  u_xlat7.z = max(x_394, 0.0000000000000001f);
  let x_398 : vec4<f32> = u_xlat6;
  let x_401 : f32 = x_13.x_NormalScale0;
  let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401, x_401));
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_410 : vec4<f32> = vs_TEXCOORD1;
  let x_413 : f32 = x_113.x_GlobalMipBias.x;
  let x_414 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_410.z, x_410.w), x_413);
  let x_415 : vec3<f32> = vec3<f32>(x_414.x, x_414.y, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat6.z;
  u_xlat6.x = (x_419 * x_421);
  let x_424 : vec4<f32> = u_xlat6;
  let x_427 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat43;
  u_xlat43 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat43;
  u_xlat43 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_440);
  let x_442 : f32 = u_xlat43;
  u_xlat8.z = max(x_442, 0.0000000000000001f);
  let x_445 : vec4<f32> = u_xlat6;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_451 : f32 = x_13.x_NormalScale1;
  let x_452 : vec2<f32> = vec2<f32>(x_449, x_451);
  let x_456 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat8;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.y, x_459.y, x_459.y) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat7;
  let x_471 : vec4<f32> = u_xlat6;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.x, x_466.x) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_480 : vec4<f32> = vs_TEXCOORD2;
  let x_483 : f32 = x_113.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_480.x, x_480.y), x_483);
  let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat7.x;
  let x_491 : f32 = u_xlat7.z;
  u_xlat7.x = (x_489 * x_491);
  let x_494 : vec4<f32> = u_xlat7;
  let x_497 : vec2<f32> = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat43;
  u_xlat43 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat43;
  u_xlat43 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_510);
  let x_512 : f32 = u_xlat43;
  u_xlat8.z = max(x_512, 0.0000000000000001f);
  let x_515 : vec4<f32> = u_xlat7;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_521 : f32 = x_13.x_NormalScale2;
  let x_522 : vec2<f32> = vec2<f32>(x_519, x_521);
  let x_526 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_522.x, x_522.y));
  let x_527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec4<f32> = u_xlat8;
  let x_534 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.z, x_529.z, x_529.z) * vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_543 : vec4<f32> = vs_TEXCOORD2;
  let x_546 : f32 = x_113.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_543.z, x_543.w), x_546);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.w);
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = u_xlat7.x;
  let x_554 : f32 = u_xlat7.z;
  u_xlat7.x = (x_552 * x_554);
  let x_557 : vec4<f32> = u_xlat7;
  let x_560 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat7;
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat43;
  u_xlat43 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat43;
  u_xlat43 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_573);
  let x_575 : f32 = u_xlat43;
  u_xlat8.z = max(x_575, 0.0000000000000001f);
  let x_578 : vec4<f32> = u_xlat7;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_584 : f32 = x_13.x_NormalScale3;
  let x_585 : vec2<f32> = vec2<f32>(x_582, x_584);
  let x_589 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_585.x, x_585.y));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat8;
  let x_597 : vec4<f32> = u_xlat6;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat6.z;
  u_xlat6.w = (x_603 + 0.00000999999974737875f);
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat43;
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.w));
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_643;
  let x_645 : vec4<f32> = u_xlat7;
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_645 + x_646);
  let x_649 : f32 = u_xlat0.z;
  u_xlat8.x = x_649;
  let x_652 : f32 = u_xlat1.z;
  u_xlat8.y = x_652;
  let x_655 : f32 = u_xlat2.z;
  u_xlat8.z = x_655;
  let x_658 : f32 = u_xlat3.y;
  u_xlat8.w = x_658;
  let x_660 : vec4<f32> = u_xlat9;
  let x_663 : f32 = x_13.x_Smoothness0;
  let x_665 : f32 = x_13.x_Smoothness1;
  let x_667 : f32 = x_13.x_Smoothness2;
  let x_669 : f32 = x_13.x_Smoothness3;
  let x_672 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_660) * vec4<f32>(x_663, x_665, x_667, x_669)) + x_672);
  let x_676 : f32 = x_13.x_LayerHasMask0;
  let x_679 : f32 = x_13.x_LayerHasMask1;
  let x_682 : f32 = x_13.x_LayerHasMask2;
  let x_685 : f32 = x_13.x_LayerHasMask3;
  let x_687 : vec4<f32> = u_xlat8;
  let x_689 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_676, x_679, x_682, x_685) * x_687) + x_689);
  let x_692 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_692, x_693);
  let x_696 : f32 = u_xlat0.x;
  u_xlat8.x = x_696;
  let x_699 : f32 = u_xlat1.x;
  u_xlat8.y = x_699;
  let x_702 : f32 = u_xlat2.x;
  u_xlat8.z = x_702;
  let x_705 : f32 = u_xlat3.x;
  u_xlat8.w = x_705;
  let x_707 : vec4<f32> = u_xlat8;
  let x_710 : f32 = x_13.x_Metallic0;
  let x_713 : f32 = x_13.x_Metallic1;
  let x_716 : f32 = x_13.x_Metallic2;
  let x_719 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_707 + -(vec4<f32>(x_710, x_713, x_716, x_719)));
  let x_724 : f32 = x_13.x_LayerHasMask0;
  let x_726 : f32 = x_13.x_LayerHasMask1;
  let x_728 : f32 = x_13.x_LayerHasMask2;
  let x_730 : f32 = x_13.x_LayerHasMask3;
  let x_732 : vec4<f32> = u_xlat8;
  let x_735 : f32 = x_13.x_Metallic0;
  let x_737 : f32 = x_13.x_Metallic1;
  let x_739 : f32 = x_13.x_Metallic2;
  let x_741 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_724, x_726, x_728, x_730) * x_732) + vec4<f32>(x_735, x_737, x_739, x_741));
  let x_744 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_744, x_745);
  let x_749 : f32 = u_xlat0.y;
  u_xlat3.x = x_749;
  let x_752 : f32 = u_xlat1.y;
  u_xlat3.y = x_752;
  let x_755 : f32 = u_xlat2.y;
  u_xlat3.z = x_755;
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_757) + x_759);
  let x_762 : f32 = x_13.x_LayerHasMask0;
  let x_764 : f32 = x_13.x_LayerHasMask1;
  let x_766 : f32 = x_13.x_LayerHasMask2;
  let x_768 : f32 = x_13.x_LayerHasMask3;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_762, x_764, x_766, x_768) * x_770) + x_772);
  let x_775 : vec4<f32> = u_xlat4;
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_775, x_776);
  let x_778 : vec4<f32> = u_xlat6;
  let x_781 : vec4<f32> = vs_TEXCOORD5;
  let x_783 : vec3<f32> = (vec3<f32>(x_778.y, x_778.y, x_778.y) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = vs_TEXCOORD4;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * -(vec3<f32>(x_789.x, x_789.y, x_789.z))) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_798.z, x_798.z, x_798.z) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat43;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_825 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_825 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_943) + 4.0f);
  let x_950 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_950);
  let x_954 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_954) << bitcast<u32>(2i));
  let x_958 : vec3<f32> = vs_TEXCOORD7;
  let x_960 : i32 = u_xlati2;
  let x_963 : i32 = u_xlati2;
  let x_967 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat16;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1012 : f32 = vs_TEXCOORD7.y;
  let x_1014 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat44 = (x_1012 * x_1014);
  let x_1017 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1019 : f32 = vs_TEXCOORD7.x;
  let x_1021 : f32 = u_xlat44;
  u_xlat44 = ((x_1017 * x_1019) + x_1021);
  let x_1024 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1026 : f32 = vs_TEXCOORD7.z;
  let x_1028 : f32 = u_xlat44;
  u_xlat44 = ((x_1024 * x_1026) + x_1028);
  let x_1030 : f32 = u_xlat44;
  let x_1032 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat44 = (x_1030 + x_1032);
  let x_1034 : f32 = u_xlat44;
  let x_1037 : f32 = x_113.x_ProjectionParams.y;
  u_xlat44 = (-(x_1034) + -(x_1037));
  let x_1040 : f32 = u_xlat44;
  u_xlat44 = max(x_1040, 0.0f);
  let x_1042 : f32 = u_xlat44;
  let x_1044 : f32 = x_113.unity_FogParams.x;
  u_xlat44 = (x_1042 * x_1044);
  u_xlat1.w = 1.0f;
  let x_1052 : vec4<f32> = x_1050.unity_SHAr;
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1050.unity_SHAg;
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1057, x_1058);
  let x_1062 : vec4<f32> = x_1050.unity_SHAb;
  let x_1063 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1062, x_1063);
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1066.y, x_1066.z, x_1066.z, x_1066.x) * vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.z));
  let x_1072 : vec4<f32> = x_1050.unity_SHBr;
  let x_1073 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1072, x_1073);
  let x_1077 : vec4<f32> = x_1050.unity_SHBg;
  let x_1078 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1077, x_1078);
  let x_1082 : vec4<f32> = x_1050.unity_SHBb;
  let x_1083 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1082, x_1083);
  let x_1087 : f32 = u_xlat1.y;
  let x_1089 : f32 = u_xlat1.y;
  u_xlat43 = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat1.x;
  let x_1096 : f32 = u_xlat43;
  u_xlat43 = ((x_1092 * x_1094) + -(x_1096));
  let x_1101 : vec4<f32> = x_1050.unity_SHC;
  let x_1103 : f32 = u_xlat43;
  let x_1106 : vec4<f32> = u_xlat6;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103, x_1103, x_1103)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat4;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat3;
  let x_1120 : vec3<f32> = max(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1121 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1124) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1130 : f32 = u_xlat43;
  u_xlat45 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat43;
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat0;
  let x_1149 : vec4<f32> = u_xlat5;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.x, x_1147.x) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1157) + 1.0f);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = u_xlat0.x;
  u_xlat43 = (x_1162 * x_1164);
  let x_1166 : f32 = u_xlat43;
  u_xlat43 = max(x_1166, 0.0078125f);
  let x_1170 : f32 = u_xlat43;
  let x_1171 : f32 = u_xlat43;
  u_xlat46 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat28;
  let x_1174 : f32 = u_xlat45;
  u_xlat28 = (x_1173 + x_1174);
  let x_1176 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1176, 0.0f, 1.0f);
  let x_1178 : f32 = u_xlat43;
  u_xlat45 = ((x_1178 * 4.0f) + 2.0f);
  let x_1181 : f32 = u_xlat14;
  u_xlat14 = min(x_1181, 1.0f);
  let x_1185 : vec4<f32> = u_xlat2;
  let x_1186 : vec2<f32> = vec2<f32>(x_1185.x, x_1185.y);
  let x_1188 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1186.x, x_1186.y, x_1188);
  let x_1200 : vec3<f32> = txVec0;
  let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
  u_xlat2.x = x_1202;
  let x_1205 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1205) + 1.0f);
  let x_1210 : f32 = u_xlat2.x;
  let x_1212 : f32 = x_833.x_MainLightShadowParams.x;
  let x_1215 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1210 * x_1212) + x_1215);
  let x_1220 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1220);
  let x_1224 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1224 >= 1.0f);
  let x_1226 : bool = u_xlatb30;
  let x_1227 : bool = u_xlatb16;
  u_xlatb16 = (x_1226 | x_1227);
  let x_1229 : bool = u_xlatb16;
  if (x_1229) {
    x_1231 = 1.0f;
  } else {
    let x_1236 : f32 = u_xlat2.x;
    x_1231 = x_1236;
  }
  let x_1237 : f32 = x_1231;
  u_xlat2.x = x_1237;
  let x_1239 : vec3<f32> = vs_TEXCOORD7;
  let x_1242 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1244 : vec3<f32> = (x_1239 + -(x_1242));
  let x_1245 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat6;
  let x_1249 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1255 : f32 = u_xlat16.x;
  let x_1257 : f32 = x_833.x_MainLightShadowParams.z;
  let x_1260 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1255 * x_1257) + x_1260);
  let x_1262 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1262, 0.0f, 1.0f);
  let x_1266 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1266) + 1.0f);
  let x_1269 : f32 = u_xlat30;
  let x_1270 : f32 = u_xlat47;
  let x_1273 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1269 * x_1270) + x_1273);
  let x_1277 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1277;
  let x_1280 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1280;
  let x_1283 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1283;
  let x_1285 : vec4<f32> = u_xlat6;
  let x_1288 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1285.x, x_1285.y, x_1285.z)), vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : f32 = u_xlat30;
  let x_1292 : f32 = u_xlat30;
  u_xlat30 = (x_1291 + x_1292);
  let x_1294 : vec4<f32> = u_xlat1;
  let x_1296 : f32 = u_xlat30;
  let x_1300 : vec4<f32> = u_xlat6;
  let x_1303 : vec3<f32> = ((vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * -(vec3<f32>(x_1296, x_1296, x_1296))) + -(vec3<f32>(x_1300.x, x_1300.y, x_1300.z)));
  let x_1304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat1;
  let x_1308 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1311, 0.0f, 1.0f);
  let x_1313 : f32 = u_xlat30;
  u_xlat30 = (-(x_1313) + 1.0f);
  let x_1316 : f32 = u_xlat30;
  let x_1317 : f32 = u_xlat30;
  u_xlat30 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat30;
  let x_1320 : f32 = u_xlat30;
  u_xlat30 = (x_1319 * x_1320);
  let x_1323 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1323) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1330 : f32 = u_xlat0.x;
  let x_1331 : f32 = u_xlat47;
  u_xlat0.x = (x_1330 * x_1331);
  let x_1335 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1335 * 6.0f);
  let x_1347 : vec4<f32> = u_xlat7;
  let x_1350 : f32 = u_xlat0.x;
  let x_1351 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1347.x, x_1347.y, x_1347.z), x_1350);
  u_xlat7 = x_1351;
  let x_1353 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1353 + -1.0f);
  let x_1357 : f32 = x_1050.unity_SpecCube0_HDR.w;
  let x_1359 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1357 * x_1359) + 1.0f);
  let x_1364 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1364, 0.0f);
  let x_1368 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1368);
  let x_1372 : f32 = u_xlat0.x;
  let x_1374 : f32 = x_1050.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1372 * x_1374);
  let x_1378 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1378);
  let x_1382 : f32 = u_xlat0.x;
  let x_1384 : f32 = x_1050.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1382 * x_1384);
  let x_1387 : vec4<f32> = u_xlat7;
  let x_1389 : vec3<f32> = u_xlat0;
  let x_1391 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(x_1389.x, x_1389.x, x_1389.x));
  let x_1392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : f32 = u_xlat43;
  let x_1396 : f32 = u_xlat43;
  let x_1400 : vec2<f32> = ((vec2<f32>(x_1394, x_1394) * vec2<f32>(x_1396, x_1396)) + vec2<f32>(-1.0f, 1.0f));
  let x_1401 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
  let x_1404 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1404);
  let x_1408 : vec4<f32> = u_xlat5;
  let x_1411 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1408.x, x_1408.y, x_1408.z)) + vec3<f32>(x_1411, x_1411, x_1411));
  let x_1414 : f32 = u_xlat30;
  let x_1416 : vec3<f32> = u_xlat22;
  let x_1418 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1414, x_1414, x_1414) * x_1416) + vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1421 : vec3<f32> = u_xlat0;
  let x_1423 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1421.x, x_1421.x, x_1421.x) * x_1423);
  let x_1425 : vec4<f32> = u_xlat7;
  let x_1427 : vec3<f32> = u_xlat22;
  let x_1428 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * x_1427);
  let x_1429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat3;
  let x_1433 : vec4<f32> = u_xlat4;
  let x_1436 : vec4<f32> = u_xlat7;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1442 : f32 = u_xlat2.x;
  let x_1444 : f32 = x_1050.unity_LightData.z;
  u_xlat0.x = (x_1442 * x_1444);
  let x_1447 : vec4<f32> = u_xlat1;
  let x_1450 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1453 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1453, 0.0f, 1.0f);
  let x_1455 : f32 = u_xlat28;
  let x_1457 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1455 * x_1457);
  let x_1460 : vec3<f32> = u_xlat0;
  let x_1463 : vec4<f32> = x_113.x_MainLightColor;
  let x_1465 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.x, x_1460.x) * vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
  let x_1466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
  let x_1468 : vec4<f32> = u_xlat6;
  let x_1471 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1468.x, x_1468.y, x_1468.z) + vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
  let x_1474 : vec3<f32> = u_xlat22;
  let x_1475 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1474, x_1475);
  let x_1479 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1479, 1.17549435e-38f);
  let x_1484 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1484);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1489 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1487.x, x_1487.x, x_1487.x) * x_1489);
  let x_1491 : vec4<f32> = u_xlat1;
  let x_1493 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1491.x, x_1491.y, x_1491.z), x_1493);
  let x_1497 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1497, 0.0f, 1.0f);
  let x_1501 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1503 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1501.x, x_1501.y, x_1501.z), x_1503);
  let x_1507 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1507, 0.0f, 1.0f);
  let x_1510 : vec3<f32> = u_xlat0;
  let x_1512 : vec3<f32> = u_xlat0;
  let x_1514 : vec2<f32> = (vec2<f32>(x_1510.x, x_1510.z) * vec2<f32>(x_1512.x, x_1512.z));
  let x_1515 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1514.x, x_1515.y, x_1514.y);
  let x_1518 : f32 = u_xlat0.x;
  let x_1520 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1518 * x_1520) + 1.00001001358032226562f);
  let x_1526 : f32 = u_xlat0.x;
  let x_1528 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1526 * x_1528);
  let x_1532 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1532, 0.10000000149011611938f);
  let x_1535 : f32 = u_xlat28;
  let x_1537 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1535 * x_1537);
  let x_1540 : f32 = u_xlat45;
  let x_1542 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1540 * x_1542);
  let x_1545 : f32 = u_xlat46;
  let x_1547 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1545 / x_1547);
  let x_1550 : vec4<f32> = u_xlat5;
  let x_1552 : vec3<f32> = u_xlat0;
  let x_1555 : vec4<f32> = u_xlat4;
  u_xlat22 = ((vec3<f32>(x_1550.x, x_1550.y, x_1550.z) * vec3<f32>(x_1552.x, x_1552.x, x_1552.x)) + vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
  let x_1558 : vec4<f32> = u_xlat7;
  let x_1560 : vec3<f32> = u_xlat22;
  let x_1561 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.y, x_1558.z) * x_1560);
  let x_1562 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
  let x_1565 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1567 : f32 = x_1050.unity_LightData.y;
  u_xlat0.x = min(x_1565, x_1567);
  let x_1572 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1572));
  let x_1576 : f32 = u_xlat16.x;
  let x_1578 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_1581 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1576 * x_1578) + x_1581);
  let x_1583 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1583, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1595 : u32 = u_xlatu_loop_1;
    let x_1596 : u32 = u_xlatu0;
    if ((x_1595 < x_1596)) {
    } else {
      break;
    }
    let x_1599 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1599 >> 2u);
    let x_1602 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1602 & 3u));
    let x_1605 : u32 = u_xlatu47;
    let x_1608 : vec4<f32> = x_1050.unity_LightIndices[bitcast<i32>(x_1605)];
    let x_1618 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1623 : vec4<u32> = indexable[x_1618];
    u_xlat47 = dot(x_1608, bitcast<vec4<f32>>(x_1623));
    let x_1627 : f32 = u_xlat47;
    u_xlati47 = i32(x_1627);
    let x_1629 : vec3<f32> = vs_TEXCOORD7;
    let x_1640 : i32 = u_xlati47;
    let x_1642 : vec4<f32> = x_1639.x_AdditionalLightsPosition[x_1640];
    let x_1645 : i32 = u_xlati47;
    let x_1647 : vec4<f32> = x_1639.x_AdditionalLightsPosition[x_1645];
    u_xlat22 = ((-(x_1629) * vec3<f32>(x_1642.w, x_1642.w, x_1642.w)) + vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
    let x_1651 : vec3<f32> = u_xlat22;
    let x_1652 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(x_1651, x_1652);
    let x_1654 : f32 = u_xlat48;
    u_xlat48 = max(x_1654, 0.00006103515625f);
    let x_1657 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1657);
    let x_1659 : f32 = u_xlat49;
    let x_1661 : vec3<f32> = u_xlat22;
    let x_1662 : vec3<f32> = (vec3<f32>(x_1659, x_1659, x_1659) * x_1661);
    let x_1663 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
    let x_1666 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1666);
    let x_1668 : f32 = u_xlat48;
    let x_1669 : i32 = u_xlati47;
    let x_1671 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1669].x;
    u_xlat48 = (x_1668 * x_1671);
    let x_1673 : f32 = u_xlat48;
    let x_1675 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1673) * x_1675) + 1.0f);
    let x_1678 : f32 = u_xlat48;
    u_xlat48 = max(x_1678, 0.0f);
    let x_1680 : f32 = u_xlat48;
    let x_1681 : f32 = u_xlat48;
    u_xlat48 = (x_1680 * x_1681);
    let x_1683 : f32 = u_xlat48;
    let x_1684 : f32 = u_xlat51;
    u_xlat48 = (x_1683 * x_1684);
    let x_1686 : i32 = u_xlati47;
    let x_1688 : vec4<f32> = x_1639.x_AdditionalLightsSpotDir[x_1686];
    let x_1690 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1688.x, x_1688.y, x_1688.z), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
    let x_1693 : f32 = u_xlat51;
    let x_1694 : i32 = u_xlati47;
    let x_1696 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1694].z;
    let x_1698 : i32 = u_xlati47;
    let x_1700 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1698].w;
    u_xlat51 = ((x_1693 * x_1696) + x_1700);
    let x_1702 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1702, 0.0f, 1.0f);
    let x_1704 : f32 = u_xlat51;
    let x_1705 : f32 = u_xlat51;
    u_xlat51 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat48;
    let x_1708 : f32 = u_xlat51;
    u_xlat48 = (x_1707 * x_1708);
    let x_1711 : i32 = u_xlati47;
    let x_1713 : f32 = x_833.x_AdditionalShadowParams[x_1711].w;
    u_xlati51 = i32(x_1713);
    let x_1718 : i32 = u_xlati51;
    u_xlatb10.x = (x_1718 >= 0i);
    let x_1722 : bool = u_xlatb10.x;
    if (x_1722) {
      let x_1726 : i32 = u_xlati47;
      let x_1728 : f32 = x_833.x_AdditionalShadowParams[x_1726].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1728, x_1728, x_1728, x_1728))));
      let x_1734 : bool = u_xlatb10.x;
      if (x_1734) {
        let x_1737 : vec4<f32> = u_xlat9;
        let x_1740 : vec4<f32> = u_xlat9;
        let x_1743 : vec4<bool> = (abs(vec4<f32>(x_1737.z, x_1737.z, x_1737.y, x_1737.z)) >= abs(vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.x)));
        u_xlatb10 = vec3<bool>(x_1743.x, x_1743.y, x_1743.z);
        let x_1746 : bool = u_xlatb10.y;
        let x_1748 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1746 & x_1748);
        let x_1752 : vec4<f32> = u_xlat9;
        let x_1755 : vec4<bool> = (-(vec4<f32>(x_1752.z, x_1752.y, x_1752.x, x_1752.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1755.x, x_1755.y, x_1755.z);
        let x_1759 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1759);
        let x_1764 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1764);
        let x_1768 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1768);
        let x_1773 : bool = u_xlatb10.z;
        if (x_1773) {
          let x_1778 : f32 = u_xlat24.z;
          x_1774 = x_1778;
        } else {
          let x_1781 : f32 = u_xlat11.x;
          x_1774 = x_1781;
        }
        let x_1782 : f32 = x_1774;
        u_xlat38 = x_1782;
        let x_1784 : bool = u_xlatb10.x;
        if (x_1784) {
          let x_1789 : f32 = u_xlat24.x;
          x_1785 = x_1789;
        } else {
          let x_1791 : f32 = u_xlat38;
          x_1785 = x_1791;
        }
        let x_1792 : f32 = x_1785;
        u_xlat10.x = x_1792;
        let x_1794 : i32 = u_xlati47;
        let x_1796 : f32 = x_833.x_AdditionalShadowParams[x_1794].w;
        u_xlat24.x = trunc(x_1796);
        let x_1800 : f32 = u_xlat10.x;
        let x_1802 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1800 + x_1802);
        let x_1806 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1806);
      }
      let x_1808 : i32 = u_xlati51;
      u_xlati51 = (x_1808 << bitcast<u32>(2i));
      let x_1810 : vec3<f32> = vs_TEXCOORD7;
      let x_1812 : i32 = u_xlati51;
      let x_1815 : i32 = u_xlati51;
      let x_1819 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1812 + 1i) / 4i)][((x_1815 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1810.y, x_1810.y, x_1810.y, x_1810.y) * x_1819);
      let x_1821 : i32 = u_xlati51;
      let x_1823 : i32 = u_xlati51;
      let x_1826 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_1821 / 4i)][(x_1823 % 4i)];
      let x_1827 : vec3<f32> = vs_TEXCOORD7;
      let x_1830 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1826 * vec4<f32>(x_1827.x, x_1827.x, x_1827.x, x_1827.x)) + x_1830);
      let x_1832 : i32 = u_xlati51;
      let x_1835 : i32 = u_xlati51;
      let x_1839 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1832 + 2i) / 4i)][((x_1835 + 2i) % 4i)];
      let x_1840 : vec3<f32> = vs_TEXCOORD7;
      let x_1843 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1839 * vec4<f32>(x_1840.z, x_1840.z, x_1840.z, x_1840.z)) + x_1843);
      let x_1845 : vec4<f32> = u_xlat10;
      let x_1846 : i32 = u_xlati51;
      let x_1849 : i32 = u_xlati51;
      let x_1853 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1846 + 3i) / 4i)][((x_1849 + 3i) % 4i)];
      u_xlat10 = (x_1845 + x_1853);
      let x_1855 : vec4<f32> = u_xlat10;
      let x_1857 : vec4<f32> = u_xlat10;
      let x_1859 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) / vec3<f32>(x_1857.w, x_1857.w, x_1857.w));
      let x_1860 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
      let x_1863 : vec4<f32> = u_xlat10;
      let x_1864 : vec2<f32> = vec2<f32>(x_1863.x, x_1863.y);
      let x_1866 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
      let x_1874 : vec3<f32> = txVec1;
      let x_1876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
      u_xlat51 = x_1876;
      let x_1877 : i32 = u_xlati47;
      let x_1879 : f32 = x_833.x_AdditionalShadowParams[x_1877].x;
      u_xlat10.x = (1.0f + -(x_1879));
      let x_1883 : f32 = u_xlat51;
      let x_1884 : i32 = u_xlati47;
      let x_1886 : f32 = x_833.x_AdditionalShadowParams[x_1884].x;
      let x_1889 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1883 * x_1886) + x_1889);
      let x_1892 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1892);
      let x_1897 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1897 >= 1.0f);
      let x_1899 : bool = u_xlatb24;
      let x_1901 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1899 | x_1901);
      let x_1905 : bool = u_xlatb10.x;
      let x_1906 : f32 = u_xlat51;
      u_xlat51 = select(x_1906, 1.0f, x_1905);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1909 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1909) + 1.0f);
    let x_1913 : f32 = u_xlat28;
    let x_1915 : f32 = u_xlat10.x;
    let x_1917 : f32 = u_xlat51;
    u_xlat51 = ((x_1913 * x_1915) + x_1917);
    let x_1919 : f32 = u_xlat48;
    let x_1920 : f32 = u_xlat51;
    u_xlat48 = (x_1919 * x_1920);
    let x_1922 : vec4<f32> = u_xlat1;
    let x_1924 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1922.x, x_1922.y, x_1922.z), vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1927 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1927, 0.0f, 1.0f);
    let x_1929 : f32 = u_xlat48;
    let x_1930 : f32 = u_xlat51;
    u_xlat48 = (x_1929 * x_1930);
    let x_1932 : f32 = u_xlat48;
    let x_1934 : i32 = u_xlati47;
    let x_1936 : vec4<f32> = x_1639.x_AdditionalLightsColor[x_1934];
    let x_1938 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
    let x_1939 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
    let x_1941 : vec3<f32> = u_xlat22;
    let x_1942 : f32 = u_xlat49;
    let x_1945 : vec4<f32> = u_xlat6;
    u_xlat22 = ((x_1941 * vec3<f32>(x_1942, x_1942, x_1942)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec3<f32> = u_xlat22;
    let x_1949 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1948, x_1949);
    let x_1951 : f32 = u_xlat47;
    u_xlat47 = max(x_1951, 1.17549435e-38f);
    let x_1953 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1953);
    let x_1955 : f32 = u_xlat47;
    let x_1957 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1955, x_1955, x_1955) * x_1957);
    let x_1959 : vec4<f32> = u_xlat1;
    let x_1961 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1959.x, x_1959.y, x_1959.z), x_1961);
    let x_1963 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1963, 0.0f, 1.0f);
    let x_1965 : vec4<f32> = u_xlat9;
    let x_1967 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), x_1967);
    let x_1969 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1969, 0.0f, 1.0f);
    let x_1971 : f32 = u_xlat47;
    let x_1972 : f32 = u_xlat47;
    u_xlat47 = (x_1971 * x_1972);
    let x_1974 : f32 = u_xlat47;
    let x_1976 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1974 * x_1976) + 1.00001001358032226562f);
    let x_1979 : f32 = u_xlat48;
    let x_1980 : f32 = u_xlat48;
    u_xlat48 = (x_1979 * x_1980);
    let x_1982 : f32 = u_xlat47;
    let x_1983 : f32 = u_xlat47;
    u_xlat47 = (x_1982 * x_1983);
    let x_1985 : f32 = u_xlat48;
    u_xlat48 = max(x_1985, 0.10000000149011611938f);
    let x_1987 : f32 = u_xlat47;
    let x_1988 : f32 = u_xlat48;
    u_xlat47 = (x_1987 * x_1988);
    let x_1990 : f32 = u_xlat45;
    let x_1991 : f32 = u_xlat47;
    u_xlat47 = (x_1990 * x_1991);
    let x_1993 : f32 = u_xlat46;
    let x_1994 : f32 = u_xlat47;
    u_xlat47 = (x_1993 / x_1994);
    let x_1996 : vec4<f32> = u_xlat5;
    let x_1998 : f32 = u_xlat47;
    let x_2001 : vec4<f32> = u_xlat4;
    u_xlat22 = ((vec3<f32>(x_1996.x, x_1996.y, x_1996.z) * vec3<f32>(x_1998, x_1998, x_1998)) + vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2004 : vec3<f32> = u_xlat22;
    let x_2005 : vec4<f32> = u_xlat10;
    let x_2008 : vec4<f32> = u_xlat2;
    let x_2010 : vec3<f32> = ((x_2004 * vec3<f32>(x_2005.x, x_2005.y, x_2005.z)) + vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
    let x_2011 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);

    continuing {
      let x_2013 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2013 + bitcast<u32>(1i));
    }
  }
  let x_2015 : vec4<f32> = u_xlat3;
  let x_2017 : f32 = u_xlat14;
  let x_2020 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2015.x, x_2015.y, x_2015.z) * vec3<f32>(x_2017, x_2017, x_2017)) + vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat2;
  let x_2025 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2023.x, x_2023.y, x_2023.z) + x_2025);
  let x_2027 : f32 = u_xlat44;
  let x_2028 : f32 = u_xlat44;
  u_xlat1.x = (x_2027 * -(x_2028));
  let x_2033 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2033);
  let x_2036 : vec3<f32> = u_xlat0;
  let x_2037 : f32 = u_xlat42;
  let x_2041 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_2036 * vec3<f32>(x_2037, x_2037, x_2037)) + -(vec3<f32>(x_2041.x, x_2041.y, x_2041.z)));
  let x_2047 : vec4<f32> = u_xlat1;
  let x_2049 : vec3<f32> = u_xlat0;
  let x_2052 : vec4<f32> = x_113.unity_FogColor;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2047.x, x_2047.x, x_2047.x) * x_2049) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


