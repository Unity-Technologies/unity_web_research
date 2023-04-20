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

@group(1) @binding(2) var<uniform> x_613 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_777 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat21 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1189 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

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

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_550 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1331 : f32;
  var x_1342 : f32;
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
  let x_574 : f32 = vs_TEXCOORD7.y;
  let x_576 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_574 * x_576);
  let x_579 : f32 = x_113.unity_MatrixV[0i].z;
  let x_581 : f32 = vs_TEXCOORD7.x;
  let x_583 : f32 = u_xlat43;
  u_xlat43 = ((x_579 * x_581) + x_583);
  let x_586 : f32 = x_113.unity_MatrixV[2i].z;
  let x_588 : f32 = vs_TEXCOORD7.z;
  let x_590 : f32 = u_xlat43;
  u_xlat43 = ((x_586 * x_588) + x_590);
  let x_592 : f32 = u_xlat43;
  let x_595 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_592 + x_595);
  let x_597 : f32 = u_xlat43;
  let x_600 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_597) + -(x_600));
  let x_603 : f32 = u_xlat43;
  u_xlat43 = max(x_603, 0.0f);
  let x_605 : f32 = u_xlat43;
  let x_607 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_605 * x_607);
  u_xlat2.w = 1.0f;
  let x_615 : vec4<f32> = x_613.unity_SHAr;
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_615, x_616);
  let x_620 : vec4<f32> = x_613.unity_SHAg;
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_620, x_621);
  let x_625 : vec4<f32> = x_613.unity_SHAb;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_625, x_626);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_629.y, x_629.z, x_629.z, x_629.x) * vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.z));
  let x_635 : vec4<f32> = x_613.unity_SHBr;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_613.unity_SHBg;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_613.unity_SHBb;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_645, x_646);
  let x_651 : f32 = u_xlat2.y;
  let x_653 : f32 = u_xlat2.y;
  u_xlat44 = (x_651 * x_653);
  let x_656 : f32 = u_xlat2.x;
  let x_658 : f32 = u_xlat2.x;
  let x_660 : f32 = u_xlat44;
  u_xlat44 = ((x_656 * x_658) + -(x_660));
  let x_665 : vec4<f32> = x_613.unity_SHC;
  let x_667 : f32 = u_xlat44;
  let x_670 : vec4<f32> = u_xlat6;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_667, x_667, x_667)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_689) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_695 : f32 = u_xlat28;
  let x_696 : f32 = u_xlat44;
  u_xlat45 = (x_695 + -(x_696));
  let x_699 : f32 = u_xlat44;
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat5;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat0;
  let x_715 : vec4<f32> = u_xlat5;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_721 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : f32 = u_xlat28;
  u_xlat0.x = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat0.x;
  u_xlat28 = (x_728 * x_730);
  let x_732 : f32 = u_xlat28;
  u_xlat28 = max(x_732, 0.0078125f);
  let x_735 : f32 = u_xlat28;
  let x_736 : f32 = u_xlat28;
  u_xlat44 = (x_735 * x_736);
  let x_738 : f32 = u_xlat45;
  u_xlat45 = (x_738 + 1.0f);
  let x_740 : f32 = u_xlat45;
  u_xlat45 = clamp(x_740, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat28;
  u_xlat46 = ((x_743 * 4.0f) + 2.0f);
  let x_747 : f32 = u_xlat14;
  u_xlat14 = min(x_747, 1.0f);
  let x_751 : vec4<f32> = vs_TEXCOORD8;
  let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
  let x_754 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_752.x, x_752.y, x_754);
  let x_767 : vec3<f32> = txVec0;
  let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
  u_xlat47 = x_769;
  let x_779 : f32 = x_777.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_779) + 1.0f);
  let x_783 : f32 = u_xlat47;
  let x_785 : f32 = x_777.x_MainLightShadowParams.x;
  let x_788 : f32 = u_xlat6.x;
  u_xlat47 = ((x_783 * x_785) + x_788);
  let x_792 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_792);
  let x_796 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_796 >= 1.0f);
  let x_798 : bool = u_xlatb20;
  let x_799 : bool = u_xlatb6;
  u_xlatb6 = (x_798 | x_799);
  let x_801 : bool = u_xlatb6;
  let x_802 : f32 = u_xlat47;
  u_xlat47 = select(x_802, 1.0f, x_801);
  let x_804 : vec3<f32> = vs_TEXCOORD7;
  let x_806 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_808 : vec3<f32> = (x_804 + -(x_806));
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_811.x, x_811.y, x_811.z), vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_819 : f32 = u_xlat6.x;
  let x_821 : f32 = x_777.x_MainLightShadowParams.z;
  let x_824 : f32 = x_777.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_819 * x_821) + x_824);
  let x_828 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_828, 0.0f, 1.0f);
  let x_832 : f32 = u_xlat47;
  u_xlat34 = (-(x_832) + 1.0f);
  let x_836 : f32 = u_xlat20.x;
  let x_837 : f32 = u_xlat34;
  let x_839 : f32 = u_xlat47;
  u_xlat47 = ((x_836 * x_837) + x_839);
  let x_841 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat20.x = dot(-(vec3<f32>(x_841.x, x_841.y, x_841.z)), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_849 : f32 = u_xlat20.x;
  let x_851 : f32 = u_xlat20.x;
  u_xlat20.x = (x_849 + x_851);
  let x_854 : vec4<f32> = u_xlat2;
  let x_856 : vec3<f32> = u_xlat20;
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat20 = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * -(vec3<f32>(x_856.x, x_856.x, x_856.x))) + -(vec3<f32>(x_860.x, x_860.y, x_860.z)));
  let x_864 : vec4<f32> = u_xlat2;
  let x_866 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_871 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_871, 0.0f, 1.0f);
  let x_875 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat7.x;
  let x_882 : f32 = u_xlat7.x;
  u_xlat7.x = (x_880 * x_882);
  let x_886 : f32 = u_xlat7.x;
  let x_888 : f32 = u_xlat7.x;
  u_xlat7.x = (x_886 * x_888);
  let x_893 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_893) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_901 : f32 = u_xlat0.x;
  let x_903 : f32 = u_xlat21.x;
  u_xlat0.x = (x_901 * x_903);
  let x_907 : f32 = u_xlat0.x;
  u_xlat0.x = (x_907 * 6.0f);
  let x_919 : vec3<f32> = u_xlat20;
  let x_921 : f32 = u_xlat0.x;
  let x_922 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_919, x_921);
  u_xlat8 = x_922;
  let x_924 : f32 = u_xlat8.w;
  u_xlat0.x = (x_924 + -1.0f);
  let x_928 : f32 = x_613.unity_SpecCube0_HDR.w;
  let x_930 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_928 * x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_935, 0.0f);
  let x_939 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_939);
  let x_943 : f32 = u_xlat0.x;
  let x_945 : f32 = x_613.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_943 * x_945);
  let x_949 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_949);
  let x_953 : f32 = u_xlat0.x;
  let x_955 : f32 = x_613.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_953 * x_955);
  let x_958 : vec4<f32> = u_xlat8;
  let x_960 : vec3<f32> = u_xlat0;
  u_xlat20 = (vec3<f32>(x_958.x, x_958.y, x_958.z) * vec3<f32>(x_960.x, x_960.x, x_960.x));
  let x_963 : f32 = u_xlat28;
  let x_965 : f32 = u_xlat28;
  let x_969 : vec2<f32> = ((vec2<f32>(x_963, x_963) * vec2<f32>(x_965, x_965)) + vec2<f32>(-1.0f, 1.0f));
  let x_970 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_969.x, x_970.y, x_969.y);
  let x_973 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_973);
  let x_975 : vec4<f32> = u_xlat5;
  let x_978 : f32 = u_xlat45;
  u_xlat21 = (-(vec3<f32>(x_975.x, x_975.y, x_975.z)) + vec3<f32>(x_978, x_978, x_978));
  let x_981 : vec4<f32> = u_xlat7;
  let x_983 : vec3<f32> = u_xlat21;
  let x_985 : vec4<f32> = u_xlat5;
  let x_987 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.x, x_981.x) * x_983) + vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : f32 = u_xlat28;
  let x_992 : vec4<f32> = u_xlat7;
  let x_994 : vec3<f32> = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat20;
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_997 * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat3;
  let x_1003 : vec4<f32> = u_xlat4;
  let x_1006 : vec3<f32> = u_xlat20;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z)) + x_1006);
  let x_1008 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : f32 = u_xlat47;
  let x_1012 : f32 = x_613.unity_LightData.z;
  u_xlat28 = (x_1010 * x_1012);
  let x_1014 : vec4<f32> = u_xlat2;
  let x_1017 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1020, 0.0f, 1.0f);
  let x_1022 : f32 = u_xlat28;
  let x_1023 : f32 = u_xlat45;
  u_xlat28 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat28;
  let x_1028 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat1;
  let x_1034 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat7;
  let x_1041 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : f32 = u_xlat28;
  u_xlat28 = max(x_1044, 1.17549435e-38f);
  let x_1047 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1047);
  let x_1049 : f32 = u_xlat28;
  let x_1051 : vec4<f32> = u_xlat7;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1049, x_1049, x_1049) * vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1061, 0.0f, 1.0f);
  let x_1064 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1066 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1069, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat28;
  let x_1072 : f32 = u_xlat28;
  u_xlat28 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat28;
  let x_1076 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1074 * x_1076) + 1.00001001358032226562f);
  let x_1080 : f32 = u_xlat45;
  let x_1081 : f32 = u_xlat45;
  u_xlat45 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat28;
  let x_1084 : f32 = u_xlat28;
  u_xlat28 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat45;
  u_xlat45 = max(x_1086, 0.10000000149011611938f);
  let x_1089 : f32 = u_xlat28;
  let x_1090 : f32 = u_xlat45;
  u_xlat28 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat46;
  let x_1093 : f32 = u_xlat28;
  u_xlat28 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat44;
  let x_1096 : f32 = u_xlat28;
  u_xlat28 = (x_1095 / x_1096);
  let x_1098 : vec4<f32> = u_xlat5;
  let x_1100 : f32 = u_xlat28;
  let x_1103 : vec4<f32> = u_xlat4;
  let x_1105 : vec3<f32> = ((vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100, x_1100, x_1100)) + vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : vec3<f32> = u_xlat20;
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1108 * vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1113 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1115 : f32 = x_613.unity_LightData.y;
  u_xlat28 = min(x_1113, x_1115);
  let x_1119 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1119));
  let x_1123 : f32 = u_xlat6.x;
  let x_1125 : f32 = x_777.x_AdditionalShadowFadeParams.x;
  let x_1128 : f32 = x_777.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1123 * x_1125) + x_1128);
  let x_1130 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1130, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1142 : u32 = u_xlatu_loop_1;
    let x_1143 : u32 = u_xlatu28;
    if ((x_1142 < x_1143)) {
    } else {
      break;
    }
    let x_1146 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1146 >> 2u);
    let x_1150 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1150 & 3u));
    let x_1153 : u32 = u_xlatu6;
    let x_1156 : vec4<f32> = x_613.unity_LightIndices[bitcast<i32>(x_1153)];
    let x_1166 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1171 : vec4<u32> = indexable[x_1166];
    u_xlat6.x = dot(x_1156, bitcast<vec4<f32>>(x_1171));
    let x_1177 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1177);
    let x_1179 : vec3<f32> = vs_TEXCOORD7;
    let x_1190 : i32 = u_xlati6;
    let x_1192 : vec4<f32> = x_1189.x_AdditionalLightsPosition[x_1190];
    let x_1195 : i32 = u_xlati6;
    let x_1197 : vec4<f32> = x_1189.x_AdditionalLightsPosition[x_1195];
    let x_1199 : vec3<f32> = ((-(x_1179) * vec3<f32>(x_1192.w, x_1192.w, x_1192.w)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1203 : vec4<f32> = u_xlat8;
    let x_1205 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
    let x_1208 : f32 = u_xlat49;
    u_xlat49 = max(x_1208, 0.00006103515625f);
    let x_1211 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1211);
    let x_1213 : f32 = u_xlat50;
    let x_1215 : vec4<f32> = u_xlat8;
    let x_1217 : vec3<f32> = (vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
    let x_1218 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
    let x_1221 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1221);
    let x_1223 : f32 = u_xlat49;
    let x_1224 : i32 = u_xlati6;
    let x_1226 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1224].x;
    u_xlat49 = (x_1223 * x_1226);
    let x_1228 : f32 = u_xlat49;
    let x_1230 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1228) * x_1230) + 1.0f);
    let x_1233 : f32 = u_xlat49;
    u_xlat49 = max(x_1233, 0.0f);
    let x_1235 : f32 = u_xlat49;
    let x_1236 : f32 = u_xlat49;
    u_xlat49 = (x_1235 * x_1236);
    let x_1238 : f32 = u_xlat49;
    let x_1239 : f32 = u_xlat51;
    u_xlat49 = (x_1238 * x_1239);
    let x_1241 : i32 = u_xlati6;
    let x_1243 : vec4<f32> = x_1189.x_AdditionalLightsSpotDir[x_1241];
    let x_1245 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
    let x_1248 : f32 = u_xlat51;
    let x_1249 : i32 = u_xlati6;
    let x_1251 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1249].z;
    let x_1253 : i32 = u_xlati6;
    let x_1255 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1253].w;
    u_xlat51 = ((x_1248 * x_1251) + x_1255);
    let x_1257 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1257, 0.0f, 1.0f);
    let x_1259 : f32 = u_xlat51;
    let x_1260 : f32 = u_xlat51;
    u_xlat51 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat49;
    let x_1263 : f32 = u_xlat51;
    u_xlat49 = (x_1262 * x_1263);
    let x_1266 : i32 = u_xlati6;
    let x_1268 : f32 = x_777.x_AdditionalShadowParams[x_1266].w;
    u_xlati51 = i32(x_1268);
    let x_1273 : i32 = u_xlati51;
    u_xlatb10.x = (x_1273 >= 0i);
    let x_1277 : bool = u_xlatb10.x;
    if (x_1277) {
      let x_1281 : i32 = u_xlati6;
      let x_1283 : f32 = x_777.x_AdditionalShadowParams[x_1281].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1283, x_1283, x_1283, x_1283))));
      let x_1289 : bool = u_xlatb10.x;
      if (x_1289) {
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec4<f32> = u_xlat9;
        let x_1298 : vec4<bool> = (abs(vec4<f32>(x_1292.z, x_1292.z, x_1292.y, x_1292.z)) >= abs(vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.x)));
        u_xlatb10 = vec3<bool>(x_1298.x, x_1298.y, x_1298.z);
        let x_1301 : bool = u_xlatb10.y;
        let x_1303 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1301 & x_1303);
        let x_1307 : vec4<f32> = u_xlat9;
        let x_1310 : vec4<bool> = (-(vec4<f32>(x_1307.z, x_1307.y, x_1307.x, x_1307.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1310.x, x_1310.y, x_1310.z);
        let x_1314 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1314);
        let x_1319 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1319);
        let x_1324 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1324);
        let x_1329 : bool = u_xlatb10.z;
        if (x_1329) {
          let x_1335 : f32 = u_xlat24.z;
          x_1331 = x_1335;
        } else {
          let x_1338 : f32 = u_xlat11.x;
          x_1331 = x_1338;
        }
        let x_1339 : f32 = x_1331;
        u_xlat38 = x_1339;
        let x_1341 : bool = u_xlatb10.x;
        if (x_1341) {
          let x_1346 : f32 = u_xlat24.x;
          x_1342 = x_1346;
        } else {
          let x_1348 : f32 = u_xlat38;
          x_1342 = x_1348;
        }
        let x_1349 : f32 = x_1342;
        u_xlat10.x = x_1349;
        let x_1351 : i32 = u_xlati6;
        let x_1353 : f32 = x_777.x_AdditionalShadowParams[x_1351].w;
        u_xlat24.x = trunc(x_1353);
        let x_1357 : f32 = u_xlat10.x;
        let x_1359 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1357 + x_1359);
        let x_1363 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1363);
      }
      let x_1365 : i32 = u_xlati51;
      u_xlati51 = (x_1365 << bitcast<u32>(2i));
      let x_1367 : vec3<f32> = vs_TEXCOORD7;
      let x_1369 : i32 = u_xlati51;
      let x_1372 : i32 = u_xlati51;
      let x_1376 : vec4<f32> = x_777.x_AdditionalLightsWorldToShadow[((x_1369 + 1i) / 4i)][((x_1372 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1367.y, x_1367.y, x_1367.y, x_1367.y) * x_1376);
      let x_1378 : i32 = u_xlati51;
      let x_1380 : i32 = u_xlati51;
      let x_1383 : vec4<f32> = x_777.x_AdditionalLightsWorldToShadow[(x_1378 / 4i)][(x_1380 % 4i)];
      let x_1384 : vec3<f32> = vs_TEXCOORD7;
      let x_1387 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1383 * vec4<f32>(x_1384.x, x_1384.x, x_1384.x, x_1384.x)) + x_1387);
      let x_1389 : i32 = u_xlati51;
      let x_1392 : i32 = u_xlati51;
      let x_1396 : vec4<f32> = x_777.x_AdditionalLightsWorldToShadow[((x_1389 + 2i) / 4i)][((x_1392 + 2i) % 4i)];
      let x_1397 : vec3<f32> = vs_TEXCOORD7;
      let x_1400 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1396 * vec4<f32>(x_1397.z, x_1397.z, x_1397.z, x_1397.z)) + x_1400);
      let x_1402 : vec4<f32> = u_xlat10;
      let x_1403 : i32 = u_xlati51;
      let x_1406 : i32 = u_xlati51;
      let x_1410 : vec4<f32> = x_777.x_AdditionalLightsWorldToShadow[((x_1403 + 3i) / 4i)][((x_1406 + 3i) % 4i)];
      u_xlat10 = (x_1402 + x_1410);
      let x_1412 : vec4<f32> = u_xlat10;
      let x_1414 : vec4<f32> = u_xlat10;
      let x_1416 : vec3<f32> = (vec3<f32>(x_1412.x, x_1412.y, x_1412.z) / vec3<f32>(x_1414.w, x_1414.w, x_1414.w));
      let x_1417 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
      let x_1420 : vec4<f32> = u_xlat10;
      let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
      let x_1423 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
      let x_1431 : vec3<f32> = txVec1;
      let x_1433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
      u_xlat51 = x_1433;
      let x_1434 : i32 = u_xlati6;
      let x_1436 : f32 = x_777.x_AdditionalShadowParams[x_1434].x;
      u_xlat10.x = (1.0f + -(x_1436));
      let x_1440 : f32 = u_xlat51;
      let x_1441 : i32 = u_xlati6;
      let x_1443 : f32 = x_777.x_AdditionalShadowParams[x_1441].x;
      let x_1446 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1440 * x_1443) + x_1446);
      let x_1449 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1449);
      let x_1454 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1454 >= 1.0f);
      let x_1456 : bool = u_xlatb24;
      let x_1458 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1456 | x_1458);
      let x_1462 : bool = u_xlatb10.x;
      let x_1463 : f32 = u_xlat51;
      u_xlat51 = select(x_1463, 1.0f, x_1462);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1466 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1466) + 1.0f);
    let x_1470 : f32 = u_xlat45;
    let x_1472 : f32 = u_xlat10.x;
    let x_1474 : f32 = u_xlat51;
    u_xlat51 = ((x_1470 * x_1472) + x_1474);
    let x_1476 : f32 = u_xlat49;
    let x_1477 : f32 = u_xlat51;
    u_xlat49 = (x_1476 * x_1477);
    let x_1479 : vec4<f32> = u_xlat2;
    let x_1481 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1479.x, x_1479.y, x_1479.z), vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1484, 0.0f, 1.0f);
    let x_1486 : f32 = u_xlat49;
    let x_1487 : f32 = u_xlat51;
    u_xlat49 = (x_1486 * x_1487);
    let x_1489 : f32 = u_xlat49;
    let x_1491 : i32 = u_xlati6;
    let x_1493 : vec4<f32> = x_1189.x_AdditionalLightsColor[x_1491];
    let x_1495 : vec3<f32> = (vec3<f32>(x_1489, x_1489, x_1489) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1498 : vec4<f32> = u_xlat8;
    let x_1500 : f32 = u_xlat50;
    let x_1503 : vec4<f32> = u_xlat1;
    let x_1505 : vec3<f32> = ((vec3<f32>(x_1498.x, x_1498.y, x_1498.z) * vec3<f32>(x_1500, x_1500, x_1500)) + vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
    let x_1506 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
    let x_1508 : vec4<f32> = u_xlat8;
    let x_1510 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1508.x, x_1508.y, x_1508.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
    let x_1515 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1515, 1.17549435e-38f);
    let x_1519 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1519);
    let x_1522 : vec4<f32> = u_xlat6;
    let x_1524 : vec4<f32> = u_xlat8;
    let x_1526 : vec3<f32> = (vec3<f32>(x_1522.x, x_1522.x, x_1522.x) * vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
    let x_1527 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
    let x_1529 : vec4<f32> = u_xlat2;
    let x_1531 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1529.x, x_1529.y, x_1529.z), vec3<f32>(x_1531.x, x_1531.y, x_1531.z));
    let x_1536 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1536, 0.0f, 1.0f);
    let x_1539 : vec4<f32> = u_xlat9;
    let x_1541 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1539.x, x_1539.y, x_1539.z), vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
    let x_1544 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1544, 0.0f, 1.0f);
    let x_1547 : f32 = u_xlat6.x;
    let x_1549 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1547 * x_1549);
    let x_1553 : f32 = u_xlat6.x;
    let x_1555 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_1553 * x_1555) + 1.00001001358032226562f);
    let x_1559 : f32 = u_xlat49;
    let x_1560 : f32 = u_xlat49;
    u_xlat49 = (x_1559 * x_1560);
    let x_1563 : f32 = u_xlat6.x;
    let x_1565 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1563 * x_1565);
    let x_1568 : f32 = u_xlat49;
    u_xlat49 = max(x_1568, 0.10000000149011611938f);
    let x_1571 : f32 = u_xlat6.x;
    let x_1572 : f32 = u_xlat49;
    u_xlat6.x = (x_1571 * x_1572);
    let x_1575 : f32 = u_xlat46;
    let x_1577 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1575 * x_1577);
    let x_1580 : f32 = u_xlat44;
    let x_1582 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1580 / x_1582);
    let x_1585 : vec4<f32> = u_xlat5;
    let x_1587 : vec4<f32> = u_xlat6;
    let x_1590 : vec4<f32> = u_xlat4;
    let x_1592 : vec3<f32> = ((vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1587.x, x_1587.x, x_1587.x)) + vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
    let x_1595 : vec4<f32> = u_xlat8;
    let x_1597 : vec4<f32> = u_xlat10;
    let x_1600 : vec4<f32> = u_xlat7;
    let x_1602 : vec3<f32> = ((vec3<f32>(x_1595.x, x_1595.y, x_1595.z) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z)) + vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
    let x_1603 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);

    continuing {
      let x_1605 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1605 + bitcast<u32>(1i));
    }
  }
  let x_1607 : vec4<f32> = u_xlat3;
  let x_1609 : f32 = u_xlat14;
  let x_1612 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1607.x, x_1607.y, x_1607.z) * vec3<f32>(x_1609, x_1609, x_1609)) + x_1612);
  let x_1614 : vec4<f32> = u_xlat7;
  let x_1616 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1614.x, x_1614.y, x_1614.z) + x_1616);
  let x_1618 : f32 = u_xlat43;
  let x_1619 : f32 = u_xlat43;
  u_xlat1.x = (x_1618 * -(x_1619));
  let x_1624 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1624);
  let x_1627 : vec3<f32> = u_xlat0;
  let x_1628 : f32 = u_xlat42;
  let x_1632 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_1627 * vec3<f32>(x_1628, x_1628, x_1628)) + -(vec3<f32>(x_1632.x, x_1632.y, x_1632.z)));
  let x_1638 : vec4<f32> = u_xlat1;
  let x_1640 : vec3<f32> = u_xlat0;
  let x_1643 : vec4<f32> = x_113.unity_FogColor;
  let x_1645 : vec3<f32> = ((vec3<f32>(x_1638.x, x_1638.x, x_1638.x) * x_1640) + vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
  let x_1646 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


