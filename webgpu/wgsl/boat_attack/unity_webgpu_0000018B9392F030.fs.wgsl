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

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(1) @binding(2) var<uniform> x_781 : UnityPerDraw;

var<private> u_xlat45 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1350 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var x_959 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1482 : f32;
  var x_1492 : f32;
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
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat44;
  u_xlat44 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat44;
  u_xlatu44 = u32(x_710);
  let x_714 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati44;
  let x_722 : i32 = u_xlati44;
  let x_726 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati44;
  let x_733 : i32 = u_xlati44;
  let x_736 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati44;
  let x_749 : i32 = u_xlati44;
  let x_753 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati44;
  let x_768 : i32 = u_xlati44;
  let x_772 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  u_xlat1.w = 1.0f;
  let x_783 : vec4<f32> = x_781.unity_SHAr;
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_783, x_784);
  let x_788 : vec4<f32> = x_781.unity_SHAg;
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_788, x_789);
  let x_793 : vec4<f32> = x_781.unity_SHAb;
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_793, x_794);
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_797.y, x_797.z, x_797.z, x_797.x) * vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.z));
  let x_803 : vec4<f32> = x_781.unity_SHBr;
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_803, x_804);
  let x_808 : vec4<f32> = x_781.unity_SHBg;
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_808, x_809);
  let x_813 : vec4<f32> = x_781.unity_SHBb;
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_813, x_814);
  let x_818 : f32 = u_xlat1.y;
  let x_820 : f32 = u_xlat1.y;
  u_xlat43 = (x_818 * x_820);
  let x_823 : f32 = u_xlat1.x;
  let x_825 : f32 = u_xlat1.x;
  let x_827 : f32 = u_xlat43;
  u_xlat43 = ((x_823 * x_825) + -(x_827));
  let x_832 : vec4<f32> = x_781.unity_SHC;
  let x_834 : f32 = u_xlat43;
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834, x_834, x_834)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat6;
  let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = max(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_855) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_860 : f32 = u_xlat43;
  u_xlat44 = (-(x_860) + 1.0f);
  let x_863 : f32 = u_xlat43;
  let x_865 : vec4<f32> = u_xlat5;
  let x_867 : vec3<f32> = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat5;
  let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_885 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : f32 = u_xlat28;
  u_xlat0.x = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  let x_894 : f32 = u_xlat0.x;
  u_xlat43 = (x_892 * x_894);
  let x_896 : f32 = u_xlat43;
  u_xlat43 = max(x_896, 0.0078125f);
  let x_900 : f32 = u_xlat43;
  let x_901 : f32 = u_xlat43;
  u_xlat45 = (x_900 * x_901);
  let x_903 : f32 = u_xlat28;
  let x_904 : f32 = u_xlat44;
  u_xlat28 = (x_903 + x_904);
  let x_906 : f32 = u_xlat28;
  u_xlat28 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat43;
  u_xlat44 = ((x_908 * 4.0f) + 2.0f);
  let x_911 : f32 = u_xlat14;
  u_xlat14 = min(x_911, 1.0f);
  let x_915 : vec4<f32> = u_xlat3;
  let x_916 : vec2<f32> = vec2<f32>(x_915.x, x_915.y);
  let x_918 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_916.x, x_916.y, x_918);
  let x_930 : vec3<f32> = txVec0;
  let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
  u_xlat3.x = x_932;
  let x_936 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_936) + 1.0f);
  let x_940 : f32 = u_xlat3.x;
  let x_942 : f32 = x_594.x_MainLightShadowParams.x;
  let x_944 : f32 = u_xlat17;
  u_xlat3.x = ((x_940 * x_942) + x_944);
  let x_949 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_949);
  let x_953 : f32 = u_xlat3.z;
  u_xlatb31 = (x_953 >= 1.0f);
  let x_955 : bool = u_xlatb31;
  let x_956 : bool = u_xlatb17;
  u_xlatb17 = (x_955 | x_956);
  let x_958 : bool = u_xlatb17;
  if (x_958) {
    x_959 = 1.0f;
  } else {
    let x_964 : f32 = u_xlat3.x;
    x_959 = x_964;
  }
  let x_965 : f32 = x_959;
  u_xlat3.x = x_965;
  let x_967 : vec3<f32> = vs_TEXCOORD7;
  let x_969 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_971 : vec3<f32> = (x_967 + -(x_969));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat7;
  let x_976 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_980 : f32 = u_xlat17;
  let x_982 : f32 = x_594.x_MainLightShadowParams.z;
  let x_985 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat31 = ((x_980 * x_982) + x_985);
  let x_987 : f32 = u_xlat31;
  u_xlat31 = clamp(x_987, 0.0f, 1.0f);
  let x_991 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_991) + 1.0f);
  let x_994 : f32 = u_xlat31;
  let x_995 : f32 = u_xlat46;
  let x_998 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_994 * x_995) + x_998);
  let x_1001 : vec3<f32> = u_xlat2;
  let x_1003 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1001), vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : f32 = u_xlat31;
  let x_1007 : f32 = u_xlat31;
  u_xlat31 = (x_1006 + x_1007);
  let x_1009 : vec4<f32> = u_xlat1;
  let x_1011 : f32 = u_xlat31;
  let x_1015 : vec3<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * -(vec3<f32>(x_1011, x_1011, x_1011))) + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1022);
  let x_1024 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1024, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat31;
  u_xlat31 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat31;
  let x_1030 : f32 = u_xlat31;
  u_xlat31 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat31;
  let x_1033 : f32 = u_xlat31;
  u_xlat31 = (x_1032 * x_1033);
  let x_1036 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1036) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1043 : f32 = u_xlat0.x;
  let x_1044 : f32 = u_xlat46;
  u_xlat0.x = (x_1043 * x_1044);
  let x_1048 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1048 * 6.0f);
  let x_1060 : vec4<f32> = u_xlat7;
  let x_1063 : f32 = u_xlat0.x;
  let x_1064 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1060.x, x_1060.y, x_1060.z), x_1063);
  u_xlat7 = x_1064;
  let x_1066 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1066 + -1.0f);
  let x_1070 : f32 = x_781.unity_SpecCube0_HDR.w;
  let x_1072 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1070 * x_1072) + 1.0f);
  let x_1077 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1077, 0.0f);
  let x_1081 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1081);
  let x_1085 : f32 = u_xlat0.x;
  let x_1087 : f32 = x_781.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1091);
  let x_1095 : f32 = u_xlat0.x;
  let x_1097 : f32 = x_781.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1095 * x_1097);
  let x_1100 : vec4<f32> = u_xlat7;
  let x_1102 : vec3<f32> = u_xlat0;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * vec3<f32>(x_1102.x, x_1102.x, x_1102.x));
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : f32 = u_xlat43;
  let x_1109 : f32 = u_xlat43;
  let x_1113 : vec2<f32> = ((vec2<f32>(x_1107, x_1107) * vec2<f32>(x_1109, x_1109)) + vec2<f32>(-1.0f, 1.0f));
  let x_1114 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
  let x_1117 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1117);
  let x_1121 : vec4<f32> = u_xlat5;
  let x_1124 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1121.x, x_1121.y, x_1121.z)) + vec3<f32>(x_1124, x_1124, x_1124));
  let x_1127 : f32 = u_xlat31;
  let x_1129 : vec3<f32> = u_xlat22;
  let x_1131 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1127, x_1127, x_1127) * x_1129) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec3<f32> = u_xlat0;
  let x_1136 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1134.x, x_1134.x, x_1134.x) * x_1136);
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1140 : vec3<f32> = u_xlat22;
  let x_1141 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * x_1140);
  let x_1142 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
  let x_1144 : vec4<f32> = u_xlat4;
  let x_1146 : vec4<f32> = u_xlat6;
  let x_1149 : vec4<f32> = u_xlat7;
  let x_1151 : vec3<f32> = ((vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * vec3<f32>(x_1146.x, x_1146.y, x_1146.z)) + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1155 : f32 = u_xlat3.x;
  let x_1157 : f32 = x_781.unity_LightData.z;
  u_xlat0.x = (x_1155 * x_1157);
  let x_1160 : vec4<f32> = u_xlat1;
  let x_1163 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1160.x, x_1160.y, x_1160.z), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1166, 0.0f, 1.0f);
  let x_1168 : f32 = u_xlat28;
  let x_1170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1168 * x_1170);
  let x_1173 : vec3<f32> = u_xlat0;
  let x_1176 : vec4<f32> = x_111.x_MainLightColor;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1173.x, x_1173.x, x_1173.x) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec3<f32> = u_xlat2;
  let x_1183 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat22 = (x_1181 + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec3<f32> = u_xlat22;
  let x_1187 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1186, x_1187);
  let x_1191 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1191, 1.17549435e-38f);
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1196);
  let x_1199 : vec3<f32> = u_xlat0;
  let x_1201 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1199.x, x_1199.x, x_1199.x) * x_1201);
  let x_1203 : vec4<f32> = u_xlat1;
  let x_1205 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), x_1205);
  let x_1209 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1209, 0.0f, 1.0f);
  let x_1213 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1215 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1213.x, x_1213.y, x_1213.z), x_1215);
  let x_1219 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1219, 0.0f, 1.0f);
  let x_1222 : vec3<f32> = u_xlat0;
  let x_1224 : vec3<f32> = u_xlat0;
  let x_1226 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.z) * vec2<f32>(x_1224.x, x_1224.z));
  let x_1227 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1226.x, x_1227.y, x_1226.y);
  let x_1230 : f32 = u_xlat0.x;
  let x_1232 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1230 * x_1232) + 1.00001001358032226562f);
  let x_1238 : f32 = u_xlat0.x;
  let x_1240 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1238 * x_1240);
  let x_1244 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1244, 0.10000000149011611938f);
  let x_1247 : f32 = u_xlat28;
  let x_1249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1247 * x_1249);
  let x_1252 : f32 = u_xlat44;
  let x_1254 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1252 * x_1254);
  let x_1257 : f32 = u_xlat45;
  let x_1259 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1257 / x_1259);
  let x_1262 : vec4<f32> = u_xlat5;
  let x_1264 : vec3<f32> = u_xlat0;
  let x_1267 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(x_1264.x, x_1264.x, x_1264.x)) + vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec4<f32> = u_xlat7;
  let x_1272 : vec3<f32> = u_xlat22;
  let x_1273 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * x_1272);
  let x_1274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1277 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1279 : f32 = x_781.unity_LightData.y;
  u_xlat0.x = min(x_1277, x_1279);
  let x_1284 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1284));
  let x_1287 : f32 = u_xlat17;
  let x_1289 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_1292 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1287 * x_1289) + x_1292);
  let x_1294 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1294, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1306 : u32 = u_xlatu_loop_1;
    let x_1307 : u32 = u_xlatu0;
    if ((x_1306 < x_1307)) {
    } else {
      break;
    }
    let x_1310 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1310 >> 2u);
    let x_1313 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1313 & 3u));
    let x_1316 : u32 = u_xlatu46;
    let x_1319 : vec4<f32> = x_781.unity_LightIndices[bitcast<i32>(x_1316)];
    let x_1329 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1334 : vec4<u32> = indexable[x_1329];
    u_xlat46 = dot(x_1319, bitcast<vec4<f32>>(x_1334));
    let x_1338 : f32 = u_xlat46;
    u_xlati46 = i32(x_1338);
    let x_1340 : vec3<f32> = vs_TEXCOORD7;
    let x_1351 : i32 = u_xlati46;
    let x_1353 : vec4<f32> = x_1350.x_AdditionalLightsPosition[x_1351];
    let x_1356 : i32 = u_xlati46;
    let x_1358 : vec4<f32> = x_1350.x_AdditionalLightsPosition[x_1356];
    u_xlat22 = ((-(x_1340) * vec3<f32>(x_1353.w, x_1353.w, x_1353.w)) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1362 : vec3<f32> = u_xlat22;
    let x_1363 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1362, x_1363);
    let x_1365 : f32 = u_xlat47;
    u_xlat47 = max(x_1365, 0.00006103515625f);
    let x_1368 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1368);
    let x_1370 : f32 = u_xlat48;
    let x_1372 : vec3<f32> = u_xlat22;
    let x_1373 : vec3<f32> = (vec3<f32>(x_1370, x_1370, x_1370) * x_1372);
    let x_1374 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
    let x_1377 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1377);
    let x_1379 : f32 = u_xlat47;
    let x_1380 : i32 = u_xlati46;
    let x_1382 : f32 = x_1350.x_AdditionalLightsAttenuation[x_1380].x;
    u_xlat47 = (x_1379 * x_1382);
    let x_1384 : f32 = u_xlat47;
    let x_1386 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1384) * x_1386) + 1.0f);
    let x_1389 : f32 = u_xlat47;
    u_xlat47 = max(x_1389, 0.0f);
    let x_1391 : f32 = u_xlat47;
    let x_1392 : f32 = u_xlat47;
    u_xlat47 = (x_1391 * x_1392);
    let x_1394 : f32 = u_xlat47;
    let x_1395 : f32 = u_xlat49;
    u_xlat47 = (x_1394 * x_1395);
    let x_1397 : i32 = u_xlati46;
    let x_1399 : vec4<f32> = x_1350.x_AdditionalLightsSpotDir[x_1397];
    let x_1401 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1404 : f32 = u_xlat49;
    let x_1405 : i32 = u_xlati46;
    let x_1407 : f32 = x_1350.x_AdditionalLightsAttenuation[x_1405].z;
    let x_1409 : i32 = u_xlati46;
    let x_1411 : f32 = x_1350.x_AdditionalLightsAttenuation[x_1409].w;
    u_xlat49 = ((x_1404 * x_1407) + x_1411);
    let x_1413 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1413, 0.0f, 1.0f);
    let x_1415 : f32 = u_xlat49;
    let x_1416 : f32 = u_xlat49;
    u_xlat49 = (x_1415 * x_1416);
    let x_1418 : f32 = u_xlat47;
    let x_1419 : f32 = u_xlat49;
    u_xlat47 = (x_1418 * x_1419);
    let x_1422 : i32 = u_xlati46;
    let x_1424 : f32 = x_594.x_AdditionalShadowParams[x_1422].w;
    u_xlati49 = i32(x_1424);
    let x_1427 : i32 = u_xlati49;
    u_xlatb51 = (x_1427 >= 0i);
    let x_1429 : bool = u_xlatb51;
    if (x_1429) {
      let x_1433 : i32 = u_xlati46;
      let x_1435 : f32 = x_594.x_AdditionalShadowParams[x_1433].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1435, x_1435, x_1435, x_1435))));
      let x_1439 : bool = u_xlatb51;
      if (x_1439) {
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1446 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<bool> = (abs(vec4<f32>(x_1443.z, x_1443.z, x_1443.y, x_1443.z)) >= abs(vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.x)));
        let x_1451 : vec3<bool> = vec3<bool>(x_1449.x, x_1449.y, x_1449.z);
        let x_1452 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
        let x_1455 : bool = u_xlatb10.y;
        let x_1457 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1455 & x_1457);
        let x_1459 : vec4<f32> = u_xlat9;
        let x_1462 : vec4<bool> = (-(vec4<f32>(x_1459.z, x_1459.y, x_1459.z, x_1459.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1463 : vec3<bool> = vec3<bool>(x_1462.x, x_1462.y, x_1462.w);
        let x_1464 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1463.x, x_1463.y, x_1464.z, x_1463.z);
        let x_1467 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1467);
        let x_1472 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1472);
        let x_1477 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1477);
        let x_1481 : bool = u_xlatb10.z;
        if (x_1481) {
          let x_1486 : f32 = u_xlat10.y;
          x_1482 = x_1486;
        } else {
          let x_1488 : f32 = u_xlat52;
          x_1482 = x_1488;
        }
        let x_1489 : f32 = x_1482;
        u_xlat24 = x_1489;
        let x_1491 : bool = u_xlatb51;
        if (x_1491) {
          let x_1496 : f32 = u_xlat10.x;
          x_1492 = x_1496;
        } else {
          let x_1498 : f32 = u_xlat24;
          x_1492 = x_1498;
        }
        let x_1499 : f32 = x_1492;
        u_xlat51 = x_1499;
        let x_1500 : i32 = u_xlati46;
        let x_1502 : f32 = x_594.x_AdditionalShadowParams[x_1500].w;
        u_xlat10.x = trunc(x_1502);
        let x_1505 : f32 = u_xlat51;
        let x_1507 : f32 = u_xlat10.x;
        u_xlat51 = (x_1505 + x_1507);
        let x_1509 : f32 = u_xlat51;
        u_xlati49 = i32(x_1509);
      }
      let x_1511 : i32 = u_xlati49;
      u_xlati49 = (x_1511 << bitcast<u32>(2i));
      let x_1513 : vec3<f32> = vs_TEXCOORD7;
      let x_1515 : i32 = u_xlati49;
      let x_1518 : i32 = u_xlati49;
      let x_1522 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1515 + 1i) / 4i)][((x_1518 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1513.y, x_1513.y, x_1513.y, x_1513.y) * x_1522);
      let x_1524 : i32 = u_xlati49;
      let x_1526 : i32 = u_xlati49;
      let x_1529 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_1524 / 4i)][(x_1526 % 4i)];
      let x_1530 : vec3<f32> = vs_TEXCOORD7;
      let x_1533 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1529 * vec4<f32>(x_1530.x, x_1530.x, x_1530.x, x_1530.x)) + x_1533);
      let x_1535 : i32 = u_xlati49;
      let x_1538 : i32 = u_xlati49;
      let x_1542 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1535 + 2i) / 4i)][((x_1538 + 2i) % 4i)];
      let x_1543 : vec3<f32> = vs_TEXCOORD7;
      let x_1546 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1542 * vec4<f32>(x_1543.z, x_1543.z, x_1543.z, x_1543.z)) + x_1546);
      let x_1548 : vec4<f32> = u_xlat10;
      let x_1549 : i32 = u_xlati49;
      let x_1552 : i32 = u_xlati49;
      let x_1556 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_1549 + 3i) / 4i)][((x_1552 + 3i) % 4i)];
      u_xlat10 = (x_1548 + x_1556);
      let x_1558 : vec4<f32> = u_xlat10;
      let x_1560 : vec4<f32> = u_xlat10;
      let x_1562 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.y, x_1558.z) / vec3<f32>(x_1560.w, x_1560.w, x_1560.w));
      let x_1563 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
      let x_1566 : vec4<f32> = u_xlat10;
      let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
      let x_1569 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
      let x_1577 : vec3<f32> = txVec1;
      let x_1579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
      u_xlat49 = x_1579;
      let x_1580 : i32 = u_xlati46;
      let x_1582 : f32 = x_594.x_AdditionalShadowParams[x_1580].x;
      u_xlat51 = (1.0f + -(x_1582));
      let x_1585 : f32 = u_xlat49;
      let x_1586 : i32 = u_xlati46;
      let x_1588 : f32 = x_594.x_AdditionalShadowParams[x_1586].x;
      let x_1590 : f32 = u_xlat51;
      u_xlat49 = ((x_1585 * x_1588) + x_1590);
      let x_1593 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1593);
      let x_1596 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1596 >= 1.0f);
      let x_1599 : bool = u_xlatb51;
      let x_1601 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1599 | x_1601);
      let x_1603 : bool = u_xlatb51;
      let x_1604 : f32 = u_xlat49;
      u_xlat49 = select(x_1604, 1.0f, x_1603);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1607 : f32 = u_xlat49;
    u_xlat51 = (-(x_1607) + 1.0f);
    let x_1610 : f32 = u_xlat28;
    let x_1611 : f32 = u_xlat51;
    let x_1613 : f32 = u_xlat49;
    u_xlat49 = ((x_1610 * x_1611) + x_1613);
    let x_1615 : f32 = u_xlat47;
    let x_1616 : f32 = u_xlat49;
    u_xlat47 = (x_1615 * x_1616);
    let x_1618 : vec4<f32> = u_xlat1;
    let x_1620 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1623 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1623, 0.0f, 1.0f);
    let x_1625 : f32 = u_xlat47;
    let x_1626 : f32 = u_xlat49;
    u_xlat47 = (x_1625 * x_1626);
    let x_1628 : f32 = u_xlat47;
    let x_1630 : i32 = u_xlati46;
    let x_1632 : vec4<f32> = x_1350.x_AdditionalLightsColor[x_1630];
    let x_1634 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
    let x_1637 : vec3<f32> = u_xlat22;
    let x_1638 : f32 = u_xlat48;
    let x_1641 : vec3<f32> = u_xlat2;
    u_xlat22 = ((x_1637 * vec3<f32>(x_1638, x_1638, x_1638)) + x_1641);
    let x_1643 : vec3<f32> = u_xlat22;
    let x_1644 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(x_1643, x_1644);
    let x_1646 : f32 = u_xlat46;
    u_xlat46 = max(x_1646, 1.17549435e-38f);
    let x_1648 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1648);
    let x_1650 : f32 = u_xlat46;
    let x_1652 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1650, x_1650, x_1650) * x_1652);
    let x_1654 : vec4<f32> = u_xlat1;
    let x_1656 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_1654.x, x_1654.y, x_1654.z), x_1656);
    let x_1658 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1658, 0.0f, 1.0f);
    let x_1660 : vec4<f32> = u_xlat9;
    let x_1662 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), x_1662);
    let x_1664 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1664, 0.0f, 1.0f);
    let x_1666 : f32 = u_xlat46;
    let x_1667 : f32 = u_xlat46;
    u_xlat46 = (x_1666 * x_1667);
    let x_1669 : f32 = u_xlat46;
    let x_1671 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1669 * x_1671) + 1.00001001358032226562f);
    let x_1674 : f32 = u_xlat47;
    let x_1675 : f32 = u_xlat47;
    u_xlat47 = (x_1674 * x_1675);
    let x_1677 : f32 = u_xlat46;
    let x_1678 : f32 = u_xlat46;
    u_xlat46 = (x_1677 * x_1678);
    let x_1680 : f32 = u_xlat47;
    u_xlat47 = max(x_1680, 0.10000000149011611938f);
    let x_1682 : f32 = u_xlat46;
    let x_1683 : f32 = u_xlat47;
    u_xlat46 = (x_1682 * x_1683);
    let x_1685 : f32 = u_xlat44;
    let x_1686 : f32 = u_xlat46;
    u_xlat46 = (x_1685 * x_1686);
    let x_1688 : f32 = u_xlat45;
    let x_1689 : f32 = u_xlat46;
    u_xlat46 = (x_1688 / x_1689);
    let x_1691 : vec4<f32> = u_xlat5;
    let x_1693 : f32 = u_xlat46;
    let x_1696 : vec4<f32> = u_xlat6;
    u_xlat22 = ((vec3<f32>(x_1691.x, x_1691.y, x_1691.z) * vec3<f32>(x_1693, x_1693, x_1693)) + vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
    let x_1699 : vec3<f32> = u_xlat22;
    let x_1700 : vec4<f32> = u_xlat10;
    let x_1703 : vec4<f32> = u_xlat3;
    let x_1705 : vec3<f32> = ((x_1699 * vec3<f32>(x_1700.x, x_1700.y, x_1700.z)) + vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
    let x_1706 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);

    continuing {
      let x_1708 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1708 + bitcast<u32>(1i));
    }
  }
  let x_1710 : vec4<f32> = u_xlat4;
  let x_1712 : f32 = u_xlat14;
  let x_1715 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1710.x, x_1710.y, x_1710.z) * vec3<f32>(x_1712, x_1712, x_1712)) + vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : vec4<f32> = u_xlat3;
  let x_1720 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1718.x, x_1718.y, x_1718.z) + x_1720);
  let x_1724 : f32 = u_xlat42;
  let x_1726 : vec3<f32> = u_xlat0;
  let x_1727 : vec3<f32> = (vec3<f32>(x_1724, x_1724, x_1724) * x_1726);
  let x_1728 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
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


