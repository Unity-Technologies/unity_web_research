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

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_592 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(1) @binding(2) var<uniform> x_814 : UnityPerDraw;

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

@group(1) @binding(1) var<uniform> x_1389 : AdditionalLights;

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
  var x_562 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_994 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1524 : f32;
  var x_1535 : f32;
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
  let x_281 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb44;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat43;
  u_xlat43 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat43;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_375;
  let x_378 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_378;
  let x_381 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_381;
  let x_384 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_384;
  let x_387 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_387;
  let x_390 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_392 + x_393);
  let x_396 : f32 = u_xlat0.z;
  u_xlat7.x = x_396;
  let x_399 : f32 = u_xlat1.z;
  u_xlat7.y = x_399;
  let x_402 : f32 = u_xlat2.z;
  u_xlat7.z = x_402;
  let x_405 : f32 = u_xlat3.y;
  u_xlat7.w = x_405;
  let x_407 : vec4<f32> = u_xlat9;
  let x_410 : f32 = x_13.x_Smoothness0;
  let x_412 : f32 = x_13.x_Smoothness1;
  let x_414 : f32 = x_13.x_Smoothness2;
  let x_416 : f32 = x_13.x_Smoothness3;
  let x_419 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_407) * vec4<f32>(x_410, x_412, x_414, x_416)) + x_419);
  let x_423 : f32 = x_13.x_LayerHasMask0;
  let x_426 : f32 = x_13.x_LayerHasMask1;
  let x_429 : f32 = x_13.x_LayerHasMask2;
  let x_432 : f32 = x_13.x_LayerHasMask3;
  let x_434 : vec4<f32> = u_xlat7;
  let x_436 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_423, x_426, x_429, x_432) * x_434) + x_436);
  let x_439 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_439, x_440);
  let x_443 : f32 = u_xlat0.x;
  u_xlat7.x = x_443;
  let x_446 : f32 = u_xlat1.x;
  u_xlat7.y = x_446;
  let x_449 : f32 = u_xlat2.x;
  u_xlat7.z = x_449;
  let x_452 : f32 = u_xlat3.x;
  u_xlat7.w = x_452;
  let x_454 : vec4<f32> = u_xlat7;
  let x_457 : f32 = x_13.x_Metallic0;
  let x_460 : f32 = x_13.x_Metallic1;
  let x_463 : f32 = x_13.x_Metallic2;
  let x_466 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_454 + -(vec4<f32>(x_457, x_460, x_463, x_466)));
  let x_471 : f32 = x_13.x_LayerHasMask0;
  let x_473 : f32 = x_13.x_LayerHasMask1;
  let x_475 : f32 = x_13.x_LayerHasMask2;
  let x_477 : f32 = x_13.x_LayerHasMask3;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : f32 = x_13.x_Metallic0;
  let x_484 : f32 = x_13.x_Metallic1;
  let x_486 : f32 = x_13.x_Metallic2;
  let x_488 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_471, x_473, x_475, x_477) * x_479) + vec4<f32>(x_482, x_484, x_486, x_488));
  let x_491 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_491, x_492);
  let x_496 : f32 = u_xlat0.y;
  u_xlat3.x = x_496;
  let x_499 : f32 = u_xlat1.y;
  u_xlat3.y = x_499;
  let x_502 : f32 = u_xlat2.y;
  u_xlat3.z = x_502;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_504) + x_506);
  let x_509 : f32 = x_13.x_LayerHasMask0;
  let x_511 : f32 = x_13.x_LayerHasMask1;
  let x_513 : f32 = x_13.x_LayerHasMask2;
  let x_515 : f32 = x_13.x_LayerHasMask3;
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_509, x_511, x_513, x_515) * x_517) + x_519);
  let x_522 : vec4<f32> = u_xlat4;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_522, x_523);
  let x_527 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_527 == 0.0f);
  let x_532 : vec3<f32> = vs_TEXCOORD7;
  let x_536 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_532) + x_536);
  let x_538 : vec3<f32> = u_xlat15;
  let x_539 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_543);
  let x_546 : vec3<f32> = u_xlat15;
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_546 * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_551 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat15;
    x_562 = x_565;
  } else {
    let x_567 : vec4<f32> = u_xlat2;
    x_562 = vec3<f32>(x_567.x, x_567.y, x_567.z);
  }
  let x_569 : vec3<f32> = x_562;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  let x_574 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat43;
  let x_580 : vec3<f32> = vs_TEXCOORD3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * x_580);
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres0;
  let x_597 : vec3<f32> = (x_584 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres1;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_611 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres2;
  let x_614 : vec3<f32> = (x_608 + -(vec3<f32>(x_611.x, x_611.y, x_611.z)));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres3;
  let x_622 : vec3<f32> = (x_617 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_643 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = x_592.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_651 < x_653);
  let x_656 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_672);
  let x_677 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_677);
  let x_681 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_681);
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + vec3<f32>(x_686.y, x_686.z, x_686.w));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = max(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_695.x, x_694.x, x_694.y, x_694.z);
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_697, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_702 : f32 = u_xlat43;
  u_xlat43 = (-(x_702) + 4.0f);
  let x_707 : f32 = u_xlat43;
  u_xlatu43 = u32(x_707);
  let x_711 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_711) << bitcast<u32>(2i));
  let x_714 : vec3<f32> = vs_TEXCOORD7;
  let x_716 : i32 = u_xlati43;
  let x_719 : i32 = u_xlati43;
  let x_723 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_716 + 1i) / 4i)][((x_719 + 1i) % 4i)];
  let x_725 : vec3<f32> = (vec3<f32>(x_714.y, x_714.y, x_714.y) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : i32 = u_xlati43;
  let x_730 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_592.x_MainLightWorldToShadow[(x_728 / 4i)][(x_730 % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati43;
  let x_746 : i32 = u_xlati43;
  let x_750 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_743 + 2i) / 4i)][((x_746 + 2i) % 4i)];
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.z, x_752.z, x_752.z)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : i32 = u_xlati43;
  let x_765 : i32 = u_xlati43;
  let x_769 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_762 + 3i) / 4i)][((x_765 + 3i) % 4i)];
  let x_771 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_776 : f32 = vs_TEXCOORD7.y;
  let x_778 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_776 * x_778);
  let x_781 : f32 = x_113.unity_MatrixV[0i].z;
  let x_783 : f32 = vs_TEXCOORD7.x;
  let x_785 : f32 = u_xlat43;
  u_xlat43 = ((x_781 * x_783) + x_785);
  let x_788 : f32 = x_113.unity_MatrixV[2i].z;
  let x_790 : f32 = vs_TEXCOORD7.z;
  let x_792 : f32 = u_xlat43;
  u_xlat43 = ((x_788 * x_790) + x_792);
  let x_794 : f32 = u_xlat43;
  let x_796 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_794 + x_796);
  let x_798 : f32 = u_xlat43;
  let x_801 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_798) + -(x_801));
  let x_804 : f32 = u_xlat43;
  u_xlat43 = max(x_804, 0.0f);
  let x_806 : f32 = u_xlat43;
  let x_808 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_806 * x_808);
  u_xlat2.w = 1.0f;
  let x_816 : vec4<f32> = x_814.unity_SHAr;
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_814.unity_SHAg;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_821, x_822);
  let x_826 : vec4<f32> = x_814.unity_SHAb;
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_826, x_827);
  let x_830 : vec4<f32> = u_xlat2;
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_830.y, x_830.z, x_830.z, x_830.x) * vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.z));
  let x_836 : vec4<f32> = x_814.unity_SHBr;
  let x_837 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_814.unity_SHBg;
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_841, x_842);
  let x_846 : vec4<f32> = x_814.unity_SHBb;
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_846, x_847);
  let x_852 : f32 = u_xlat2.y;
  let x_854 : f32 = u_xlat2.y;
  u_xlat44 = (x_852 * x_854);
  let x_857 : f32 = u_xlat2.x;
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat44;
  u_xlat44 = ((x_857 * x_859) + -(x_861));
  let x_866 : vec4<f32> = x_814.unity_SHC;
  let x_868 : f32 = u_xlat44;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec4<f32> = u_xlat6;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = max(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat44;
  u_xlat45 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat44;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat28;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat44 = (x_927 * x_929);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat44;
  let x_936 : f32 = u_xlat44;
  u_xlat46 = (x_935 * x_936);
  let x_938 : f32 = u_xlat28;
  let x_939 : f32 = u_xlat45;
  u_xlat28 = (x_938 + x_939);
  let x_941 : f32 = u_xlat28;
  u_xlat28 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat44;
  u_xlat45 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat14;
  u_xlat14 = min(x_946, 1.0f);
  let x_949 : vec4<f32> = u_xlat3;
  let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.y);
  let x_952 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_950.x, x_950.y, x_952);
  let x_964 : vec3<f32> = txVec0;
  let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_964.xy, x_964.z);
  u_xlat3.x = x_966;
  let x_970 : f32 = x_592.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_970) + 1.0f);
  let x_974 : f32 = u_xlat3.x;
  let x_976 : f32 = x_592.x_MainLightShadowParams.x;
  let x_978 : f32 = u_xlat17;
  u_xlat3.x = ((x_974 * x_976) + x_978);
  let x_983 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_983);
  let x_987 : f32 = u_xlat3.z;
  u_xlatb31 = (x_987 >= 1.0f);
  let x_989 : bool = u_xlatb31;
  let x_990 : bool = u_xlatb17;
  u_xlatb17 = (x_989 | x_990);
  let x_992 : bool = u_xlatb17;
  if (x_992) {
    x_994 = 1.0f;
  } else {
    let x_999 : f32 = u_xlat3.x;
    x_994 = x_999;
  }
  let x_1000 : f32 = x_994;
  u_xlat3.x = x_1000;
  let x_1002 : vec3<f32> = vs_TEXCOORD7;
  let x_1004 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1006 : vec3<f32> = (x_1002 + -(x_1004));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1015 : f32 = u_xlat17;
  let x_1017 : f32 = x_592.x_MainLightShadowParams.z;
  let x_1020 : f32 = x_592.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1015 * x_1017) + x_1020);
  let x_1022 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1022, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat31;
  let x_1030 : f32 = u_xlat47;
  let x_1033 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1029 * x_1030) + x_1033);
  let x_1036 : vec4<f32> = u_xlat1;
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1036.x, x_1036.y, x_1036.z)), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : f32 = u_xlat31;
  let x_1043 : f32 = u_xlat31;
  u_xlat31 = (x_1042 + x_1043);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1047 : f32 = u_xlat31;
  let x_1051 : vec4<f32> = u_xlat1;
  let x_1054 : vec3<f32> = ((vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * -(vec3<f32>(x_1047, x_1047, x_1047))) + -(vec3<f32>(x_1051.x, x_1051.y, x_1051.z)));
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat2;
  let x_1059 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1062, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat31;
  u_xlat31 = (-(x_1064) + 1.0f);
  let x_1067 : f32 = u_xlat31;
  let x_1068 : f32 = u_xlat31;
  u_xlat31 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat31;
  let x_1071 : f32 = u_xlat31;
  u_xlat31 = (x_1070 * x_1071);
  let x_1074 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1074) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1081 : f32 = u_xlat0.x;
  let x_1082 : f32 = u_xlat47;
  u_xlat0.x = (x_1081 * x_1082);
  let x_1086 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1086 * 6.0f);
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1101 : f32 = u_xlat0.x;
  let x_1102 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1098.x, x_1098.y, x_1098.z), x_1101);
  u_xlat7 = x_1102;
  let x_1104 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1104 + -1.0f);
  let x_1108 : f32 = x_814.unity_SpecCube0_HDR.w;
  let x_1110 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1108 * x_1110) + 1.0f);
  let x_1115 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1115, 0.0f);
  let x_1119 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1119);
  let x_1123 : f32 = u_xlat0.x;
  let x_1125 : f32 = x_814.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1123 * x_1125);
  let x_1129 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1129);
  let x_1133 : f32 = u_xlat0.x;
  let x_1135 : f32 = x_814.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1133 * x_1135);
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1140 : vec3<f32> = u_xlat0;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * vec3<f32>(x_1140.x, x_1140.x, x_1140.x));
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : f32 = u_xlat44;
  let x_1147 : f32 = u_xlat44;
  let x_1151 : vec2<f32> = ((vec2<f32>(x_1145, x_1145) * vec2<f32>(x_1147, x_1147)) + vec2<f32>(-1.0f, 1.0f));
  let x_1152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
  let x_1155 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1155);
  let x_1159 : vec4<f32> = u_xlat5;
  let x_1162 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1159.x, x_1159.y, x_1159.z)) + vec3<f32>(x_1162, x_1162, x_1162));
  let x_1165 : f32 = u_xlat31;
  let x_1167 : vec3<f32> = u_xlat22;
  let x_1169 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1165, x_1165, x_1165) * x_1167) + vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec3<f32> = u_xlat0;
  let x_1174 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1172.x, x_1172.x, x_1172.x) * x_1174);
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = u_xlat22;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * x_1178);
  let x_1180 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec4<f32> = u_xlat4;
  let x_1184 : vec4<f32> = u_xlat6;
  let x_1187 : vec4<f32> = u_xlat7;
  let x_1189 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z)) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1193 : f32 = u_xlat3.x;
  let x_1195 : f32 = x_814.unity_LightData.z;
  u_xlat0.x = (x_1193 * x_1195);
  let x_1198 : vec4<f32> = u_xlat2;
  let x_1201 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1204, 0.0f, 1.0f);
  let x_1206 : f32 = u_xlat28;
  let x_1208 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1206 * x_1208);
  let x_1211 : vec3<f32> = u_xlat0;
  let x_1214 : vec4<f32> = x_113.x_MainLightColor;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1211.x, x_1211.x, x_1211.x) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat1;
  let x_1222 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec3<f32> = u_xlat22;
  let x_1226 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1225, x_1226);
  let x_1230 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1230, 1.17549435e-38f);
  let x_1235 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1235);
  let x_1238 : vec3<f32> = u_xlat0;
  let x_1240 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1238.x, x_1238.x, x_1238.x) * x_1240);
  let x_1242 : vec4<f32> = u_xlat2;
  let x_1244 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1242.x, x_1242.y, x_1242.z), x_1244);
  let x_1248 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1248, 0.0f, 1.0f);
  let x_1252 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1254 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1252.x, x_1252.y, x_1252.z), x_1254);
  let x_1258 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1258, 0.0f, 1.0f);
  let x_1261 : vec3<f32> = u_xlat0;
  let x_1263 : vec3<f32> = u_xlat0;
  let x_1265 : vec2<f32> = (vec2<f32>(x_1261.x, x_1261.z) * vec2<f32>(x_1263.x, x_1263.z));
  let x_1266 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1265.x, x_1266.y, x_1265.y);
  let x_1269 : f32 = u_xlat0.x;
  let x_1271 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1269 * x_1271) + 1.00001001358032226562f);
  let x_1277 : f32 = u_xlat0.x;
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1277 * x_1279);
  let x_1283 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1283, 0.10000000149011611938f);
  let x_1286 : f32 = u_xlat28;
  let x_1288 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1286 * x_1288);
  let x_1291 : f32 = u_xlat45;
  let x_1293 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1291 * x_1293);
  let x_1296 : f32 = u_xlat46;
  let x_1298 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1296 / x_1298);
  let x_1301 : vec4<f32> = u_xlat5;
  let x_1303 : vec3<f32> = u_xlat0;
  let x_1306 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.z) * vec3<f32>(x_1303.x, x_1303.x, x_1303.x)) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat7;
  let x_1311 : vec3<f32> = u_xlat22;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * x_1311);
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1316 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1318 : f32 = x_814.unity_LightData.y;
  u_xlat0.x = min(x_1316, x_1318);
  let x_1323 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1323));
  let x_1326 : f32 = u_xlat17;
  let x_1328 : f32 = x_592.x_AdditionalShadowFadeParams.x;
  let x_1331 : f32 = x_592.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1326 * x_1328) + x_1331);
  let x_1333 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1333, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1345 : u32 = u_xlatu_loop_1;
    let x_1346 : u32 = u_xlatu0;
    if ((x_1345 < x_1346)) {
    } else {
      break;
    }
    let x_1349 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1349 >> 2u);
    let x_1352 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1352 & 3u));
    let x_1355 : u32 = u_xlatu47;
    let x_1358 : vec4<f32> = x_814.unity_LightIndices[bitcast<i32>(x_1355)];
    let x_1368 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1373 : vec4<u32> = indexable[x_1368];
    u_xlat47 = dot(x_1358, bitcast<vec4<f32>>(x_1373));
    let x_1377 : f32 = u_xlat47;
    u_xlati47 = i32(x_1377);
    let x_1379 : vec3<f32> = vs_TEXCOORD7;
    let x_1390 : i32 = u_xlati47;
    let x_1392 : vec4<f32> = x_1389.x_AdditionalLightsPosition[x_1390];
    let x_1395 : i32 = u_xlati47;
    let x_1397 : vec4<f32> = x_1389.x_AdditionalLightsPosition[x_1395];
    u_xlat22 = ((-(x_1379) * vec3<f32>(x_1392.w, x_1392.w, x_1392.w)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
    let x_1401 : vec3<f32> = u_xlat22;
    let x_1402 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(x_1401, x_1402);
    let x_1404 : f32 = u_xlat48;
    u_xlat48 = max(x_1404, 0.00006103515625f);
    let x_1407 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1407);
    let x_1409 : f32 = u_xlat49;
    let x_1411 : vec3<f32> = u_xlat22;
    let x_1412 : vec3<f32> = (vec3<f32>(x_1409, x_1409, x_1409) * x_1411);
    let x_1413 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
    let x_1416 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1416);
    let x_1418 : f32 = u_xlat48;
    let x_1419 : i32 = u_xlati47;
    let x_1421 : f32 = x_1389.x_AdditionalLightsAttenuation[x_1419].x;
    u_xlat48 = (x_1418 * x_1421);
    let x_1423 : f32 = u_xlat48;
    let x_1425 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1423) * x_1425) + 1.0f);
    let x_1428 : f32 = u_xlat48;
    u_xlat48 = max(x_1428, 0.0f);
    let x_1430 : f32 = u_xlat48;
    let x_1431 : f32 = u_xlat48;
    u_xlat48 = (x_1430 * x_1431);
    let x_1433 : f32 = u_xlat48;
    let x_1434 : f32 = u_xlat51;
    u_xlat48 = (x_1433 * x_1434);
    let x_1436 : i32 = u_xlati47;
    let x_1438 : vec4<f32> = x_1389.x_AdditionalLightsSpotDir[x_1436];
    let x_1440 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1438.x, x_1438.y, x_1438.z), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1443 : f32 = u_xlat51;
    let x_1444 : i32 = u_xlati47;
    let x_1446 : f32 = x_1389.x_AdditionalLightsAttenuation[x_1444].z;
    let x_1448 : i32 = u_xlati47;
    let x_1450 : f32 = x_1389.x_AdditionalLightsAttenuation[x_1448].w;
    u_xlat51 = ((x_1443 * x_1446) + x_1450);
    let x_1452 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1452, 0.0f, 1.0f);
    let x_1454 : f32 = u_xlat51;
    let x_1455 : f32 = u_xlat51;
    u_xlat51 = (x_1454 * x_1455);
    let x_1457 : f32 = u_xlat48;
    let x_1458 : f32 = u_xlat51;
    u_xlat48 = (x_1457 * x_1458);
    let x_1461 : i32 = u_xlati47;
    let x_1463 : f32 = x_592.x_AdditionalShadowParams[x_1461].w;
    u_xlati51 = i32(x_1463);
    let x_1468 : i32 = u_xlati51;
    u_xlatb10.x = (x_1468 >= 0i);
    let x_1472 : bool = u_xlatb10.x;
    if (x_1472) {
      let x_1476 : i32 = u_xlati47;
      let x_1478 : f32 = x_592.x_AdditionalShadowParams[x_1476].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1478, x_1478, x_1478, x_1478))));
      let x_1484 : bool = u_xlatb10.x;
      if (x_1484) {
        let x_1487 : vec4<f32> = u_xlat9;
        let x_1490 : vec4<f32> = u_xlat9;
        let x_1493 : vec4<bool> = (abs(vec4<f32>(x_1487.z, x_1487.z, x_1487.y, x_1487.z)) >= abs(vec4<f32>(x_1490.x, x_1490.y, x_1490.x, x_1490.x)));
        u_xlatb10 = vec3<bool>(x_1493.x, x_1493.y, x_1493.z);
        let x_1496 : bool = u_xlatb10.y;
        let x_1498 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1496 & x_1498);
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1505 : vec4<bool> = (-(vec4<f32>(x_1502.z, x_1502.y, x_1502.x, x_1502.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1505.x, x_1505.y, x_1505.z);
        let x_1509 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1509);
        let x_1514 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1514);
        let x_1518 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1518);
        let x_1523 : bool = u_xlatb10.z;
        if (x_1523) {
          let x_1528 : f32 = u_xlat24.z;
          x_1524 = x_1528;
        } else {
          let x_1531 : f32 = u_xlat11.x;
          x_1524 = x_1531;
        }
        let x_1532 : f32 = x_1524;
        u_xlat38 = x_1532;
        let x_1534 : bool = u_xlatb10.x;
        if (x_1534) {
          let x_1539 : f32 = u_xlat24.x;
          x_1535 = x_1539;
        } else {
          let x_1541 : f32 = u_xlat38;
          x_1535 = x_1541;
        }
        let x_1542 : f32 = x_1535;
        u_xlat10.x = x_1542;
        let x_1544 : i32 = u_xlati47;
        let x_1546 : f32 = x_592.x_AdditionalShadowParams[x_1544].w;
        u_xlat24.x = trunc(x_1546);
        let x_1550 : f32 = u_xlat10.x;
        let x_1552 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1550 + x_1552);
        let x_1556 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1556);
      }
      let x_1558 : i32 = u_xlati51;
      u_xlati51 = (x_1558 << bitcast<u32>(2i));
      let x_1560 : vec3<f32> = vs_TEXCOORD7;
      let x_1562 : i32 = u_xlati51;
      let x_1565 : i32 = u_xlati51;
      let x_1569 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1562 + 1i) / 4i)][((x_1565 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1560.y, x_1560.y, x_1560.y, x_1560.y) * x_1569);
      let x_1571 : i32 = u_xlati51;
      let x_1573 : i32 = u_xlati51;
      let x_1576 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[(x_1571 / 4i)][(x_1573 % 4i)];
      let x_1577 : vec3<f32> = vs_TEXCOORD7;
      let x_1580 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1576 * vec4<f32>(x_1577.x, x_1577.x, x_1577.x, x_1577.x)) + x_1580);
      let x_1582 : i32 = u_xlati51;
      let x_1585 : i32 = u_xlati51;
      let x_1589 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1582 + 2i) / 4i)][((x_1585 + 2i) % 4i)];
      let x_1590 : vec3<f32> = vs_TEXCOORD7;
      let x_1593 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1589 * vec4<f32>(x_1590.z, x_1590.z, x_1590.z, x_1590.z)) + x_1593);
      let x_1595 : vec4<f32> = u_xlat10;
      let x_1596 : i32 = u_xlati51;
      let x_1599 : i32 = u_xlati51;
      let x_1603 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_1596 + 3i) / 4i)][((x_1599 + 3i) % 4i)];
      u_xlat10 = (x_1595 + x_1603);
      let x_1605 : vec4<f32> = u_xlat10;
      let x_1607 : vec4<f32> = u_xlat10;
      let x_1609 : vec3<f32> = (vec3<f32>(x_1605.x, x_1605.y, x_1605.z) / vec3<f32>(x_1607.w, x_1607.w, x_1607.w));
      let x_1610 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
      let x_1613 : vec4<f32> = u_xlat10;
      let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
      let x_1616 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
      let x_1624 : vec3<f32> = txVec1;
      let x_1626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
      u_xlat51 = x_1626;
      let x_1627 : i32 = u_xlati47;
      let x_1629 : f32 = x_592.x_AdditionalShadowParams[x_1627].x;
      u_xlat10.x = (1.0f + -(x_1629));
      let x_1633 : f32 = u_xlat51;
      let x_1634 : i32 = u_xlati47;
      let x_1636 : f32 = x_592.x_AdditionalShadowParams[x_1634].x;
      let x_1639 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1633 * x_1636) + x_1639);
      let x_1642 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1642);
      let x_1647 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1647 >= 1.0f);
      let x_1649 : bool = u_xlatb24;
      let x_1651 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1649 | x_1651);
      let x_1655 : bool = u_xlatb10.x;
      let x_1656 : f32 = u_xlat51;
      u_xlat51 = select(x_1656, 1.0f, x_1655);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1659 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1659) + 1.0f);
    let x_1663 : f32 = u_xlat28;
    let x_1665 : f32 = u_xlat10.x;
    let x_1667 : f32 = u_xlat51;
    u_xlat51 = ((x_1663 * x_1665) + x_1667);
    let x_1669 : f32 = u_xlat48;
    let x_1670 : f32 = u_xlat51;
    u_xlat48 = (x_1669 * x_1670);
    let x_1672 : vec4<f32> = u_xlat2;
    let x_1674 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1672.x, x_1672.y, x_1672.z), vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1677, 0.0f, 1.0f);
    let x_1679 : f32 = u_xlat48;
    let x_1680 : f32 = u_xlat51;
    u_xlat48 = (x_1679 * x_1680);
    let x_1682 : f32 = u_xlat48;
    let x_1684 : i32 = u_xlati47;
    let x_1686 : vec4<f32> = x_1389.x_AdditionalLightsColor[x_1684];
    let x_1688 : vec3<f32> = (vec3<f32>(x_1682, x_1682, x_1682) * vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
    let x_1689 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
    let x_1691 : vec3<f32> = u_xlat22;
    let x_1692 : f32 = u_xlat49;
    let x_1695 : vec4<f32> = u_xlat1;
    u_xlat22 = ((x_1691 * vec3<f32>(x_1692, x_1692, x_1692)) + vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
    let x_1698 : vec3<f32> = u_xlat22;
    let x_1699 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1698, x_1699);
    let x_1701 : f32 = u_xlat47;
    u_xlat47 = max(x_1701, 1.17549435e-38f);
    let x_1703 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1703);
    let x_1705 : f32 = u_xlat47;
    let x_1707 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1705, x_1705, x_1705) * x_1707);
    let x_1709 : vec4<f32> = u_xlat2;
    let x_1711 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1709.x, x_1709.y, x_1709.z), x_1711);
    let x_1713 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1713, 0.0f, 1.0f);
    let x_1715 : vec4<f32> = u_xlat9;
    let x_1717 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(vec3<f32>(x_1715.x, x_1715.y, x_1715.z), x_1717);
    let x_1719 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1719, 0.0f, 1.0f);
    let x_1721 : f32 = u_xlat47;
    let x_1722 : f32 = u_xlat47;
    u_xlat47 = (x_1721 * x_1722);
    let x_1724 : f32 = u_xlat47;
    let x_1726 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1724 * x_1726) + 1.00001001358032226562f);
    let x_1729 : f32 = u_xlat48;
    let x_1730 : f32 = u_xlat48;
    u_xlat48 = (x_1729 * x_1730);
    let x_1732 : f32 = u_xlat47;
    let x_1733 : f32 = u_xlat47;
    u_xlat47 = (x_1732 * x_1733);
    let x_1735 : f32 = u_xlat48;
    u_xlat48 = max(x_1735, 0.10000000149011611938f);
    let x_1737 : f32 = u_xlat47;
    let x_1738 : f32 = u_xlat48;
    u_xlat47 = (x_1737 * x_1738);
    let x_1740 : f32 = u_xlat45;
    let x_1741 : f32 = u_xlat47;
    u_xlat47 = (x_1740 * x_1741);
    let x_1743 : f32 = u_xlat46;
    let x_1744 : f32 = u_xlat47;
    u_xlat47 = (x_1743 / x_1744);
    let x_1746 : vec4<f32> = u_xlat5;
    let x_1748 : f32 = u_xlat47;
    let x_1751 : vec4<f32> = u_xlat6;
    u_xlat22 = ((vec3<f32>(x_1746.x, x_1746.y, x_1746.z) * vec3<f32>(x_1748, x_1748, x_1748)) + vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
    let x_1754 : vec3<f32> = u_xlat22;
    let x_1755 : vec4<f32> = u_xlat10;
    let x_1758 : vec4<f32> = u_xlat3;
    let x_1760 : vec3<f32> = ((x_1754 * vec3<f32>(x_1755.x, x_1755.y, x_1755.z)) + vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
    let x_1761 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);

    continuing {
      let x_1763 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1763 + bitcast<u32>(1i));
    }
  }
  let x_1765 : vec4<f32> = u_xlat4;
  let x_1767 : f32 = u_xlat14;
  let x_1770 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1765.x, x_1765.y, x_1765.z) * vec3<f32>(x_1767, x_1767, x_1767)) + vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : vec4<f32> = u_xlat3;
  let x_1775 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1773.x, x_1773.y, x_1773.z) + x_1775);
  let x_1777 : f32 = u_xlat42;
  let x_1779 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1777, x_1777, x_1777) * x_1779);
  let x_1781 : f32 = u_xlat43;
  let x_1782 : f32 = u_xlat43;
  u_xlat42 = (x_1781 * -(x_1782));
  let x_1785 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1785);
  let x_1789 : vec3<f32> = u_xlat0;
  let x_1790 : f32 = u_xlat42;
  let x_1792 : vec3<f32> = (x_1789 * vec3<f32>(x_1790, x_1790, x_1790));
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


