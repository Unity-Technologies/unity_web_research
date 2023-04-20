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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_732 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_796 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_987 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1275 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var txVec0 : vec3<f32>;
  var x_881 : f32;
  var x_892 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1411 : f32;
  var x_1421 : f32;
  var txVec1 : vec3<f32>;
  var x_1842 : f32;
  var x_1855 : f32;
  var x_1903 : f32;
  var x_1914 : vec3<f32>;
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
  let x_798 : f32 = x_796.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_798 == -1.0f));
  let x_800 : bool = u_xlatb6;
  if (x_800) {
    let x_803 : vec3<f32> = vs_TEXCOORD7;
    let x_806 : vec4<f32> = x_796.x_MainLightWorldToLight[1i];
    let x_808 : vec2<f32> = (vec2<f32>(x_803.y, x_803.y) * vec2<f32>(x_806.x, x_806.y));
    let x_809 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
    let x_812 : vec4<f32> = x_796.x_MainLightWorldToLight[0i];
    let x_814 : vec3<f32> = vs_TEXCOORD7;
    let x_817 : vec4<f32> = u_xlat6;
    let x_819 : vec2<f32> = ((vec2<f32>(x_812.x, x_812.y) * vec2<f32>(x_814.x, x_814.x)) + vec2<f32>(x_817.x, x_817.y));
    let x_820 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
    let x_823 : vec4<f32> = x_796.x_MainLightWorldToLight[2i];
    let x_825 : vec3<f32> = vs_TEXCOORD7;
    let x_828 : vec4<f32> = u_xlat6;
    let x_830 : vec2<f32> = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_825.z, x_825.z)) + vec2<f32>(x_828.x, x_828.y));
    let x_831 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
    let x_833 : vec4<f32> = u_xlat6;
    let x_837 : vec4<f32> = x_796.x_MainLightWorldToLight[3i];
    let x_839 : vec2<f32> = (vec2<f32>(x_833.x, x_833.y) + vec2<f32>(x_837.x, x_837.y));
    let x_840 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
    let x_842 : vec4<f32> = u_xlat6;
    let x_845 : vec2<f32> = ((vec2<f32>(x_842.x, x_842.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_846 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
    let x_853 : vec4<f32> = u_xlat6;
    let x_856 : f32 = x_111.x_GlobalMipBias.x;
    let x_857 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_853.x, x_853.y), x_856);
    u_xlat6 = x_857;
    let x_862 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_864 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_866 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_868 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_869 : vec4<f32> = vec4<f32>(x_862, x_864, x_866, x_868);
    let x_876 : vec4<bool> = (vec4<f32>(x_869.x, x_869.y, x_869.z, x_869.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_876.x, x_876.y);
    let x_880 : bool = u_xlatb7.y;
    if (x_880) {
      let x_885 : f32 = u_xlat6.w;
      x_881 = x_885;
    } else {
      let x_888 : f32 = u_xlat6.x;
      x_881 = x_888;
    }
    let x_889 : f32 = x_881;
    u_xlat48 = x_889;
    let x_891 : bool = u_xlatb7.x;
    if (x_891) {
      let x_895 : vec4<f32> = u_xlat6;
      x_892 = vec3<f32>(x_895.x, x_895.y, x_895.z);
    } else {
      let x_898 : f32 = u_xlat48;
      x_892 = vec3<f32>(x_898, x_898, x_898);
    }
    let x_900 : vec3<f32> = x_892;
    let x_901 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_907 : vec4<f32> = u_xlat6;
  let x_910 : vec4<f32> = x_111.x_MainLightColor;
  let x_912 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) * vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec3<f32> = u_xlat2;
  let x_917 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(x_915), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : f32 = u_xlat48;
  let x_921 : f32 = u_xlat48;
  u_xlat48 = (x_920 + x_921);
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : f32 = u_xlat48;
  let x_929 : vec3<f32> = u_xlat2;
  let x_931 : vec3<f32> = ((vec3<f32>(x_923.x, x_923.y, x_923.z) * -(vec3<f32>(x_925, x_925, x_925))) + -(x_929));
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat1;
  let x_936 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), x_936);
  let x_938 : f32 = u_xlat48;
  u_xlat48 = clamp(x_938, 0.0f, 1.0f);
  let x_940 : f32 = u_xlat48;
  u_xlat48 = (-(x_940) + 1.0f);
  let x_943 : f32 = u_xlat48;
  let x_944 : f32 = u_xlat48;
  u_xlat48 = (x_943 * x_944);
  let x_946 : f32 = u_xlat48;
  let x_947 : f32 = u_xlat48;
  u_xlat48 = (x_946 * x_947);
  let x_951 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_951) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_958 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat49;
  u_xlat0.x = (x_958 * x_959);
  let x_963 : f32 = u_xlat0.x;
  u_xlat0.x = (x_963 * 6.0f);
  let x_975 : vec4<f32> = u_xlat7;
  let x_978 : f32 = u_xlat0.x;
  let x_979 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_975.x, x_975.y, x_975.z), x_978);
  u_xlat7 = x_979;
  let x_981 : f32 = u_xlat7.w;
  u_xlat0.x = (x_981 + -1.0f);
  let x_989 : f32 = x_987.unity_SpecCube0_HDR.w;
  let x_991 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_989 * x_991) + 1.0f);
  let x_996 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_996, 0.0f);
  let x_1000 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1000);
  let x_1004 : f32 = u_xlat0.x;
  let x_1006 : f32 = x_987.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1004 * x_1006);
  let x_1010 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1010);
  let x_1014 : f32 = u_xlat0.x;
  let x_1016 : f32 = x_987.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1014 * x_1016);
  let x_1019 : vec4<f32> = u_xlat7;
  let x_1021 : vec3<f32> = u_xlat0;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021.x, x_1021.x, x_1021.x));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : f32 = u_xlat28;
  let x_1028 : f32 = u_xlat28;
  let x_1032 : vec2<f32> = ((vec2<f32>(x_1026, x_1026) * vec2<f32>(x_1028, x_1028)) + vec2<f32>(-1.0f, 1.0f));
  let x_1033 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1032.x, x_1033.y, x_1032.y);
  let x_1036 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1036);
  let x_1038 : vec4<f32> = u_xlat5;
  let x_1041 : f32 = u_xlat44;
  let x_1043 : vec3<f32> = (-(vec3<f32>(x_1038.x, x_1038.y, x_1038.z)) + vec3<f32>(x_1041, x_1041, x_1041));
  let x_1044 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : f32 = u_xlat48;
  let x_1048 : vec4<f32> = u_xlat8;
  let x_1051 : vec4<f32> = u_xlat5;
  let x_1053 : vec3<f32> = ((vec3<f32>(x_1046, x_1046, x_1046) * vec3<f32>(x_1048.x, x_1048.y, x_1048.z)) + vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : f32 = u_xlat28;
  let x_1058 : vec4<f32> = u_xlat8;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1056, x_1056, x_1056) * vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat7;
  let x_1065 : vec4<f32> = u_xlat8;
  let x_1067 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat3;
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1077 : vec3<f32> = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : f32 = u_xlat46;
  let x_1082 : f32 = x_987.unity_LightData.z;
  u_xlat28 = (x_1080 * x_1082);
  let x_1084 : vec4<f32> = u_xlat1;
  let x_1087 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1090, 0.0f, 1.0f);
  let x_1092 : f32 = u_xlat28;
  let x_1093 : f32 = u_xlat44;
  u_xlat28 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat28;
  let x_1097 : vec4<f32> = u_xlat6;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095, x_1095, x_1095) * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec3<f32> = u_xlat2;
  let x_1104 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1106 : vec3<f32> = (x_1102 + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat7;
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1109.x, x_1109.y, x_1109.z), vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : f32 = u_xlat28;
  u_xlat28 = max(x_1114, 1.17549435e-38f);
  let x_1117 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1117);
  let x_1119 : f32 = u_xlat28;
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1119, x_1119, x_1119) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec4<f32> = u_xlat1;
  let x_1128 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat28;
  let x_1142 : f32 = u_xlat28;
  u_xlat28 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat28;
  let x_1146 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1144 * x_1146) + 1.00001001358032226562f);
  let x_1150 : f32 = u_xlat44;
  let x_1151 : f32 = u_xlat44;
  u_xlat44 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat28;
  let x_1154 : f32 = u_xlat28;
  u_xlat28 = (x_1153 * x_1154);
  let x_1156 : f32 = u_xlat44;
  u_xlat44 = max(x_1156, 0.10000000149011611938f);
  let x_1159 : f32 = u_xlat28;
  let x_1160 : f32 = u_xlat44;
  u_xlat28 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat45;
  let x_1163 : f32 = u_xlat28;
  u_xlat28 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat43;
  let x_1166 : f32 = u_xlat28;
  u_xlat28 = (x_1165 / x_1166);
  let x_1168 : vec4<f32> = u_xlat5;
  let x_1170 : f32 = u_xlat28;
  let x_1173 : vec4<f32> = u_xlat4;
  let x_1175 : vec3<f32> = ((vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1170, x_1170, x_1170)) + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat6;
  let x_1180 : vec4<f32> = u_xlat7;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1186 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1188 : f32 = x_987.unity_LightData.y;
  u_xlat28 = min(x_1186, x_1188);
  let x_1192 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1192));
  let x_1195 : f32 = u_xlat47;
  let x_1197 : f32 = x_732.x_AdditionalShadowFadeParams.x;
  let x_1200 : f32 = x_732.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1195 * x_1197) + x_1200);
  let x_1202 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1202, 0.0f, 1.0f);
  let x_1205 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1207 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1209 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1211 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1212 : vec4<f32> = vec4<f32>(x_1205, x_1207, x_1209, x_1211);
  let x_1218 : vec4<bool> = (vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1218.x, x_1218.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1230 : u32 = u_xlatu_loop_1;
    let x_1231 : u32 = u_xlatu28;
    if ((x_1230 < x_1231)) {
    } else {
      break;
    }
    let x_1234 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1234 >> 2u);
    let x_1238 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1238 & 3u));
    let x_1241 : u32 = u_xlatu47;
    let x_1244 : vec4<f32> = x_987.unity_LightIndices[bitcast<i32>(x_1241)];
    let x_1254 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1259 : vec4<u32> = indexable[x_1254];
    u_xlat47 = dot(x_1244, bitcast<vec4<f32>>(x_1259));
    let x_1263 : f32 = u_xlat47;
    u_xlati47 = i32(x_1263);
    let x_1265 : vec3<f32> = vs_TEXCOORD7;
    let x_1276 : i32 = u_xlati47;
    let x_1278 : vec4<f32> = x_1275.x_AdditionalLightsPosition[x_1276];
    let x_1281 : i32 = u_xlati47;
    let x_1283 : vec4<f32> = x_1275.x_AdditionalLightsPosition[x_1281];
    let x_1285 : vec3<f32> = ((-(x_1265) * vec3<f32>(x_1278.w, x_1278.w, x_1278.w)) + vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
    let x_1286 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
    let x_1288 : vec4<f32> = u_xlat9;
    let x_1290 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
    let x_1293 : f32 = u_xlat48;
    u_xlat48 = max(x_1293, 0.00006103515625f);
    let x_1296 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1296);
    let x_1298 : f32 = u_xlat35;
    let x_1300 : vec4<f32> = u_xlat9;
    let x_1302 : vec3<f32> = (vec3<f32>(x_1298, x_1298, x_1298) * vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
    let x_1305 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1305);
    let x_1307 : f32 = u_xlat48;
    let x_1308 : i32 = u_xlati47;
    let x_1310 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1308].x;
    u_xlat48 = (x_1307 * x_1310);
    let x_1312 : f32 = u_xlat48;
    let x_1314 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1312) * x_1314) + 1.0f);
    let x_1317 : f32 = u_xlat48;
    u_xlat48 = max(x_1317, 0.0f);
    let x_1319 : f32 = u_xlat48;
    let x_1320 : f32 = u_xlat48;
    u_xlat48 = (x_1319 * x_1320);
    let x_1322 : f32 = u_xlat48;
    let x_1323 : f32 = u_xlat49;
    u_xlat48 = (x_1322 * x_1323);
    let x_1325 : i32 = u_xlati47;
    let x_1327 : vec4<f32> = x_1275.x_AdditionalLightsSpotDir[x_1325];
    let x_1329 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1327.x, x_1327.y, x_1327.z), vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
    let x_1332 : f32 = u_xlat49;
    let x_1333 : i32 = u_xlati47;
    let x_1335 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1333].z;
    let x_1337 : i32 = u_xlati47;
    let x_1339 : f32 = x_1275.x_AdditionalLightsAttenuation[x_1337].w;
    u_xlat49 = ((x_1332 * x_1335) + x_1339);
    let x_1341 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1341, 0.0f, 1.0f);
    let x_1343 : f32 = u_xlat49;
    let x_1344 : f32 = u_xlat49;
    u_xlat49 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat48;
    let x_1347 : f32 = u_xlat49;
    u_xlat48 = (x_1346 * x_1347);
    let x_1350 : i32 = u_xlati47;
    let x_1352 : f32 = x_732.x_AdditionalShadowParams[x_1350].w;
    u_xlati49 = i32(x_1352);
    let x_1355 : i32 = u_xlati49;
    u_xlatb50 = (x_1355 >= 0i);
    let x_1357 : bool = u_xlatb50;
    if (x_1357) {
      let x_1361 : i32 = u_xlati47;
      let x_1363 : f32 = x_732.x_AdditionalShadowParams[x_1361].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1363, x_1363, x_1363, x_1363))));
      let x_1367 : bool = u_xlatb50;
      if (x_1367) {
        let x_1372 : vec4<f32> = u_xlat10;
        let x_1375 : vec4<f32> = u_xlat10;
        let x_1378 : vec4<bool> = (abs(vec4<f32>(x_1372.z, x_1372.z, x_1372.y, x_1372.z)) >= abs(vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.x)));
        let x_1380 : vec3<bool> = vec3<bool>(x_1378.x, x_1378.y, x_1378.z);
        let x_1381 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
        let x_1384 : bool = u_xlatb11.y;
        let x_1386 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1384 & x_1386);
        let x_1388 : vec4<f32> = u_xlat10;
        let x_1391 : vec4<bool> = (-(vec4<f32>(x_1388.z, x_1388.y, x_1388.z, x_1388.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1392 : vec3<bool> = vec3<bool>(x_1391.x, x_1391.y, x_1391.w);
        let x_1393 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1392.x, x_1392.y, x_1393.z, x_1392.z);
        let x_1396 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1396);
        let x_1401 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1401);
        let x_1407 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1407);
        let x_1410 : bool = u_xlatb11.z;
        if (x_1410) {
          let x_1415 : f32 = u_xlat11.y;
          x_1411 = x_1415;
        } else {
          let x_1417 : f32 = u_xlat51;
          x_1411 = x_1417;
        }
        let x_1418 : f32 = x_1411;
        u_xlat51 = x_1418;
        let x_1420 : bool = u_xlatb50;
        if (x_1420) {
          let x_1425 : f32 = u_xlat11.x;
          x_1421 = x_1425;
        } else {
          let x_1427 : f32 = u_xlat51;
          x_1421 = x_1427;
        }
        let x_1428 : f32 = x_1421;
        u_xlat50 = x_1428;
        let x_1429 : i32 = u_xlati47;
        let x_1431 : f32 = x_732.x_AdditionalShadowParams[x_1429].w;
        u_xlat51 = trunc(x_1431);
        let x_1433 : f32 = u_xlat50;
        let x_1434 : f32 = u_xlat51;
        u_xlat50 = (x_1433 + x_1434);
        let x_1436 : f32 = u_xlat50;
        u_xlati49 = i32(x_1436);
      }
      let x_1438 : i32 = u_xlati49;
      u_xlati49 = (x_1438 << bitcast<u32>(2i));
      let x_1440 : vec3<f32> = vs_TEXCOORD7;
      let x_1442 : i32 = u_xlati49;
      let x_1445 : i32 = u_xlati49;
      let x_1449 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1442 + 1i) / 4i)][((x_1445 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1449);
      let x_1451 : i32 = u_xlati49;
      let x_1453 : i32 = u_xlati49;
      let x_1456 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[(x_1451 / 4i)][(x_1453 % 4i)];
      let x_1457 : vec3<f32> = vs_TEXCOORD7;
      let x_1460 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1456 * vec4<f32>(x_1457.x, x_1457.x, x_1457.x, x_1457.x)) + x_1460);
      let x_1462 : i32 = u_xlati49;
      let x_1465 : i32 = u_xlati49;
      let x_1469 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1462 + 2i) / 4i)][((x_1465 + 2i) % 4i)];
      let x_1470 : vec3<f32> = vs_TEXCOORD7;
      let x_1473 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1469 * vec4<f32>(x_1470.z, x_1470.z, x_1470.z, x_1470.z)) + x_1473);
      let x_1475 : vec4<f32> = u_xlat11;
      let x_1476 : i32 = u_xlati49;
      let x_1479 : i32 = u_xlati49;
      let x_1483 : vec4<f32> = x_732.x_AdditionalLightsWorldToShadow[((x_1476 + 3i) / 4i)][((x_1479 + 3i) % 4i)];
      u_xlat11 = (x_1475 + x_1483);
      let x_1485 : vec4<f32> = u_xlat11;
      let x_1487 : vec4<f32> = u_xlat11;
      let x_1489 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) / vec3<f32>(x_1487.w, x_1487.w, x_1487.w));
      let x_1490 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
      let x_1493 : vec4<f32> = u_xlat11;
      let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
      let x_1496 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
      let x_1504 : vec3<f32> = txVec1;
      let x_1506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
      u_xlat49 = x_1506;
      let x_1507 : i32 = u_xlati47;
      let x_1509 : f32 = x_732.x_AdditionalShadowParams[x_1507].x;
      u_xlat50 = (1.0f + -(x_1509));
      let x_1512 : f32 = u_xlat49;
      let x_1513 : i32 = u_xlati47;
      let x_1515 : f32 = x_732.x_AdditionalShadowParams[x_1513].x;
      let x_1517 : f32 = u_xlat50;
      u_xlat49 = ((x_1512 * x_1515) + x_1517);
      let x_1520 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1520);
      let x_1524 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1524 >= 1.0f);
      let x_1526 : bool = u_xlatb50;
      let x_1527 : bool = u_xlatb51;
      u_xlatb50 = (x_1526 | x_1527);
      let x_1529 : bool = u_xlatb50;
      let x_1530 : f32 = u_xlat49;
      u_xlat49 = select(x_1530, 1.0f, x_1529);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1533 : f32 = u_xlat49;
    u_xlat50 = (-(x_1533) + 1.0f);
    let x_1536 : f32 = u_xlat44;
    let x_1537 : f32 = u_xlat50;
    let x_1539 : f32 = u_xlat49;
    u_xlat49 = ((x_1536 * x_1537) + x_1539);
    let x_1542 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1542 & 31i)));
    let x_1545 : i32 = u_xlati50;
    let x_1548 : f32 = x_796.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1545) & bitcast<u32>(x_1548)));
    let x_1552 : i32 = u_xlati50;
    if ((x_1552 != 0i)) {
      let x_1556 : i32 = u_xlati47;
      let x_1558 : f32 = x_796.x_AdditionalLightsLightTypes[x_1556].el;
      u_xlati50 = i32(x_1558);
      let x_1561 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1561 != 0i));
      let x_1565 : i32 = u_xlati47;
      u_xlati52 = (x_1565 << bitcast<u32>(2i));
      let x_1567 : i32 = u_xlati51;
      if ((x_1567 != 0i)) {
        let x_1571 : vec3<f32> = vs_TEXCOORD7;
        let x_1573 : i32 = u_xlati52;
        let x_1576 : i32 = u_xlati52;
        let x_1580 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1573 + 1i) / 4i)][((x_1576 + 1i) % 4i)];
        let x_1582 : vec3<f32> = (vec3<f32>(x_1571.y, x_1571.y, x_1571.y) * vec3<f32>(x_1580.x, x_1580.y, x_1580.w));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
        let x_1585 : i32 = u_xlati52;
        let x_1587 : i32 = u_xlati52;
        let x_1590 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[(x_1585 / 4i)][(x_1587 % 4i)];
        let x_1592 : vec3<f32> = vs_TEXCOORD7;
        let x_1595 : vec4<f32> = u_xlat11;
        let x_1597 : vec3<f32> = ((vec3<f32>(x_1590.x, x_1590.y, x_1590.w) * vec3<f32>(x_1592.x, x_1592.x, x_1592.x)) + vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
        let x_1598 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
        let x_1600 : i32 = u_xlati52;
        let x_1603 : i32 = u_xlati52;
        let x_1607 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1600 + 2i) / 4i)][((x_1603 + 2i) % 4i)];
        let x_1609 : vec3<f32> = vs_TEXCOORD7;
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1614 : vec3<f32> = ((vec3<f32>(x_1607.x, x_1607.y, x_1607.w) * vec3<f32>(x_1609.z, x_1609.z, x_1609.z)) + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat11;
        let x_1619 : i32 = u_xlati52;
        let x_1622 : i32 = u_xlati52;
        let x_1626 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1619 + 3i) / 4i)][((x_1622 + 3i) % 4i)];
        let x_1628 : vec3<f32> = (vec3<f32>(x_1617.x, x_1617.y, x_1617.z) + vec3<f32>(x_1626.x, x_1626.y, x_1626.w));
        let x_1629 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
        let x_1631 : vec4<f32> = u_xlat11;
        let x_1633 : vec4<f32> = u_xlat11;
        let x_1635 : vec2<f32> = (vec2<f32>(x_1631.x, x_1631.y) / vec2<f32>(x_1633.z, x_1633.z));
        let x_1636 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat11;
        let x_1641 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1642 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1641.x, x_1641.y, x_1642.z, x_1642.w);
        let x_1644 : vec4<f32> = u_xlat11;
        let x_1648 : vec2<f32> = clamp(vec2<f32>(x_1644.x, x_1644.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1649 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1648.x, x_1648.y, x_1649.z, x_1649.w);
        let x_1651 : i32 = u_xlati47;
        let x_1653 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1651];
        let x_1655 : vec4<f32> = u_xlat11;
        let x_1658 : i32 = u_xlati47;
        let x_1660 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1658];
        let x_1662 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1655.x, x_1655.y)) + vec2<f32>(x_1660.z, x_1660.w));
        let x_1663 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
      } else {
        let x_1666 : i32 = u_xlati50;
        u_xlatb50 = (x_1666 == 1i);
        let x_1668 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1668);
        let x_1670 : i32 = u_xlati50;
        if ((x_1670 != 0i)) {
          let x_1676 : vec3<f32> = vs_TEXCOORD7;
          let x_1678 : i32 = u_xlati52;
          let x_1681 : i32 = u_xlati52;
          let x_1685 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1678 + 1i) / 4i)][((x_1681 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1676.y, x_1676.y) * vec2<f32>(x_1685.x, x_1685.y));
          let x_1688 : i32 = u_xlati52;
          let x_1690 : i32 = u_xlati52;
          let x_1693 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[(x_1688 / 4i)][(x_1690 % 4i)];
          let x_1695 : vec3<f32> = vs_TEXCOORD7;
          let x_1698 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(x_1695.x, x_1695.x)) + x_1698);
          let x_1700 : i32 = u_xlati52;
          let x_1703 : i32 = u_xlati52;
          let x_1707 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1700 + 2i) / 4i)][((x_1703 + 2i) % 4i)];
          let x_1709 : vec3<f32> = vs_TEXCOORD7;
          let x_1712 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1707.x, x_1707.y) * vec2<f32>(x_1709.z, x_1709.z)) + x_1712);
          let x_1714 : vec2<f32> = u_xlat39;
          let x_1715 : i32 = u_xlati52;
          let x_1718 : i32 = u_xlati52;
          let x_1722 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1715 + 3i) / 4i)][((x_1718 + 3i) % 4i)];
          u_xlat39 = (x_1714 + vec2<f32>(x_1722.x, x_1722.y));
          let x_1725 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1725 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1728 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1728);
          let x_1730 : i32 = u_xlati47;
          let x_1732 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1730];
          let x_1734 : vec2<f32> = u_xlat39;
          let x_1736 : i32 = u_xlati47;
          let x_1738 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1736];
          let x_1740 : vec2<f32> = ((vec2<f32>(x_1732.x, x_1732.y) * x_1734) + vec2<f32>(x_1738.z, x_1738.w));
          let x_1741 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        } else {
          let x_1744 : vec3<f32> = vs_TEXCOORD7;
          let x_1746 : i32 = u_xlati52;
          let x_1749 : i32 = u_xlati52;
          let x_1753 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1746 + 1i) / 4i)][((x_1749 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1744.y, x_1744.y, x_1744.y, x_1744.y) * x_1753);
          let x_1755 : i32 = u_xlati52;
          let x_1757 : i32 = u_xlati52;
          let x_1760 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[(x_1755 / 4i)][(x_1757 % 4i)];
          let x_1761 : vec3<f32> = vs_TEXCOORD7;
          let x_1764 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1760 * vec4<f32>(x_1761.x, x_1761.x, x_1761.x, x_1761.x)) + x_1764);
          let x_1766 : i32 = u_xlati52;
          let x_1769 : i32 = u_xlati52;
          let x_1773 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1766 + 2i) / 4i)][((x_1769 + 2i) % 4i)];
          let x_1774 : vec3<f32> = vs_TEXCOORD7;
          let x_1777 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1773 * vec4<f32>(x_1774.z, x_1774.z, x_1774.z, x_1774.z)) + x_1777);
          let x_1779 : vec4<f32> = u_xlat12;
          let x_1780 : i32 = u_xlati52;
          let x_1783 : i32 = u_xlati52;
          let x_1787 : vec4<f32> = x_796.x_AdditionalLightsWorldToLights[((x_1780 + 3i) / 4i)][((x_1783 + 3i) % 4i)];
          u_xlat12 = (x_1779 + x_1787);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : vec4<f32> = u_xlat12;
          let x_1793 : vec3<f32> = (vec3<f32>(x_1789.x, x_1789.y, x_1789.z) / vec3<f32>(x_1791.w, x_1791.w, x_1791.w));
          let x_1794 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
          let x_1796 : vec4<f32> = u_xlat12;
          let x_1798 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
          let x_1801 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1801);
          let x_1803 : f32 = u_xlat50;
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
          let x_1810 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1810.x, x_1810.y, x_1810.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1815 : f32 = u_xlat50;
          u_xlat50 = max(x_1815, 0.00000099999999747524f);
          let x_1818 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1818);
          let x_1820 : f32 = u_xlat50;
          let x_1822 : vec4<f32> = u_xlat12;
          let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.z, x_1822.x, x_1822.y));
          let x_1825 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
          let x_1828 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1828);
          let x_1832 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1832, 0.0f, 1.0f);
          let x_1836 : vec4<f32> = u_xlat13;
          let x_1838 : vec4<bool> = (vec4<f32>(x_1836.y, x_1836.z, x_1836.y, x_1836.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1838.x, x_1838.y);
          let x_1841 : bool = u_xlatb39.x;
          if (x_1841) {
            let x_1846 : f32 = u_xlat13.x;
            x_1842 = x_1846;
          } else {
            let x_1849 : f32 = u_xlat13.x;
            x_1842 = -(x_1849);
          }
          let x_1851 : f32 = x_1842;
          u_xlat39.x = x_1851;
          let x_1854 : bool = u_xlatb39.y;
          if (x_1854) {
            let x_1859 : f32 = u_xlat13.x;
            x_1855 = x_1859;
          } else {
            let x_1862 : f32 = u_xlat13.x;
            x_1855 = -(x_1862);
          }
          let x_1864 : f32 = x_1855;
          u_xlat39.y = x_1864;
          let x_1866 : vec4<f32> = u_xlat12;
          let x_1868 : f32 = u_xlat50;
          let x_1871 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1866.x, x_1866.y) * vec2<f32>(x_1868, x_1868)) + x_1871);
          let x_1873 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1873 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1876 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1876, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1880 : i32 = u_xlati47;
          let x_1882 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1880];
          let x_1884 : vec2<f32> = u_xlat39;
          let x_1886 : i32 = u_xlati47;
          let x_1888 : vec4<f32> = x_796.x_AdditionalLightsCookieAtlasUVRects[x_1886];
          let x_1890 : vec2<f32> = ((vec2<f32>(x_1882.x, x_1882.y) * x_1884) + vec2<f32>(x_1888.z, x_1888.w));
          let x_1891 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1890.x, x_1890.y, x_1891.z, x_1891.w);
        }
      }
      let x_1898 : vec4<f32> = u_xlat11;
      let x_1900 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1898.x, x_1898.y), 0.0f);
      u_xlat11 = x_1900;
      let x_1902 : bool = u_xlatb7.y;
      if (x_1902) {
        let x_1907 : f32 = u_xlat11.w;
        x_1903 = x_1907;
      } else {
        let x_1910 : f32 = u_xlat11.x;
        x_1903 = x_1910;
      }
      let x_1911 : f32 = x_1903;
      u_xlat50 = x_1911;
      let x_1913 : bool = u_xlatb7.x;
      if (x_1913) {
        let x_1917 : vec4<f32> = u_xlat11;
        x_1914 = vec3<f32>(x_1917.x, x_1917.y, x_1917.z);
      } else {
        let x_1920 : f32 = u_xlat50;
        x_1914 = vec3<f32>(x_1920, x_1920, x_1920);
      }
      let x_1922 : vec3<f32> = x_1914;
      let x_1923 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1929 : vec4<f32> = u_xlat11;
    let x_1931 : i32 = u_xlati47;
    let x_1933 : vec4<f32> = x_1275.x_AdditionalLightsColor[x_1931];
    let x_1935 : vec3<f32> = (vec3<f32>(x_1929.x, x_1929.y, x_1929.z) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
    let x_1936 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
    let x_1938 : f32 = u_xlat48;
    let x_1939 : f32 = u_xlat49;
    u_xlat47 = (x_1938 * x_1939);
    let x_1941 : vec4<f32> = u_xlat1;
    let x_1943 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
    let x_1946 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1946, 0.0f, 1.0f);
    let x_1948 : f32 = u_xlat47;
    let x_1949 : f32 = u_xlat48;
    u_xlat47 = (x_1948 * x_1949);
    let x_1951 : f32 = u_xlat47;
    let x_1953 : vec4<f32> = u_xlat11;
    let x_1955 : vec3<f32> = (vec3<f32>(x_1951, x_1951, x_1951) * vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
    let x_1958 : vec4<f32> = u_xlat9;
    let x_1960 : f32 = u_xlat35;
    let x_1963 : vec3<f32> = u_xlat2;
    let x_1964 : vec3<f32> = ((vec3<f32>(x_1958.x, x_1958.y, x_1958.z) * vec3<f32>(x_1960, x_1960, x_1960)) + x_1963);
    let x_1965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
    let x_1967 : vec4<f32> = u_xlat9;
    let x_1969 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : f32 = u_xlat47;
    u_xlat47 = max(x_1972, 1.17549435e-38f);
    let x_1974 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1974);
    let x_1976 : f32 = u_xlat47;
    let x_1978 : vec4<f32> = u_xlat9;
    let x_1980 : vec3<f32> = (vec3<f32>(x_1976, x_1976, x_1976) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
    let x_1981 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
    let x_1983 : vec4<f32> = u_xlat1;
    let x_1985 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1988 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1988, 0.0f, 1.0f);
    let x_1990 : vec4<f32> = u_xlat10;
    let x_1992 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1995 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1995, 0.0f, 1.0f);
    let x_1997 : f32 = u_xlat47;
    let x_1998 : f32 = u_xlat47;
    u_xlat47 = (x_1997 * x_1998);
    let x_2000 : f32 = u_xlat47;
    let x_2002 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2000 * x_2002) + 1.00001001358032226562f);
    let x_2005 : f32 = u_xlat48;
    let x_2006 : f32 = u_xlat48;
    u_xlat48 = (x_2005 * x_2006);
    let x_2008 : f32 = u_xlat47;
    let x_2009 : f32 = u_xlat47;
    u_xlat47 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat48;
    u_xlat48 = max(x_2011, 0.10000000149011611938f);
    let x_2013 : f32 = u_xlat47;
    let x_2014 : f32 = u_xlat48;
    u_xlat47 = (x_2013 * x_2014);
    let x_2016 : f32 = u_xlat45;
    let x_2017 : f32 = u_xlat47;
    u_xlat47 = (x_2016 * x_2017);
    let x_2019 : f32 = u_xlat43;
    let x_2020 : f32 = u_xlat47;
    u_xlat47 = (x_2019 / x_2020);
    let x_2022 : vec4<f32> = u_xlat5;
    let x_2024 : f32 = u_xlat47;
    let x_2027 : vec4<f32> = u_xlat4;
    let x_2029 : vec3<f32> = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * vec3<f32>(x_2024, x_2024, x_2024)) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2032 : vec4<f32> = u_xlat9;
    let x_2034 : vec4<f32> = u_xlat11;
    let x_2037 : vec4<f32> = u_xlat8;
    let x_2039 : vec3<f32> = ((vec3<f32>(x_2032.x, x_2032.y, x_2032.z) * vec3<f32>(x_2034.x, x_2034.y, x_2034.z)) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);

    continuing {
      let x_2042 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2042 + bitcast<u32>(1i));
    }
  }
  let x_2044 : vec4<f32> = u_xlat3;
  let x_2046 : f32 = u_xlat14;
  let x_2049 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046, x_2046, x_2046)) + vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : vec4<f32> = u_xlat8;
  let x_2054 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2052.x, x_2052.y, x_2052.z) + x_2054);
  let x_2058 : f32 = u_xlat42;
  let x_2060 : vec3<f32> = u_xlat0;
  let x_2061 : vec3<f32> = (vec3<f32>(x_2058, x_2058, x_2058) * x_2060);
  let x_2062 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
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


