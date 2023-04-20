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

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1337 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati45 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1626 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1211 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1760 : f32;
  var x_1770 : f32;
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
  u_xlat43 = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_941 : f32 = u_xlat43;
  u_xlat43 = (-(x_941) + 4.0f);
  let x_946 : f32 = u_xlat43;
  u_xlatu43 = u32(x_946);
  let x_950 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_950) << bitcast<u32>(2i));
  let x_953 : vec3<f32> = vs_TEXCOORD7;
  let x_955 : i32 = u_xlati43;
  let x_958 : i32 = u_xlati43;
  let x_962 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_955 + 1i) / 4i)][((x_958 + 1i) % 4i)];
  let x_964 : vec3<f32> = (vec3<f32>(x_953.y, x_953.y, x_953.y) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : i32 = u_xlati43;
  let x_969 : i32 = u_xlati43;
  let x_972 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_967 / 4i)][(x_969 % 4i)];
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.x, x_974.x)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : i32 = u_xlati43;
  let x_985 : i32 = u_xlati43;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : i32 = u_xlati43;
  let x_1004 : i32 = u_xlati43;
  let x_1008 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_1001 + 3i) / 4i)][((x_1004 + 3i) % 4i)];
  let x_1010 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1015 : f32 = vs_TEXCOORD7.y;
  let x_1017 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_1015 * x_1017);
  let x_1020 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1022 : f32 = vs_TEXCOORD7.x;
  let x_1024 : f32 = u_xlat43;
  u_xlat43 = ((x_1020 * x_1022) + x_1024);
  let x_1027 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1029 : f32 = vs_TEXCOORD7.z;
  let x_1031 : f32 = u_xlat43;
  u_xlat43 = ((x_1027 * x_1029) + x_1031);
  let x_1033 : f32 = u_xlat43;
  let x_1035 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_1033 + x_1035);
  let x_1037 : f32 = u_xlat43;
  let x_1040 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_1037) + -(x_1040));
  let x_1043 : f32 = u_xlat43;
  u_xlat43 = max(x_1043, 0.0f);
  let x_1045 : f32 = u_xlat43;
  let x_1047 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_1045 * x_1047);
  let x_1054 : vec4<f32> = vs_TEXCOORD0;
  let x_1057 : f32 = x_113.x_GlobalMipBias.x;
  let x_1058 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1054.z, x_1054.w), x_1057);
  u_xlat3 = x_1058;
  let x_1063 : vec4<f32> = vs_TEXCOORD0;
  let x_1066 : f32 = x_113.x_GlobalMipBias.x;
  let x_1067 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1063.z, x_1063.w), x_1066);
  let x_1068 : vec3<f32> = vec3<f32>(x_1067.x, x_1067.y, x_1067.z);
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1076 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat44;
  u_xlat44 = (x_1084 + 0.5f);
  let x_1086 : f32 = u_xlat44;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1094 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1094, 0.00009999999747378752f);
  let x_1097 : vec4<f32> = u_xlat3;
  let x_1099 : f32 = u_xlat44;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099, x_1099, x_1099));
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1105 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1105) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1111 : f32 = u_xlat28;
  let x_1112 : f32 = u_xlat44;
  u_xlat45 = (x_1111 + -(x_1112));
  let x_1115 : f32 = u_xlat44;
  let x_1117 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec3<f32> = u_xlat0;
  let x_1131 : vec4<f32> = u_xlat5;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1137 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1139) + 1.0f);
  let x_1144 : f32 = u_xlat0.x;
  let x_1146 : f32 = u_xlat0.x;
  u_xlat28 = (x_1144 * x_1146);
  let x_1148 : f32 = u_xlat28;
  u_xlat28 = max(x_1148, 0.0078125f);
  let x_1151 : f32 = u_xlat28;
  let x_1152 : f32 = u_xlat28;
  u_xlat44 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat45;
  u_xlat45 = (x_1154 + 1.0f);
  let x_1156 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1156, 0.0f, 1.0f);
  let x_1159 : f32 = u_xlat28;
  u_xlat46 = ((x_1159 * 4.0f) + 2.0f);
  let x_1162 : f32 = u_xlat14;
  u_xlat14 = min(x_1162, 1.0f);
  let x_1166 : vec4<f32> = u_xlat2;
  let x_1167 : vec2<f32> = vec2<f32>(x_1166.x, x_1166.y);
  let x_1169 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
  let x_1181 : vec3<f32> = txVec0;
  let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
  u_xlat2.x = x_1183;
  let x_1187 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1187) + 1.0f);
  let x_1191 : f32 = u_xlat2.x;
  let x_1193 : f32 = x_833.x_MainLightShadowParams.x;
  let x_1195 : f32 = u_xlat16;
  u_xlat2.x = ((x_1191 * x_1193) + x_1195);
  let x_1200 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1200);
  let x_1204 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1204 >= 1.0f);
  let x_1206 : bool = u_xlatb30;
  let x_1207 : bool = u_xlatb16;
  u_xlatb16 = (x_1206 | x_1207);
  let x_1209 : bool = u_xlatb16;
  if (x_1209) {
    x_1211 = 1.0f;
  } else {
    let x_1216 : f32 = u_xlat2.x;
    x_1211 = x_1216;
  }
  let x_1217 : f32 = x_1211;
  u_xlat2.x = x_1217;
  let x_1219 : vec3<f32> = vs_TEXCOORD7;
  let x_1222 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1224 : vec3<f32> = (x_1219 + -(x_1222));
  let x_1225 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec4<f32> = u_xlat6;
  let x_1229 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1233 : f32 = u_xlat16;
  let x_1235 : f32 = x_833.x_MainLightShadowParams.z;
  let x_1238 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1233 * x_1235) + x_1238);
  let x_1240 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1240, 0.0f, 1.0f);
  let x_1244 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1244) + 1.0f);
  let x_1247 : f32 = u_xlat30;
  let x_1248 : f32 = u_xlat47;
  let x_1251 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1247 * x_1248) + x_1251);
  let x_1255 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1255;
  let x_1258 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1258;
  let x_1261 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1261;
  let x_1263 : vec4<f32> = u_xlat6;
  let x_1266 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1263.x, x_1263.y, x_1263.z)), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : f32 = u_xlat30;
  let x_1270 : f32 = u_xlat30;
  u_xlat30 = (x_1269 + x_1270);
  let x_1272 : vec4<f32> = u_xlat1;
  let x_1274 : f32 = u_xlat30;
  let x_1278 : vec4<f32> = u_xlat6;
  let x_1281 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * -(vec3<f32>(x_1274, x_1274, x_1274))) + -(vec3<f32>(x_1278.x, x_1278.y, x_1278.z)));
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1286 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1289 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1289, 0.0f, 1.0f);
  let x_1291 : f32 = u_xlat30;
  u_xlat30 = (-(x_1291) + 1.0f);
  let x_1294 : f32 = u_xlat30;
  let x_1295 : f32 = u_xlat30;
  u_xlat30 = (x_1294 * x_1295);
  let x_1297 : f32 = u_xlat30;
  let x_1298 : f32 = u_xlat30;
  u_xlat30 = (x_1297 * x_1298);
  let x_1301 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1301) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1308 : f32 = u_xlat0.x;
  let x_1309 : f32 = u_xlat47;
  u_xlat0.x = (x_1308 * x_1309);
  let x_1313 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1313 * 6.0f);
  let x_1325 : vec4<f32> = u_xlat7;
  let x_1328 : f32 = u_xlat0.x;
  let x_1329 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1325.x, x_1325.y, x_1325.z), x_1328);
  u_xlat7 = x_1329;
  let x_1331 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1331 + -1.0f);
  let x_1339 : f32 = x_1337.unity_SpecCube0_HDR.w;
  let x_1341 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1339 * x_1341) + 1.0f);
  let x_1346 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1346, 0.0f);
  let x_1350 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1350);
  let x_1354 : f32 = u_xlat0.x;
  let x_1356 : f32 = x_1337.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1354 * x_1356);
  let x_1360 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1360);
  let x_1364 : f32 = u_xlat0.x;
  let x_1366 : f32 = x_1337.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1364 * x_1366);
  let x_1369 : vec4<f32> = u_xlat7;
  let x_1371 : vec3<f32> = u_xlat0;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.z) * vec3<f32>(x_1371.x, x_1371.x, x_1371.x));
  let x_1374 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : f32 = u_xlat28;
  let x_1378 : f32 = u_xlat28;
  let x_1382 : vec2<f32> = ((vec2<f32>(x_1376, x_1376) * vec2<f32>(x_1378, x_1378)) + vec2<f32>(-1.0f, 1.0f));
  let x_1383 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1382.x, x_1383.y, x_1382.y);
  let x_1386 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1386);
  let x_1388 : vec4<f32> = u_xlat5;
  let x_1391 : f32 = u_xlat45;
  let x_1393 : vec3<f32> = (-(vec3<f32>(x_1388.x, x_1388.y, x_1388.z)) + vec3<f32>(x_1391, x_1391, x_1391));
  let x_1394 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : f32 = u_xlat30;
  let x_1398 : vec4<f32> = u_xlat8;
  let x_1401 : vec4<f32> = u_xlat5;
  let x_1403 : vec3<f32> = ((vec3<f32>(x_1396, x_1396, x_1396) * vec3<f32>(x_1398.x, x_1398.y, x_1398.z)) + vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1406 : f32 = u_xlat28;
  let x_1408 : vec4<f32> = u_xlat8;
  let x_1410 : vec3<f32> = (vec3<f32>(x_1406, x_1406, x_1406) * vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1411 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
  let x_1413 : vec4<f32> = u_xlat7;
  let x_1415 : vec4<f32> = u_xlat8;
  let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) * vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
  let x_1418 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1420 : vec4<f32> = u_xlat3;
  let x_1422 : vec4<f32> = u_xlat4;
  let x_1425 : vec4<f32> = u_xlat7;
  let x_1427 : vec3<f32> = ((vec3<f32>(x_1420.x, x_1420.y, x_1420.z) * vec3<f32>(x_1422.x, x_1422.y, x_1422.z)) + vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
  let x_1428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
  let x_1431 : f32 = u_xlat2.x;
  let x_1433 : f32 = x_1337.unity_LightData.z;
  u_xlat28 = (x_1431 * x_1433);
  let x_1435 : vec4<f32> = u_xlat1;
  let x_1438 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1443 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1443, 0.0f, 1.0f);
  let x_1446 : f32 = u_xlat28;
  let x_1448 : f32 = u_xlat2.x;
  u_xlat28 = (x_1446 * x_1448);
  let x_1450 : f32 = u_xlat28;
  let x_1453 : vec4<f32> = x_113.x_MainLightColor;
  let x_1455 : vec3<f32> = (vec3<f32>(x_1450, x_1450, x_1450) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat6;
  let x_1461 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1463 : vec3<f32> = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) + vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  let x_1466 : vec4<f32> = u_xlat8;
  let x_1468 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1466.x, x_1466.y, x_1466.z), vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : f32 = u_xlat28;
  u_xlat28 = max(x_1471, 1.17549435e-38f);
  let x_1474 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1474);
  let x_1476 : f32 = u_xlat28;
  let x_1478 : vec4<f32> = u_xlat8;
  let x_1480 : vec3<f32> = (vec3<f32>(x_1476, x_1476, x_1476) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec4<f32> = u_xlat1;
  let x_1485 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1483.x, x_1483.y, x_1483.z), vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
  let x_1488 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1488, 0.0f, 1.0f);
  let x_1491 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1493 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_1491.x, x_1491.y, x_1491.z), vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
  let x_1498 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1498, 0.0f, 1.0f);
  let x_1501 : f32 = u_xlat28;
  let x_1502 : f32 = u_xlat28;
  u_xlat28 = (x_1501 * x_1502);
  let x_1504 : f32 = u_xlat28;
  let x_1506 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1504 * x_1506) + 1.00001001358032226562f);
  let x_1511 : f32 = u_xlat2.x;
  let x_1513 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1511 * x_1513);
  let x_1516 : f32 = u_xlat28;
  let x_1517 : f32 = u_xlat28;
  u_xlat28 = (x_1516 * x_1517);
  let x_1520 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1520, 0.10000000149011611938f);
  let x_1524 : f32 = u_xlat28;
  let x_1526 : f32 = u_xlat2.x;
  u_xlat28 = (x_1524 * x_1526);
  let x_1528 : f32 = u_xlat46;
  let x_1529 : f32 = u_xlat28;
  u_xlat28 = (x_1528 * x_1529);
  let x_1531 : f32 = u_xlat44;
  let x_1532 : f32 = u_xlat28;
  u_xlat28 = (x_1531 / x_1532);
  let x_1534 : vec4<f32> = u_xlat5;
  let x_1536 : f32 = u_xlat28;
  let x_1539 : vec4<f32> = u_xlat4;
  let x_1541 : vec3<f32> = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(x_1536, x_1536, x_1536)) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1544 : vec4<f32> = u_xlat7;
  let x_1546 : vec4<f32> = u_xlat8;
  let x_1548 : vec3<f32> = (vec3<f32>(x_1544.x, x_1544.y, x_1544.z) * vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1552 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1554 : f32 = x_1337.unity_LightData.y;
  u_xlat28 = min(x_1552, x_1554);
  let x_1557 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1557));
  let x_1560 : f32 = u_xlat16;
  let x_1562 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_1565 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1560 * x_1562) + x_1565);
  let x_1569 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1569, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1582 : u32 = u_xlatu_loop_1;
    let x_1583 : u32 = u_xlatu28;
    if ((x_1582 < x_1583)) {
    } else {
      break;
    }
    let x_1586 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1586 >> 2u);
    let x_1589 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1589 & 3u));
    let x_1592 : u32 = u_xlatu30;
    let x_1595 : vec4<f32> = x_1337.unity_LightIndices[bitcast<i32>(x_1592)];
    let x_1605 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1610 : vec4<u32> = indexable[x_1605];
    u_xlat30 = dot(x_1595, bitcast<vec4<f32>>(x_1610));
    let x_1614 : f32 = u_xlat30;
    u_xlati30 = i32(x_1614);
    let x_1616 : vec3<f32> = vs_TEXCOORD7;
    let x_1627 : i32 = u_xlati30;
    let x_1629 : vec4<f32> = x_1626.x_AdditionalLightsPosition[x_1627];
    let x_1632 : i32 = u_xlati30;
    let x_1634 : vec4<f32> = x_1626.x_AdditionalLightsPosition[x_1632];
    let x_1636 : vec3<f32> = ((-(x_1616) * vec3<f32>(x_1629.w, x_1629.w, x_1629.w)) + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
    let x_1637 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
    let x_1639 : vec4<f32> = u_xlat9;
    let x_1641 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1639.x, x_1639.y, x_1639.z), vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
    let x_1644 : f32 = u_xlat45;
    u_xlat45 = max(x_1644, 0.00006103515625f);
    let x_1646 : f32 = u_xlat45;
    u_xlat47 = inverseSqrt(x_1646);
    let x_1648 : f32 = u_xlat47;
    let x_1650 : vec4<f32> = u_xlat9;
    let x_1652 : vec3<f32> = (vec3<f32>(x_1648, x_1648, x_1648) * vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
    let x_1653 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
    let x_1656 : f32 = u_xlat45;
    u_xlat48 = (1.0f / x_1656);
    let x_1658 : f32 = u_xlat45;
    let x_1659 : i32 = u_xlati30;
    let x_1661 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1659].x;
    u_xlat45 = (x_1658 * x_1661);
    let x_1663 : f32 = u_xlat45;
    let x_1665 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1663) * x_1665) + 1.0f);
    let x_1668 : f32 = u_xlat45;
    u_xlat45 = max(x_1668, 0.0f);
    let x_1670 : f32 = u_xlat45;
    let x_1671 : f32 = u_xlat45;
    u_xlat45 = (x_1670 * x_1671);
    let x_1673 : f32 = u_xlat45;
    let x_1674 : f32 = u_xlat48;
    u_xlat45 = (x_1673 * x_1674);
    let x_1676 : i32 = u_xlati30;
    let x_1678 : vec4<f32> = x_1626.x_AdditionalLightsSpotDir[x_1676];
    let x_1680 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1678.x, x_1678.y, x_1678.z), vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
    let x_1683 : f32 = u_xlat48;
    let x_1684 : i32 = u_xlati30;
    let x_1686 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1684].z;
    let x_1688 : i32 = u_xlati30;
    let x_1690 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1688].w;
    u_xlat48 = ((x_1683 * x_1686) + x_1690);
    let x_1692 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1692, 0.0f, 1.0f);
    let x_1694 : f32 = u_xlat48;
    let x_1695 : f32 = u_xlat48;
    u_xlat48 = (x_1694 * x_1695);
    let x_1697 : f32 = u_xlat45;
    let x_1698 : f32 = u_xlat48;
    u_xlat45 = (x_1697 * x_1698);
    let x_1701 : i32 = u_xlati30;
    let x_1703 : f32 = x_833.x_AdditionalShadowParams[x_1701].w;
    u_xlati48 = i32(x_1703);
    let x_1706 : i32 = u_xlati48;
    u_xlatb49 = (x_1706 >= 0i);
    let x_1708 : bool = u_xlatb49;
    if (x_1708) {
      let x_1712 : i32 = u_xlati30;
      let x_1714 : f32 = x_833.x_AdditionalShadowParams[x_1712].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1714, x_1714, x_1714, x_1714))));
      let x_1718 : bool = u_xlatb49;
      if (x_1718) {
        let x_1722 : vec4<f32> = u_xlat10;
        let x_1725 : vec4<f32> = u_xlat10;
        let x_1728 : vec4<bool> = (abs(vec4<f32>(x_1722.z, x_1722.z, x_1722.y, x_1722.z)) >= abs(vec4<f32>(x_1725.x, x_1725.y, x_1725.x, x_1725.x)));
        let x_1730 : vec3<bool> = vec3<bool>(x_1728.x, x_1728.y, x_1728.z);
        let x_1731 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
        let x_1734 : bool = u_xlatb11.y;
        let x_1736 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1734 & x_1736);
        let x_1738 : vec4<f32> = u_xlat10;
        let x_1741 : vec4<bool> = (-(vec4<f32>(x_1738.z, x_1738.y, x_1738.z, x_1738.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1742 : vec3<bool> = vec3<bool>(x_1741.x, x_1741.y, x_1741.w);
        let x_1743 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1742.x, x_1742.y, x_1743.z, x_1742.z);
        let x_1746 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1746);
        let x_1751 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1751);
        let x_1756 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1756);
        let x_1759 : bool = u_xlatb11.z;
        if (x_1759) {
          let x_1764 : f32 = u_xlat11.y;
          x_1760 = x_1764;
        } else {
          let x_1766 : f32 = u_xlat50;
          x_1760 = x_1766;
        }
        let x_1767 : f32 = x_1760;
        u_xlat50 = x_1767;
        let x_1769 : bool = u_xlatb49;
        if (x_1769) {
          let x_1774 : f32 = u_xlat11.x;
          x_1770 = x_1774;
        } else {
          let x_1776 : f32 = u_xlat50;
          x_1770 = x_1776;
        }
        let x_1777 : f32 = x_1770;
        u_xlat49 = x_1777;
        let x_1778 : i32 = u_xlati30;
        let x_1780 : f32 = x_833.x_AdditionalShadowParams[x_1778].w;
        u_xlat50 = trunc(x_1780);
        let x_1782 : f32 = u_xlat49;
        let x_1783 : f32 = u_xlat50;
        u_xlat49 = (x_1782 + x_1783);
        let x_1785 : f32 = u_xlat49;
        u_xlati48 = i32(x_1785);
      }
      let x_1787 : i32 = u_xlati48;
      u_xlati48 = (x_1787 << bitcast<u32>(2i));
      let x_1789 : vec3<f32> = vs_TEXCOORD7;
      let x_1791 : i32 = u_xlati48;
      let x_1794 : i32 = u_xlati48;
      let x_1798 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1791 + 1i) / 4i)][((x_1794 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1789.y, x_1789.y, x_1789.y, x_1789.y) * x_1798);
      let x_1800 : i32 = u_xlati48;
      let x_1802 : i32 = u_xlati48;
      let x_1805 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_1800 / 4i)][(x_1802 % 4i)];
      let x_1806 : vec3<f32> = vs_TEXCOORD7;
      let x_1809 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1805 * vec4<f32>(x_1806.x, x_1806.x, x_1806.x, x_1806.x)) + x_1809);
      let x_1811 : i32 = u_xlati48;
      let x_1814 : i32 = u_xlati48;
      let x_1818 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1811 + 2i) / 4i)][((x_1814 + 2i) % 4i)];
      let x_1819 : vec3<f32> = vs_TEXCOORD7;
      let x_1822 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1818 * vec4<f32>(x_1819.z, x_1819.z, x_1819.z, x_1819.z)) + x_1822);
      let x_1824 : vec4<f32> = u_xlat11;
      let x_1825 : i32 = u_xlati48;
      let x_1828 : i32 = u_xlati48;
      let x_1832 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1825 + 3i) / 4i)][((x_1828 + 3i) % 4i)];
      u_xlat11 = (x_1824 + x_1832);
      let x_1834 : vec4<f32> = u_xlat11;
      let x_1836 : vec4<f32> = u_xlat11;
      let x_1838 : vec3<f32> = (vec3<f32>(x_1834.x, x_1834.y, x_1834.z) / vec3<f32>(x_1836.w, x_1836.w, x_1836.w));
      let x_1839 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
      let x_1842 : vec4<f32> = u_xlat11;
      let x_1843 : vec2<f32> = vec2<f32>(x_1842.x, x_1842.y);
      let x_1845 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1843.x, x_1843.y, x_1845);
      let x_1853 : vec3<f32> = txVec1;
      let x_1855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1853.xy, x_1853.z);
      u_xlat48 = x_1855;
      let x_1856 : i32 = u_xlati30;
      let x_1858 : f32 = x_833.x_AdditionalShadowParams[x_1856].x;
      u_xlat49 = (1.0f + -(x_1858));
      let x_1861 : f32 = u_xlat48;
      let x_1862 : i32 = u_xlati30;
      let x_1864 : f32 = x_833.x_AdditionalShadowParams[x_1862].x;
      let x_1866 : f32 = u_xlat49;
      u_xlat48 = ((x_1861 * x_1864) + x_1866);
      let x_1869 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1869);
      let x_1873 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1873 >= 1.0f);
      let x_1875 : bool = u_xlatb49;
      let x_1876 : bool = u_xlatb50;
      u_xlatb49 = (x_1875 | x_1876);
      let x_1878 : bool = u_xlatb49;
      let x_1879 : f32 = u_xlat48;
      u_xlat48 = select(x_1879, 1.0f, x_1878);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1882 : f32 = u_xlat48;
    u_xlat49 = (-(x_1882) + 1.0f);
    let x_1886 : f32 = u_xlat2.x;
    let x_1887 : f32 = u_xlat49;
    let x_1889 : f32 = u_xlat48;
    u_xlat48 = ((x_1886 * x_1887) + x_1889);
    let x_1891 : f32 = u_xlat45;
    let x_1892 : f32 = u_xlat48;
    u_xlat45 = (x_1891 * x_1892);
    let x_1894 : vec4<f32> = u_xlat1;
    let x_1896 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1894.x, x_1894.y, x_1894.z), vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1899, 0.0f, 1.0f);
    let x_1901 : f32 = u_xlat45;
    let x_1902 : f32 = u_xlat48;
    u_xlat45 = (x_1901 * x_1902);
    let x_1904 : f32 = u_xlat45;
    let x_1906 : i32 = u_xlati30;
    let x_1908 : vec4<f32> = x_1626.x_AdditionalLightsColor[x_1906];
    let x_1910 : vec3<f32> = (vec3<f32>(x_1904, x_1904, x_1904) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1913 : vec4<f32> = u_xlat9;
    let x_1915 : f32 = u_xlat47;
    let x_1918 : vec4<f32> = u_xlat6;
    let x_1920 : vec3<f32> = ((vec3<f32>(x_1913.x, x_1913.y, x_1913.z) * vec3<f32>(x_1915, x_1915, x_1915)) + vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
    let x_1923 : vec4<f32> = u_xlat9;
    let x_1925 : vec4<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1923.x, x_1923.y, x_1923.z), vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
    let x_1928 : f32 = u_xlat30;
    u_xlat30 = max(x_1928, 1.17549435e-38f);
    let x_1930 : f32 = u_xlat30;
    u_xlat30 = inverseSqrt(x_1930);
    let x_1932 : f32 = u_xlat30;
    let x_1934 : vec4<f32> = u_xlat9;
    let x_1936 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
    let x_1937 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
    let x_1939 : vec4<f32> = u_xlat1;
    let x_1941 : vec4<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1939.x, x_1939.y, x_1939.z), vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
    let x_1944 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1944, 0.0f, 1.0f);
    let x_1946 : vec4<f32> = u_xlat10;
    let x_1948 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
    let x_1951 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1951, 0.0f, 1.0f);
    let x_1953 : f32 = u_xlat30;
    let x_1954 : f32 = u_xlat30;
    u_xlat30 = (x_1953 * x_1954);
    let x_1956 : f32 = u_xlat30;
    let x_1958 : f32 = u_xlat0.x;
    u_xlat30 = ((x_1956 * x_1958) + 1.00001001358032226562f);
    let x_1961 : f32 = u_xlat45;
    let x_1962 : f32 = u_xlat45;
    u_xlat45 = (x_1961 * x_1962);
    let x_1964 : f32 = u_xlat30;
    let x_1965 : f32 = u_xlat30;
    u_xlat30 = (x_1964 * x_1965);
    let x_1967 : f32 = u_xlat45;
    u_xlat45 = max(x_1967, 0.10000000149011611938f);
    let x_1969 : f32 = u_xlat30;
    let x_1970 : f32 = u_xlat45;
    u_xlat30 = (x_1969 * x_1970);
    let x_1972 : f32 = u_xlat46;
    let x_1973 : f32 = u_xlat30;
    u_xlat30 = (x_1972 * x_1973);
    let x_1975 : f32 = u_xlat44;
    let x_1976 : f32 = u_xlat30;
    u_xlat30 = (x_1975 / x_1976);
    let x_1978 : vec4<f32> = u_xlat5;
    let x_1980 : f32 = u_xlat30;
    let x_1983 : vec4<f32> = u_xlat4;
    let x_1985 : vec3<f32> = ((vec3<f32>(x_1978.x, x_1978.y, x_1978.z) * vec3<f32>(x_1980, x_1980, x_1980)) + vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
    let x_1986 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
    let x_1988 : vec4<f32> = u_xlat9;
    let x_1990 : vec4<f32> = u_xlat11;
    let x_1993 : vec4<f32> = u_xlat8;
    let x_1995 : vec3<f32> = ((vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * vec3<f32>(x_1990.x, x_1990.y, x_1990.z)) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);

    continuing {
      let x_1998 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1998 + bitcast<u32>(1i));
    }
  }
  let x_2000 : vec4<f32> = u_xlat3;
  let x_2002 : f32 = u_xlat14;
  let x_2005 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2000.x, x_2000.y, x_2000.z) * vec3<f32>(x_2002, x_2002, x_2002)) + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = u_xlat8;
  let x_2010 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) + x_2010);
  let x_2012 : f32 = u_xlat43;
  let x_2013 : f32 = u_xlat43;
  u_xlat1.x = (x_2012 * -(x_2013));
  let x_2018 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2018);
  let x_2021 : vec3<f32> = u_xlat0;
  let x_2022 : f32 = u_xlat42;
  let x_2026 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_2021 * vec3<f32>(x_2022, x_2022, x_2022)) + -(vec3<f32>(x_2026.x, x_2026.y, x_2026.z)));
  let x_2032 : vec4<f32> = u_xlat1;
  let x_2034 : vec3<f32> = u_xlat0;
  let x_2037 : vec4<f32> = x_113.unity_FogColor;
  let x_2039 : vec3<f32> = ((vec3<f32>(x_2032.x, x_2032.x, x_2032.x) * x_2034) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
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


