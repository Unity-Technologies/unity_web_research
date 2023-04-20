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

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_747 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat21 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_897 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1158 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_548 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1300 : f32;
  var x_1311 : f32;
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
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat15;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat43;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_569 : f32 = vs_TEXCOORD7.y;
  let x_571 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_569 * x_571);
  let x_574 : f32 = x_111.unity_MatrixV[0i].z;
  let x_576 : f32 = vs_TEXCOORD7.x;
  let x_578 : f32 = u_xlat43;
  u_xlat43 = ((x_574 * x_576) + x_578);
  let x_581 : f32 = x_111.unity_MatrixV[2i].z;
  let x_583 : f32 = vs_TEXCOORD7.z;
  let x_585 : f32 = u_xlat43;
  u_xlat43 = ((x_581 * x_583) + x_585);
  let x_587 : f32 = u_xlat43;
  let x_590 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_587 + x_590);
  let x_592 : f32 = u_xlat43;
  let x_595 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_592) + -(x_595));
  let x_598 : f32 = u_xlat43;
  u_xlat43 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat43;
  let x_602 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_600 * x_602);
  let x_609 : vec4<f32> = vs_TEXCOORD0;
  let x_612 : f32 = x_111.x_GlobalMipBias.x;
  let x_613 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_609.z, x_609.w), x_612);
  u_xlat3 = x_613;
  let x_618 : vec4<f32> = vs_TEXCOORD0;
  let x_621 : f32 = x_111.x_GlobalMipBias.x;
  let x_622 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_618.z, x_618.w), x_621);
  let x_623 : vec3<f32> = vec3<f32>(x_622.x, x_622.y, x_622.z);
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec3<f32> = u_xlat2;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_634, vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat44;
  u_xlat44 = (x_638 + 0.5f);
  let x_640 : f32 = u_xlat44;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = u_xlat3.w;
  u_xlat44 = max(x_648, 0.00009999999747378752f);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : f32 = u_xlat44;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) / vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_659) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_665 : f32 = u_xlat28;
  let x_666 : f32 = u_xlat44;
  u_xlat45 = (x_665 + -(x_666));
  let x_669 : f32 = u_xlat44;
  let x_671 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat5;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat28;
  u_xlat0.x = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat0.x;
  let x_700 : f32 = u_xlat0.x;
  u_xlat28 = (x_698 * x_700);
  let x_702 : f32 = u_xlat28;
  u_xlat28 = max(x_702, 0.0078125f);
  let x_705 : f32 = u_xlat28;
  let x_706 : f32 = u_xlat28;
  u_xlat44 = (x_705 * x_706);
  let x_708 : f32 = u_xlat45;
  u_xlat45 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat45;
  u_xlat45 = clamp(x_710, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat28;
  u_xlat46 = ((x_713 * 4.0f) + 2.0f);
  let x_717 : f32 = u_xlat14;
  u_xlat14 = min(x_717, 1.0f);
  let x_721 : vec4<f32> = vs_TEXCOORD8;
  let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
  let x_724 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_722.x, x_722.y, x_724);
  let x_737 : vec3<f32> = txVec0;
  let x_739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_737.xy, x_737.z);
  u_xlat47 = x_739;
  let x_749 : f32 = x_747.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_749) + 1.0f);
  let x_753 : f32 = u_xlat47;
  let x_755 : f32 = x_747.x_MainLightShadowParams.x;
  let x_758 : f32 = u_xlat6.x;
  u_xlat47 = ((x_753 * x_755) + x_758);
  let x_762 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_762);
  let x_766 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_766 >= 1.0f);
  let x_768 : bool = u_xlatb20;
  let x_769 : bool = u_xlatb6;
  u_xlatb6 = (x_768 | x_769);
  let x_771 : bool = u_xlatb6;
  let x_772 : f32 = u_xlat47;
  u_xlat47 = select(x_772, 1.0f, x_771);
  let x_774 : vec3<f32> = vs_TEXCOORD7;
  let x_776 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_778 : vec3<f32> = (x_774 + -(x_776));
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat6;
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_789 : f32 = u_xlat6.x;
  let x_791 : f32 = x_747.x_MainLightShadowParams.z;
  let x_794 : f32 = x_747.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_789 * x_791) + x_794);
  let x_798 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_798, 0.0f, 1.0f);
  let x_802 : f32 = u_xlat47;
  u_xlat34 = (-(x_802) + 1.0f);
  let x_806 : f32 = u_xlat20.x;
  let x_807 : f32 = u_xlat34;
  let x_809 : f32 = u_xlat47;
  u_xlat47 = ((x_806 * x_807) + x_809);
  let x_811 : vec4<f32> = u_xlat1;
  let x_814 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(-(vec3<f32>(x_811.x, x_811.y, x_811.z)), x_814);
  let x_818 : f32 = u_xlat20.x;
  let x_820 : f32 = u_xlat20.x;
  u_xlat20.x = (x_818 + x_820);
  let x_823 : vec3<f32> = u_xlat2;
  let x_824 : vec3<f32> = u_xlat20;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat20 = ((x_823 * -(vec3<f32>(x_824.x, x_824.x, x_824.x))) + -(vec3<f32>(x_828.x, x_828.y, x_828.z)));
  let x_832 : vec3<f32> = u_xlat2;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_832, vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_838 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_838, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat7.x;
  let x_849 : f32 = u_xlat7.x;
  u_xlat7.x = (x_847 * x_849);
  let x_853 : f32 = u_xlat7.x;
  let x_855 : f32 = u_xlat7.x;
  u_xlat7.x = (x_853 * x_855);
  let x_860 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_860) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_868 : f32 = u_xlat0.x;
  let x_870 : f32 = u_xlat21.x;
  u_xlat0.x = (x_868 * x_870);
  let x_874 : f32 = u_xlat0.x;
  u_xlat0.x = (x_874 * 6.0f);
  let x_886 : vec3<f32> = u_xlat20;
  let x_888 : f32 = u_xlat0.x;
  let x_889 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_886, x_888);
  u_xlat8 = x_889;
  let x_891 : f32 = u_xlat8.w;
  u_xlat0.x = (x_891 + -1.0f);
  let x_899 : f32 = x_897.unity_SpecCube0_HDR.w;
  let x_901 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_899 * x_901) + 1.0f);
  let x_906 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_906, 0.0f);
  let x_910 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_910);
  let x_914 : f32 = u_xlat0.x;
  let x_916 : f32 = x_897.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_914 * x_916);
  let x_920 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_920);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = x_897.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_924 * x_926);
  let x_929 : vec4<f32> = u_xlat8;
  let x_931 : vec3<f32> = u_xlat0;
  u_xlat20 = (vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(x_931.x, x_931.x, x_931.x));
  let x_934 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat28;
  let x_940 : vec2<f32> = ((vec2<f32>(x_934, x_934) * vec2<f32>(x_936, x_936)) + vec2<f32>(-1.0f, 1.0f));
  let x_941 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_940.x, x_941.y, x_940.y);
  let x_944 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_944);
  let x_946 : vec4<f32> = u_xlat5;
  let x_949 : f32 = u_xlat45;
  u_xlat21 = (-(vec3<f32>(x_946.x, x_946.y, x_946.z)) + vec3<f32>(x_949, x_949, x_949));
  let x_952 : vec4<f32> = u_xlat7;
  let x_954 : vec3<f32> = u_xlat21;
  let x_956 : vec4<f32> = u_xlat5;
  let x_958 : vec3<f32> = ((vec3<f32>(x_952.x, x_952.x, x_952.x) * x_954) + vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : f32 = u_xlat28;
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec3<f32> = (vec3<f32>(x_961, x_961, x_961) * vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec3<f32> = u_xlat20;
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_968 * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat3;
  let x_974 : vec4<f32> = u_xlat4;
  let x_977 : vec3<f32> = u_xlat20;
  let x_978 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.y, x_974.z)) + x_977);
  let x_979 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : f32 = u_xlat47;
  let x_983 : f32 = x_897.unity_LightData.z;
  u_xlat28 = (x_981 * x_983);
  let x_985 : vec3<f32> = u_xlat2;
  let x_987 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat45 = dot(x_985, vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat45;
  u_xlat45 = clamp(x_990, 0.0f, 1.0f);
  let x_992 : f32 = u_xlat28;
  let x_993 : f32 = u_xlat45;
  u_xlat28 = (x_992 * x_993);
  let x_995 : f32 = u_xlat28;
  let x_998 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1004 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : f32 = u_xlat28;
  u_xlat28 = max(x_1014, 1.17549435e-38f);
  let x_1017 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1017);
  let x_1019 : f32 = u_xlat28;
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019, x_1019, x_1019) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec3<f32> = u_xlat2;
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1026, vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1030, 0.0f, 1.0f);
  let x_1033 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1035 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1038, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat28;
  let x_1041 : f32 = u_xlat28;
  u_xlat28 = (x_1040 * x_1041);
  let x_1043 : f32 = u_xlat28;
  let x_1045 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1043 * x_1045) + 1.00001001358032226562f);
  let x_1049 : f32 = u_xlat45;
  let x_1050 : f32 = u_xlat45;
  u_xlat45 = (x_1049 * x_1050);
  let x_1052 : f32 = u_xlat28;
  let x_1053 : f32 = u_xlat28;
  u_xlat28 = (x_1052 * x_1053);
  let x_1055 : f32 = u_xlat45;
  u_xlat45 = max(x_1055, 0.10000000149011611938f);
  let x_1058 : f32 = u_xlat28;
  let x_1059 : f32 = u_xlat45;
  u_xlat28 = (x_1058 * x_1059);
  let x_1061 : f32 = u_xlat46;
  let x_1062 : f32 = u_xlat28;
  u_xlat28 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat44;
  let x_1065 : f32 = u_xlat28;
  u_xlat28 = (x_1064 / x_1065);
  let x_1067 : vec4<f32> = u_xlat5;
  let x_1069 : f32 = u_xlat28;
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1074 : vec3<f32> = ((vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * vec3<f32>(x_1069, x_1069, x_1069)) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec3<f32> = u_xlat20;
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1077 * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1082 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1084 : f32 = x_897.unity_LightData.y;
  u_xlat28 = min(x_1082, x_1084);
  let x_1088 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1088));
  let x_1092 : f32 = u_xlat6.x;
  let x_1094 : f32 = x_747.x_AdditionalShadowFadeParams.x;
  let x_1097 : f32 = x_747.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1092 * x_1094) + x_1097);
  let x_1099 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1099, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1111 : u32 = u_xlatu_loop_1;
    let x_1112 : u32 = u_xlatu28;
    if ((x_1111 < x_1112)) {
    } else {
      break;
    }
    let x_1115 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1115 >> 2u);
    let x_1119 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1119 & 3u));
    let x_1122 : u32 = u_xlatu6;
    let x_1125 : vec4<f32> = x_897.unity_LightIndices[bitcast<i32>(x_1122)];
    let x_1135 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1140 : vec4<u32> = indexable[x_1135];
    u_xlat6.x = dot(x_1125, bitcast<vec4<f32>>(x_1140));
    let x_1146 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1146);
    let x_1148 : vec3<f32> = vs_TEXCOORD7;
    let x_1159 : i32 = u_xlati6;
    let x_1161 : vec4<f32> = x_1158.x_AdditionalLightsPosition[x_1159];
    let x_1164 : i32 = u_xlati6;
    let x_1166 : vec4<f32> = x_1158.x_AdditionalLightsPosition[x_1164];
    let x_1168 : vec3<f32> = ((-(x_1148) * vec3<f32>(x_1161.w, x_1161.w, x_1161.w)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1172 : vec4<f32> = u_xlat8;
    let x_1174 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.z), vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
    let x_1177 : f32 = u_xlat49;
    u_xlat49 = max(x_1177, 0.00006103515625f);
    let x_1180 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1180);
    let x_1182 : f32 = u_xlat50;
    let x_1184 : vec4<f32> = u_xlat8;
    let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
    let x_1187 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
    let x_1190 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1190);
    let x_1192 : f32 = u_xlat49;
    let x_1193 : i32 = u_xlati6;
    let x_1195 : f32 = x_1158.x_AdditionalLightsAttenuation[x_1193].x;
    u_xlat49 = (x_1192 * x_1195);
    let x_1197 : f32 = u_xlat49;
    let x_1199 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1197) * x_1199) + 1.0f);
    let x_1202 : f32 = u_xlat49;
    u_xlat49 = max(x_1202, 0.0f);
    let x_1204 : f32 = u_xlat49;
    let x_1205 : f32 = u_xlat49;
    u_xlat49 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat49;
    let x_1208 : f32 = u_xlat51;
    u_xlat49 = (x_1207 * x_1208);
    let x_1210 : i32 = u_xlati6;
    let x_1212 : vec4<f32> = x_1158.x_AdditionalLightsSpotDir[x_1210];
    let x_1214 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
    let x_1217 : f32 = u_xlat51;
    let x_1218 : i32 = u_xlati6;
    let x_1220 : f32 = x_1158.x_AdditionalLightsAttenuation[x_1218].z;
    let x_1222 : i32 = u_xlati6;
    let x_1224 : f32 = x_1158.x_AdditionalLightsAttenuation[x_1222].w;
    u_xlat51 = ((x_1217 * x_1220) + x_1224);
    let x_1226 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1226, 0.0f, 1.0f);
    let x_1228 : f32 = u_xlat51;
    let x_1229 : f32 = u_xlat51;
    u_xlat51 = (x_1228 * x_1229);
    let x_1231 : f32 = u_xlat49;
    let x_1232 : f32 = u_xlat51;
    u_xlat49 = (x_1231 * x_1232);
    let x_1235 : i32 = u_xlati6;
    let x_1237 : f32 = x_747.x_AdditionalShadowParams[x_1235].w;
    u_xlati51 = i32(x_1237);
    let x_1242 : i32 = u_xlati51;
    u_xlatb10.x = (x_1242 >= 0i);
    let x_1246 : bool = u_xlatb10.x;
    if (x_1246) {
      let x_1250 : i32 = u_xlati6;
      let x_1252 : f32 = x_747.x_AdditionalShadowParams[x_1250].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1252, x_1252, x_1252, x_1252))));
      let x_1258 : bool = u_xlatb10.x;
      if (x_1258) {
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1264 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<bool> = (abs(vec4<f32>(x_1261.z, x_1261.z, x_1261.y, x_1261.z)) >= abs(vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.x)));
        u_xlatb10 = vec3<bool>(x_1267.x, x_1267.y, x_1267.z);
        let x_1270 : bool = u_xlatb10.y;
        let x_1272 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1270 & x_1272);
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<bool> = (-(vec4<f32>(x_1276.z, x_1276.y, x_1276.x, x_1276.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1279.x, x_1279.y, x_1279.z);
        let x_1283 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1283);
        let x_1288 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1288);
        let x_1293 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1293);
        let x_1298 : bool = u_xlatb10.z;
        if (x_1298) {
          let x_1304 : f32 = u_xlat24.z;
          x_1300 = x_1304;
        } else {
          let x_1307 : f32 = u_xlat11.x;
          x_1300 = x_1307;
        }
        let x_1308 : f32 = x_1300;
        u_xlat38 = x_1308;
        let x_1310 : bool = u_xlatb10.x;
        if (x_1310) {
          let x_1315 : f32 = u_xlat24.x;
          x_1311 = x_1315;
        } else {
          let x_1317 : f32 = u_xlat38;
          x_1311 = x_1317;
        }
        let x_1318 : f32 = x_1311;
        u_xlat10.x = x_1318;
        let x_1320 : i32 = u_xlati6;
        let x_1322 : f32 = x_747.x_AdditionalShadowParams[x_1320].w;
        u_xlat24.x = trunc(x_1322);
        let x_1326 : f32 = u_xlat10.x;
        let x_1328 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1326 + x_1328);
        let x_1332 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1332);
      }
      let x_1334 : i32 = u_xlati51;
      u_xlati51 = (x_1334 << bitcast<u32>(2i));
      let x_1336 : vec3<f32> = vs_TEXCOORD7;
      let x_1338 : i32 = u_xlati51;
      let x_1341 : i32 = u_xlati51;
      let x_1345 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1338 + 1i) / 4i)][((x_1341 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1336.y, x_1336.y, x_1336.y, x_1336.y) * x_1345);
      let x_1347 : i32 = u_xlati51;
      let x_1349 : i32 = u_xlati51;
      let x_1352 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[(x_1347 / 4i)][(x_1349 % 4i)];
      let x_1353 : vec3<f32> = vs_TEXCOORD7;
      let x_1356 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1352 * vec4<f32>(x_1353.x, x_1353.x, x_1353.x, x_1353.x)) + x_1356);
      let x_1358 : i32 = u_xlati51;
      let x_1361 : i32 = u_xlati51;
      let x_1365 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1358 + 2i) / 4i)][((x_1361 + 2i) % 4i)];
      let x_1366 : vec3<f32> = vs_TEXCOORD7;
      let x_1369 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1365 * vec4<f32>(x_1366.z, x_1366.z, x_1366.z, x_1366.z)) + x_1369);
      let x_1371 : vec4<f32> = u_xlat10;
      let x_1372 : i32 = u_xlati51;
      let x_1375 : i32 = u_xlati51;
      let x_1379 : vec4<f32> = x_747.x_AdditionalLightsWorldToShadow[((x_1372 + 3i) / 4i)][((x_1375 + 3i) % 4i)];
      u_xlat10 = (x_1371 + x_1379);
      let x_1381 : vec4<f32> = u_xlat10;
      let x_1383 : vec4<f32> = u_xlat10;
      let x_1385 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) / vec3<f32>(x_1383.w, x_1383.w, x_1383.w));
      let x_1386 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
      let x_1389 : vec4<f32> = u_xlat10;
      let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
      let x_1392 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
      let x_1400 : vec3<f32> = txVec1;
      let x_1402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
      u_xlat51 = x_1402;
      let x_1403 : i32 = u_xlati6;
      let x_1405 : f32 = x_747.x_AdditionalShadowParams[x_1403].x;
      u_xlat10.x = (1.0f + -(x_1405));
      let x_1409 : f32 = u_xlat51;
      let x_1410 : i32 = u_xlati6;
      let x_1412 : f32 = x_747.x_AdditionalShadowParams[x_1410].x;
      let x_1415 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1409 * x_1412) + x_1415);
      let x_1418 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1418);
      let x_1423 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1423 >= 1.0f);
      let x_1425 : bool = u_xlatb24;
      let x_1427 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1425 | x_1427);
      let x_1431 : bool = u_xlatb10.x;
      let x_1432 : f32 = u_xlat51;
      u_xlat51 = select(x_1432, 1.0f, x_1431);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1435 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1435) + 1.0f);
    let x_1439 : f32 = u_xlat45;
    let x_1441 : f32 = u_xlat10.x;
    let x_1443 : f32 = u_xlat51;
    u_xlat51 = ((x_1439 * x_1441) + x_1443);
    let x_1445 : f32 = u_xlat49;
    let x_1446 : f32 = u_xlat51;
    u_xlat49 = (x_1445 * x_1446);
    let x_1448 : vec3<f32> = u_xlat2;
    let x_1449 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(x_1448, vec3<f32>(x_1449.x, x_1449.y, x_1449.z));
    let x_1452 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1452, 0.0f, 1.0f);
    let x_1454 : f32 = u_xlat49;
    let x_1455 : f32 = u_xlat51;
    u_xlat49 = (x_1454 * x_1455);
    let x_1457 : f32 = u_xlat49;
    let x_1459 : i32 = u_xlati6;
    let x_1461 : vec4<f32> = x_1158.x_AdditionalLightsColor[x_1459];
    let x_1463 : vec3<f32> = (vec3<f32>(x_1457, x_1457, x_1457) * vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
    let x_1464 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
    let x_1466 : vec4<f32> = u_xlat8;
    let x_1468 : f32 = u_xlat50;
    let x_1471 : vec4<f32> = u_xlat1;
    let x_1473 : vec3<f32> = ((vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(x_1468, x_1468, x_1468)) + vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1474 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
    let x_1476 : vec4<f32> = u_xlat8;
    let x_1478 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1476.x, x_1476.y, x_1476.z), vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
    let x_1483 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1483, 1.17549435e-38f);
    let x_1487 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1487);
    let x_1490 : vec4<f32> = u_xlat6;
    let x_1492 : vec4<f32> = u_xlat8;
    let x_1494 : vec3<f32> = (vec3<f32>(x_1490.x, x_1490.x, x_1490.x) * vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    let x_1497 : vec3<f32> = u_xlat2;
    let x_1498 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1497, vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1503 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1503, 0.0f, 1.0f);
    let x_1506 : vec4<f32> = u_xlat9;
    let x_1508 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
    let x_1511 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1511, 0.0f, 1.0f);
    let x_1514 : f32 = u_xlat6.x;
    let x_1516 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1514 * x_1516);
    let x_1520 : f32 = u_xlat6.x;
    let x_1522 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_1520 * x_1522) + 1.00001001358032226562f);
    let x_1526 : f32 = u_xlat49;
    let x_1527 : f32 = u_xlat49;
    u_xlat49 = (x_1526 * x_1527);
    let x_1530 : f32 = u_xlat6.x;
    let x_1532 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1530 * x_1532);
    let x_1535 : f32 = u_xlat49;
    u_xlat49 = max(x_1535, 0.10000000149011611938f);
    let x_1538 : f32 = u_xlat6.x;
    let x_1539 : f32 = u_xlat49;
    u_xlat6.x = (x_1538 * x_1539);
    let x_1542 : f32 = u_xlat46;
    let x_1544 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1542 * x_1544);
    let x_1547 : f32 = u_xlat44;
    let x_1549 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1547 / x_1549);
    let x_1552 : vec4<f32> = u_xlat5;
    let x_1554 : vec4<f32> = u_xlat6;
    let x_1557 : vec4<f32> = u_xlat4;
    let x_1559 : vec3<f32> = ((vec3<f32>(x_1552.x, x_1552.y, x_1552.z) * vec3<f32>(x_1554.x, x_1554.x, x_1554.x)) + vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
    let x_1560 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
    let x_1562 : vec4<f32> = u_xlat8;
    let x_1564 : vec4<f32> = u_xlat10;
    let x_1567 : vec4<f32> = u_xlat7;
    let x_1569 : vec3<f32> = ((vec3<f32>(x_1562.x, x_1562.y, x_1562.z) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z)) + vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
    let x_1570 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);

    continuing {
      let x_1572 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1572 + bitcast<u32>(1i));
    }
  }
  let x_1574 : vec4<f32> = u_xlat3;
  let x_1576 : f32 = u_xlat14;
  let x_1579 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(x_1576, x_1576, x_1576)) + x_1579);
  let x_1581 : vec4<f32> = u_xlat7;
  let x_1583 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1581.x, x_1581.y, x_1581.z) + x_1583);
  let x_1585 : f32 = u_xlat43;
  let x_1586 : f32 = u_xlat43;
  u_xlat1.x = (x_1585 * -(x_1586));
  let x_1591 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1591);
  let x_1594 : vec3<f32> = u_xlat0;
  let x_1595 : f32 = u_xlat42;
  let x_1599 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_1594 * vec3<f32>(x_1595, x_1595, x_1595)) + -(vec3<f32>(x_1599.x, x_1599.y, x_1599.z)));
  let x_1605 : vec4<f32> = u_xlat1;
  let x_1607 : vec3<f32> = u_xlat0;
  let x_1610 : vec4<f32> = x_111.unity_FogColor;
  let x_1612 : vec3<f32> = ((vec3<f32>(x_1605.x, x_1605.x, x_1605.x) * x_1607) + vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
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


