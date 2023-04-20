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

@group(1) @binding(2) var<uniform> x_590 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_756 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1163 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1301 : f32;
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
  u_xlat1.w = 1.0f;
  let x_592 : vec4<f32> = x_590.unity_SHAr;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_592, x_593);
  let x_597 : vec4<f32> = x_590.unity_SHAg;
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_597, x_598);
  let x_602 : vec4<f32> = x_590.unity_SHAb;
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_602, x_603);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_612 : vec4<f32> = x_590.unity_SHBr;
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_612, x_613);
  let x_617 : vec4<f32> = x_590.unity_SHBg;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_590.unity_SHBb;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_622, x_623);
  let x_627 : f32 = u_xlat1.y;
  let x_629 : f32 = u_xlat1.y;
  u_xlat43 = (x_627 * x_629);
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat43;
  u_xlat43 = ((x_632 * x_634) + -(x_636));
  let x_641 : vec4<f32> = x_590.unity_SHC;
  let x_643 : f32 = u_xlat43;
  let x_646 : vec4<f32> = u_xlat6;
  let x_648 : vec3<f32> = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_643, x_643, x_643)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = max(vec3<f32>(x_658.x, x_658.y, x_658.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_665) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat28;
  let x_672 : f32 = u_xlat43;
  u_xlat44 = (x_671 + -(x_672));
  let x_675 : f32 = u_xlat43;
  let x_677 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat5;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat5;
  let x_696 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.x, x_689.x) * vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : f32 = u_xlat28;
  u_xlat0.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat0.x;
  let x_706 : f32 = u_xlat0.x;
  u_xlat28 = (x_704 * x_706);
  let x_708 : f32 = u_xlat28;
  u_xlat28 = max(x_708, 0.0078125f);
  let x_711 : f32 = u_xlat28;
  let x_712 : f32 = u_xlat28;
  u_xlat43 = (x_711 * x_712);
  let x_714 : f32 = u_xlat44;
  u_xlat44 = (x_714 + 1.0f);
  let x_716 : f32 = u_xlat44;
  u_xlat44 = clamp(x_716, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat28;
  u_xlat45 = ((x_719 * 4.0f) + 2.0f);
  let x_723 : f32 = u_xlat14;
  u_xlat14 = min(x_723, 1.0f);
  let x_728 : vec4<f32> = vs_TEXCOORD8;
  let x_729 : vec2<f32> = vec2<f32>(x_728.x, x_728.y);
  let x_732 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_729.x, x_729.y, x_732);
  let x_745 : vec3<f32> = txVec0;
  let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
  u_xlat46 = x_747;
  let x_758 : f32 = x_756.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_758) + 1.0f);
  let x_761 : f32 = u_xlat46;
  let x_763 : f32 = x_756.x_MainLightShadowParams.x;
  let x_765 : f32 = u_xlat47;
  u_xlat46 = ((x_761 * x_763) + x_765);
  let x_769 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_769);
  let x_773 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_773 >= 1.0f);
  let x_775 : bool = u_xlatb47;
  let x_776 : bool = u_xlatb6;
  u_xlatb47 = (x_775 | x_776);
  let x_778 : bool = u_xlatb47;
  let x_779 : f32 = u_xlat46;
  u_xlat46 = select(x_779, 1.0f, x_778);
  let x_781 : vec3<f32> = vs_TEXCOORD7;
  let x_783 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_785 : vec3<f32> = (x_781 + -(x_783));
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_788.x, x_788.y, x_788.z), vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : f32 = u_xlat47;
  let x_795 : f32 = x_756.x_MainLightShadowParams.z;
  let x_798 : f32 = x_756.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_793 * x_795) + x_798);
  let x_802 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_802, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat46;
  u_xlat20 = (-(x_806) + 1.0f);
  let x_810 : f32 = u_xlat6.x;
  let x_811 : f32 = u_xlat20;
  let x_813 : f32 = u_xlat46;
  u_xlat46 = ((x_810 * x_811) + x_813);
  let x_815 : vec3<f32> = u_xlat2;
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_815), vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_822 : f32 = u_xlat6.x;
  let x_824 : f32 = u_xlat6.x;
  u_xlat6.x = (x_822 + x_824);
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec4<f32> = u_xlat6;
  let x_833 : vec3<f32> = u_xlat2;
  let x_835 : vec3<f32> = ((vec3<f32>(x_827.x, x_827.y, x_827.z) * -(vec3<f32>(x_829.x, x_829.x, x_829.x))) + -(x_833));
  let x_836 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
  let x_843 : f32 = u_xlat48;
  u_xlat48 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat48;
  u_xlat48 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat48;
  let x_849 : f32 = u_xlat48;
  u_xlat48 = (x_848 * x_849);
  let x_851 : f32 = u_xlat48;
  let x_852 : f32 = u_xlat48;
  u_xlat48 = (x_851 * x_852);
  let x_855 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_855) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_863 : f32 = u_xlat0.x;
  let x_865 : f32 = u_xlat7.x;
  u_xlat0.x = (x_863 * x_865);
  let x_869 : f32 = u_xlat0.x;
  u_xlat0.x = (x_869 * 6.0f);
  let x_881 : vec4<f32> = u_xlat6;
  let x_884 : f32 = u_xlat0.x;
  let x_885 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_881.x, x_881.y, x_881.z), x_884);
  u_xlat7 = x_885;
  let x_887 : f32 = u_xlat7.w;
  u_xlat0.x = (x_887 + -1.0f);
  let x_891 : f32 = x_590.unity_SpecCube0_HDR.w;
  let x_893 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_891 * x_893) + 1.0f);
  let x_898 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_898, 0.0f);
  let x_902 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_902);
  let x_906 : f32 = u_xlat0.x;
  let x_908 : f32 = x_590.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_906 * x_908);
  let x_912 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_912);
  let x_916 : f32 = u_xlat0.x;
  let x_918 : f32 = x_590.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_916 * x_918);
  let x_921 : vec4<f32> = u_xlat7;
  let x_923 : vec3<f32> = u_xlat0;
  let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923.x, x_923.x, x_923.x));
  let x_926 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat28;
  let x_930 : f32 = u_xlat28;
  let x_934 : vec2<f32> = ((vec2<f32>(x_928, x_928) * vec2<f32>(x_930, x_930)) + vec2<f32>(-1.0f, 1.0f));
  let x_935 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_934.x, x_935.y, x_934.y);
  let x_938 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_938);
  let x_940 : vec4<f32> = u_xlat5;
  let x_943 : f32 = u_xlat44;
  let x_945 : vec3<f32> = (-(vec3<f32>(x_940.x, x_940.y, x_940.z)) + vec3<f32>(x_943, x_943, x_943));
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : f32 = u_xlat48;
  let x_950 : vec4<f32> = u_xlat7;
  let x_953 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948, x_948, x_948) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat28;
  let x_960 : vec4<f32> = u_xlat7;
  let x_962 : vec3<f32> = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat6;
  let x_967 : vec4<f32> = u_xlat7;
  let x_969 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat3;
  let x_974 : vec4<f32> = u_xlat4;
  let x_977 : vec4<f32> = u_xlat6;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.y, x_974.z)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : f32 = u_xlat46;
  let x_984 : f32 = x_590.unity_LightData.z;
  u_xlat28 = (x_982 * x_984);
  let x_986 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : f32 = u_xlat44;
  u_xlat44 = clamp(x_992, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat28;
  let x_995 : f32 = u_xlat44;
  u_xlat28 = (x_994 * x_995);
  let x_997 : f32 = u_xlat28;
  let x_1000 : vec4<f32> = x_111.x_MainLightColor;
  let x_1002 : vec3<f32> = (vec3<f32>(x_997, x_997, x_997) * vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec3<f32> = u_xlat2;
  let x_1007 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1009 : vec3<f32> = (x_1005 + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec4<f32> = u_xlat7;
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : f32 = u_xlat28;
  u_xlat28 = max(x_1017, 1.17549435e-38f);
  let x_1020 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1020);
  let x_1022 : f32 = u_xlat28;
  let x_1024 : vec4<f32> = u_xlat7;
  let x_1026 : vec3<f32> = (vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1034, 0.0f, 1.0f);
  let x_1037 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1042, 0.0f, 1.0f);
  let x_1044 : f32 = u_xlat28;
  let x_1045 : f32 = u_xlat28;
  u_xlat28 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat28;
  let x_1049 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1047 * x_1049) + 1.00001001358032226562f);
  let x_1053 : f32 = u_xlat44;
  let x_1054 : f32 = u_xlat44;
  u_xlat44 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat28;
  let x_1057 : f32 = u_xlat28;
  u_xlat28 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat44;
  u_xlat44 = max(x_1059, 0.10000000149011611938f);
  let x_1062 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat44;
  u_xlat28 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat45;
  let x_1066 : f32 = u_xlat28;
  u_xlat28 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat43;
  let x_1069 : f32 = u_xlat28;
  u_xlat28 = (x_1068 / x_1069);
  let x_1071 : vec4<f32> = u_xlat5;
  let x_1073 : f32 = u_xlat28;
  let x_1076 : vec4<f32> = u_xlat4;
  let x_1078 : vec3<f32> = ((vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1073, x_1073, x_1073)) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat6;
  let x_1083 : vec4<f32> = u_xlat7;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1090 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1092 : f32 = x_590.unity_LightData.y;
  u_xlat28 = min(x_1090, x_1092);
  let x_1096 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1096));
  let x_1099 : f32 = u_xlat47;
  let x_1101 : f32 = x_756.x_AdditionalShadowFadeParams.x;
  let x_1104 : f32 = x_756.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1099 * x_1101) + x_1104);
  let x_1106 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1106, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1118 : u32 = u_xlatu_loop_1;
    let x_1119 : u32 = u_xlatu28;
    if ((x_1118 < x_1119)) {
    } else {
      break;
    }
    let x_1122 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1122 >> 2u);
    let x_1126 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1126 & 3u));
    let x_1129 : u32 = u_xlatu47;
    let x_1132 : vec4<f32> = x_590.unity_LightIndices[bitcast<i32>(x_1129)];
    let x_1142 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1147 : vec4<u32> = indexable[x_1142];
    u_xlat47 = dot(x_1132, bitcast<vec4<f32>>(x_1147));
    let x_1151 : f32 = u_xlat47;
    u_xlati47 = i32(x_1151);
    let x_1153 : vec3<f32> = vs_TEXCOORD7;
    let x_1164 : i32 = u_xlati47;
    let x_1166 : vec4<f32> = x_1163.x_AdditionalLightsPosition[x_1164];
    let x_1169 : i32 = u_xlati47;
    let x_1171 : vec4<f32> = x_1163.x_AdditionalLightsPosition[x_1169];
    let x_1173 : vec3<f32> = ((-(x_1153) * vec3<f32>(x_1166.w, x_1166.w, x_1166.w)) + vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
    let x_1176 : vec4<f32> = u_xlat8;
    let x_1178 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1176.x, x_1176.y, x_1176.z), vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
    let x_1181 : f32 = u_xlat48;
    u_xlat48 = max(x_1181, 0.00006103515625f);
    let x_1184 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1184);
    let x_1186 : f32 = u_xlat49;
    let x_1188 : vec4<f32> = u_xlat8;
    let x_1190 : vec3<f32> = (vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
    let x_1191 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
    let x_1194 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1194);
    let x_1196 : f32 = u_xlat48;
    let x_1197 : i32 = u_xlati47;
    let x_1199 : f32 = x_1163.x_AdditionalLightsAttenuation[x_1197].x;
    u_xlat48 = (x_1196 * x_1199);
    let x_1201 : f32 = u_xlat48;
    let x_1203 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1201) * x_1203) + 1.0f);
    let x_1206 : f32 = u_xlat48;
    u_xlat48 = max(x_1206, 0.0f);
    let x_1208 : f32 = u_xlat48;
    let x_1209 : f32 = u_xlat48;
    u_xlat48 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat48;
    let x_1212 : f32 = u_xlat50;
    u_xlat48 = (x_1211 * x_1212);
    let x_1214 : i32 = u_xlati47;
    let x_1216 : vec4<f32> = x_1163.x_AdditionalLightsSpotDir[x_1214];
    let x_1218 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
    let x_1221 : f32 = u_xlat50;
    let x_1222 : i32 = u_xlati47;
    let x_1224 : f32 = x_1163.x_AdditionalLightsAttenuation[x_1222].z;
    let x_1226 : i32 = u_xlati47;
    let x_1228 : f32 = x_1163.x_AdditionalLightsAttenuation[x_1226].w;
    u_xlat50 = ((x_1221 * x_1224) + x_1228);
    let x_1230 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1230, 0.0f, 1.0f);
    let x_1232 : f32 = u_xlat50;
    let x_1233 : f32 = u_xlat50;
    u_xlat50 = (x_1232 * x_1233);
    let x_1235 : f32 = u_xlat48;
    let x_1236 : f32 = u_xlat50;
    u_xlat48 = (x_1235 * x_1236);
    let x_1239 : i32 = u_xlati47;
    let x_1241 : f32 = x_756.x_AdditionalShadowParams[x_1239].w;
    u_xlati50 = i32(x_1241);
    let x_1244 : i32 = u_xlati50;
    u_xlatb51 = (x_1244 >= 0i);
    let x_1246 : bool = u_xlatb51;
    if (x_1246) {
      let x_1250 : i32 = u_xlati47;
      let x_1252 : f32 = x_756.x_AdditionalShadowParams[x_1250].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1252, x_1252, x_1252, x_1252))));
      let x_1256 : bool = u_xlatb51;
      if (x_1256) {
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1264 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<bool> = (abs(vec4<f32>(x_1261.z, x_1261.z, x_1261.y, x_1261.z)) >= abs(vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.x)));
        let x_1269 : vec3<bool> = vec3<bool>(x_1267.x, x_1267.y, x_1267.z);
        let x_1270 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1273 : bool = u_xlatb10.y;
        let x_1275 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1273 & x_1275);
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1280 : vec4<bool> = (-(vec4<f32>(x_1277.z, x_1277.y, x_1277.z, x_1277.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1281 : vec3<bool> = vec3<bool>(x_1280.x, x_1280.y, x_1280.w);
        let x_1282 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1281.x, x_1281.y, x_1282.z, x_1281.z);
        let x_1285 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1285);
        let x_1290 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1290);
        let x_1296 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1296);
        let x_1300 : bool = u_xlatb10.z;
        if (x_1300) {
          let x_1305 : f32 = u_xlat10.y;
          x_1301 = x_1305;
        } else {
          let x_1307 : f32 = u_xlat52;
          x_1301 = x_1307;
        }
        let x_1308 : f32 = x_1301;
        u_xlat24 = x_1308;
        let x_1310 : bool = u_xlatb51;
        if (x_1310) {
          let x_1315 : f32 = u_xlat10.x;
          x_1311 = x_1315;
        } else {
          let x_1317 : f32 = u_xlat24;
          x_1311 = x_1317;
        }
        let x_1318 : f32 = x_1311;
        u_xlat51 = x_1318;
        let x_1319 : i32 = u_xlati47;
        let x_1321 : f32 = x_756.x_AdditionalShadowParams[x_1319].w;
        u_xlat10.x = trunc(x_1321);
        let x_1324 : f32 = u_xlat51;
        let x_1326 : f32 = u_xlat10.x;
        u_xlat51 = (x_1324 + x_1326);
        let x_1328 : f32 = u_xlat51;
        u_xlati50 = i32(x_1328);
      }
      let x_1330 : i32 = u_xlati50;
      u_xlati50 = (x_1330 << bitcast<u32>(2i));
      let x_1332 : vec3<f32> = vs_TEXCOORD7;
      let x_1334 : i32 = u_xlati50;
      let x_1337 : i32 = u_xlati50;
      let x_1341 : vec4<f32> = x_756.x_AdditionalLightsWorldToShadow[((x_1334 + 1i) / 4i)][((x_1337 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1332.y, x_1332.y, x_1332.y, x_1332.y) * x_1341);
      let x_1343 : i32 = u_xlati50;
      let x_1345 : i32 = u_xlati50;
      let x_1348 : vec4<f32> = x_756.x_AdditionalLightsWorldToShadow[(x_1343 / 4i)][(x_1345 % 4i)];
      let x_1349 : vec3<f32> = vs_TEXCOORD7;
      let x_1352 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1348 * vec4<f32>(x_1349.x, x_1349.x, x_1349.x, x_1349.x)) + x_1352);
      let x_1354 : i32 = u_xlati50;
      let x_1357 : i32 = u_xlati50;
      let x_1361 : vec4<f32> = x_756.x_AdditionalLightsWorldToShadow[((x_1354 + 2i) / 4i)][((x_1357 + 2i) % 4i)];
      let x_1362 : vec3<f32> = vs_TEXCOORD7;
      let x_1365 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1361 * vec4<f32>(x_1362.z, x_1362.z, x_1362.z, x_1362.z)) + x_1365);
      let x_1367 : vec4<f32> = u_xlat10;
      let x_1368 : i32 = u_xlati50;
      let x_1371 : i32 = u_xlati50;
      let x_1375 : vec4<f32> = x_756.x_AdditionalLightsWorldToShadow[((x_1368 + 3i) / 4i)][((x_1371 + 3i) % 4i)];
      u_xlat10 = (x_1367 + x_1375);
      let x_1377 : vec4<f32> = u_xlat10;
      let x_1379 : vec4<f32> = u_xlat10;
      let x_1381 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) / vec3<f32>(x_1379.w, x_1379.w, x_1379.w));
      let x_1382 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
      let x_1385 : vec4<f32> = u_xlat10;
      let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
      let x_1388 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
      let x_1396 : vec3<f32> = txVec1;
      let x_1398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1396.xy, x_1396.z);
      u_xlat50 = x_1398;
      let x_1399 : i32 = u_xlati47;
      let x_1401 : f32 = x_756.x_AdditionalShadowParams[x_1399].x;
      u_xlat51 = (1.0f + -(x_1401));
      let x_1404 : f32 = u_xlat50;
      let x_1405 : i32 = u_xlati47;
      let x_1407 : f32 = x_756.x_AdditionalShadowParams[x_1405].x;
      let x_1409 : f32 = u_xlat51;
      u_xlat50 = ((x_1404 * x_1407) + x_1409);
      let x_1412 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1412);
      let x_1415 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1415 >= 1.0f);
      let x_1418 : bool = u_xlatb51;
      let x_1420 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1418 | x_1420);
      let x_1422 : bool = u_xlatb51;
      let x_1423 : f32 = u_xlat50;
      u_xlat50 = select(x_1423, 1.0f, x_1422);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1426 : f32 = u_xlat50;
    u_xlat51 = (-(x_1426) + 1.0f);
    let x_1429 : f32 = u_xlat44;
    let x_1430 : f32 = u_xlat51;
    let x_1432 : f32 = u_xlat50;
    u_xlat50 = ((x_1429 * x_1430) + x_1432);
    let x_1434 : f32 = u_xlat48;
    let x_1435 : f32 = u_xlat50;
    u_xlat48 = (x_1434 * x_1435);
    let x_1437 : vec4<f32> = u_xlat1;
    let x_1439 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1437.x, x_1437.y, x_1437.z), vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1442 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1442, 0.0f, 1.0f);
    let x_1444 : f32 = u_xlat48;
    let x_1445 : f32 = u_xlat50;
    u_xlat48 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat48;
    let x_1449 : i32 = u_xlati47;
    let x_1451 : vec4<f32> = x_1163.x_AdditionalLightsColor[x_1449];
    let x_1453 : vec3<f32> = (vec3<f32>(x_1447, x_1447, x_1447) * vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
    let x_1454 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
    let x_1456 : vec4<f32> = u_xlat8;
    let x_1458 : f32 = u_xlat49;
    let x_1461 : vec3<f32> = u_xlat2;
    let x_1462 : vec3<f32> = ((vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(x_1458, x_1458, x_1458)) + x_1461);
    let x_1463 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
    let x_1465 : vec4<f32> = u_xlat8;
    let x_1467 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1465.x, x_1465.y, x_1465.z), vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : f32 = u_xlat47;
    u_xlat47 = max(x_1470, 1.17549435e-38f);
    let x_1472 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1472);
    let x_1474 : f32 = u_xlat47;
    let x_1476 : vec4<f32> = u_xlat8;
    let x_1478 : vec3<f32> = (vec3<f32>(x_1474, x_1474, x_1474) * vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
    let x_1479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    let x_1481 : vec4<f32> = u_xlat1;
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1486, 0.0f, 1.0f);
    let x_1488 : vec4<f32> = u_xlat9;
    let x_1490 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1488.x, x_1488.y, x_1488.z), vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
    let x_1493 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1493, 0.0f, 1.0f);
    let x_1495 : f32 = u_xlat47;
    let x_1496 : f32 = u_xlat47;
    u_xlat47 = (x_1495 * x_1496);
    let x_1498 : f32 = u_xlat47;
    let x_1500 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1498 * x_1500) + 1.00001001358032226562f);
    let x_1503 : f32 = u_xlat48;
    let x_1504 : f32 = u_xlat48;
    u_xlat48 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat47;
    let x_1507 : f32 = u_xlat47;
    u_xlat47 = (x_1506 * x_1507);
    let x_1509 : f32 = u_xlat48;
    u_xlat48 = max(x_1509, 0.10000000149011611938f);
    let x_1511 : f32 = u_xlat47;
    let x_1512 : f32 = u_xlat48;
    u_xlat47 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat45;
    let x_1515 : f32 = u_xlat47;
    u_xlat47 = (x_1514 * x_1515);
    let x_1517 : f32 = u_xlat43;
    let x_1518 : f32 = u_xlat47;
    u_xlat47 = (x_1517 / x_1518);
    let x_1520 : vec4<f32> = u_xlat5;
    let x_1522 : f32 = u_xlat47;
    let x_1525 : vec4<f32> = u_xlat4;
    let x_1527 : vec3<f32> = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.z) * vec3<f32>(x_1522, x_1522, x_1522)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1528 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    let x_1530 : vec4<f32> = u_xlat8;
    let x_1532 : vec4<f32> = u_xlat10;
    let x_1535 : vec4<f32> = u_xlat7;
    let x_1537 : vec3<f32> = ((vec3<f32>(x_1530.x, x_1530.y, x_1530.z) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z)) + vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
    let x_1538 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);

    continuing {
      let x_1540 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1540 + bitcast<u32>(1i));
    }
  }
  let x_1542 : vec4<f32> = u_xlat3;
  let x_1544 : f32 = u_xlat14;
  let x_1547 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1542.x, x_1542.y, x_1542.z) * vec3<f32>(x_1544, x_1544, x_1544)) + vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
  let x_1550 : vec4<f32> = u_xlat7;
  let x_1552 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1550.x, x_1550.y, x_1550.z) + x_1552);
  let x_1556 : f32 = u_xlat42;
  let x_1558 : vec3<f32> = u_xlat0;
  let x_1559 : vec3<f32> = (vec3<f32>(x_1556, x_1556, x_1556) * x_1558);
  let x_1560 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
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


