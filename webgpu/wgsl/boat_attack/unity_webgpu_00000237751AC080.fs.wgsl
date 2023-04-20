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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_580 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(1) @binding(2) var<uniform> x_802 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1377 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_550 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_982 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1512 : f32;
  var x_1523 : f32;
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
  let x_356 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_356;
  let x_359 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_359;
  let x_362 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_362;
  let x_365 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_365;
  let x_368 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_368;
  let x_371 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_371;
  let x_374 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_374;
  let x_377 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_377;
  let x_379 : vec4<f32> = u_xlat6;
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_379 + x_380);
  let x_383 : f32 = u_xlat0.z;
  u_xlat7.x = x_383;
  let x_386 : f32 = u_xlat1.z;
  u_xlat7.y = x_386;
  let x_389 : f32 = u_xlat2.z;
  u_xlat7.z = x_389;
  let x_392 : f32 = u_xlat3.y;
  u_xlat7.w = x_392;
  let x_394 : vec4<f32> = u_xlat9;
  let x_397 : f32 = x_13.x_Smoothness0;
  let x_399 : f32 = x_13.x_Smoothness1;
  let x_401 : f32 = x_13.x_Smoothness2;
  let x_403 : f32 = x_13.x_Smoothness3;
  let x_406 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_394) * vec4<f32>(x_397, x_399, x_401, x_403)) + x_406);
  let x_410 : f32 = x_13.x_LayerHasMask0;
  let x_413 : f32 = x_13.x_LayerHasMask1;
  let x_416 : f32 = x_13.x_LayerHasMask2;
  let x_419 : f32 = x_13.x_LayerHasMask3;
  let x_421 : vec4<f32> = u_xlat7;
  let x_423 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_410, x_413, x_416, x_419) * x_421) + x_423);
  let x_426 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_426, x_427);
  let x_430 : f32 = u_xlat0.x;
  u_xlat7.x = x_430;
  let x_433 : f32 = u_xlat1.x;
  u_xlat7.y = x_433;
  let x_436 : f32 = u_xlat2.x;
  u_xlat7.z = x_436;
  let x_439 : f32 = u_xlat3.x;
  u_xlat7.w = x_439;
  let x_441 : vec4<f32> = u_xlat7;
  let x_444 : f32 = x_13.x_Metallic0;
  let x_447 : f32 = x_13.x_Metallic1;
  let x_450 : f32 = x_13.x_Metallic2;
  let x_453 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_441 + -(vec4<f32>(x_444, x_447, x_450, x_453)));
  let x_458 : f32 = x_13.x_LayerHasMask0;
  let x_460 : f32 = x_13.x_LayerHasMask1;
  let x_462 : f32 = x_13.x_LayerHasMask2;
  let x_464 : f32 = x_13.x_LayerHasMask3;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_13.x_Metallic0;
  let x_471 : f32 = x_13.x_Metallic1;
  let x_473 : f32 = x_13.x_Metallic2;
  let x_475 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_458, x_460, x_462, x_464) * x_466) + vec4<f32>(x_469, x_471, x_473, x_475));
  let x_478 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_478, x_479);
  let x_483 : f32 = u_xlat0.y;
  u_xlat3.x = x_483;
  let x_486 : f32 = u_xlat1.y;
  u_xlat3.y = x_486;
  let x_489 : f32 = u_xlat2.y;
  u_xlat3.z = x_489;
  let x_491 : vec4<f32> = u_xlat6;
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_491) + x_493);
  let x_496 : f32 = x_13.x_LayerHasMask0;
  let x_498 : f32 = x_13.x_LayerHasMask1;
  let x_500 : f32 = x_13.x_LayerHasMask2;
  let x_502 : f32 = x_13.x_LayerHasMask3;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_496, x_498, x_500, x_502) * x_504) + x_506);
  let x_509 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_509, x_510);
  let x_514 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_514 == 0.0f);
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_523 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_519) + x_523);
  let x_525 : vec3<f32> = u_xlat15;
  let x_526 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_530);
  let x_533 : vec3<f32> = u_xlat15;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_533 * vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_538;
  let x_542 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_542;
  let x_546 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_546;
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_553 : vec3<f32> = u_xlat15;
    x_550 = x_553;
  } else {
    let x_555 : vec4<f32> = u_xlat2;
    x_550 = vec3<f32>(x_555.x, x_555.y, x_555.z);
  }
  let x_557 : vec3<f32> = x_550;
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : vec3<f32> = vs_TEXCOORD3;
  let x_562 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_561, x_562);
  let x_564 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_564);
  let x_566 : f32 = u_xlat43;
  let x_568 : vec3<f32> = vs_TEXCOORD3;
  let x_569 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * x_568);
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = vs_TEXCOORD7;
  let x_582 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres0;
  let x_585 : vec3<f32> = (x_572 + -(vec3<f32>(x_582.x, x_582.y, x_582.z)));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec3<f32> = vs_TEXCOORD7;
  let x_590 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres1;
  let x_593 : vec3<f32> = (x_588 + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = vs_TEXCOORD7;
  let x_599 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres2;
  let x_602 : vec3<f32> = (x_596 + -(vec3<f32>(x_599.x, x_599.y, x_599.z)));
  let x_603 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = vs_TEXCOORD7;
  let x_607 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres3;
  let x_610 : vec3<f32> = (x_605 + -(vec3<f32>(x_607.x, x_607.y, x_607.z)));
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat7;
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = x_580.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_639 < x_641);
  let x_644 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_644);
  let x_648 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_648);
  let x_652 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_652);
  let x_656 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_660);
  let x_665 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_665);
  let x_669 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_669);
  let x_672 : vec4<f32> = u_xlat3;
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(x_674.y, x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = max(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_682.x, x_682.y, x_682.z);
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_685, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_690 : f32 = u_xlat43;
  u_xlat43 = (-(x_690) + 4.0f);
  let x_695 : f32 = u_xlat43;
  u_xlatu43 = u32(x_695);
  let x_699 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_699) << bitcast<u32>(2i));
  let x_702 : vec3<f32> = vs_TEXCOORD7;
  let x_704 : i32 = u_xlati43;
  let x_707 : i32 = u_xlati43;
  let x_711 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_704 + 1i) / 4i)][((x_707 + 1i) % 4i)];
  let x_713 : vec3<f32> = (vec3<f32>(x_702.y, x_702.y, x_702.y) * vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : i32 = u_xlati43;
  let x_718 : i32 = u_xlati43;
  let x_721 : vec4<f32> = x_580.x_MainLightWorldToShadow[(x_716 / 4i)][(x_718 % 4i)];
  let x_723 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : vec4<f32> = u_xlat3;
  let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati43;
  let x_734 : i32 = u_xlati43;
  let x_738 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
  let x_740 : vec3<f32> = vs_TEXCOORD7;
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.z, x_740.z, x_740.z)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : i32 = u_xlati43;
  let x_753 : i32 = u_xlati43;
  let x_757 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_750 + 3i) / 4i)][((x_753 + 3i) % 4i)];
  let x_759 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_764 : f32 = vs_TEXCOORD7.y;
  let x_766 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_764 * x_766);
  let x_769 : f32 = x_113.unity_MatrixV[0i].z;
  let x_771 : f32 = vs_TEXCOORD7.x;
  let x_773 : f32 = u_xlat43;
  u_xlat43 = ((x_769 * x_771) + x_773);
  let x_776 : f32 = x_113.unity_MatrixV[2i].z;
  let x_778 : f32 = vs_TEXCOORD7.z;
  let x_780 : f32 = u_xlat43;
  u_xlat43 = ((x_776 * x_778) + x_780);
  let x_782 : f32 = u_xlat43;
  let x_784 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_782 + x_784);
  let x_786 : f32 = u_xlat43;
  let x_789 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_786) + -(x_789));
  let x_792 : f32 = u_xlat43;
  u_xlat43 = max(x_792, 0.0f);
  let x_794 : f32 = u_xlat43;
  let x_796 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_794 * x_796);
  u_xlat2.w = 1.0f;
  let x_804 : vec4<f32> = x_802.unity_SHAr;
  let x_805 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_804, x_805);
  let x_809 : vec4<f32> = x_802.unity_SHAg;
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_809, x_810);
  let x_814 : vec4<f32> = x_802.unity_SHAb;
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_814, x_815);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_818.y, x_818.z, x_818.z, x_818.x) * vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.z));
  let x_824 : vec4<f32> = x_802.unity_SHBr;
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_824, x_825);
  let x_829 : vec4<f32> = x_802.unity_SHBg;
  let x_830 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_829, x_830);
  let x_834 : vec4<f32> = x_802.unity_SHBb;
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_834, x_835);
  let x_840 : f32 = u_xlat2.y;
  let x_842 : f32 = u_xlat2.y;
  u_xlat44 = (x_840 * x_842);
  let x_845 : f32 = u_xlat2.x;
  let x_847 : f32 = u_xlat2.x;
  let x_849 : f32 = u_xlat44;
  u_xlat44 = ((x_845 * x_847) + -(x_849));
  let x_854 : vec4<f32> = x_802.unity_SHC;
  let x_856 : f32 = u_xlat44;
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat4;
  let x_873 : vec3<f32> = max(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat44;
  u_xlat45 = (-(x_883) + 1.0f);
  let x_886 : f32 = u_xlat44;
  let x_888 : vec4<f32> = u_xlat5;
  let x_890 : vec3<f32> = (vec3<f32>(x_886, x_886, x_886) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec3<f32> = u_xlat0;
  let x_902 : vec4<f32> = u_xlat5;
  let x_907 : vec3<f32> = ((vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_908 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : f32 = u_xlat28;
  u_xlat0.x = (-(x_910) + 1.0f);
  let x_915 : f32 = u_xlat0.x;
  let x_917 : f32 = u_xlat0.x;
  u_xlat44 = (x_915 * x_917);
  let x_919 : f32 = u_xlat44;
  u_xlat44 = max(x_919, 0.0078125f);
  let x_923 : f32 = u_xlat44;
  let x_924 : f32 = u_xlat44;
  u_xlat46 = (x_923 * x_924);
  let x_926 : f32 = u_xlat28;
  let x_927 : f32 = u_xlat45;
  u_xlat28 = (x_926 + x_927);
  let x_929 : f32 = u_xlat28;
  u_xlat28 = clamp(x_929, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat44;
  u_xlat45 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat14;
  u_xlat14 = min(x_934, 1.0f);
  let x_937 : vec4<f32> = u_xlat3;
  let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
  let x_940 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_938.x, x_938.y, x_940);
  let x_952 : vec3<f32> = txVec0;
  let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
  u_xlat3.x = x_954;
  let x_958 : f32 = x_580.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_958) + 1.0f);
  let x_962 : f32 = u_xlat3.x;
  let x_964 : f32 = x_580.x_MainLightShadowParams.x;
  let x_966 : f32 = u_xlat17;
  u_xlat3.x = ((x_962 * x_964) + x_966);
  let x_971 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_971);
  let x_975 : f32 = u_xlat3.z;
  u_xlatb31 = (x_975 >= 1.0f);
  let x_977 : bool = u_xlatb31;
  let x_978 : bool = u_xlatb17;
  u_xlatb17 = (x_977 | x_978);
  let x_980 : bool = u_xlatb17;
  if (x_980) {
    x_982 = 1.0f;
  } else {
    let x_987 : f32 = u_xlat3.x;
    x_982 = x_987;
  }
  let x_988 : f32 = x_982;
  u_xlat3.x = x_988;
  let x_990 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_994 : vec3<f32> = (x_990 + -(x_992));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1003 : f32 = u_xlat17;
  let x_1005 : f32 = x_580.x_MainLightShadowParams.z;
  let x_1008 : f32 = x_580.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1003 * x_1005) + x_1008);
  let x_1010 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1010, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1014) + 1.0f);
  let x_1017 : f32 = u_xlat31;
  let x_1018 : f32 = u_xlat47;
  let x_1021 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1017 * x_1018) + x_1021);
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1027 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1024.x, x_1024.y, x_1024.z)), vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : f32 = u_xlat31;
  let x_1031 : f32 = u_xlat31;
  u_xlat31 = (x_1030 + x_1031);
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1035 : f32 = u_xlat31;
  let x_1039 : vec4<f32> = u_xlat1;
  let x_1042 : vec3<f32> = ((vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * -(vec3<f32>(x_1035, x_1035, x_1035))) + -(vec3<f32>(x_1039.x, x_1039.y, x_1039.z)));
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1047 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1050, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat31;
  u_xlat31 = (-(x_1052) + 1.0f);
  let x_1055 : f32 = u_xlat31;
  let x_1056 : f32 = u_xlat31;
  u_xlat31 = (x_1055 * x_1056);
  let x_1058 : f32 = u_xlat31;
  let x_1059 : f32 = u_xlat31;
  u_xlat31 = (x_1058 * x_1059);
  let x_1062 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1062) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1069 : f32 = u_xlat0.x;
  let x_1070 : f32 = u_xlat47;
  u_xlat0.x = (x_1069 * x_1070);
  let x_1074 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1074 * 6.0f);
  let x_1086 : vec4<f32> = u_xlat7;
  let x_1089 : f32 = u_xlat0.x;
  let x_1090 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1086.x, x_1086.y, x_1086.z), x_1089);
  u_xlat7 = x_1090;
  let x_1092 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1092 + -1.0f);
  let x_1096 : f32 = x_802.unity_SpecCube0_HDR.w;
  let x_1098 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1096 * x_1098) + 1.0f);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1103, 0.0f);
  let x_1107 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1107);
  let x_1111 : f32 = u_xlat0.x;
  let x_1113 : f32 = x_802.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1111 * x_1113);
  let x_1117 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1117);
  let x_1121 : f32 = u_xlat0.x;
  let x_1123 : f32 = x_802.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1121 * x_1123);
  let x_1126 : vec4<f32> = u_xlat7;
  let x_1128 : vec3<f32> = u_xlat0;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1126.x, x_1126.y, x_1126.z) * vec3<f32>(x_1128.x, x_1128.x, x_1128.x));
  let x_1131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : f32 = u_xlat44;
  let x_1135 : f32 = u_xlat44;
  let x_1139 : vec2<f32> = ((vec2<f32>(x_1133, x_1133) * vec2<f32>(x_1135, x_1135)) + vec2<f32>(-1.0f, 1.0f));
  let x_1140 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
  let x_1143 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1143);
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1150 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(x_1150, x_1150, x_1150));
  let x_1153 : f32 = u_xlat31;
  let x_1155 : vec3<f32> = u_xlat22;
  let x_1157 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1153, x_1153, x_1153) * x_1155) + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1162 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1160.x, x_1160.x, x_1160.x) * x_1162);
  let x_1164 : vec4<f32> = u_xlat7;
  let x_1166 : vec3<f32> = u_xlat22;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * x_1166);
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat4;
  let x_1172 : vec4<f32> = u_xlat6;
  let x_1175 : vec4<f32> = u_xlat7;
  let x_1177 : vec3<f32> = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z)) + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
  let x_1181 : f32 = u_xlat3.x;
  let x_1183 : f32 = x_802.unity_LightData.z;
  u_xlat0.x = (x_1181 * x_1183);
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1189 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1186.x, x_1186.y, x_1186.z), vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1192, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat28;
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1194 * x_1196);
  let x_1199 : vec3<f32> = u_xlat0;
  let x_1202 : vec4<f32> = x_113.x_MainLightColor;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1199.x, x_1199.x, x_1199.x) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec4<f32> = u_xlat1;
  let x_1210 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1207.x, x_1207.y, x_1207.z) + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec3<f32> = u_xlat22;
  let x_1214 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1213, x_1214);
  let x_1218 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1218, 1.17549435e-38f);
  let x_1223 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1223);
  let x_1226 : vec3<f32> = u_xlat0;
  let x_1228 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1226.x, x_1226.x, x_1226.x) * x_1228);
  let x_1230 : vec4<f32> = u_xlat2;
  let x_1232 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), x_1232);
  let x_1236 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1236, 0.0f, 1.0f);
  let x_1240 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1242 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1240.x, x_1240.y, x_1240.z), x_1242);
  let x_1246 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1246, 0.0f, 1.0f);
  let x_1249 : vec3<f32> = u_xlat0;
  let x_1251 : vec3<f32> = u_xlat0;
  let x_1253 : vec2<f32> = (vec2<f32>(x_1249.x, x_1249.z) * vec2<f32>(x_1251.x, x_1251.z));
  let x_1254 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1253.x, x_1254.y, x_1253.y);
  let x_1257 : f32 = u_xlat0.x;
  let x_1259 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1257 * x_1259) + 1.00001001358032226562f);
  let x_1265 : f32 = u_xlat0.x;
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1265 * x_1267);
  let x_1271 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1271, 0.10000000149011611938f);
  let x_1274 : f32 = u_xlat28;
  let x_1276 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1274 * x_1276);
  let x_1279 : f32 = u_xlat45;
  let x_1281 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1279 * x_1281);
  let x_1284 : f32 = u_xlat46;
  let x_1286 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1284 / x_1286);
  let x_1289 : vec4<f32> = u_xlat5;
  let x_1291 : vec3<f32> = u_xlat0;
  let x_1294 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(x_1291.x, x_1291.x, x_1291.x)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat7;
  let x_1299 : vec3<f32> = u_xlat22;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) * x_1299);
  let x_1301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1304 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1306 : f32 = x_802.unity_LightData.y;
  u_xlat0.x = min(x_1304, x_1306);
  let x_1311 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1311));
  let x_1314 : f32 = u_xlat17;
  let x_1316 : f32 = x_580.x_AdditionalShadowFadeParams.x;
  let x_1319 : f32 = x_580.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1314 * x_1316) + x_1319);
  let x_1321 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1321, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1333 : u32 = u_xlatu_loop_1;
    let x_1334 : u32 = u_xlatu0;
    if ((x_1333 < x_1334)) {
    } else {
      break;
    }
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1337 >> 2u);
    let x_1340 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1340 & 3u));
    let x_1343 : u32 = u_xlatu47;
    let x_1346 : vec4<f32> = x_802.unity_LightIndices[bitcast<i32>(x_1343)];
    let x_1356 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1361 : vec4<u32> = indexable[x_1356];
    u_xlat47 = dot(x_1346, bitcast<vec4<f32>>(x_1361));
    let x_1365 : f32 = u_xlat47;
    u_xlati47 = i32(x_1365);
    let x_1367 : vec3<f32> = vs_TEXCOORD7;
    let x_1378 : i32 = u_xlati47;
    let x_1380 : vec4<f32> = x_1377.x_AdditionalLightsPosition[x_1378];
    let x_1383 : i32 = u_xlati47;
    let x_1385 : vec4<f32> = x_1377.x_AdditionalLightsPosition[x_1383];
    u_xlat22 = ((-(x_1367) * vec3<f32>(x_1380.w, x_1380.w, x_1380.w)) + vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
    let x_1389 : vec3<f32> = u_xlat22;
    let x_1390 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(x_1389, x_1390);
    let x_1392 : f32 = u_xlat48;
    u_xlat48 = max(x_1392, 0.00006103515625f);
    let x_1395 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1395);
    let x_1397 : f32 = u_xlat49;
    let x_1399 : vec3<f32> = u_xlat22;
    let x_1400 : vec3<f32> = (vec3<f32>(x_1397, x_1397, x_1397) * x_1399);
    let x_1401 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
    let x_1404 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1404);
    let x_1406 : f32 = u_xlat48;
    let x_1407 : i32 = u_xlati47;
    let x_1409 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1407].x;
    u_xlat48 = (x_1406 * x_1409);
    let x_1411 : f32 = u_xlat48;
    let x_1413 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1411) * x_1413) + 1.0f);
    let x_1416 : f32 = u_xlat48;
    u_xlat48 = max(x_1416, 0.0f);
    let x_1418 : f32 = u_xlat48;
    let x_1419 : f32 = u_xlat48;
    u_xlat48 = (x_1418 * x_1419);
    let x_1421 : f32 = u_xlat48;
    let x_1422 : f32 = u_xlat51;
    u_xlat48 = (x_1421 * x_1422);
    let x_1424 : i32 = u_xlati47;
    let x_1426 : vec4<f32> = x_1377.x_AdditionalLightsSpotDir[x_1424];
    let x_1428 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1426.x, x_1426.y, x_1426.z), vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : f32 = u_xlat51;
    let x_1432 : i32 = u_xlati47;
    let x_1434 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1432].z;
    let x_1436 : i32 = u_xlati47;
    let x_1438 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1436].w;
    u_xlat51 = ((x_1431 * x_1434) + x_1438);
    let x_1440 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1440, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat51;
    let x_1443 : f32 = u_xlat51;
    u_xlat51 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat48;
    let x_1446 : f32 = u_xlat51;
    u_xlat48 = (x_1445 * x_1446);
    let x_1449 : i32 = u_xlati47;
    let x_1451 : f32 = x_580.x_AdditionalShadowParams[x_1449].w;
    u_xlati51 = i32(x_1451);
    let x_1456 : i32 = u_xlati51;
    u_xlatb10.x = (x_1456 >= 0i);
    let x_1460 : bool = u_xlatb10.x;
    if (x_1460) {
      let x_1464 : i32 = u_xlati47;
      let x_1466 : f32 = x_580.x_AdditionalShadowParams[x_1464].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1466, x_1466, x_1466, x_1466))));
      let x_1472 : bool = u_xlatb10.x;
      if (x_1472) {
        let x_1475 : vec4<f32> = u_xlat9;
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1481 : vec4<bool> = (abs(vec4<f32>(x_1475.z, x_1475.z, x_1475.y, x_1475.z)) >= abs(vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.x)));
        u_xlatb10 = vec3<bool>(x_1481.x, x_1481.y, x_1481.z);
        let x_1484 : bool = u_xlatb10.y;
        let x_1486 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1484 & x_1486);
        let x_1490 : vec4<f32> = u_xlat9;
        let x_1493 : vec4<bool> = (-(vec4<f32>(x_1490.z, x_1490.y, x_1490.x, x_1490.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1493.x, x_1493.y, x_1493.z);
        let x_1497 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1497);
        let x_1502 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1502);
        let x_1506 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1506);
        let x_1511 : bool = u_xlatb10.z;
        if (x_1511) {
          let x_1516 : f32 = u_xlat24.z;
          x_1512 = x_1516;
        } else {
          let x_1519 : f32 = u_xlat11.x;
          x_1512 = x_1519;
        }
        let x_1520 : f32 = x_1512;
        u_xlat38 = x_1520;
        let x_1522 : bool = u_xlatb10.x;
        if (x_1522) {
          let x_1527 : f32 = u_xlat24.x;
          x_1523 = x_1527;
        } else {
          let x_1529 : f32 = u_xlat38;
          x_1523 = x_1529;
        }
        let x_1530 : f32 = x_1523;
        u_xlat10.x = x_1530;
        let x_1532 : i32 = u_xlati47;
        let x_1534 : f32 = x_580.x_AdditionalShadowParams[x_1532].w;
        u_xlat24.x = trunc(x_1534);
        let x_1538 : f32 = u_xlat10.x;
        let x_1540 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1538 + x_1540);
        let x_1544 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1544);
      }
      let x_1546 : i32 = u_xlati51;
      u_xlati51 = (x_1546 << bitcast<u32>(2i));
      let x_1548 : vec3<f32> = vs_TEXCOORD7;
      let x_1550 : i32 = u_xlati51;
      let x_1553 : i32 = u_xlati51;
      let x_1557 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1550 + 1i) / 4i)][((x_1553 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1548.y, x_1548.y, x_1548.y, x_1548.y) * x_1557);
      let x_1559 : i32 = u_xlati51;
      let x_1561 : i32 = u_xlati51;
      let x_1564 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[(x_1559 / 4i)][(x_1561 % 4i)];
      let x_1565 : vec3<f32> = vs_TEXCOORD7;
      let x_1568 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1564 * vec4<f32>(x_1565.x, x_1565.x, x_1565.x, x_1565.x)) + x_1568);
      let x_1570 : i32 = u_xlati51;
      let x_1573 : i32 = u_xlati51;
      let x_1577 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1570 + 2i) / 4i)][((x_1573 + 2i) % 4i)];
      let x_1578 : vec3<f32> = vs_TEXCOORD7;
      let x_1581 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1577 * vec4<f32>(x_1578.z, x_1578.z, x_1578.z, x_1578.z)) + x_1581);
      let x_1583 : vec4<f32> = u_xlat10;
      let x_1584 : i32 = u_xlati51;
      let x_1587 : i32 = u_xlati51;
      let x_1591 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_1584 + 3i) / 4i)][((x_1587 + 3i) % 4i)];
      u_xlat10 = (x_1583 + x_1591);
      let x_1593 : vec4<f32> = u_xlat10;
      let x_1595 : vec4<f32> = u_xlat10;
      let x_1597 : vec3<f32> = (vec3<f32>(x_1593.x, x_1593.y, x_1593.z) / vec3<f32>(x_1595.w, x_1595.w, x_1595.w));
      let x_1598 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
      let x_1601 : vec4<f32> = u_xlat10;
      let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
      let x_1604 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
      let x_1612 : vec3<f32> = txVec1;
      let x_1614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1612.xy, x_1612.z);
      u_xlat51 = x_1614;
      let x_1615 : i32 = u_xlati47;
      let x_1617 : f32 = x_580.x_AdditionalShadowParams[x_1615].x;
      u_xlat10.x = (1.0f + -(x_1617));
      let x_1621 : f32 = u_xlat51;
      let x_1622 : i32 = u_xlati47;
      let x_1624 : f32 = x_580.x_AdditionalShadowParams[x_1622].x;
      let x_1627 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1621 * x_1624) + x_1627);
      let x_1630 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1630);
      let x_1635 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1635 >= 1.0f);
      let x_1637 : bool = u_xlatb24;
      let x_1639 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1637 | x_1639);
      let x_1643 : bool = u_xlatb10.x;
      let x_1644 : f32 = u_xlat51;
      u_xlat51 = select(x_1644, 1.0f, x_1643);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1647 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1647) + 1.0f);
    let x_1651 : f32 = u_xlat28;
    let x_1653 : f32 = u_xlat10.x;
    let x_1655 : f32 = u_xlat51;
    u_xlat51 = ((x_1651 * x_1653) + x_1655);
    let x_1657 : f32 = u_xlat48;
    let x_1658 : f32 = u_xlat51;
    u_xlat48 = (x_1657 * x_1658);
    let x_1660 : vec4<f32> = u_xlat2;
    let x_1662 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1665, 0.0f, 1.0f);
    let x_1667 : f32 = u_xlat48;
    let x_1668 : f32 = u_xlat51;
    u_xlat48 = (x_1667 * x_1668);
    let x_1670 : f32 = u_xlat48;
    let x_1672 : i32 = u_xlati47;
    let x_1674 : vec4<f32> = x_1377.x_AdditionalLightsColor[x_1672];
    let x_1676 : vec3<f32> = (vec3<f32>(x_1670, x_1670, x_1670) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
    let x_1679 : vec3<f32> = u_xlat22;
    let x_1680 : f32 = u_xlat49;
    let x_1683 : vec4<f32> = u_xlat1;
    u_xlat22 = ((x_1679 * vec3<f32>(x_1680, x_1680, x_1680)) + vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : vec3<f32> = u_xlat22;
    let x_1687 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1686, x_1687);
    let x_1689 : f32 = u_xlat47;
    u_xlat47 = max(x_1689, 1.17549435e-38f);
    let x_1691 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1691);
    let x_1693 : f32 = u_xlat47;
    let x_1695 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1693, x_1693, x_1693) * x_1695);
    let x_1697 : vec4<f32> = u_xlat2;
    let x_1699 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1697.x, x_1697.y, x_1697.z), x_1699);
    let x_1701 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1701, 0.0f, 1.0f);
    let x_1703 : vec4<f32> = u_xlat9;
    let x_1705 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(vec3<f32>(x_1703.x, x_1703.y, x_1703.z), x_1705);
    let x_1707 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1707, 0.0f, 1.0f);
    let x_1709 : f32 = u_xlat47;
    let x_1710 : f32 = u_xlat47;
    u_xlat47 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat47;
    let x_1714 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1712 * x_1714) + 1.00001001358032226562f);
    let x_1717 : f32 = u_xlat48;
    let x_1718 : f32 = u_xlat48;
    u_xlat48 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat47;
    let x_1721 : f32 = u_xlat47;
    u_xlat47 = (x_1720 * x_1721);
    let x_1723 : f32 = u_xlat48;
    u_xlat48 = max(x_1723, 0.10000000149011611938f);
    let x_1725 : f32 = u_xlat47;
    let x_1726 : f32 = u_xlat48;
    u_xlat47 = (x_1725 * x_1726);
    let x_1728 : f32 = u_xlat45;
    let x_1729 : f32 = u_xlat47;
    u_xlat47 = (x_1728 * x_1729);
    let x_1731 : f32 = u_xlat46;
    let x_1732 : f32 = u_xlat47;
    u_xlat47 = (x_1731 / x_1732);
    let x_1734 : vec4<f32> = u_xlat5;
    let x_1736 : f32 = u_xlat47;
    let x_1739 : vec4<f32> = u_xlat6;
    u_xlat22 = ((vec3<f32>(x_1734.x, x_1734.y, x_1734.z) * vec3<f32>(x_1736, x_1736, x_1736)) + vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
    let x_1742 : vec3<f32> = u_xlat22;
    let x_1743 : vec4<f32> = u_xlat10;
    let x_1746 : vec4<f32> = u_xlat3;
    let x_1748 : vec3<f32> = ((x_1742 * vec3<f32>(x_1743.x, x_1743.y, x_1743.z)) + vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
    let x_1749 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);

    continuing {
      let x_1751 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1751 + bitcast<u32>(1i));
    }
  }
  let x_1753 : vec4<f32> = u_xlat4;
  let x_1755 : f32 = u_xlat14;
  let x_1758 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1753.x, x_1753.y, x_1753.z) * vec3<f32>(x_1755, x_1755, x_1755)) + vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : vec4<f32> = u_xlat3;
  let x_1763 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) + x_1763);
  let x_1765 : f32 = u_xlat43;
  let x_1766 : f32 = u_xlat43;
  u_xlat1.x = (x_1765 * -(x_1766));
  let x_1771 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1771);
  let x_1774 : vec3<f32> = u_xlat0;
  let x_1775 : f32 = u_xlat42;
  let x_1779 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_1774 * vec3<f32>(x_1775, x_1775, x_1775)) + -(vec3<f32>(x_1779.x, x_1779.y, x_1779.z)));
  let x_1785 : vec4<f32> = u_xlat1;
  let x_1787 : vec3<f32> = u_xlat0;
  let x_1790 : vec4<f32> = x_113.unity_FogColor;
  let x_1792 : vec3<f32> = ((vec3<f32>(x_1785.x, x_1785.x, x_1785.x) * x_1787) + vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


