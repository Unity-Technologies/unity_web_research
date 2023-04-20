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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1049 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1322 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var x_936 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1459 : f32;
  var x_1469 : f32;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb43;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_277 : f32 = u_xlat43;
  u_xlat43 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat43;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat15;
  let x_524 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat15;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat15.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_699 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_699, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_704 : f32 = u_xlat43;
  u_xlat43 = (-(x_704) + 4.0f);
  let x_709 : f32 = u_xlat43;
  u_xlatu43 = u32(x_709);
  let x_713 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_713) << bitcast<u32>(2i));
  let x_716 : vec3<f32> = vs_TEXCOORD7;
  let x_718 : i32 = u_xlati43;
  let x_721 : i32 = u_xlati43;
  let x_725 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_718 + 1i) / 4i)][((x_721 + 1i) % 4i)];
  let x_727 : vec3<f32> = (vec3<f32>(x_716.y, x_716.y, x_716.y) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : i32 = u_xlati43;
  let x_732 : i32 = u_xlati43;
  let x_735 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_730 / 4i)][(x_732 % 4i)];
  let x_737 : vec3<f32> = vs_TEXCOORD7;
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec3<f32> = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.x, x_737.x)) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : i32 = u_xlati43;
  let x_748 : i32 = u_xlati43;
  let x_752 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_745 + 2i) / 4i)][((x_748 + 2i) % 4i)];
  let x_754 : vec3<f32> = vs_TEXCOORD7;
  let x_757 : vec4<f32> = u_xlat3;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754.z, x_754.z, x_754.z)) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat3;
  let x_764 : i32 = u_xlati43;
  let x_767 : i32 = u_xlati43;
  let x_771 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_764 + 3i) / 4i)][((x_767 + 3i) % 4i)];
  let x_773 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_781 : vec4<f32> = vs_TEXCOORD0;
  let x_784 : f32 = x_111.x_GlobalMipBias.x;
  let x_785 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_781.z, x_781.w), x_784);
  u_xlat4 = x_785;
  let x_790 : vec4<f32> = vs_TEXCOORD0;
  let x_793 : f32 = x_111.x_GlobalMipBias.x;
  let x_794 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_790.z, x_790.w), x_793);
  let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat4;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : f32 = u_xlat43;
  u_xlat43 = (x_810 + 0.5f);
  let x_812 : f32 = u_xlat43;
  let x_814 : vec4<f32> = u_xlat6;
  let x_816 : vec3<f32> = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = u_xlat4.w;
  u_xlat43 = max(x_820, 0.00009999999747378752f);
  let x_823 : vec4<f32> = u_xlat4;
  let x_825 : f32 = u_xlat43;
  let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) / vec3<f32>(x_825, x_825, x_825));
  let x_828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_831 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_831) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_837 : f32 = u_xlat28;
  let x_838 : f32 = u_xlat43;
  u_xlat44 = (x_837 + -(x_838));
  let x_841 : f32 = u_xlat43;
  let x_843 : vec4<f32> = u_xlat5;
  let x_845 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat5;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat0;
  let x_857 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.x, x_855.x) * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_863 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : f32 = u_xlat28;
  u_xlat0.x = (-(x_865) + 1.0f);
  let x_870 : f32 = u_xlat0.x;
  let x_872 : f32 = u_xlat0.x;
  u_xlat28 = (x_870 * x_872);
  let x_874 : f32 = u_xlat28;
  u_xlat28 = max(x_874, 0.0078125f);
  let x_877 : f32 = u_xlat28;
  let x_878 : f32 = u_xlat28;
  u_xlat43 = (x_877 * x_878);
  let x_880 : f32 = u_xlat44;
  u_xlat44 = (x_880 + 1.0f);
  let x_882 : f32 = u_xlat44;
  u_xlat44 = clamp(x_882, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat28;
  u_xlat45 = ((x_885 * 4.0f) + 2.0f);
  let x_888 : f32 = u_xlat14;
  u_xlat14 = min(x_888, 1.0f);
  let x_892 : vec4<f32> = u_xlat3;
  let x_893 : vec2<f32> = vec2<f32>(x_892.x, x_892.y);
  let x_895 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_893.x, x_893.y, x_895);
  let x_907 : vec3<f32> = txVec0;
  let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
  u_xlat3.x = x_909;
  let x_913 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_913) + 1.0f);
  let x_917 : f32 = u_xlat3.x;
  let x_919 : f32 = x_594.x_MainLightShadowParams.x;
  let x_921 : f32 = u_xlat17;
  u_xlat3.x = ((x_917 * x_919) + x_921);
  let x_926 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_926);
  let x_930 : f32 = u_xlat3.z;
  u_xlatb31 = (x_930 >= 1.0f);
  let x_932 : bool = u_xlatb31;
  let x_933 : bool = u_xlatb17;
  u_xlatb17 = (x_932 | x_933);
  let x_935 : bool = u_xlatb17;
  if (x_935) {
    x_936 = 1.0f;
  } else {
    let x_941 : f32 = u_xlat3.x;
    x_936 = x_941;
  }
  let x_942 : f32 = x_936;
  u_xlat3.x = x_942;
  let x_944 : vec3<f32> = vs_TEXCOORD7;
  let x_946 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_948 : vec3<f32> = (x_944 + -(x_946));
  let x_949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat7;
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_957 : f32 = u_xlat17;
  let x_959 : f32 = x_594.x_MainLightShadowParams.z;
  let x_962 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat31 = ((x_957 * x_959) + x_962);
  let x_964 : f32 = u_xlat31;
  u_xlat31 = clamp(x_964, 0.0f, 1.0f);
  let x_968 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_968) + 1.0f);
  let x_971 : f32 = u_xlat31;
  let x_972 : f32 = u_xlat46;
  let x_975 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_971 * x_972) + x_975);
  let x_978 : vec3<f32> = u_xlat2;
  let x_980 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_978), vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : f32 = u_xlat31;
  let x_984 : f32 = u_xlat31;
  u_xlat31 = (x_983 + x_984);
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : f32 = u_xlat31;
  let x_992 : vec3<f32> = u_xlat2;
  let x_994 : vec3<f32> = ((vec3<f32>(x_986.x, x_986.y, x_986.z) * -(vec3<f32>(x_988, x_988, x_988))) + -(x_992));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat1;
  let x_999 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), x_999);
  let x_1001 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat31;
  u_xlat31 = (-(x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat31;
  let x_1007 : f32 = u_xlat31;
  u_xlat31 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat31;
  let x_1010 : f32 = u_xlat31;
  u_xlat31 = (x_1009 * x_1010);
  let x_1013 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1013) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1020 : f32 = u_xlat0.x;
  let x_1021 : f32 = u_xlat46;
  u_xlat0.x = (x_1020 * x_1021);
  let x_1025 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1025 * 6.0f);
  let x_1037 : vec4<f32> = u_xlat7;
  let x_1040 : f32 = u_xlat0.x;
  let x_1041 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1037.x, x_1037.y, x_1037.z), x_1040);
  u_xlat7 = x_1041;
  let x_1043 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1043 + -1.0f);
  let x_1051 : f32 = x_1049.unity_SpecCube0_HDR.w;
  let x_1053 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1051 * x_1053) + 1.0f);
  let x_1058 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1058, 0.0f);
  let x_1062 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1062);
  let x_1066 : f32 = u_xlat0.x;
  let x_1068 : f32 = x_1049.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1066 * x_1068);
  let x_1072 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1072);
  let x_1076 : f32 = u_xlat0.x;
  let x_1078 : f32 = x_1049.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1076 * x_1078);
  let x_1081 : vec4<f32> = u_xlat7;
  let x_1083 : vec3<f32> = u_xlat0;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) * vec3<f32>(x_1083.x, x_1083.x, x_1083.x));
  let x_1086 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : f32 = u_xlat28;
  let x_1090 : f32 = u_xlat28;
  let x_1094 : vec2<f32> = ((vec2<f32>(x_1088, x_1088) * vec2<f32>(x_1090, x_1090)) + vec2<f32>(-1.0f, 1.0f));
  let x_1095 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1094.x, x_1095.y, x_1094.y);
  let x_1098 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1098);
  let x_1100 : vec4<f32> = u_xlat5;
  let x_1103 : f32 = u_xlat44;
  let x_1105 : vec3<f32> = (-(vec3<f32>(x_1100.x, x_1100.y, x_1100.z)) + vec3<f32>(x_1103, x_1103, x_1103));
  let x_1106 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : f32 = u_xlat31;
  let x_1110 : vec4<f32> = u_xlat8;
  let x_1113 : vec4<f32> = u_xlat5;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z)) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : f32 = u_xlat28;
  let x_1120 : vec4<f32> = u_xlat8;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118, x_1118, x_1118) * vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec4<f32> = u_xlat7;
  let x_1127 : vec4<f32> = u_xlat8;
  let x_1129 : vec3<f32> = (vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec4<f32> = u_xlat4;
  let x_1134 : vec4<f32> = u_xlat6;
  let x_1137 : vec4<f32> = u_xlat7;
  let x_1139 : vec3<f32> = ((vec3<f32>(x_1132.x, x_1132.y, x_1132.z) * vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1143 : f32 = u_xlat3.x;
  let x_1145 : f32 = x_1049.unity_LightData.z;
  u_xlat28 = (x_1143 * x_1145);
  let x_1147 : vec4<f32> = u_xlat1;
  let x_1150 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.z), vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1153, 0.0f, 1.0f);
  let x_1155 : f32 = u_xlat28;
  let x_1156 : f32 = u_xlat44;
  u_xlat28 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat28;
  let x_1161 : vec4<f32> = x_111.x_MainLightColor;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1158, x_1158, x_1158) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec3<f32> = u_xlat2;
  let x_1168 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1170 : vec3<f32> = (x_1166 + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
  let x_1173 : vec4<f32> = u_xlat8;
  let x_1175 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1173.x, x_1173.y, x_1173.z), vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : f32 = u_xlat28;
  u_xlat28 = max(x_1178, 1.17549435e-38f);
  let x_1181 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1181);
  let x_1183 : f32 = u_xlat28;
  let x_1185 : vec4<f32> = u_xlat8;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1183, x_1183, x_1183) * vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : vec4<f32> = u_xlat1;
  let x_1192 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1195, 0.0f, 1.0f);
  let x_1198 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1200 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1203, 0.0f, 1.0f);
  let x_1205 : f32 = u_xlat28;
  let x_1206 : f32 = u_xlat28;
  u_xlat28 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat28;
  let x_1210 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1208 * x_1210) + 1.00001001358032226562f);
  let x_1214 : f32 = u_xlat44;
  let x_1215 : f32 = u_xlat44;
  u_xlat44 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat28;
  let x_1218 : f32 = u_xlat28;
  u_xlat28 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat44;
  u_xlat44 = max(x_1220, 0.10000000149011611938f);
  let x_1223 : f32 = u_xlat28;
  let x_1224 : f32 = u_xlat44;
  u_xlat28 = (x_1223 * x_1224);
  let x_1226 : f32 = u_xlat45;
  let x_1227 : f32 = u_xlat28;
  u_xlat28 = (x_1226 * x_1227);
  let x_1229 : f32 = u_xlat43;
  let x_1230 : f32 = u_xlat28;
  u_xlat28 = (x_1229 / x_1230);
  let x_1232 : vec4<f32> = u_xlat5;
  let x_1234 : f32 = u_xlat28;
  let x_1237 : vec4<f32> = u_xlat6;
  let x_1239 : vec3<f32> = ((vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(x_1234, x_1234, x_1234)) + vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat7;
  let x_1244 : vec4<f32> = u_xlat8;
  let x_1246 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1250 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1252 : f32 = x_1049.unity_LightData.y;
  u_xlat28 = min(x_1250, x_1252);
  let x_1255 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1255));
  let x_1258 : f32 = u_xlat17;
  let x_1260 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_1263 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1258 * x_1260) + x_1263);
  let x_1265 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1265, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1277 : u32 = u_xlatu_loop_1;
    let x_1278 : u32 = u_xlatu28;
    if ((x_1277 < x_1278)) {
    } else {
      break;
    }
    let x_1281 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1281 >> 2u);
    let x_1284 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1284 & 3u));
    let x_1288 : u32 = u_xlatu47;
    let x_1291 : vec4<f32> = x_1049.unity_LightIndices[bitcast<i32>(x_1288)];
    let x_1301 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1306 : vec4<u32> = indexable[x_1301];
    u_xlat47 = dot(x_1291, bitcast<vec4<f32>>(x_1306));
    let x_1310 : f32 = u_xlat47;
    u_xlati47 = i32(x_1310);
    let x_1312 : vec3<f32> = vs_TEXCOORD7;
    let x_1323 : i32 = u_xlati47;
    let x_1325 : vec4<f32> = x_1322.x_AdditionalLightsPosition[x_1323];
    let x_1328 : i32 = u_xlati47;
    let x_1330 : vec4<f32> = x_1322.x_AdditionalLightsPosition[x_1328];
    let x_1332 : vec3<f32> = ((-(x_1312) * vec3<f32>(x_1325.w, x_1325.w, x_1325.w)) + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
    let x_1336 : vec4<f32> = u_xlat8;
    let x_1338 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
    let x_1341 : f32 = u_xlat48;
    u_xlat48 = max(x_1341, 0.00006103515625f);
    let x_1344 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1344);
    let x_1346 : f32 = u_xlat49;
    let x_1348 : vec4<f32> = u_xlat8;
    let x_1350 : vec3<f32> = (vec3<f32>(x_1346, x_1346, x_1346) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1351 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
    let x_1354 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1354);
    let x_1356 : f32 = u_xlat48;
    let x_1357 : i32 = u_xlati47;
    let x_1359 : f32 = x_1322.x_AdditionalLightsAttenuation[x_1357].x;
    u_xlat48 = (x_1356 * x_1359);
    let x_1361 : f32 = u_xlat48;
    let x_1363 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1361) * x_1363) + 1.0f);
    let x_1366 : f32 = u_xlat48;
    u_xlat48 = max(x_1366, 0.0f);
    let x_1368 : f32 = u_xlat48;
    let x_1369 : f32 = u_xlat48;
    u_xlat48 = (x_1368 * x_1369);
    let x_1371 : f32 = u_xlat48;
    let x_1372 : f32 = u_xlat50;
    u_xlat48 = (x_1371 * x_1372);
    let x_1374 : i32 = u_xlati47;
    let x_1376 : vec4<f32> = x_1322.x_AdditionalLightsSpotDir[x_1374];
    let x_1378 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1376.x, x_1376.y, x_1376.z), vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
    let x_1381 : f32 = u_xlat50;
    let x_1382 : i32 = u_xlati47;
    let x_1384 : f32 = x_1322.x_AdditionalLightsAttenuation[x_1382].z;
    let x_1386 : i32 = u_xlati47;
    let x_1388 : f32 = x_1322.x_AdditionalLightsAttenuation[x_1386].w;
    u_xlat50 = ((x_1381 * x_1384) + x_1388);
    let x_1390 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1390, 0.0f, 1.0f);
    let x_1392 : f32 = u_xlat50;
    let x_1393 : f32 = u_xlat50;
    u_xlat50 = (x_1392 * x_1393);
    let x_1395 : f32 = u_xlat48;
    let x_1396 : f32 = u_xlat50;
    u_xlat48 = (x_1395 * x_1396);
    let x_1399 : i32 = u_xlati47;
    let x_1401 : f32 = x_594.x_AdditionalShadowParams[x_1399].w;
    u_xlati50 = i32(x_1401);
    let x_1404 : i32 = u_xlati50;
    u_xlatb51 = (x_1404 >= 0i);
    let x_1406 : bool = u_xlatb51;
    if (x_1406) {
      let x_1410 : i32 = u_xlati47;
      let x_1412 : f32 = x_594.x_AdditionalShadowParams[x_1410].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1412, x_1412, x_1412, x_1412))));
      let x_1416 : bool = u_xlatb51;
      if (x_1416) {
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1426 : vec4<bool> = (abs(vec4<f32>(x_1420.z, x_1420.z, x_1420.y, x_1420.z)) >= abs(vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.x)));
        let x_1428 : vec3<bool> = vec3<bool>(x_1426.x, x_1426.y, x_1426.z);
        let x_1429 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1432 : bool = u_xlatb10.y;
        let x_1434 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1432 & x_1434);
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<bool> = (-(vec4<f32>(x_1436.z, x_1436.y, x_1436.z, x_1436.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1440 : vec3<bool> = vec3<bool>(x_1439.x, x_1439.y, x_1439.w);
        let x_1441 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1440.x, x_1440.y, x_1441.z, x_1440.z);
        let x_1444 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1444);
        let x_1449 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1449);
        let x_1454 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1454);
        let x_1458 : bool = u_xlatb10.z;
        if (x_1458) {
          let x_1463 : f32 = u_xlat10.y;
          x_1459 = x_1463;
        } else {
          let x_1465 : f32 = u_xlat52;
          x_1459 = x_1465;
        }
        let x_1466 : f32 = x_1459;
        u_xlat24 = x_1466;
        let x_1468 : bool = u_xlatb51;
        if (x_1468) {
          let x_1473 : f32 = u_xlat10.x;
          x_1469 = x_1473;
        } else {
          let x_1475 : f32 = u_xlat24;
          x_1469 = x_1475;
        }
        let x_1476 : f32 = x_1469;
        u_xlat51 = x_1476;
        let x_1477 : i32 = u_xlati47;
        let x_1479 : f32 = x_594.x_AdditionalShadowParams[x_1477].w;
        u_xlat10.x = trunc(x_1479);
        let x_1482 : f32 = u_xlat51;
        let x_1484 : f32 = u_xlat10.x;
        u_xlat51 = (x_1482 + x_1484);
        let x_1486 : f32 = u_xlat51;
        u_xlati50 = i32(x_1486);
      }
      let x_1488 : i32 = u_xlati50;
      u_xlati50 = (x_1488 << bitcast<u32>(2i));
      let x_1490 : vec3<f32> = vs_TEXCOORD7;
      let x_1492 : i32 = u_xlati50;
      let x_1495 : i32 = u_xlati50;
      let x_1499 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1492 + 1i) / 4i)][((x_1495 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1490.y, x_1490.y, x_1490.y, x_1490.y) * x_1499);
      let x_1501 : i32 = u_xlati50;
      let x_1503 : i32 = u_xlati50;
      let x_1506 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_1501 / 4i)][(x_1503 % 4i)];
      let x_1507 : vec3<f32> = vs_TEXCOORD7;
      let x_1510 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1506 * vec4<f32>(x_1507.x, x_1507.x, x_1507.x, x_1507.x)) + x_1510);
      let x_1512 : i32 = u_xlati50;
      let x_1515 : i32 = u_xlati50;
      let x_1519 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1512 + 2i) / 4i)][((x_1515 + 2i) % 4i)];
      let x_1520 : vec3<f32> = vs_TEXCOORD7;
      let x_1523 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1519 * vec4<f32>(x_1520.z, x_1520.z, x_1520.z, x_1520.z)) + x_1523);
      let x_1525 : vec4<f32> = u_xlat10;
      let x_1526 : i32 = u_xlati50;
      let x_1529 : i32 = u_xlati50;
      let x_1533 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1526 + 3i) / 4i)][((x_1529 + 3i) % 4i)];
      u_xlat10 = (x_1525 + x_1533);
      let x_1535 : vec4<f32> = u_xlat10;
      let x_1537 : vec4<f32> = u_xlat10;
      let x_1539 : vec3<f32> = (vec3<f32>(x_1535.x, x_1535.y, x_1535.z) / vec3<f32>(x_1537.w, x_1537.w, x_1537.w));
      let x_1540 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
      let x_1543 : vec4<f32> = u_xlat10;
      let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
      let x_1546 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
      let x_1554 : vec3<f32> = txVec1;
      let x_1556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
      u_xlat50 = x_1556;
      let x_1557 : i32 = u_xlati47;
      let x_1559 : f32 = x_594.x_AdditionalShadowParams[x_1557].x;
      u_xlat51 = (1.0f + -(x_1559));
      let x_1562 : f32 = u_xlat50;
      let x_1563 : i32 = u_xlati47;
      let x_1565 : f32 = x_594.x_AdditionalShadowParams[x_1563].x;
      let x_1567 : f32 = u_xlat51;
      u_xlat50 = ((x_1562 * x_1565) + x_1567);
      let x_1570 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1570);
      let x_1573 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1573 >= 1.0f);
      let x_1576 : bool = u_xlatb51;
      let x_1578 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1576 | x_1578);
      let x_1580 : bool = u_xlatb51;
      let x_1581 : f32 = u_xlat50;
      u_xlat50 = select(x_1581, 1.0f, x_1580);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1584 : f32 = u_xlat50;
    u_xlat51 = (-(x_1584) + 1.0f);
    let x_1587 : f32 = u_xlat44;
    let x_1588 : f32 = u_xlat51;
    let x_1590 : f32 = u_xlat50;
    u_xlat50 = ((x_1587 * x_1588) + x_1590);
    let x_1592 : f32 = u_xlat48;
    let x_1593 : f32 = u_xlat50;
    u_xlat48 = (x_1592 * x_1593);
    let x_1595 : vec4<f32> = u_xlat1;
    let x_1597 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1595.x, x_1595.y, x_1595.z), vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
    let x_1600 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1600, 0.0f, 1.0f);
    let x_1602 : f32 = u_xlat48;
    let x_1603 : f32 = u_xlat50;
    u_xlat48 = (x_1602 * x_1603);
    let x_1605 : f32 = u_xlat48;
    let x_1607 : i32 = u_xlati47;
    let x_1609 : vec4<f32> = x_1322.x_AdditionalLightsColor[x_1607];
    let x_1611 : vec3<f32> = (vec3<f32>(x_1605, x_1605, x_1605) * vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
    let x_1612 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
    let x_1614 : vec4<f32> = u_xlat8;
    let x_1616 : f32 = u_xlat49;
    let x_1619 : vec3<f32> = u_xlat2;
    let x_1620 : vec3<f32> = ((vec3<f32>(x_1614.x, x_1614.y, x_1614.z) * vec3<f32>(x_1616, x_1616, x_1616)) + x_1619);
    let x_1621 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    let x_1623 : vec4<f32> = u_xlat8;
    let x_1625 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1623.x, x_1623.y, x_1623.z), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : f32 = u_xlat47;
    u_xlat47 = max(x_1628, 1.17549435e-38f);
    let x_1630 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1630);
    let x_1632 : f32 = u_xlat47;
    let x_1634 : vec4<f32> = u_xlat8;
    let x_1636 : vec3<f32> = (vec3<f32>(x_1632, x_1632, x_1632) * vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
    let x_1637 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
    let x_1639 : vec4<f32> = u_xlat1;
    let x_1641 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1639.x, x_1639.y, x_1639.z), vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
    let x_1644 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1644, 0.0f, 1.0f);
    let x_1646 : vec4<f32> = u_xlat9;
    let x_1648 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1646.x, x_1646.y, x_1646.z), vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
    let x_1651 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1651, 0.0f, 1.0f);
    let x_1653 : f32 = u_xlat47;
    let x_1654 : f32 = u_xlat47;
    u_xlat47 = (x_1653 * x_1654);
    let x_1656 : f32 = u_xlat47;
    let x_1658 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1656 * x_1658) + 1.00001001358032226562f);
    let x_1661 : f32 = u_xlat48;
    let x_1662 : f32 = u_xlat48;
    u_xlat48 = (x_1661 * x_1662);
    let x_1664 : f32 = u_xlat47;
    let x_1665 : f32 = u_xlat47;
    u_xlat47 = (x_1664 * x_1665);
    let x_1667 : f32 = u_xlat48;
    u_xlat48 = max(x_1667, 0.10000000149011611938f);
    let x_1669 : f32 = u_xlat47;
    let x_1670 : f32 = u_xlat48;
    u_xlat47 = (x_1669 * x_1670);
    let x_1672 : f32 = u_xlat45;
    let x_1673 : f32 = u_xlat47;
    u_xlat47 = (x_1672 * x_1673);
    let x_1675 : f32 = u_xlat43;
    let x_1676 : f32 = u_xlat47;
    u_xlat47 = (x_1675 / x_1676);
    let x_1678 : vec4<f32> = u_xlat5;
    let x_1680 : f32 = u_xlat47;
    let x_1683 : vec4<f32> = u_xlat6;
    let x_1685 : vec3<f32> = ((vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1680, x_1680, x_1680)) + vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
    let x_1688 : vec4<f32> = u_xlat8;
    let x_1690 : vec4<f32> = u_xlat10;
    let x_1693 : vec4<f32> = u_xlat3;
    let x_1695 : vec3<f32> = ((vec3<f32>(x_1688.x, x_1688.y, x_1688.z) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z)) + vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
    let x_1696 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);

    continuing {
      let x_1698 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1698 + bitcast<u32>(1i));
    }
  }
  let x_1700 : vec4<f32> = u_xlat4;
  let x_1702 : f32 = u_xlat14;
  let x_1705 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1700.x, x_1700.y, x_1700.z) * vec3<f32>(x_1702, x_1702, x_1702)) + vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
  let x_1708 : vec4<f32> = u_xlat3;
  let x_1710 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1708.x, x_1708.y, x_1708.z) + x_1710);
  let x_1714 : f32 = u_xlat42;
  let x_1716 : vec3<f32> = u_xlat0;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1714, x_1714, x_1714) * x_1716);
  let x_1718 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
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


