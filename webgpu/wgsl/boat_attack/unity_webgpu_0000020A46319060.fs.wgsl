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

@group(1) @binding(4) var<uniform> x_575 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1066 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1342 : AdditionalLights;

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

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_548 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_953 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1482 : f32;
  var x_1493 : f32;
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
  let x_567 : vec3<f32> = vs_TEXCOORD7;
  let x_577 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres0;
  let x_580 : vec3<f32> = (x_567 + -(vec3<f32>(x_577.x, x_577.y, x_577.z)));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres1;
  let x_588 : vec3<f32> = (x_583 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres2;
  let x_597 : vec3<f32> = (x_591 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres3;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat7;
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = x_575.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_634 < x_636);
  let x_639 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_639);
  let x_643 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_643);
  let x_647 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_655);
  let x_660 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_664);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.y, x_667.z) + vec3<f32>(x_669.y, x_669.z, x_669.w));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = max(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_678.x, x_677.x, x_677.y, x_677.z);
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_680, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_685 : f32 = u_xlat43;
  u_xlat43 = (-(x_685) + 4.0f);
  let x_690 : f32 = u_xlat43;
  u_xlatu43 = u32(x_690);
  let x_694 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_694) << bitcast<u32>(2i));
  let x_697 : vec3<f32> = vs_TEXCOORD7;
  let x_699 : i32 = u_xlati43;
  let x_702 : i32 = u_xlati43;
  let x_706 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_699 + 1i) / 4i)][((x_702 + 1i) % 4i)];
  let x_708 : vec3<f32> = (vec3<f32>(x_697.y, x_697.y, x_697.y) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : i32 = u_xlati43;
  let x_713 : i32 = u_xlati43;
  let x_716 : vec4<f32> = x_575.x_MainLightWorldToShadow[(x_711 / 4i)][(x_713 % 4i)];
  let x_718 : vec3<f32> = vs_TEXCOORD7;
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : i32 = u_xlati43;
  let x_729 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_726 + 2i) / 4i)][((x_729 + 2i) % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.z, x_735.z, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : i32 = u_xlati43;
  let x_748 : i32 = u_xlati43;
  let x_752 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
  let x_754 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = vs_TEXCOORD7.y;
  let x_761 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_759 * x_761);
  let x_764 : f32 = x_111.unity_MatrixV[0i].z;
  let x_766 : f32 = vs_TEXCOORD7.x;
  let x_768 : f32 = u_xlat43;
  u_xlat43 = ((x_764 * x_766) + x_768);
  let x_771 : f32 = x_111.unity_MatrixV[2i].z;
  let x_773 : f32 = vs_TEXCOORD7.z;
  let x_775 : f32 = u_xlat43;
  u_xlat43 = ((x_771 * x_773) + x_775);
  let x_777 : f32 = u_xlat43;
  let x_779 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_777 + x_779);
  let x_781 : f32 = u_xlat43;
  let x_784 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_781) + -(x_784));
  let x_787 : f32 = u_xlat43;
  u_xlat43 = max(x_787, 0.0f);
  let x_789 : f32 = u_xlat43;
  let x_791 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_789 * x_791);
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_111.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  u_xlat4 = x_802;
  let x_807 : vec4<f32> = vs_TEXCOORD0;
  let x_810 : f32 = x_111.x_GlobalMipBias.x;
  let x_811 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_807.z, x_807.w), x_810);
  let x_812 : vec3<f32> = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : vec3<f32> = u_xlat2;
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_823, vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat44;
  u_xlat44 = (x_827 + 0.5f);
  let x_829 : f32 = u_xlat44;
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : vec3<f32> = (vec3<f32>(x_829, x_829, x_829) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = u_xlat4.w;
  u_xlat44 = max(x_837, 0.00009999999747378752f);
  let x_840 : vec4<f32> = u_xlat4;
  let x_842 : f32 = u_xlat44;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842, x_842, x_842));
  let x_845 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_848) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_854 : f32 = u_xlat28;
  let x_855 : f32 = u_xlat44;
  u_xlat45 = (x_854 + -(x_855));
  let x_858 : f32 = u_xlat44;
  let x_860 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat5;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat0;
  let x_874 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_880 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat28;
  u_xlat0.x = (-(x_882) + 1.0f);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat0.x;
  u_xlat28 = (x_887 * x_889);
  let x_891 : f32 = u_xlat28;
  u_xlat28 = max(x_891, 0.0078125f);
  let x_894 : f32 = u_xlat28;
  let x_895 : f32 = u_xlat28;
  u_xlat44 = (x_894 * x_895);
  let x_897 : f32 = u_xlat45;
  u_xlat45 = (x_897 + 1.0f);
  let x_899 : f32 = u_xlat45;
  u_xlat45 = clamp(x_899, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat28;
  u_xlat46 = ((x_902 * 4.0f) + 2.0f);
  let x_905 : f32 = u_xlat14;
  u_xlat14 = min(x_905, 1.0f);
  let x_908 : vec4<f32> = u_xlat3;
  let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
  let x_911 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_909.x, x_909.y, x_911);
  let x_923 : vec3<f32> = txVec0;
  let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
  u_xlat3.x = x_925;
  let x_929 : f32 = x_575.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_929) + 1.0f);
  let x_933 : f32 = u_xlat3.x;
  let x_935 : f32 = x_575.x_MainLightShadowParams.x;
  let x_937 : f32 = u_xlat17;
  u_xlat3.x = ((x_933 * x_935) + x_937);
  let x_942 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_942);
  let x_946 : f32 = u_xlat3.z;
  u_xlatb31 = (x_946 >= 1.0f);
  let x_948 : bool = u_xlatb31;
  let x_949 : bool = u_xlatb17;
  u_xlatb17 = (x_948 | x_949);
  let x_951 : bool = u_xlatb17;
  if (x_951) {
    x_953 = 1.0f;
  } else {
    let x_958 : f32 = u_xlat3.x;
    x_953 = x_958;
  }
  let x_959 : f32 = x_953;
  u_xlat3.x = x_959;
  let x_961 : vec3<f32> = vs_TEXCOORD7;
  let x_963 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_965 : vec3<f32> = (x_961 + -(x_963));
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_974 : f32 = u_xlat17;
  let x_976 : f32 = x_575.x_MainLightShadowParams.z;
  let x_979 : f32 = x_575.x_MainLightShadowParams.w;
  u_xlat31 = ((x_974 * x_976) + x_979);
  let x_981 : f32 = u_xlat31;
  u_xlat31 = clamp(x_981, 0.0f, 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_985) + 1.0f);
  let x_988 : f32 = u_xlat31;
  let x_989 : f32 = u_xlat47;
  let x_992 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_988 * x_989) + x_992);
  let x_995 : vec4<f32> = u_xlat1;
  let x_998 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_995.x, x_995.y, x_995.z)), x_998);
  let x_1000 : f32 = u_xlat31;
  let x_1001 : f32 = u_xlat31;
  u_xlat31 = (x_1000 + x_1001);
  let x_1003 : vec3<f32> = u_xlat2;
  let x_1004 : f32 = u_xlat31;
  let x_1008 : vec4<f32> = u_xlat1;
  let x_1011 : vec3<f32> = ((x_1003 * -(vec3<f32>(x_1004, x_1004, x_1004))) + -(vec3<f32>(x_1008.x, x_1008.y, x_1008.z)));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec3<f32> = u_xlat2;
  let x_1015 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(x_1014, vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1018, 0.0f, 1.0f);
  let x_1020 : f32 = u_xlat31;
  u_xlat31 = (-(x_1020) + 1.0f);
  let x_1023 : f32 = u_xlat31;
  let x_1024 : f32 = u_xlat31;
  u_xlat31 = (x_1023 * x_1024);
  let x_1026 : f32 = u_xlat31;
  let x_1027 : f32 = u_xlat31;
  u_xlat31 = (x_1026 * x_1027);
  let x_1030 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1030) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1037 : f32 = u_xlat0.x;
  let x_1038 : f32 = u_xlat47;
  u_xlat0.x = (x_1037 * x_1038);
  let x_1042 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1042 * 6.0f);
  let x_1054 : vec4<f32> = u_xlat7;
  let x_1057 : f32 = u_xlat0.x;
  let x_1058 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1054.x, x_1054.y, x_1054.z), x_1057);
  u_xlat7 = x_1058;
  let x_1060 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1060 + -1.0f);
  let x_1068 : f32 = x_1066.unity_SpecCube0_HDR.w;
  let x_1070 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1068 * x_1070) + 1.0f);
  let x_1075 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1075, 0.0f);
  let x_1079 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1079);
  let x_1083 : f32 = u_xlat0.x;
  let x_1085 : f32 = x_1066.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1083 * x_1085);
  let x_1089 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1089);
  let x_1093 : f32 = u_xlat0.x;
  let x_1095 : f32 = x_1066.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1093 * x_1095);
  let x_1098 : vec4<f32> = u_xlat7;
  let x_1100 : vec3<f32> = u_xlat0;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.x, x_1100.x));
  let x_1103 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : f32 = u_xlat28;
  let x_1107 : f32 = u_xlat28;
  let x_1111 : vec2<f32> = ((vec2<f32>(x_1105, x_1105) * vec2<f32>(x_1107, x_1107)) + vec2<f32>(-1.0f, 1.0f));
  let x_1112 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1111.x, x_1112.y, x_1111.y);
  let x_1115 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1115);
  let x_1117 : vec4<f32> = u_xlat5;
  let x_1120 : f32 = u_xlat45;
  let x_1122 : vec3<f32> = (-(vec3<f32>(x_1117.x, x_1117.y, x_1117.z)) + vec3<f32>(x_1120, x_1120, x_1120));
  let x_1123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : f32 = u_xlat31;
  let x_1127 : vec4<f32> = u_xlat8;
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : vec3<f32> = ((vec3<f32>(x_1125, x_1125, x_1125) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z)) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : f32 = u_xlat28;
  let x_1137 : vec4<f32> = u_xlat8;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1144 : vec4<f32> = u_xlat8;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec4<f32> = u_xlat4;
  let x_1151 : vec4<f32> = u_xlat6;
  let x_1154 : vec4<f32> = u_xlat7;
  let x_1156 : vec3<f32> = ((vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(x_1151.x, x_1151.y, x_1151.z)) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1160 : f32 = u_xlat3.x;
  let x_1162 : f32 = x_1066.unity_LightData.z;
  u_xlat28 = (x_1160 * x_1162);
  let x_1164 : vec3<f32> = u_xlat2;
  let x_1166 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_1164, vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1171 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1171, 0.0f, 1.0f);
  let x_1174 : f32 = u_xlat28;
  let x_1176 : f32 = u_xlat3.x;
  u_xlat28 = (x_1174 * x_1176);
  let x_1178 : f32 = u_xlat28;
  let x_1181 : vec4<f32> = x_111.x_MainLightColor;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1183.x, x_1184.y, x_1183.y, x_1183.z);
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1189 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1191 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : vec4<f32> = u_xlat7;
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1194.x, x_1194.y, x_1194.z), vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat28;
  u_xlat28 = max(x_1199, 1.17549435e-38f);
  let x_1202 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1202);
  let x_1204 : f32 = u_xlat28;
  let x_1206 : vec4<f32> = u_xlat7;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1204, x_1204, x_1204) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : vec3<f32> = u_xlat2;
  let x_1212 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1211, vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1215, 0.0f, 1.0f);
  let x_1218 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1220 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1223, 0.0f, 1.0f);
  let x_1225 : f32 = u_xlat28;
  let x_1226 : f32 = u_xlat28;
  u_xlat28 = (x_1225 * x_1226);
  let x_1228 : f32 = u_xlat28;
  let x_1230 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1228 * x_1230) + 1.00001001358032226562f);
  let x_1234 : f32 = u_xlat47;
  let x_1235 : f32 = u_xlat47;
  u_xlat47 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat28;
  let x_1238 : f32 = u_xlat28;
  u_xlat28 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat47;
  u_xlat47 = max(x_1240, 0.10000000149011611938f);
  let x_1243 : f32 = u_xlat28;
  let x_1244 : f32 = u_xlat47;
  u_xlat28 = (x_1243 * x_1244);
  let x_1246 : f32 = u_xlat46;
  let x_1247 : f32 = u_xlat28;
  u_xlat28 = (x_1246 * x_1247);
  let x_1249 : f32 = u_xlat44;
  let x_1250 : f32 = u_xlat28;
  u_xlat28 = (x_1249 / x_1250);
  let x_1252 : vec4<f32> = u_xlat5;
  let x_1254 : f32 = u_xlat28;
  let x_1257 : vec4<f32> = u_xlat6;
  let x_1259 : vec3<f32> = ((vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254, x_1254, x_1254)) + vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : vec4<f32> = u_xlat3;
  let x_1264 : vec4<f32> = u_xlat7;
  let x_1266 : vec3<f32> = (vec3<f32>(x_1262.x, x_1262.z, x_1262.w) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1266.z);
  let x_1270 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1272 : f32 = x_1066.unity_LightData.y;
  u_xlat28 = min(x_1270, x_1272);
  let x_1275 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1275));
  let x_1278 : f32 = u_xlat17;
  let x_1280 : f32 = x_575.x_AdditionalShadowFadeParams.x;
  let x_1283 : f32 = x_575.x_AdditionalShadowFadeParams.y;
  u_xlat17 = ((x_1278 * x_1280) + x_1283);
  let x_1285 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1285, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1297 : u32 = u_xlatu_loop_1;
    let x_1298 : u32 = u_xlatu28;
    if ((x_1297 < x_1298)) {
    } else {
      break;
    }
    let x_1301 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1301 >> 2u);
    let x_1304 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1304 & 3u));
    let x_1308 : u32 = u_xlatu48;
    let x_1311 : vec4<f32> = x_1066.unity_LightIndices[bitcast<i32>(x_1308)];
    let x_1321 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1326 : vec4<u32> = indexable[x_1321];
    u_xlat48 = dot(x_1311, bitcast<vec4<f32>>(x_1326));
    let x_1330 : f32 = u_xlat48;
    u_xlati48 = i32(x_1330);
    let x_1332 : vec3<f32> = vs_TEXCOORD7;
    let x_1343 : i32 = u_xlati48;
    let x_1345 : vec4<f32> = x_1342.x_AdditionalLightsPosition[x_1343];
    let x_1348 : i32 = u_xlati48;
    let x_1350 : vec4<f32> = x_1342.x_AdditionalLightsPosition[x_1348];
    let x_1352 : vec3<f32> = ((-(x_1332) * vec3<f32>(x_1345.w, x_1345.w, x_1345.w)) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
    let x_1356 : vec4<f32> = u_xlat8;
    let x_1358 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1356.x, x_1356.y, x_1356.z), vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : f32 = u_xlat49;
    u_xlat49 = max(x_1361, 0.00006103515625f);
    let x_1364 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1364);
    let x_1366 : f32 = u_xlat50;
    let x_1368 : vec4<f32> = u_xlat8;
    let x_1370 : vec3<f32> = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1374 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1374);
    let x_1376 : f32 = u_xlat49;
    let x_1377 : i32 = u_xlati48;
    let x_1379 : f32 = x_1342.x_AdditionalLightsAttenuation[x_1377].x;
    u_xlat49 = (x_1376 * x_1379);
    let x_1381 : f32 = u_xlat49;
    let x_1383 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1381) * x_1383) + 1.0f);
    let x_1386 : f32 = u_xlat49;
    u_xlat49 = max(x_1386, 0.0f);
    let x_1388 : f32 = u_xlat49;
    let x_1389 : f32 = u_xlat49;
    u_xlat49 = (x_1388 * x_1389);
    let x_1391 : f32 = u_xlat49;
    let x_1392 : f32 = u_xlat51;
    u_xlat49 = (x_1391 * x_1392);
    let x_1394 : i32 = u_xlati48;
    let x_1396 : vec4<f32> = x_1342.x_AdditionalLightsSpotDir[x_1394];
    let x_1398 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
    let x_1401 : f32 = u_xlat51;
    let x_1402 : i32 = u_xlati48;
    let x_1404 : f32 = x_1342.x_AdditionalLightsAttenuation[x_1402].z;
    let x_1406 : i32 = u_xlati48;
    let x_1408 : f32 = x_1342.x_AdditionalLightsAttenuation[x_1406].w;
    u_xlat51 = ((x_1401 * x_1404) + x_1408);
    let x_1410 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1410, 0.0f, 1.0f);
    let x_1412 : f32 = u_xlat51;
    let x_1413 : f32 = u_xlat51;
    u_xlat51 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat49;
    let x_1416 : f32 = u_xlat51;
    u_xlat49 = (x_1415 * x_1416);
    let x_1419 : i32 = u_xlati48;
    let x_1421 : f32 = x_575.x_AdditionalShadowParams[x_1419].w;
    u_xlati51 = i32(x_1421);
    let x_1426 : i32 = u_xlati51;
    u_xlatb10.x = (x_1426 >= 0i);
    let x_1430 : bool = u_xlatb10.x;
    if (x_1430) {
      let x_1434 : i32 = u_xlati48;
      let x_1436 : f32 = x_575.x_AdditionalShadowParams[x_1434].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1436, x_1436, x_1436, x_1436))));
      let x_1442 : bool = u_xlatb10.x;
      if (x_1442) {
        let x_1445 : vec4<f32> = u_xlat9;
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<bool> = (abs(vec4<f32>(x_1445.z, x_1445.z, x_1445.y, x_1445.z)) >= abs(vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.x)));
        u_xlatb10 = vec3<bool>(x_1451.x, x_1451.y, x_1451.z);
        let x_1454 : bool = u_xlatb10.y;
        let x_1456 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1454 & x_1456);
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1463 : vec4<bool> = (-(vec4<f32>(x_1460.z, x_1460.y, x_1460.x, x_1460.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1463.x, x_1463.y, x_1463.z);
        let x_1467 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1467);
        let x_1472 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1472);
        let x_1476 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1476);
        let x_1481 : bool = u_xlatb10.z;
        if (x_1481) {
          let x_1486 : f32 = u_xlat24.z;
          x_1482 = x_1486;
        } else {
          let x_1489 : f32 = u_xlat11.x;
          x_1482 = x_1489;
        }
        let x_1490 : f32 = x_1482;
        u_xlat38 = x_1490;
        let x_1492 : bool = u_xlatb10.x;
        if (x_1492) {
          let x_1497 : f32 = u_xlat24.x;
          x_1493 = x_1497;
        } else {
          let x_1499 : f32 = u_xlat38;
          x_1493 = x_1499;
        }
        let x_1500 : f32 = x_1493;
        u_xlat10.x = x_1500;
        let x_1502 : i32 = u_xlati48;
        let x_1504 : f32 = x_575.x_AdditionalShadowParams[x_1502].w;
        u_xlat24.x = trunc(x_1504);
        let x_1508 : f32 = u_xlat10.x;
        let x_1510 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1508 + x_1510);
        let x_1514 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1514);
      }
      let x_1516 : i32 = u_xlati51;
      u_xlati51 = (x_1516 << bitcast<u32>(2i));
      let x_1518 : vec3<f32> = vs_TEXCOORD7;
      let x_1520 : i32 = u_xlati51;
      let x_1523 : i32 = u_xlati51;
      let x_1527 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1520 + 1i) / 4i)][((x_1523 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1518.y, x_1518.y, x_1518.y, x_1518.y) * x_1527);
      let x_1529 : i32 = u_xlati51;
      let x_1531 : i32 = u_xlati51;
      let x_1534 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[(x_1529 / 4i)][(x_1531 % 4i)];
      let x_1535 : vec3<f32> = vs_TEXCOORD7;
      let x_1538 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1534 * vec4<f32>(x_1535.x, x_1535.x, x_1535.x, x_1535.x)) + x_1538);
      let x_1540 : i32 = u_xlati51;
      let x_1543 : i32 = u_xlati51;
      let x_1547 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1540 + 2i) / 4i)][((x_1543 + 2i) % 4i)];
      let x_1548 : vec3<f32> = vs_TEXCOORD7;
      let x_1551 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1547 * vec4<f32>(x_1548.z, x_1548.z, x_1548.z, x_1548.z)) + x_1551);
      let x_1553 : vec4<f32> = u_xlat10;
      let x_1554 : i32 = u_xlati51;
      let x_1557 : i32 = u_xlati51;
      let x_1561 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1554 + 3i) / 4i)][((x_1557 + 3i) % 4i)];
      u_xlat10 = (x_1553 + x_1561);
      let x_1563 : vec4<f32> = u_xlat10;
      let x_1565 : vec4<f32> = u_xlat10;
      let x_1567 : vec3<f32> = (vec3<f32>(x_1563.x, x_1563.y, x_1563.z) / vec3<f32>(x_1565.w, x_1565.w, x_1565.w));
      let x_1568 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
      let x_1571 : vec4<f32> = u_xlat10;
      let x_1572 : vec2<f32> = vec2<f32>(x_1571.x, x_1571.y);
      let x_1574 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
      let x_1582 : vec3<f32> = txVec1;
      let x_1584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
      u_xlat51 = x_1584;
      let x_1585 : i32 = u_xlati48;
      let x_1587 : f32 = x_575.x_AdditionalShadowParams[x_1585].x;
      u_xlat10.x = (1.0f + -(x_1587));
      let x_1591 : f32 = u_xlat51;
      let x_1592 : i32 = u_xlati48;
      let x_1594 : f32 = x_575.x_AdditionalShadowParams[x_1592].x;
      let x_1597 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1591 * x_1594) + x_1597);
      let x_1600 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1600);
      let x_1605 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1605 >= 1.0f);
      let x_1607 : bool = u_xlatb24;
      let x_1609 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1607 | x_1609);
      let x_1613 : bool = u_xlatb10.x;
      let x_1614 : f32 = u_xlat51;
      u_xlat51 = select(x_1614, 1.0f, x_1613);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1617 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1617) + 1.0f);
    let x_1621 : f32 = u_xlat17;
    let x_1623 : f32 = u_xlat10.x;
    let x_1625 : f32 = u_xlat51;
    u_xlat51 = ((x_1621 * x_1623) + x_1625);
    let x_1627 : f32 = u_xlat49;
    let x_1628 : f32 = u_xlat51;
    u_xlat49 = (x_1627 * x_1628);
    let x_1630 : vec3<f32> = u_xlat2;
    let x_1631 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(x_1630, vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
    let x_1634 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1634, 0.0f, 1.0f);
    let x_1636 : f32 = u_xlat49;
    let x_1637 : f32 = u_xlat51;
    u_xlat49 = (x_1636 * x_1637);
    let x_1639 : f32 = u_xlat49;
    let x_1641 : i32 = u_xlati48;
    let x_1643 : vec4<f32> = x_1342.x_AdditionalLightsColor[x_1641];
    let x_1645 : vec3<f32> = (vec3<f32>(x_1639, x_1639, x_1639) * vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
    let x_1646 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
    let x_1648 : vec4<f32> = u_xlat8;
    let x_1650 : f32 = u_xlat50;
    let x_1653 : vec4<f32> = u_xlat1;
    let x_1655 : vec3<f32> = ((vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(x_1650, x_1650, x_1650)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
    let x_1658 : vec4<f32> = u_xlat8;
    let x_1660 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1658.x, x_1658.y, x_1658.z), vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
    let x_1663 : f32 = u_xlat48;
    u_xlat48 = max(x_1663, 1.17549435e-38f);
    let x_1665 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1665);
    let x_1667 : f32 = u_xlat48;
    let x_1669 : vec4<f32> = u_xlat8;
    let x_1671 : vec3<f32> = (vec3<f32>(x_1667, x_1667, x_1667) * vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
    let x_1672 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
    let x_1674 : vec3<f32> = u_xlat2;
    let x_1675 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(x_1674, vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
    let x_1678 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1678, 0.0f, 1.0f);
    let x_1680 : vec4<f32> = u_xlat9;
    let x_1682 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1680.x, x_1680.y, x_1680.z), vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1685, 0.0f, 1.0f);
    let x_1687 : f32 = u_xlat48;
    let x_1688 : f32 = u_xlat48;
    u_xlat48 = (x_1687 * x_1688);
    let x_1690 : f32 = u_xlat48;
    let x_1692 : f32 = u_xlat0.x;
    u_xlat48 = ((x_1690 * x_1692) + 1.00001001358032226562f);
    let x_1695 : f32 = u_xlat49;
    let x_1696 : f32 = u_xlat49;
    u_xlat49 = (x_1695 * x_1696);
    let x_1698 : f32 = u_xlat48;
    let x_1699 : f32 = u_xlat48;
    u_xlat48 = (x_1698 * x_1699);
    let x_1701 : f32 = u_xlat49;
    u_xlat49 = max(x_1701, 0.10000000149011611938f);
    let x_1703 : f32 = u_xlat48;
    let x_1704 : f32 = u_xlat49;
    u_xlat48 = (x_1703 * x_1704);
    let x_1706 : f32 = u_xlat46;
    let x_1707 : f32 = u_xlat48;
    u_xlat48 = (x_1706 * x_1707);
    let x_1709 : f32 = u_xlat44;
    let x_1710 : f32 = u_xlat48;
    u_xlat48 = (x_1709 / x_1710);
    let x_1712 : vec4<f32> = u_xlat5;
    let x_1714 : f32 = u_xlat48;
    let x_1717 : vec4<f32> = u_xlat6;
    let x_1719 : vec3<f32> = ((vec3<f32>(x_1712.x, x_1712.y, x_1712.z) * vec3<f32>(x_1714, x_1714, x_1714)) + vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
    let x_1720 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
    let x_1722 : vec4<f32> = u_xlat8;
    let x_1724 : vec4<f32> = u_xlat10;
    let x_1727 : vec4<f32> = u_xlat7;
    let x_1729 : vec3<f32> = ((vec3<f32>(x_1722.x, x_1722.y, x_1722.z) * vec3<f32>(x_1724.x, x_1724.y, x_1724.z)) + vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
    let x_1730 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);

    continuing {
      let x_1732 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1732 + bitcast<u32>(1i));
    }
  }
  let x_1734 : vec4<f32> = u_xlat4;
  let x_1736 : f32 = u_xlat14;
  let x_1739 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1734.x, x_1734.y, x_1734.z) * vec3<f32>(x_1736, x_1736, x_1736)) + vec3<f32>(x_1739.x, x_1739.z, x_1739.w));
  let x_1742 : vec4<f32> = u_xlat7;
  let x_1744 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1742.x, x_1742.y, x_1742.z) + x_1744);
  let x_1746 : f32 = u_xlat43;
  let x_1747 : f32 = u_xlat43;
  u_xlat1.x = (x_1746 * -(x_1747));
  let x_1752 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1752);
  let x_1755 : vec3<f32> = u_xlat0;
  let x_1756 : f32 = u_xlat42;
  let x_1760 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_1755 * vec3<f32>(x_1756, x_1756, x_1756)) + -(vec3<f32>(x_1760.x, x_1760.y, x_1760.z)));
  let x_1766 : vec4<f32> = u_xlat1;
  let x_1768 : vec3<f32> = u_xlat0;
  let x_1771 : vec4<f32> = x_111.unity_FogColor;
  let x_1773 : vec3<f32> = ((vec3<f32>(x_1766.x, x_1766.x, x_1766.x) * x_1768) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
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


