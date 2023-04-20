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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1012 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1164 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1455 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1040 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1596 : f32;
  var x_1607 : f32;
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
  let x_827 : f32 = vs_TEXCOORD7.y;
  let x_829 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_827 * x_829);
  let x_832 : f32 = x_113.unity_MatrixV[0i].z;
  let x_834 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat43;
  u_xlat43 = ((x_832 * x_834) + x_836);
  let x_839 : f32 = x_113.unity_MatrixV[2i].z;
  let x_841 : f32 = vs_TEXCOORD7.z;
  let x_843 : f32 = u_xlat43;
  u_xlat43 = ((x_839 * x_841) + x_843);
  let x_845 : f32 = u_xlat43;
  let x_847 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_845 + x_847);
  let x_849 : f32 = u_xlat43;
  let x_852 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_849) + -(x_852));
  let x_855 : f32 = u_xlat43;
  u_xlat43 = max(x_855, 0.0f);
  let x_857 : f32 = u_xlat43;
  let x_859 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_857 * x_859);
  let x_866 : vec4<f32> = vs_TEXCOORD0;
  let x_869 : f32 = x_113.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_866.z, x_866.w), x_869);
  u_xlat2 = x_870;
  let x_875 : vec4<f32> = vs_TEXCOORD0;
  let x_878 : f32 = x_113.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_875.z, x_875.w), x_878);
  let x_880 : vec3<f32> = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat2;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat1;
  let x_892 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_897 : f32 = u_xlat2.x;
  u_xlat2.x = (x_897 + 0.5f);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = u_xlat2.w;
  u_xlat44 = max(x_909, 0.00009999999747378752f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : f32 = u_xlat44;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914, x_914, x_914));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_920) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_925 : f32 = u_xlat28;
  let x_926 : f32 = u_xlat44;
  u_xlat3.x = (x_925 + -(x_926));
  let x_931 : f32 = u_xlat44;
  let x_933 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_945 : vec4<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : f32 = u_xlat28;
  u_xlat0.x = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat0.x;
  let x_960 : f32 = u_xlat0.x;
  u_xlat28 = (x_958 * x_960);
  let x_962 : f32 = u_xlat28;
  u_xlat28 = max(x_962, 0.0078125f);
  let x_965 : f32 = u_xlat28;
  let x_966 : f32 = u_xlat28;
  u_xlat44 = (x_965 * x_966);
  let x_969 : f32 = u_xlat3.x;
  u_xlat3.x = (x_969 + 1.0f);
  let x_973 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_973, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat28;
  u_xlat46 = ((x_977 * 4.0f) + 2.0f);
  let x_980 : f32 = u_xlat14;
  u_xlat14 = min(x_980, 1.0f);
  let x_985 : vec4<f32> = vs_TEXCOORD8;
  let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
  let x_988 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_986.x, x_986.y, x_988);
  let x_1000 : vec3<f32> = txVec0;
  let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
  u_xlat5.x = x_1002;
  let x_1014 : f32 = x_1012.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1014) + 1.0f);
  let x_1019 : f32 = u_xlat5.x;
  let x_1021 : f32 = x_1012.x_MainLightShadowParams.x;
  let x_1024 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1019 * x_1021) + x_1024);
  let x_1029 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1029);
  let x_1033 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (x_1033 >= 1.0f);
  let x_1035 : bool = u_xlatb33;
  let x_1036 : bool = u_xlatb19;
  u_xlatb19 = (x_1035 | x_1036);
  let x_1038 : bool = u_xlatb19;
  if (x_1038) {
    x_1040 = 1.0f;
  } else {
    let x_1045 : f32 = u_xlat5.x;
    x_1040 = x_1045;
  }
  let x_1046 : f32 = x_1040;
  u_xlat5.x = x_1046;
  let x_1048 : vec3<f32> = vs_TEXCOORD7;
  let x_1051 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1048 + -(x_1051));
  let x_1054 : vec3<f32> = u_xlat19;
  let x_1055 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1054, x_1055);
  let x_1060 : f32 = u_xlat19.x;
  let x_1062 : f32 = x_1012.x_MainLightShadowParams.z;
  let x_1065 : f32 = x_1012.x_MainLightShadowParams.w;
  u_xlat33 = ((x_1060 * x_1062) + x_1065);
  let x_1067 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1067, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1071) + 1.0f);
  let x_1074 : f32 = u_xlat33;
  let x_1075 : f32 = u_xlat47;
  let x_1078 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1074 * x_1075) + x_1078);
  let x_1082 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1082;
  let x_1085 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1085;
  let x_1088 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1088;
  let x_1090 : vec4<f32> = u_xlat6;
  let x_1093 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(-(vec3<f32>(x_1090.x, x_1090.y, x_1090.z)), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : f32 = u_xlat33;
  let x_1097 : f32 = u_xlat33;
  u_xlat33 = (x_1096 + x_1097);
  let x_1099 : vec4<f32> = u_xlat1;
  let x_1101 : f32 = u_xlat33;
  let x_1105 : vec4<f32> = u_xlat6;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * -(vec3<f32>(x_1101, x_1101, x_1101))) + -(vec3<f32>(x_1105.x, x_1105.y, x_1105.z)));
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat1;
  let x_1113 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1116, 0.0f, 1.0f);
  let x_1118 : f32 = u_xlat33;
  u_xlat33 = (-(x_1118) + 1.0f);
  let x_1121 : f32 = u_xlat33;
  let x_1122 : f32 = u_xlat33;
  u_xlat33 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat33;
  let x_1125 : f32 = u_xlat33;
  u_xlat33 = (x_1124 * x_1125);
  let x_1128 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1128) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1135 : f32 = u_xlat0.x;
  let x_1136 : f32 = u_xlat47;
  u_xlat0.x = (x_1135 * x_1136);
  let x_1140 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1140 * 6.0f);
  let x_1152 : vec4<f32> = u_xlat7;
  let x_1155 : f32 = u_xlat0.x;
  let x_1156 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1155);
  u_xlat7 = x_1156;
  let x_1158 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1158 + -1.0f);
  let x_1166 : f32 = x_1164.unity_SpecCube0_HDR.w;
  let x_1168 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1166 * x_1168) + 1.0f);
  let x_1173 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1173, 0.0f);
  let x_1177 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1177);
  let x_1181 : f32 = u_xlat0.x;
  let x_1183 : f32 = x_1164.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1181 * x_1183);
  let x_1187 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1187);
  let x_1191 : f32 = u_xlat0.x;
  let x_1193 : f32 = x_1164.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1191 * x_1193);
  let x_1196 : vec4<f32> = u_xlat7;
  let x_1198 : vec3<f32> = u_xlat0;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1198.x, x_1198.x, x_1198.x));
  let x_1201 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : f32 = u_xlat28;
  let x_1205 : f32 = u_xlat28;
  let x_1209 : vec2<f32> = ((vec2<f32>(x_1203, x_1203) * vec2<f32>(x_1205, x_1205)) + vec2<f32>(-1.0f, 1.0f));
  let x_1210 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1209.x, x_1210.y, x_1209.y);
  let x_1213 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1213);
  let x_1215 : vec4<f32> = u_xlat4;
  let x_1218 : vec4<f32> = u_xlat3;
  let x_1220 : vec3<f32> = (-(vec3<f32>(x_1215.x, x_1215.y, x_1215.z)) + vec3<f32>(x_1218.x, x_1218.x, x_1218.x));
  let x_1221 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : f32 = u_xlat33;
  let x_1225 : vec4<f32> = u_xlat8;
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(x_1225.x, x_1225.y, x_1225.z)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : f32 = u_xlat28;
  let x_1235 : vec4<f32> = u_xlat8;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233, x_1233, x_1233) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1240 : vec4<f32> = u_xlat7;
  let x_1242 : vec4<f32> = u_xlat8;
  let x_1244 : vec3<f32> = (vec3<f32>(x_1240.x, x_1240.y, x_1240.z) * vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat2;
  let x_1249 : vec3<f32> = u_xlat17;
  let x_1251 : vec4<f32> = u_xlat7;
  let x_1253 : vec3<f32> = ((vec3<f32>(x_1247.x, x_1247.y, x_1247.z) * x_1249) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1257 : f32 = u_xlat5.x;
  let x_1259 : f32 = x_1164.unity_LightData.z;
  u_xlat28 = (x_1257 * x_1259);
  let x_1261 : vec4<f32> = u_xlat1;
  let x_1264 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1269 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1269, 0.0f, 1.0f);
  let x_1272 : f32 = u_xlat28;
  let x_1274 : f32 = u_xlat3.x;
  u_xlat28 = (x_1272 * x_1274);
  let x_1276 : f32 = u_xlat28;
  let x_1279 : vec4<f32> = x_113.x_MainLightColor;
  let x_1281 : vec3<f32> = (vec3<f32>(x_1276, x_1276, x_1276) * vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1281.x, x_1282.y, x_1281.y, x_1281.z);
  let x_1284 : vec4<f32> = u_xlat6;
  let x_1287 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1289 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : vec4<f32> = u_xlat7;
  let x_1294 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : f32 = u_xlat28;
  u_xlat28 = max(x_1297, 1.17549435e-38f);
  let x_1300 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1300);
  let x_1302 : f32 = u_xlat28;
  let x_1304 : vec4<f32> = u_xlat7;
  let x_1306 : vec3<f32> = (vec3<f32>(x_1302, x_1302, x_1302) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1311 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1309.x, x_1309.y, x_1309.z), vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1314, 0.0f, 1.0f);
  let x_1317 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1324 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1324, 0.0f, 1.0f);
  let x_1327 : f32 = u_xlat28;
  let x_1328 : f32 = u_xlat28;
  u_xlat28 = (x_1327 * x_1328);
  let x_1330 : f32 = u_xlat28;
  let x_1332 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1330 * x_1332) + 1.00001001358032226562f);
  let x_1337 : f32 = u_xlat3.x;
  let x_1339 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1337 * x_1339);
  let x_1342 : f32 = u_xlat28;
  let x_1343 : f32 = u_xlat28;
  u_xlat28 = (x_1342 * x_1343);
  let x_1346 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1346, 0.10000000149011611938f);
  let x_1350 : f32 = u_xlat28;
  let x_1352 : f32 = u_xlat3.x;
  u_xlat28 = (x_1350 * x_1352);
  let x_1354 : f32 = u_xlat46;
  let x_1355 : f32 = u_xlat28;
  u_xlat28 = (x_1354 * x_1355);
  let x_1357 : f32 = u_xlat44;
  let x_1358 : f32 = u_xlat28;
  u_xlat28 = (x_1357 / x_1358);
  let x_1360 : vec4<f32> = u_xlat4;
  let x_1362 : f32 = u_xlat28;
  let x_1365 : vec3<f32> = u_xlat17;
  let x_1366 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.y, x_1360.z) * vec3<f32>(x_1362, x_1362, x_1362)) + x_1365);
  let x_1367 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  let x_1369 : vec4<f32> = u_xlat5;
  let x_1371 : vec4<f32> = u_xlat7;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.z, x_1369.w) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1373.x, x_1374.y, x_1373.y, x_1373.z);
  let x_1377 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1379 : f32 = x_1164.unity_LightData.y;
  u_xlat28 = min(x_1377, x_1379);
  let x_1383 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1383));
  let x_1387 : f32 = u_xlat19.x;
  let x_1389 : f32 = x_1012.x_AdditionalShadowFadeParams.x;
  let x_1392 : f32 = x_1012.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1387 * x_1389) + x_1392);
  let x_1396 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1396, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1409 : u32 = u_xlatu_loop_1;
    let x_1410 : u32 = u_xlatu28;
    if ((x_1409 < x_1410)) {
    } else {
      break;
    }
    let x_1413 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1413 >> 2u);
    let x_1417 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1417 & 3u));
    let x_1421 : u32 = u_xlatu48;
    let x_1424 : vec4<f32> = x_1164.unity_LightIndices[bitcast<i32>(x_1421)];
    let x_1434 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1439 : vec4<u32> = indexable[x_1434];
    u_xlat48 = dot(x_1424, bitcast<vec4<f32>>(x_1439));
    let x_1443 : f32 = u_xlat48;
    u_xlati48 = i32(x_1443);
    let x_1445 : vec3<f32> = vs_TEXCOORD7;
    let x_1456 : i32 = u_xlati48;
    let x_1458 : vec4<f32> = x_1455.x_AdditionalLightsPosition[x_1456];
    let x_1461 : i32 = u_xlati48;
    let x_1463 : vec4<f32> = x_1455.x_AdditionalLightsPosition[x_1461];
    let x_1465 : vec3<f32> = ((-(x_1445) * vec3<f32>(x_1458.w, x_1458.w, x_1458.w)) + vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
    let x_1466 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
    let x_1469 : vec4<f32> = u_xlat8;
    let x_1471 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1469.x, x_1469.y, x_1469.z), vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1474 : f32 = u_xlat49;
    u_xlat49 = max(x_1474, 0.00006103515625f);
    let x_1477 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1477);
    let x_1479 : f32 = u_xlat50;
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec3<f32> = (vec3<f32>(x_1479, x_1479, x_1479) * vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
    let x_1487 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1487);
    let x_1489 : f32 = u_xlat49;
    let x_1490 : i32 = u_xlati48;
    let x_1492 : f32 = x_1455.x_AdditionalLightsAttenuation[x_1490].x;
    u_xlat49 = (x_1489 * x_1492);
    let x_1494 : f32 = u_xlat49;
    let x_1496 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1494) * x_1496) + 1.0f);
    let x_1499 : f32 = u_xlat49;
    u_xlat49 = max(x_1499, 0.0f);
    let x_1501 : f32 = u_xlat49;
    let x_1502 : f32 = u_xlat49;
    u_xlat49 = (x_1501 * x_1502);
    let x_1504 : f32 = u_xlat49;
    let x_1505 : f32 = u_xlat51;
    u_xlat49 = (x_1504 * x_1505);
    let x_1507 : i32 = u_xlati48;
    let x_1509 : vec4<f32> = x_1455.x_AdditionalLightsSpotDir[x_1507];
    let x_1511 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
    let x_1514 : f32 = u_xlat51;
    let x_1515 : i32 = u_xlati48;
    let x_1517 : f32 = x_1455.x_AdditionalLightsAttenuation[x_1515].z;
    let x_1519 : i32 = u_xlati48;
    let x_1521 : f32 = x_1455.x_AdditionalLightsAttenuation[x_1519].w;
    u_xlat51 = ((x_1514 * x_1517) + x_1521);
    let x_1523 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1523, 0.0f, 1.0f);
    let x_1525 : f32 = u_xlat51;
    let x_1526 : f32 = u_xlat51;
    u_xlat51 = (x_1525 * x_1526);
    let x_1528 : f32 = u_xlat49;
    let x_1529 : f32 = u_xlat51;
    u_xlat49 = (x_1528 * x_1529);
    let x_1532 : i32 = u_xlati48;
    let x_1534 : f32 = x_1012.x_AdditionalShadowParams[x_1532].w;
    u_xlati51 = i32(x_1534);
    let x_1539 : i32 = u_xlati51;
    u_xlatb10.x = (x_1539 >= 0i);
    let x_1543 : bool = u_xlatb10.x;
    if (x_1543) {
      let x_1547 : i32 = u_xlati48;
      let x_1549 : f32 = x_1012.x_AdditionalShadowParams[x_1547].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1549, x_1549, x_1549, x_1549))));
      let x_1555 : bool = u_xlatb10.x;
      if (x_1555) {
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1564 : vec4<bool> = (abs(vec4<f32>(x_1558.z, x_1558.z, x_1558.y, x_1558.z)) >= abs(vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.x)));
        u_xlatb10 = vec3<bool>(x_1564.x, x_1564.y, x_1564.z);
        let x_1567 : bool = u_xlatb10.y;
        let x_1569 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1567 & x_1569);
        let x_1573 : vec4<f32> = u_xlat9;
        let x_1576 : vec4<bool> = (-(vec4<f32>(x_1573.z, x_1573.y, x_1573.x, x_1573.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1576.x, x_1576.y, x_1576.z);
        let x_1580 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1580);
        let x_1585 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1585);
        let x_1590 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1590);
        let x_1595 : bool = u_xlatb10.z;
        if (x_1595) {
          let x_1600 : f32 = u_xlat24.z;
          x_1596 = x_1600;
        } else {
          let x_1603 : f32 = u_xlat11.x;
          x_1596 = x_1603;
        }
        let x_1604 : f32 = x_1596;
        u_xlat38 = x_1604;
        let x_1606 : bool = u_xlatb10.x;
        if (x_1606) {
          let x_1611 : f32 = u_xlat24.x;
          x_1607 = x_1611;
        } else {
          let x_1613 : f32 = u_xlat38;
          x_1607 = x_1613;
        }
        let x_1614 : f32 = x_1607;
        u_xlat10.x = x_1614;
        let x_1616 : i32 = u_xlati48;
        let x_1618 : f32 = x_1012.x_AdditionalShadowParams[x_1616].w;
        u_xlat24.x = trunc(x_1618);
        let x_1622 : f32 = u_xlat10.x;
        let x_1624 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1622 + x_1624);
        let x_1628 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1628);
      }
      let x_1630 : i32 = u_xlati51;
      u_xlati51 = (x_1630 << bitcast<u32>(2i));
      let x_1632 : vec3<f32> = vs_TEXCOORD7;
      let x_1634 : i32 = u_xlati51;
      let x_1637 : i32 = u_xlati51;
      let x_1641 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1634 + 1i) / 4i)][((x_1637 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1632.y, x_1632.y, x_1632.y, x_1632.y) * x_1641);
      let x_1643 : i32 = u_xlati51;
      let x_1645 : i32 = u_xlati51;
      let x_1648 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[(x_1643 / 4i)][(x_1645 % 4i)];
      let x_1649 : vec3<f32> = vs_TEXCOORD7;
      let x_1652 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1648 * vec4<f32>(x_1649.x, x_1649.x, x_1649.x, x_1649.x)) + x_1652);
      let x_1654 : i32 = u_xlati51;
      let x_1657 : i32 = u_xlati51;
      let x_1661 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1654 + 2i) / 4i)][((x_1657 + 2i) % 4i)];
      let x_1662 : vec3<f32> = vs_TEXCOORD7;
      let x_1665 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1661 * vec4<f32>(x_1662.z, x_1662.z, x_1662.z, x_1662.z)) + x_1665);
      let x_1667 : vec4<f32> = u_xlat10;
      let x_1668 : i32 = u_xlati51;
      let x_1671 : i32 = u_xlati51;
      let x_1675 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1668 + 3i) / 4i)][((x_1671 + 3i) % 4i)];
      u_xlat10 = (x_1667 + x_1675);
      let x_1677 : vec4<f32> = u_xlat10;
      let x_1679 : vec4<f32> = u_xlat10;
      let x_1681 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) / vec3<f32>(x_1679.w, x_1679.w, x_1679.w));
      let x_1682 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
      let x_1685 : vec4<f32> = u_xlat10;
      let x_1686 : vec2<f32> = vec2<f32>(x_1685.x, x_1685.y);
      let x_1688 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
      let x_1696 : vec3<f32> = txVec1;
      let x_1698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1696.xy, x_1696.z);
      u_xlat51 = x_1698;
      let x_1699 : i32 = u_xlati48;
      let x_1701 : f32 = x_1012.x_AdditionalShadowParams[x_1699].x;
      u_xlat10.x = (1.0f + -(x_1701));
      let x_1705 : f32 = u_xlat51;
      let x_1706 : i32 = u_xlati48;
      let x_1708 : f32 = x_1012.x_AdditionalShadowParams[x_1706].x;
      let x_1711 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1705 * x_1708) + x_1711);
      let x_1714 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1714);
      let x_1719 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1719 >= 1.0f);
      let x_1721 : bool = u_xlatb24;
      let x_1723 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1721 | x_1723);
      let x_1727 : bool = u_xlatb10.x;
      let x_1728 : f32 = u_xlat51;
      u_xlat51 = select(x_1728, 1.0f, x_1727);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1731 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1731) + 1.0f);
    let x_1736 : f32 = u_xlat3.x;
    let x_1738 : f32 = u_xlat10.x;
    let x_1740 : f32 = u_xlat51;
    u_xlat51 = ((x_1736 * x_1738) + x_1740);
    let x_1742 : f32 = u_xlat49;
    let x_1743 : f32 = u_xlat51;
    u_xlat49 = (x_1742 * x_1743);
    let x_1745 : vec4<f32> = u_xlat1;
    let x_1747 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1745.x, x_1745.y, x_1745.z), vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
    let x_1750 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1750, 0.0f, 1.0f);
    let x_1752 : f32 = u_xlat49;
    let x_1753 : f32 = u_xlat51;
    u_xlat49 = (x_1752 * x_1753);
    let x_1755 : f32 = u_xlat49;
    let x_1757 : i32 = u_xlati48;
    let x_1759 : vec4<f32> = x_1455.x_AdditionalLightsColor[x_1757];
    let x_1761 : vec3<f32> = (vec3<f32>(x_1755, x_1755, x_1755) * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
    let x_1762 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
    let x_1764 : vec4<f32> = u_xlat8;
    let x_1766 : f32 = u_xlat50;
    let x_1769 : vec4<f32> = u_xlat6;
    let x_1771 : vec3<f32> = ((vec3<f32>(x_1764.x, x_1764.y, x_1764.z) * vec3<f32>(x_1766, x_1766, x_1766)) + vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
    let x_1772 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
    let x_1774 : vec4<f32> = u_xlat8;
    let x_1776 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1774.x, x_1774.y, x_1774.z), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
    let x_1779 : f32 = u_xlat48;
    u_xlat48 = max(x_1779, 1.17549435e-38f);
    let x_1781 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1781);
    let x_1783 : f32 = u_xlat48;
    let x_1785 : vec4<f32> = u_xlat8;
    let x_1787 : vec3<f32> = (vec3<f32>(x_1783, x_1783, x_1783) * vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
    let x_1790 : vec4<f32> = u_xlat1;
    let x_1792 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1790.x, x_1790.y, x_1790.z), vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1795, 0.0f, 1.0f);
    let x_1797 : vec4<f32> = u_xlat9;
    let x_1799 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1797.x, x_1797.y, x_1797.z), vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
    let x_1802 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1802, 0.0f, 1.0f);
    let x_1804 : f32 = u_xlat48;
    let x_1805 : f32 = u_xlat48;
    u_xlat48 = (x_1804 * x_1805);
    let x_1807 : f32 = u_xlat48;
    let x_1809 : f32 = u_xlat0.x;
    u_xlat48 = ((x_1807 * x_1809) + 1.00001001358032226562f);
    let x_1812 : f32 = u_xlat49;
    let x_1813 : f32 = u_xlat49;
    u_xlat49 = (x_1812 * x_1813);
    let x_1815 : f32 = u_xlat48;
    let x_1816 : f32 = u_xlat48;
    u_xlat48 = (x_1815 * x_1816);
    let x_1818 : f32 = u_xlat49;
    u_xlat49 = max(x_1818, 0.10000000149011611938f);
    let x_1820 : f32 = u_xlat48;
    let x_1821 : f32 = u_xlat49;
    u_xlat48 = (x_1820 * x_1821);
    let x_1823 : f32 = u_xlat46;
    let x_1824 : f32 = u_xlat48;
    u_xlat48 = (x_1823 * x_1824);
    let x_1826 : f32 = u_xlat44;
    let x_1827 : f32 = u_xlat48;
    u_xlat48 = (x_1826 / x_1827);
    let x_1829 : vec4<f32> = u_xlat4;
    let x_1831 : f32 = u_xlat48;
    let x_1834 : vec3<f32> = u_xlat17;
    let x_1835 : vec3<f32> = ((vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1831, x_1831, x_1831)) + x_1834);
    let x_1836 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
    let x_1838 : vec4<f32> = u_xlat8;
    let x_1840 : vec4<f32> = u_xlat10;
    let x_1843 : vec4<f32> = u_xlat7;
    let x_1845 : vec3<f32> = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z)) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
    let x_1846 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);

    continuing {
      let x_1848 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1848 + bitcast<u32>(1i));
    }
  }
  let x_1850 : vec4<f32> = u_xlat2;
  let x_1852 : f32 = u_xlat14;
  let x_1855 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * vec3<f32>(x_1852, x_1852, x_1852)) + vec3<f32>(x_1855.x, x_1855.z, x_1855.w));
  let x_1858 : vec4<f32> = u_xlat7;
  let x_1860 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1858.x, x_1858.y, x_1858.z) + x_1860);
  let x_1862 : f32 = u_xlat43;
  let x_1863 : f32 = u_xlat43;
  u_xlat1.x = (x_1862 * -(x_1863));
  let x_1868 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1868);
  let x_1871 : vec3<f32> = u_xlat0;
  let x_1872 : f32 = u_xlat42;
  let x_1876 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_1871 * vec3<f32>(x_1872, x_1872, x_1872)) + -(vec3<f32>(x_1876.x, x_1876.y, x_1876.z)));
  let x_1882 : vec4<f32> = u_xlat1;
  let x_1884 : vec3<f32> = u_xlat0;
  let x_1887 : vec4<f32> = x_113.unity_FogColor;
  let x_1889 : vec3<f32> = ((vec3<f32>(x_1882.x, x_1882.x, x_1882.x) * x_1884) + vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


