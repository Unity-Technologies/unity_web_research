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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_732 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_869 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1143 : AdditionalLights;

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

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1281 : f32;
  var x_1291 : f32;
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
  let x_591 : vec4<f32> = vs_TEXCOORD0;
  let x_594 : f32 = x_111.x_GlobalMipBias.x;
  let x_595 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_591.z, x_591.w), x_594);
  u_xlat3 = x_595;
  let x_600 : vec4<f32> = vs_TEXCOORD0;
  let x_603 : f32 = x_111.x_GlobalMipBias.x;
  let x_604 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_600.z, x_600.w), x_603);
  let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat43;
  u_xlat43 = (x_620 + 0.5f);
  let x_622 : f32 = u_xlat43;
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : f32 = u_xlat3.w;
  u_xlat43 = max(x_630, 0.00009999999747378752f);
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : f32 = u_xlat43;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) / vec3<f32>(x_635, x_635, x_635));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_641) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_647 : f32 = u_xlat28;
  let x_648 : f32 = u_xlat43;
  u_xlat44 = (x_647 + -(x_648));
  let x_651 : f32 = u_xlat43;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat5;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec3<f32> = u_xlat0;
  let x_667 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_673 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : f32 = u_xlat28;
  u_xlat0.x = (-(x_675) + 1.0f);
  let x_680 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat0.x;
  u_xlat28 = (x_680 * x_682);
  let x_684 : f32 = u_xlat28;
  u_xlat28 = max(x_684, 0.0078125f);
  let x_687 : f32 = u_xlat28;
  let x_688 : f32 = u_xlat28;
  u_xlat43 = (x_687 * x_688);
  let x_690 : f32 = u_xlat44;
  u_xlat44 = (x_690 + 1.0f);
  let x_692 : f32 = u_xlat44;
  u_xlat44 = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat28;
  u_xlat45 = ((x_695 * 4.0f) + 2.0f);
  let x_699 : f32 = u_xlat14;
  u_xlat14 = min(x_699, 1.0f);
  let x_704 : vec4<f32> = vs_TEXCOORD8;
  let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
  let x_708 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_705.x, x_705.y, x_708);
  let x_721 : vec3<f32> = txVec0;
  let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_721.xy, x_721.z);
  u_xlat46 = x_723;
  let x_734 : f32 = x_732.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat46;
  let x_739 : f32 = x_732.x_MainLightShadowParams.x;
  let x_741 : f32 = u_xlat47;
  u_xlat46 = ((x_737 * x_739) + x_741);
  let x_745 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_745);
  let x_749 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_749 >= 1.0f);
  let x_751 : bool = u_xlatb47;
  let x_752 : bool = u_xlatb6;
  u_xlatb47 = (x_751 | x_752);
  let x_754 : bool = u_xlatb47;
  let x_755 : f32 = u_xlat46;
  u_xlat46 = select(x_755, 1.0f, x_754);
  let x_757 : vec3<f32> = vs_TEXCOORD7;
  let x_759 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_761 : vec3<f32> = (x_757 + -(x_759));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat6;
  let x_766 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat47;
  let x_771 : f32 = x_732.x_MainLightShadowParams.z;
  let x_774 : f32 = x_732.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_769 * x_771) + x_774);
  let x_778 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_778, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat46;
  u_xlat20 = (-(x_782) + 1.0f);
  let x_786 : f32 = u_xlat6.x;
  let x_787 : f32 = u_xlat20;
  let x_789 : f32 = u_xlat46;
  u_xlat46 = ((x_786 * x_787) + x_789);
  let x_791 : vec3<f32> = u_xlat2;
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_791), vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_798 : f32 = u_xlat6.x;
  let x_800 : f32 = u_xlat6.x;
  u_xlat6.x = (x_798 + x_800);
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = u_xlat6;
  let x_809 : vec3<f32> = u_xlat2;
  let x_811 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * -(vec3<f32>(x_805.x, x_805.x, x_805.x))) + -(x_809));
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_815.x, x_815.y, x_815.z), x_817);
  let x_819 : f32 = u_xlat48;
  u_xlat48 = clamp(x_819, 0.0f, 1.0f);
  let x_821 : f32 = u_xlat48;
  u_xlat48 = (-(x_821) + 1.0f);
  let x_824 : f32 = u_xlat48;
  let x_825 : f32 = u_xlat48;
  u_xlat48 = (x_824 * x_825);
  let x_827 : f32 = u_xlat48;
  let x_828 : f32 = u_xlat48;
  u_xlat48 = (x_827 * x_828);
  let x_831 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_831) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_839 : f32 = u_xlat0.x;
  let x_841 : f32 = u_xlat7.x;
  u_xlat0.x = (x_839 * x_841);
  let x_845 : f32 = u_xlat0.x;
  u_xlat0.x = (x_845 * 6.0f);
  let x_857 : vec4<f32> = u_xlat6;
  let x_860 : f32 = u_xlat0.x;
  let x_861 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_857.x, x_857.y, x_857.z), x_860);
  u_xlat7 = x_861;
  let x_863 : f32 = u_xlat7.w;
  u_xlat0.x = (x_863 + -1.0f);
  let x_871 : f32 = x_869.unity_SpecCube0_HDR.w;
  let x_873 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_871 * x_873) + 1.0f);
  let x_878 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_878, 0.0f);
  let x_882 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_882);
  let x_886 : f32 = u_xlat0.x;
  let x_888 : f32 = x_869.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_886 * x_888);
  let x_892 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_892);
  let x_896 : f32 = u_xlat0.x;
  let x_898 : f32 = x_869.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_896 * x_898);
  let x_901 : vec4<f32> = u_xlat7;
  let x_903 : vec3<f32> = u_xlat0;
  let x_905 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(x_903.x, x_903.x, x_903.x));
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : f32 = u_xlat28;
  let x_910 : f32 = u_xlat28;
  let x_914 : vec2<f32> = ((vec2<f32>(x_908, x_908) * vec2<f32>(x_910, x_910)) + vec2<f32>(-1.0f, 1.0f));
  let x_915 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_914.x, x_915.y, x_914.y);
  let x_918 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_918);
  let x_920 : vec4<f32> = u_xlat5;
  let x_923 : f32 = u_xlat44;
  let x_925 : vec3<f32> = (-(vec3<f32>(x_920.x, x_920.y, x_920.z)) + vec3<f32>(x_923, x_923, x_923));
  let x_926 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat48;
  let x_930 : vec4<f32> = u_xlat7;
  let x_933 : vec4<f32> = u_xlat5;
  let x_935 : vec3<f32> = ((vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z)) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : f32 = u_xlat28;
  let x_940 : vec4<f32> = u_xlat7;
  let x_942 : vec3<f32> = (vec3<f32>(x_938, x_938, x_938) * vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat6;
  let x_947 : vec4<f32> = u_xlat7;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat3;
  let x_954 : vec4<f32> = u_xlat4;
  let x_957 : vec4<f32> = u_xlat6;
  let x_959 : vec3<f32> = ((vec3<f32>(x_952.x, x_952.y, x_952.z) * vec3<f32>(x_954.x, x_954.y, x_954.z)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : f32 = u_xlat46;
  let x_964 : f32 = x_869.unity_LightData.z;
  u_xlat28 = (x_962 * x_964);
  let x_966 : vec4<f32> = u_xlat1;
  let x_969 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : f32 = u_xlat44;
  u_xlat44 = clamp(x_972, 0.0f, 1.0f);
  let x_974 : f32 = u_xlat28;
  let x_975 : f32 = u_xlat44;
  u_xlat28 = (x_974 * x_975);
  let x_977 : f32 = u_xlat28;
  let x_980 : vec4<f32> = x_111.x_MainLightColor;
  let x_982 : vec3<f32> = (vec3<f32>(x_977, x_977, x_977) * vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec3<f32> = u_xlat2;
  let x_987 : vec4<f32> = x_111.x_MainLightPosition;
  let x_989 : vec3<f32> = (x_985 + vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec4<f32> = u_xlat7;
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : f32 = u_xlat28;
  u_xlat28 = max(x_997, 1.17549435e-38f);
  let x_1000 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1000);
  let x_1002 : f32 = u_xlat28;
  let x_1004 : vec4<f32> = u_xlat7;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat1;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1014, 0.0f, 1.0f);
  let x_1017 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1022, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat28;
  let x_1025 : f32 = u_xlat28;
  u_xlat28 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat28;
  let x_1029 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1027 * x_1029) + 1.00001001358032226562f);
  let x_1033 : f32 = u_xlat44;
  let x_1034 : f32 = u_xlat44;
  u_xlat44 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat28;
  let x_1037 : f32 = u_xlat28;
  u_xlat28 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat44;
  u_xlat44 = max(x_1039, 0.10000000149011611938f);
  let x_1042 : f32 = u_xlat28;
  let x_1043 : f32 = u_xlat44;
  u_xlat28 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat45;
  let x_1046 : f32 = u_xlat28;
  u_xlat28 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat43;
  let x_1049 : f32 = u_xlat28;
  u_xlat28 = (x_1048 / x_1049);
  let x_1051 : vec4<f32> = u_xlat5;
  let x_1053 : f32 = u_xlat28;
  let x_1056 : vec4<f32> = u_xlat4;
  let x_1058 : vec3<f32> = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1053, x_1053, x_1053)) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat6;
  let x_1063 : vec4<f32> = u_xlat7;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1070 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1072 : f32 = x_869.unity_LightData.y;
  u_xlat28 = min(x_1070, x_1072);
  let x_1076 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1076));
  let x_1079 : f32 = u_xlat47;
  let x_1081 : f32 = x_732.x_AdditionalShadowFadeParams.x;
  let x_1084 : f32 = x_732.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1079 * x_1081) + x_1084);
  let x_1086 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1086, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1098 : u32 = u_xlatu_loop_1;
    let x_1099 : u32 = u_xlatu28;
    if ((x_1098 < x_1099)) {
    } else {
      break;
    }
    let x_1102 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1102 >> 2u);
    let x_1106 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1106 & 3u));
    let x_1109 : u32 = u_xlatu47;
    let x_1112 : vec4<f32> = x_869.unity_LightIndices[bitcast<i32>(x_1109)];
    let x_1122 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1127 : vec4<u32> = indexable[x_1122];
    u_xlat47 = dot(x_1112, bitcast<vec4<f32>>(x_1127));
    let x_1131 : f32 = u_xlat47;
    u_xlati47 = i32(x_1131);
    let x_1133 : vec3<f32> = vs_TEXCOORD7;
    let x_1144 : i32 = u_xlati47;
    let x_1146 : vec4<f32> = x_1143.x_AdditionalLightsPosition[x_1144];
    let x_1149 : i32 = u_xlati47;
    let x_1151 : vec4<f32> = x_1143.x_AdditionalLightsPosition[x_1149];
    let x_1153 : vec3<f32> = ((-(x_1133) * vec3<f32>(x_1146.w, x_1146.w, x_1146.w)) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
    let x_1154 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1156 : vec4<f32> = u_xlat8;
    let x_1158 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1156.x, x_1156.y, x_1156.z), vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
    let x_1161 : f32 = u_xlat48;
    u_xlat48 = max(x_1161, 0.00006103515625f);
    let x_1164 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1164);
    let x_1166 : f32 = u_xlat49;
    let x_1168 : vec4<f32> = u_xlat8;
    let x_1170 : vec3<f32> = (vec3<f32>(x_1166, x_1166, x_1166) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
    let x_1171 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
    let x_1174 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1174);
    let x_1176 : f32 = u_xlat48;
    let x_1177 : i32 = u_xlati47;
    let x_1179 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1177].x;
    u_xlat48 = (x_1176 * x_1179);
    let x_1181 : f32 = u_xlat48;
    let x_1183 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1181) * x_1183) + 1.0f);
    let x_1186 : f32 = u_xlat48;
    u_xlat48 = max(x_1186, 0.0f);
    let x_1188 : f32 = u_xlat48;
    let x_1189 : f32 = u_xlat48;
    u_xlat48 = (x_1188 * x_1189);
    let x_1191 : f32 = u_xlat48;
    let x_1192 : f32 = u_xlat50;
    u_xlat48 = (x_1191 * x_1192);
    let x_1194 : i32 = u_xlati47;
    let x_1196 : vec4<f32> = x_1143.x_AdditionalLightsSpotDir[x_1194];
    let x_1198 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1201 : f32 = u_xlat50;
    let x_1202 : i32 = u_xlati47;
    let x_1204 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1202].z;
    let x_1206 : i32 = u_xlati47;
    let x_1208 : f32 = x_1143.x_AdditionalLightsAttenuation[x_1206].w;
    u_xlat50 = ((x_1201 * x_1204) + x_1208);
    let x_1210 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1210, 0.0f, 1.0f);
    let x_1212 : f32 = u_xlat50;
    let x_1213 : f32 = u_xlat50;
    u_xlat50 = (x_1212 * x_1213);
    let x_1215 : f32 = u_xlat48;
    let x_1216 : f32 = u_xlat50;
    u_xlat48 = (x_1215 * x_1216);
    let x_1219 : i32 = u_xlati47;
    let x_1221 : f32 = x_732.x_AdditionalShadowParams[x_1219].w;
    u_xlati50 = i32(x_1221);
    let x_1224 : i32 = u_xlati50;
    u_xlatb51 = (x_1224 >= 0i);
    let x_1226 : bool = u_xlatb51;
    if (x_1226) {
      let x_1230 : i32 = u_xlati47;
      let x_1232 : f32 = x_732.x_AdditionalShadowParams[x_1230].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1232, x_1232, x_1232, x_1232))));
      let x_1236 : bool = u_xlatb51;
      if (x_1236) {
        let x_1241 : vec4<f32> = u_xlat9;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1247 : vec4<bool> = (abs(vec4<f32>(x_1241.z, x_1241.z, x_1241.y, x_1241.z)) >= abs(vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.x)));
        let x_1249 : vec3<bool> = vec3<bool>(x_1247.x, x_1247.y, x_1247.z);
        let x_1250 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1253 : bool = u_xlatb10.y;
        let x_1255 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1253 & x_1255);
        let x_1257 : vec4<f32> = u_xlat9;
        let x_1260 : vec4<bool> = (-(vec4<f32>(x_1257.z, x_1257.y, x_1257.z, x_1257.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1261 : vec3<bool> = vec3<bool>(x_1260.x, x_1260.y, x_1260.w);
        let x_1262 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1261.x, x_1261.y, x_1262.z, x_1261.z);
        let x_1265 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1265);
        let x_1270 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1270);
        let x_1276 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1276);
        let x_1280 : bool = u_xlatb10.z;
        if (x_1280) {
          let x_1285 : f32 = u_xlat10.y;
          x_1281 = x_1285;
        } else {
          let x_1287 : f32 = u_xlat52;
          x_1281 = x_1287;
        }
        let x_1288 : f32 = x_1281;
        u_xlat24 = x_1288;
        let x_1290 : bool = u_xlatb51;
        if (x_1290) {
          let x_1295 : f32 = u_xlat10.x;
          x_1291 = x_1295;
        } else {
          let x_1297 : f32 = u_xlat24;
          x_1291 = x_1297;
        }
        let x_1298 : f32 = x_1291;
        u_xlat51 = x_1298;
        let x_1299 : i32 = u_xlati47;
        let x_1301 : f32 = x_732.x_AdditionalShadowParams[x_1299].w;
        u_xlat10.x = trunc(x_1301);
        let x_1304 : f32 = u_xlat51;
        let x_1306 : f32 = u_xlat10.x;
        u_xlat51 = (x_1304 + x_1306);
        let x_1308 : f32 = u_xlat51;
        u_xlati50 = i32(x_1308);
      }
      let x_1310 : i32 = u_xlati50;
      u_xlati50 = (x_1310 << bitcast<u32>(2i));
      let x_1312 : vec3<f32> = vs_TEXCOORD7;
      let x_1314 : i32 = u_xlati50;
      let x_1317 : i32 = u_xlati50;
      let x_1321 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1314 + 1i) / 4i)][((x_1317 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1312.y, x_1312.y, x_1312.y, x_1312.y) * x_1321);
      let x_1323 : i32 = u_xlati50;
      let x_1325 : i32 = u_xlati50;
      let x_1328 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[(x_1323 / 4i)][(x_1325 % 4i)];
      let x_1329 : vec3<f32> = vs_TEXCOORD7;
      let x_1332 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1328 * vec4<f32>(x_1329.x, x_1329.x, x_1329.x, x_1329.x)) + x_1332);
      let x_1334 : i32 = u_xlati50;
      let x_1337 : i32 = u_xlati50;
      let x_1341 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1334 + 2i) / 4i)][((x_1337 + 2i) % 4i)];
      let x_1342 : vec3<f32> = vs_TEXCOORD7;
      let x_1345 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1341 * vec4<f32>(x_1342.z, x_1342.z, x_1342.z, x_1342.z)) + x_1345);
      let x_1347 : vec4<f32> = u_xlat10;
      let x_1348 : i32 = u_xlati50;
      let x_1351 : i32 = u_xlati50;
      let x_1355 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1348 + 3i) / 4i)][((x_1351 + 3i) % 4i)];
      u_xlat10 = (x_1347 + x_1355);
      let x_1357 : vec4<f32> = u_xlat10;
      let x_1359 : vec4<f32> = u_xlat10;
      let x_1361 : vec3<f32> = (vec3<f32>(x_1357.x, x_1357.y, x_1357.z) / vec3<f32>(x_1359.w, x_1359.w, x_1359.w));
      let x_1362 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
      let x_1365 : vec4<f32> = u_xlat10;
      let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
      let x_1368 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
      let x_1376 : vec3<f32> = txVec1;
      let x_1378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
      u_xlat50 = x_1378;
      let x_1379 : i32 = u_xlati47;
      let x_1381 : f32 = x_732.x_AdditionalShadowParams[x_1379].x;
      u_xlat51 = (1.0f + -(x_1381));
      let x_1384 : f32 = u_xlat50;
      let x_1385 : i32 = u_xlati47;
      let x_1387 : f32 = x_732.x_AdditionalShadowParams[x_1385].x;
      let x_1389 : f32 = u_xlat51;
      u_xlat50 = ((x_1384 * x_1387) + x_1389);
      let x_1392 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1392);
      let x_1395 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1395 >= 1.0f);
      let x_1398 : bool = u_xlatb51;
      let x_1400 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1398 | x_1400);
      let x_1402 : bool = u_xlatb51;
      let x_1403 : f32 = u_xlat50;
      u_xlat50 = select(x_1403, 1.0f, x_1402);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1406 : f32 = u_xlat50;
    u_xlat51 = (-(x_1406) + 1.0f);
    let x_1409 : f32 = u_xlat44;
    let x_1410 : f32 = u_xlat51;
    let x_1412 : f32 = u_xlat50;
    u_xlat50 = ((x_1409 * x_1410) + x_1412);
    let x_1414 : f32 = u_xlat48;
    let x_1415 : f32 = u_xlat50;
    u_xlat48 = (x_1414 * x_1415);
    let x_1417 : vec4<f32> = u_xlat1;
    let x_1419 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1417.x, x_1417.y, x_1417.z), vec3<f32>(x_1419.x, x_1419.y, x_1419.z));
    let x_1422 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1422, 0.0f, 1.0f);
    let x_1424 : f32 = u_xlat48;
    let x_1425 : f32 = u_xlat50;
    u_xlat48 = (x_1424 * x_1425);
    let x_1427 : f32 = u_xlat48;
    let x_1429 : i32 = u_xlati47;
    let x_1431 : vec4<f32> = x_1143.x_AdditionalLightsColor[x_1429];
    let x_1433 : vec3<f32> = (vec3<f32>(x_1427, x_1427, x_1427) * vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
    let x_1436 : vec4<f32> = u_xlat8;
    let x_1438 : f32 = u_xlat49;
    let x_1441 : vec3<f32> = u_xlat2;
    let x_1442 : vec3<f32> = ((vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * vec3<f32>(x_1438, x_1438, x_1438)) + x_1441);
    let x_1443 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
    let x_1445 : vec4<f32> = u_xlat8;
    let x_1447 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1445.x, x_1445.y, x_1445.z), vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : f32 = u_xlat47;
    u_xlat47 = max(x_1450, 1.17549435e-38f);
    let x_1452 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1452);
    let x_1454 : f32 = u_xlat47;
    let x_1456 : vec4<f32> = u_xlat8;
    let x_1458 : vec3<f32> = (vec3<f32>(x_1454, x_1454, x_1454) * vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
    let x_1461 : vec4<f32> = u_xlat1;
    let x_1463 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
    let x_1466 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1466, 0.0f, 1.0f);
    let x_1468 : vec4<f32> = u_xlat9;
    let x_1470 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1468.x, x_1468.y, x_1468.z), vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
    let x_1473 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1473, 0.0f, 1.0f);
    let x_1475 : f32 = u_xlat47;
    let x_1476 : f32 = u_xlat47;
    u_xlat47 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat47;
    let x_1480 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1478 * x_1480) + 1.00001001358032226562f);
    let x_1483 : f32 = u_xlat48;
    let x_1484 : f32 = u_xlat48;
    u_xlat48 = (x_1483 * x_1484);
    let x_1486 : f32 = u_xlat47;
    let x_1487 : f32 = u_xlat47;
    u_xlat47 = (x_1486 * x_1487);
    let x_1489 : f32 = u_xlat48;
    u_xlat48 = max(x_1489, 0.10000000149011611938f);
    let x_1491 : f32 = u_xlat47;
    let x_1492 : f32 = u_xlat48;
    u_xlat47 = (x_1491 * x_1492);
    let x_1494 : f32 = u_xlat45;
    let x_1495 : f32 = u_xlat47;
    u_xlat47 = (x_1494 * x_1495);
    let x_1497 : f32 = u_xlat43;
    let x_1498 : f32 = u_xlat47;
    u_xlat47 = (x_1497 / x_1498);
    let x_1500 : vec4<f32> = u_xlat5;
    let x_1502 : f32 = u_xlat47;
    let x_1505 : vec4<f32> = u_xlat4;
    let x_1507 : vec3<f32> = ((vec3<f32>(x_1500.x, x_1500.y, x_1500.z) * vec3<f32>(x_1502, x_1502, x_1502)) + vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
    let x_1510 : vec4<f32> = u_xlat8;
    let x_1512 : vec4<f32> = u_xlat10;
    let x_1515 : vec4<f32> = u_xlat7;
    let x_1517 : vec3<f32> = ((vec3<f32>(x_1510.x, x_1510.y, x_1510.z) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z)) + vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
    let x_1518 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1518.w);

    continuing {
      let x_1520 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1520 + bitcast<u32>(1i));
    }
  }
  let x_1522 : vec4<f32> = u_xlat3;
  let x_1524 : f32 = u_xlat14;
  let x_1527 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1522.x, x_1522.y, x_1522.z) * vec3<f32>(x_1524, x_1524, x_1524)) + vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
  let x_1530 : vec4<f32> = u_xlat7;
  let x_1532 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) + x_1532);
  let x_1536 : f32 = u_xlat42;
  let x_1538 : vec3<f32> = u_xlat0;
  let x_1539 : vec3<f32> = (vec3<f32>(x_1536, x_1536, x_1536) * x_1538);
  let x_1540 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
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


