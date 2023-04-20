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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

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

@group(1) @binding(2) var<uniform> x_602 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_768 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_832 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1307 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
  var txVec0 : vec3<f32>;
  var x_917 : f32;
  var x_928 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1443 : f32;
  var x_1453 : f32;
  var txVec1 : vec3<f32>;
  var x_1874 : f32;
  var x_1887 : f32;
  var x_1935 : f32;
  var x_1946 : vec3<f32>;
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
  let x_279 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb44;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat43;
  u_xlat43 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat43;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat15;
  let x_537 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat15;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat15.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat15.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat15.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  u_xlat1.w = 1.0f;
  let x_604 : vec4<f32> = x_602.unity_SHAr;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_604, x_605);
  let x_609 : vec4<f32> = x_602.unity_SHAg;
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_609, x_610);
  let x_614 : vec4<f32> = x_602.unity_SHAb;
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_614, x_615);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_618.y, x_618.z, x_618.z, x_618.x) * vec4<f32>(x_620.x, x_620.y, x_620.z, x_620.z));
  let x_624 : vec4<f32> = x_602.unity_SHBr;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_624, x_625);
  let x_629 : vec4<f32> = x_602.unity_SHBg;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_629, x_630);
  let x_634 : vec4<f32> = x_602.unity_SHBb;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_634, x_635);
  let x_639 : f32 = u_xlat1.y;
  let x_641 : f32 = u_xlat1.y;
  u_xlat43 = (x_639 * x_641);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat43;
  u_xlat43 = ((x_644 * x_646) + -(x_648));
  let x_653 : vec4<f32> = x_602.unity_SHC;
  let x_655 : f32 = u_xlat43;
  let x_658 : vec4<f32> = u_xlat6;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655, x_655, x_655)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = max(vec3<f32>(x_670.x, x_670.y, x_670.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_677) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_683 : f32 = u_xlat28;
  let x_684 : f32 = u_xlat43;
  u_xlat44 = (x_683 + -(x_684));
  let x_687 : f32 = u_xlat43;
  let x_689 : vec4<f32> = u_xlat5;
  let x_691 : vec3<f32> = (vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat5;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_699 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat0;
  let x_703 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.x, x_701.x) * vec3<f32>(x_703.x, x_703.y, x_703.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : f32 = u_xlat28;
  u_xlat0.x = (-(x_711) + 1.0f);
  let x_716 : f32 = u_xlat0.x;
  let x_718 : f32 = u_xlat0.x;
  u_xlat28 = (x_716 * x_718);
  let x_720 : f32 = u_xlat28;
  u_xlat28 = max(x_720, 0.0078125f);
  let x_723 : f32 = u_xlat28;
  let x_724 : f32 = u_xlat28;
  u_xlat43 = (x_723 * x_724);
  let x_726 : f32 = u_xlat44;
  u_xlat44 = (x_726 + 1.0f);
  let x_728 : f32 = u_xlat44;
  u_xlat44 = clamp(x_728, 0.0f, 1.0f);
  let x_731 : f32 = u_xlat28;
  u_xlat45 = ((x_731 * 4.0f) + 2.0f);
  let x_735 : f32 = u_xlat14;
  u_xlat14 = min(x_735, 1.0f);
  let x_740 : vec4<f32> = vs_TEXCOORD8;
  let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
  let x_744 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_741.x, x_741.y, x_744);
  let x_757 : vec3<f32> = txVec0;
  let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
  u_xlat46 = x_759;
  let x_770 : f32 = x_768.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat46;
  let x_775 : f32 = x_768.x_MainLightShadowParams.x;
  let x_777 : f32 = u_xlat47;
  u_xlat46 = ((x_773 * x_775) + x_777);
  let x_781 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_781);
  let x_785 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_785 >= 1.0f);
  let x_787 : bool = u_xlatb47;
  let x_788 : bool = u_xlatb6;
  u_xlatb47 = (x_787 | x_788);
  let x_790 : bool = u_xlatb47;
  let x_791 : f32 = u_xlat46;
  u_xlat46 = select(x_791, 1.0f, x_790);
  let x_793 : vec3<f32> = vs_TEXCOORD7;
  let x_795 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_797 : vec3<f32> = (x_793 + -(x_795));
  let x_798 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat6;
  let x_802 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_800.x, x_800.y, x_800.z), vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : f32 = u_xlat47;
  let x_807 : f32 = x_768.x_MainLightShadowParams.z;
  let x_810 : f32 = x_768.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_805 * x_807) + x_810);
  let x_814 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_814, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat46;
  u_xlat20 = (-(x_818) + 1.0f);
  let x_822 : f32 = u_xlat6.x;
  let x_823 : f32 = u_xlat20;
  let x_825 : f32 = u_xlat46;
  u_xlat46 = ((x_822 * x_823) + x_825);
  let x_834 : f32 = x_832.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_834 == -1.0f));
  let x_836 : bool = u_xlatb6;
  if (x_836) {
    let x_839 : vec3<f32> = vs_TEXCOORD7;
    let x_842 : vec4<f32> = x_832.x_MainLightWorldToLight[1i];
    let x_844 : vec2<f32> = (vec2<f32>(x_839.y, x_839.y) * vec2<f32>(x_842.x, x_842.y));
    let x_845 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_844.x, x_844.y, x_845.z, x_845.w);
    let x_848 : vec4<f32> = x_832.x_MainLightWorldToLight[0i];
    let x_850 : vec3<f32> = vs_TEXCOORD7;
    let x_853 : vec4<f32> = u_xlat6;
    let x_855 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_850.x, x_850.x)) + vec2<f32>(x_853.x, x_853.y));
    let x_856 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
    let x_859 : vec4<f32> = x_832.x_MainLightWorldToLight[2i];
    let x_861 : vec3<f32> = vs_TEXCOORD7;
    let x_864 : vec4<f32> = u_xlat6;
    let x_866 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_861.z, x_861.z)) + vec2<f32>(x_864.x, x_864.y));
    let x_867 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
    let x_869 : vec4<f32> = u_xlat6;
    let x_873 : vec4<f32> = x_832.x_MainLightWorldToLight[3i];
    let x_875 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) + vec2<f32>(x_873.x, x_873.y));
    let x_876 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
    let x_878 : vec4<f32> = u_xlat6;
    let x_881 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_882 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
    let x_889 : vec4<f32> = u_xlat6;
    let x_892 : f32 = x_111.x_GlobalMipBias.x;
    let x_893 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_889.x, x_889.y), x_892);
    u_xlat6 = x_893;
    let x_898 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_900 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_902 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_904 : f32 = x_832.x_MainLightCookieTextureFormat;
    let x_905 : vec4<f32> = vec4<f32>(x_898, x_900, x_902, x_904);
    let x_912 : vec4<bool> = (vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_912.x, x_912.y);
    let x_916 : bool = u_xlatb7.y;
    if (x_916) {
      let x_921 : f32 = u_xlat6.w;
      x_917 = x_921;
    } else {
      let x_924 : f32 = u_xlat6.x;
      x_917 = x_924;
    }
    let x_925 : f32 = x_917;
    u_xlat48 = x_925;
    let x_927 : bool = u_xlatb7.x;
    if (x_927) {
      let x_931 : vec4<f32> = u_xlat6;
      x_928 = vec3<f32>(x_931.x, x_931.y, x_931.z);
    } else {
      let x_934 : f32 = u_xlat48;
      x_928 = vec3<f32>(x_934, x_934, x_934);
    }
    let x_936 : vec3<f32> = x_928;
    let x_937 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_943 : vec4<f32> = u_xlat6;
  let x_946 : vec4<f32> = x_111.x_MainLightColor;
  let x_948 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec3<f32> = u_xlat2;
  let x_953 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(x_951), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : f32 = u_xlat48;
  let x_957 : f32 = u_xlat48;
  u_xlat48 = (x_956 + x_957);
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : f32 = u_xlat48;
  let x_965 : vec3<f32> = u_xlat2;
  let x_967 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.y, x_959.z) * -(vec3<f32>(x_961, x_961, x_961))) + -(x_965));
  let x_968 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat1;
  let x_972 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), x_972);
  let x_974 : f32 = u_xlat48;
  u_xlat48 = clamp(x_974, 0.0f, 1.0f);
  let x_976 : f32 = u_xlat48;
  u_xlat48 = (-(x_976) + 1.0f);
  let x_979 : f32 = u_xlat48;
  let x_980 : f32 = u_xlat48;
  u_xlat48 = (x_979 * x_980);
  let x_982 : f32 = u_xlat48;
  let x_983 : f32 = u_xlat48;
  u_xlat48 = (x_982 * x_983);
  let x_987 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_987) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_994 : f32 = u_xlat0.x;
  let x_995 : f32 = u_xlat49;
  u_xlat0.x = (x_994 * x_995);
  let x_999 : f32 = u_xlat0.x;
  u_xlat0.x = (x_999 * 6.0f);
  let x_1011 : vec4<f32> = u_xlat7;
  let x_1014 : f32 = u_xlat0.x;
  let x_1015 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1011.x, x_1011.y, x_1011.z), x_1014);
  u_xlat7 = x_1015;
  let x_1017 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1017 + -1.0f);
  let x_1021 : f32 = x_602.unity_SpecCube0_HDR.w;
  let x_1023 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1021 * x_1023) + 1.0f);
  let x_1028 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1028, 0.0f);
  let x_1032 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1032);
  let x_1036 : f32 = u_xlat0.x;
  let x_1038 : f32 = x_602.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1036 * x_1038);
  let x_1042 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1042);
  let x_1046 : f32 = u_xlat0.x;
  let x_1048 : f32 = x_602.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1046 * x_1048);
  let x_1051 : vec4<f32> = u_xlat7;
  let x_1053 : vec3<f32> = u_xlat0;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1053.x, x_1053.x, x_1053.x));
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : f32 = u_xlat28;
  let x_1060 : f32 = u_xlat28;
  let x_1064 : vec2<f32> = ((vec2<f32>(x_1058, x_1058) * vec2<f32>(x_1060, x_1060)) + vec2<f32>(-1.0f, 1.0f));
  let x_1065 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1064.x, x_1065.y, x_1064.y);
  let x_1068 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1068);
  let x_1070 : vec4<f32> = u_xlat5;
  let x_1073 : f32 = u_xlat44;
  let x_1075 : vec3<f32> = (-(vec3<f32>(x_1070.x, x_1070.y, x_1070.z)) + vec3<f32>(x_1073, x_1073, x_1073));
  let x_1076 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : f32 = u_xlat48;
  let x_1080 : vec4<f32> = u_xlat8;
  let x_1083 : vec4<f32> = u_xlat5;
  let x_1085 : vec3<f32> = ((vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z)) + vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : f32 = u_xlat28;
  let x_1090 : vec4<f32> = u_xlat8;
  let x_1092 : vec3<f32> = (vec3<f32>(x_1088, x_1088, x_1088) * vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1097 : vec4<f32> = u_xlat8;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat3;
  let x_1104 : vec4<f32> = u_xlat4;
  let x_1107 : vec4<f32> = u_xlat7;
  let x_1109 : vec3<f32> = ((vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(x_1104.x, x_1104.y, x_1104.z)) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : f32 = u_xlat46;
  let x_1114 : f32 = x_602.unity_LightData.z;
  u_xlat28 = (x_1112 * x_1114);
  let x_1116 : vec4<f32> = u_xlat1;
  let x_1119 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1122, 0.0f, 1.0f);
  let x_1124 : f32 = u_xlat28;
  let x_1125 : f32 = u_xlat44;
  u_xlat28 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat28;
  let x_1129 : vec4<f32> = u_xlat6;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec3<f32> = u_xlat2;
  let x_1136 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1138 : vec3<f32> = (x_1134 + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat7;
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : f32 = u_xlat28;
  u_xlat28 = max(x_1146, 1.17549435e-38f);
  let x_1149 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1149);
  let x_1151 : f32 = u_xlat28;
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1151, x_1151, x_1151) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat1;
  let x_1160 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1158.x, x_1158.y, x_1158.z), vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1163 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1163, 0.0f, 1.0f);
  let x_1166 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1171, 0.0f, 1.0f);
  let x_1173 : f32 = u_xlat28;
  let x_1174 : f32 = u_xlat28;
  u_xlat28 = (x_1173 * x_1174);
  let x_1176 : f32 = u_xlat28;
  let x_1178 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1176 * x_1178) + 1.00001001358032226562f);
  let x_1182 : f32 = u_xlat44;
  let x_1183 : f32 = u_xlat44;
  u_xlat44 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat28;
  let x_1186 : f32 = u_xlat28;
  u_xlat28 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat44;
  u_xlat44 = max(x_1188, 0.10000000149011611938f);
  let x_1191 : f32 = u_xlat28;
  let x_1192 : f32 = u_xlat44;
  u_xlat28 = (x_1191 * x_1192);
  let x_1194 : f32 = u_xlat45;
  let x_1195 : f32 = u_xlat28;
  u_xlat28 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat43;
  let x_1198 : f32 = u_xlat28;
  u_xlat28 = (x_1197 / x_1198);
  let x_1200 : vec4<f32> = u_xlat5;
  let x_1202 : f32 = u_xlat28;
  let x_1205 : vec4<f32> = u_xlat4;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202, x_1202, x_1202)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat6;
  let x_1212 : vec4<f32> = u_xlat7;
  let x_1214 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1218 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1220 : f32 = x_602.unity_LightData.y;
  u_xlat28 = min(x_1218, x_1220);
  let x_1224 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1224));
  let x_1227 : f32 = u_xlat47;
  let x_1229 : f32 = x_768.x_AdditionalShadowFadeParams.x;
  let x_1232 : f32 = x_768.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1227 * x_1229) + x_1232);
  let x_1234 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1234, 0.0f, 1.0f);
  let x_1237 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1239 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1241 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1243 : f32 = x_832.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1244 : vec4<f32> = vec4<f32>(x_1237, x_1239, x_1241, x_1243);
  let x_1250 : vec4<bool> = (vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1244.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1250.x, x_1250.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1262 : u32 = u_xlatu_loop_1;
    let x_1263 : u32 = u_xlatu28;
    if ((x_1262 < x_1263)) {
    } else {
      break;
    }
    let x_1266 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1266 >> 2u);
    let x_1270 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1270 & 3u));
    let x_1273 : u32 = u_xlatu47;
    let x_1276 : vec4<f32> = x_602.unity_LightIndices[bitcast<i32>(x_1273)];
    let x_1286 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1291 : vec4<u32> = indexable[x_1286];
    u_xlat47 = dot(x_1276, bitcast<vec4<f32>>(x_1291));
    let x_1295 : f32 = u_xlat47;
    u_xlati47 = i32(x_1295);
    let x_1297 : vec3<f32> = vs_TEXCOORD7;
    let x_1308 : i32 = u_xlati47;
    let x_1310 : vec4<f32> = x_1307.x_AdditionalLightsPosition[x_1308];
    let x_1313 : i32 = u_xlati47;
    let x_1315 : vec4<f32> = x_1307.x_AdditionalLightsPosition[x_1313];
    let x_1317 : vec3<f32> = ((-(x_1297) * vec3<f32>(x_1310.w, x_1310.w, x_1310.w)) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
    let x_1318 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
    let x_1320 : vec4<f32> = u_xlat9;
    let x_1322 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1320.x, x_1320.y, x_1320.z), vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
    let x_1325 : f32 = u_xlat48;
    u_xlat48 = max(x_1325, 0.00006103515625f);
    let x_1328 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1328);
    let x_1330 : f32 = u_xlat35;
    let x_1332 : vec4<f32> = u_xlat9;
    let x_1334 : vec3<f32> = (vec3<f32>(x_1330, x_1330, x_1330) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    let x_1337 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1337);
    let x_1339 : f32 = u_xlat48;
    let x_1340 : i32 = u_xlati47;
    let x_1342 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1340].x;
    u_xlat48 = (x_1339 * x_1342);
    let x_1344 : f32 = u_xlat48;
    let x_1346 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1344) * x_1346) + 1.0f);
    let x_1349 : f32 = u_xlat48;
    u_xlat48 = max(x_1349, 0.0f);
    let x_1351 : f32 = u_xlat48;
    let x_1352 : f32 = u_xlat48;
    u_xlat48 = (x_1351 * x_1352);
    let x_1354 : f32 = u_xlat48;
    let x_1355 : f32 = u_xlat49;
    u_xlat48 = (x_1354 * x_1355);
    let x_1357 : i32 = u_xlati47;
    let x_1359 : vec4<f32> = x_1307.x_AdditionalLightsSpotDir[x_1357];
    let x_1361 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1359.x, x_1359.y, x_1359.z), vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : f32 = u_xlat49;
    let x_1365 : i32 = u_xlati47;
    let x_1367 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1365].z;
    let x_1369 : i32 = u_xlati47;
    let x_1371 : f32 = x_1307.x_AdditionalLightsAttenuation[x_1369].w;
    u_xlat49 = ((x_1364 * x_1367) + x_1371);
    let x_1373 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1373, 0.0f, 1.0f);
    let x_1375 : f32 = u_xlat49;
    let x_1376 : f32 = u_xlat49;
    u_xlat49 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat48;
    let x_1379 : f32 = u_xlat49;
    u_xlat48 = (x_1378 * x_1379);
    let x_1382 : i32 = u_xlati47;
    let x_1384 : f32 = x_768.x_AdditionalShadowParams[x_1382].w;
    u_xlati49 = i32(x_1384);
    let x_1387 : i32 = u_xlati49;
    u_xlatb50 = (x_1387 >= 0i);
    let x_1389 : bool = u_xlatb50;
    if (x_1389) {
      let x_1393 : i32 = u_xlati47;
      let x_1395 : f32 = x_768.x_AdditionalShadowParams[x_1393].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1395, x_1395, x_1395, x_1395))));
      let x_1399 : bool = u_xlatb50;
      if (x_1399) {
        let x_1404 : vec4<f32> = u_xlat10;
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1410 : vec4<bool> = (abs(vec4<f32>(x_1404.z, x_1404.z, x_1404.y, x_1404.z)) >= abs(vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.x)));
        let x_1412 : vec3<bool> = vec3<bool>(x_1410.x, x_1410.y, x_1410.z);
        let x_1413 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
        let x_1416 : bool = u_xlatb11.y;
        let x_1418 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1416 & x_1418);
        let x_1420 : vec4<f32> = u_xlat10;
        let x_1423 : vec4<bool> = (-(vec4<f32>(x_1420.z, x_1420.y, x_1420.z, x_1420.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1424 : vec3<bool> = vec3<bool>(x_1423.x, x_1423.y, x_1423.w);
        let x_1425 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1424.x, x_1424.y, x_1425.z, x_1424.z);
        let x_1428 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1428);
        let x_1433 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1433);
        let x_1439 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1439);
        let x_1442 : bool = u_xlatb11.z;
        if (x_1442) {
          let x_1447 : f32 = u_xlat11.y;
          x_1443 = x_1447;
        } else {
          let x_1449 : f32 = u_xlat51;
          x_1443 = x_1449;
        }
        let x_1450 : f32 = x_1443;
        u_xlat51 = x_1450;
        let x_1452 : bool = u_xlatb50;
        if (x_1452) {
          let x_1457 : f32 = u_xlat11.x;
          x_1453 = x_1457;
        } else {
          let x_1459 : f32 = u_xlat51;
          x_1453 = x_1459;
        }
        let x_1460 : f32 = x_1453;
        u_xlat50 = x_1460;
        let x_1461 : i32 = u_xlati47;
        let x_1463 : f32 = x_768.x_AdditionalShadowParams[x_1461].w;
        u_xlat51 = trunc(x_1463);
        let x_1465 : f32 = u_xlat50;
        let x_1466 : f32 = u_xlat51;
        u_xlat50 = (x_1465 + x_1466);
        let x_1468 : f32 = u_xlat50;
        u_xlati49 = i32(x_1468);
      }
      let x_1470 : i32 = u_xlati49;
      u_xlati49 = (x_1470 << bitcast<u32>(2i));
      let x_1472 : vec3<f32> = vs_TEXCOORD7;
      let x_1474 : i32 = u_xlati49;
      let x_1477 : i32 = u_xlati49;
      let x_1481 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_1474 + 1i) / 4i)][((x_1477 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1472.y, x_1472.y, x_1472.y, x_1472.y) * x_1481);
      let x_1483 : i32 = u_xlati49;
      let x_1485 : i32 = u_xlati49;
      let x_1488 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[(x_1483 / 4i)][(x_1485 % 4i)];
      let x_1489 : vec3<f32> = vs_TEXCOORD7;
      let x_1492 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1488 * vec4<f32>(x_1489.x, x_1489.x, x_1489.x, x_1489.x)) + x_1492);
      let x_1494 : i32 = u_xlati49;
      let x_1497 : i32 = u_xlati49;
      let x_1501 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_1494 + 2i) / 4i)][((x_1497 + 2i) % 4i)];
      let x_1502 : vec3<f32> = vs_TEXCOORD7;
      let x_1505 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1501 * vec4<f32>(x_1502.z, x_1502.z, x_1502.z, x_1502.z)) + x_1505);
      let x_1507 : vec4<f32> = u_xlat11;
      let x_1508 : i32 = u_xlati49;
      let x_1511 : i32 = u_xlati49;
      let x_1515 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_1508 + 3i) / 4i)][((x_1511 + 3i) % 4i)];
      u_xlat11 = (x_1507 + x_1515);
      let x_1517 : vec4<f32> = u_xlat11;
      let x_1519 : vec4<f32> = u_xlat11;
      let x_1521 : vec3<f32> = (vec3<f32>(x_1517.x, x_1517.y, x_1517.z) / vec3<f32>(x_1519.w, x_1519.w, x_1519.w));
      let x_1522 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
      let x_1525 : vec4<f32> = u_xlat11;
      let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
      let x_1528 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
      let x_1536 : vec3<f32> = txVec1;
      let x_1538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
      u_xlat49 = x_1538;
      let x_1539 : i32 = u_xlati47;
      let x_1541 : f32 = x_768.x_AdditionalShadowParams[x_1539].x;
      u_xlat50 = (1.0f + -(x_1541));
      let x_1544 : f32 = u_xlat49;
      let x_1545 : i32 = u_xlati47;
      let x_1547 : f32 = x_768.x_AdditionalShadowParams[x_1545].x;
      let x_1549 : f32 = u_xlat50;
      u_xlat49 = ((x_1544 * x_1547) + x_1549);
      let x_1552 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1552);
      let x_1556 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1556 >= 1.0f);
      let x_1558 : bool = u_xlatb50;
      let x_1559 : bool = u_xlatb51;
      u_xlatb50 = (x_1558 | x_1559);
      let x_1561 : bool = u_xlatb50;
      let x_1562 : f32 = u_xlat49;
      u_xlat49 = select(x_1562, 1.0f, x_1561);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1565 : f32 = u_xlat49;
    u_xlat50 = (-(x_1565) + 1.0f);
    let x_1568 : f32 = u_xlat44;
    let x_1569 : f32 = u_xlat50;
    let x_1571 : f32 = u_xlat49;
    u_xlat49 = ((x_1568 * x_1569) + x_1571);
    let x_1574 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1574 & 31i)));
    let x_1577 : i32 = u_xlati50;
    let x_1580 : f32 = x_832.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1577) & bitcast<u32>(x_1580)));
    let x_1584 : i32 = u_xlati50;
    if ((x_1584 != 0i)) {
      let x_1588 : i32 = u_xlati47;
      let x_1590 : f32 = x_832.x_AdditionalLightsLightTypes[x_1588].el;
      u_xlati50 = i32(x_1590);
      let x_1593 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1593 != 0i));
      let x_1597 : i32 = u_xlati47;
      u_xlati52 = (x_1597 << bitcast<u32>(2i));
      let x_1599 : i32 = u_xlati51;
      if ((x_1599 != 0i)) {
        let x_1603 : vec3<f32> = vs_TEXCOORD7;
        let x_1605 : i32 = u_xlati52;
        let x_1608 : i32 = u_xlati52;
        let x_1612 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1605 + 1i) / 4i)][((x_1608 + 1i) % 4i)];
        let x_1614 : vec3<f32> = (vec3<f32>(x_1603.y, x_1603.y, x_1603.y) * vec3<f32>(x_1612.x, x_1612.y, x_1612.w));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
        let x_1617 : i32 = u_xlati52;
        let x_1619 : i32 = u_xlati52;
        let x_1622 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1617 / 4i)][(x_1619 % 4i)];
        let x_1624 : vec3<f32> = vs_TEXCOORD7;
        let x_1627 : vec4<f32> = u_xlat11;
        let x_1629 : vec3<f32> = ((vec3<f32>(x_1622.x, x_1622.y, x_1622.w) * vec3<f32>(x_1624.x, x_1624.x, x_1624.x)) + vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
        let x_1630 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
        let x_1632 : i32 = u_xlati52;
        let x_1635 : i32 = u_xlati52;
        let x_1639 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1632 + 2i) / 4i)][((x_1635 + 2i) % 4i)];
        let x_1641 : vec3<f32> = vs_TEXCOORD7;
        let x_1644 : vec4<f32> = u_xlat11;
        let x_1646 : vec3<f32> = ((vec3<f32>(x_1639.x, x_1639.y, x_1639.w) * vec3<f32>(x_1641.z, x_1641.z, x_1641.z)) + vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
        let x_1647 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1651 : i32 = u_xlati52;
        let x_1654 : i32 = u_xlati52;
        let x_1658 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1651 + 3i) / 4i)][((x_1654 + 3i) % 4i)];
        let x_1660 : vec3<f32> = (vec3<f32>(x_1649.x, x_1649.y, x_1649.z) + vec3<f32>(x_1658.x, x_1658.y, x_1658.w));
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat11;
        let x_1665 : vec4<f32> = u_xlat11;
        let x_1667 : vec2<f32> = (vec2<f32>(x_1663.x, x_1663.y) / vec2<f32>(x_1665.z, x_1665.z));
        let x_1668 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
        let x_1670 : vec4<f32> = u_xlat11;
        let x_1673 : vec2<f32> = ((vec2<f32>(x_1670.x, x_1670.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1674 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
        let x_1676 : vec4<f32> = u_xlat11;
        let x_1680 : vec2<f32> = clamp(vec2<f32>(x_1676.x, x_1676.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1680.x, x_1680.y, x_1681.z, x_1681.w);
        let x_1683 : i32 = u_xlati47;
        let x_1685 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1683];
        let x_1687 : vec4<f32> = u_xlat11;
        let x_1690 : i32 = u_xlati47;
        let x_1692 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1690];
        let x_1694 : vec2<f32> = ((vec2<f32>(x_1685.x, x_1685.y) * vec2<f32>(x_1687.x, x_1687.y)) + vec2<f32>(x_1692.z, x_1692.w));
        let x_1695 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1694.x, x_1694.y, x_1695.z, x_1695.w);
      } else {
        let x_1698 : i32 = u_xlati50;
        u_xlatb50 = (x_1698 == 1i);
        let x_1700 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1700);
        let x_1702 : i32 = u_xlati50;
        if ((x_1702 != 0i)) {
          let x_1708 : vec3<f32> = vs_TEXCOORD7;
          let x_1710 : i32 = u_xlati52;
          let x_1713 : i32 = u_xlati52;
          let x_1717 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1710 + 1i) / 4i)][((x_1713 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1708.y, x_1708.y) * vec2<f32>(x_1717.x, x_1717.y));
          let x_1720 : i32 = u_xlati52;
          let x_1722 : i32 = u_xlati52;
          let x_1725 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1720 / 4i)][(x_1722 % 4i)];
          let x_1727 : vec3<f32> = vs_TEXCOORD7;
          let x_1730 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1725.x, x_1725.y) * vec2<f32>(x_1727.x, x_1727.x)) + x_1730);
          let x_1732 : i32 = u_xlati52;
          let x_1735 : i32 = u_xlati52;
          let x_1739 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1732 + 2i) / 4i)][((x_1735 + 2i) % 4i)];
          let x_1741 : vec3<f32> = vs_TEXCOORD7;
          let x_1744 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1739.x, x_1739.y) * vec2<f32>(x_1741.z, x_1741.z)) + x_1744);
          let x_1746 : vec2<f32> = u_xlat39;
          let x_1747 : i32 = u_xlati52;
          let x_1750 : i32 = u_xlati52;
          let x_1754 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1747 + 3i) / 4i)][((x_1750 + 3i) % 4i)];
          u_xlat39 = (x_1746 + vec2<f32>(x_1754.x, x_1754.y));
          let x_1757 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1757 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1760 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1760);
          let x_1762 : i32 = u_xlati47;
          let x_1764 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1762];
          let x_1766 : vec2<f32> = u_xlat39;
          let x_1768 : i32 = u_xlati47;
          let x_1770 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1768];
          let x_1772 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * x_1766) + vec2<f32>(x_1770.z, x_1770.w));
          let x_1773 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
        } else {
          let x_1776 : vec3<f32> = vs_TEXCOORD7;
          let x_1778 : i32 = u_xlati52;
          let x_1781 : i32 = u_xlati52;
          let x_1785 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1778 + 1i) / 4i)][((x_1781 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1776.y, x_1776.y, x_1776.y, x_1776.y) * x_1785);
          let x_1787 : i32 = u_xlati52;
          let x_1789 : i32 = u_xlati52;
          let x_1792 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[(x_1787 / 4i)][(x_1789 % 4i)];
          let x_1793 : vec3<f32> = vs_TEXCOORD7;
          let x_1796 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1792 * vec4<f32>(x_1793.x, x_1793.x, x_1793.x, x_1793.x)) + x_1796);
          let x_1798 : i32 = u_xlati52;
          let x_1801 : i32 = u_xlati52;
          let x_1805 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1798 + 2i) / 4i)][((x_1801 + 2i) % 4i)];
          let x_1806 : vec3<f32> = vs_TEXCOORD7;
          let x_1809 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1805 * vec4<f32>(x_1806.z, x_1806.z, x_1806.z, x_1806.z)) + x_1809);
          let x_1811 : vec4<f32> = u_xlat12;
          let x_1812 : i32 = u_xlati52;
          let x_1815 : i32 = u_xlati52;
          let x_1819 : vec4<f32> = x_832.x_AdditionalLightsWorldToLights[((x_1812 + 3i) / 4i)][((x_1815 + 3i) % 4i)];
          u_xlat12 = (x_1811 + x_1819);
          let x_1821 : vec4<f32> = u_xlat12;
          let x_1823 : vec4<f32> = u_xlat12;
          let x_1825 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.y, x_1821.z) / vec3<f32>(x_1823.w, x_1823.w, x_1823.w));
          let x_1826 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
          let x_1828 : vec4<f32> = u_xlat12;
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1828.x, x_1828.y, x_1828.z), vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
          let x_1833 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1833);
          let x_1835 : f32 = u_xlat50;
          let x_1837 : vec4<f32> = u_xlat12;
          let x_1839 : vec3<f32> = (vec3<f32>(x_1835, x_1835, x_1835) * vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
          let x_1840 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
          let x_1842 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1842.x, x_1842.y, x_1842.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1847 : f32 = u_xlat50;
          u_xlat50 = max(x_1847, 0.00000099999999747524f);
          let x_1850 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1850);
          let x_1852 : f32 = u_xlat50;
          let x_1854 : vec4<f32> = u_xlat12;
          let x_1856 : vec3<f32> = (vec3<f32>(x_1852, x_1852, x_1852) * vec3<f32>(x_1854.z, x_1854.x, x_1854.y));
          let x_1857 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
          let x_1860 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1860);
          let x_1864 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1864, 0.0f, 1.0f);
          let x_1868 : vec4<f32> = u_xlat13;
          let x_1870 : vec4<bool> = (vec4<f32>(x_1868.y, x_1868.z, x_1868.y, x_1868.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1870.x, x_1870.y);
          let x_1873 : bool = u_xlatb39.x;
          if (x_1873) {
            let x_1878 : f32 = u_xlat13.x;
            x_1874 = x_1878;
          } else {
            let x_1881 : f32 = u_xlat13.x;
            x_1874 = -(x_1881);
          }
          let x_1883 : f32 = x_1874;
          u_xlat39.x = x_1883;
          let x_1886 : bool = u_xlatb39.y;
          if (x_1886) {
            let x_1891 : f32 = u_xlat13.x;
            x_1887 = x_1891;
          } else {
            let x_1894 : f32 = u_xlat13.x;
            x_1887 = -(x_1894);
          }
          let x_1896 : f32 = x_1887;
          u_xlat39.y = x_1896;
          let x_1898 : vec4<f32> = u_xlat12;
          let x_1900 : f32 = u_xlat50;
          let x_1903 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1898.x, x_1898.y) * vec2<f32>(x_1900, x_1900)) + x_1903);
          let x_1905 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1905 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1908 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1908, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1912 : i32 = u_xlati47;
          let x_1914 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1912];
          let x_1916 : vec2<f32> = u_xlat39;
          let x_1918 : i32 = u_xlati47;
          let x_1920 : vec4<f32> = x_832.x_AdditionalLightsCookieAtlasUVRects[x_1918];
          let x_1922 : vec2<f32> = ((vec2<f32>(x_1914.x, x_1914.y) * x_1916) + vec2<f32>(x_1920.z, x_1920.w));
          let x_1923 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
        }
      }
      let x_1930 : vec4<f32> = u_xlat11;
      let x_1932 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1930.x, x_1930.y), 0.0f);
      u_xlat11 = x_1932;
      let x_1934 : bool = u_xlatb7.y;
      if (x_1934) {
        let x_1939 : f32 = u_xlat11.w;
        x_1935 = x_1939;
      } else {
        let x_1942 : f32 = u_xlat11.x;
        x_1935 = x_1942;
      }
      let x_1943 : f32 = x_1935;
      u_xlat50 = x_1943;
      let x_1945 : bool = u_xlatb7.x;
      if (x_1945) {
        let x_1949 : vec4<f32> = u_xlat11;
        x_1946 = vec3<f32>(x_1949.x, x_1949.y, x_1949.z);
      } else {
        let x_1952 : f32 = u_xlat50;
        x_1946 = vec3<f32>(x_1952, x_1952, x_1952);
      }
      let x_1954 : vec3<f32> = x_1946;
      let x_1955 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1961 : vec4<f32> = u_xlat11;
    let x_1963 : i32 = u_xlati47;
    let x_1965 : vec4<f32> = x_1307.x_AdditionalLightsColor[x_1963];
    let x_1967 : vec3<f32> = (vec3<f32>(x_1961.x, x_1961.y, x_1961.z) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : f32 = u_xlat48;
    let x_1971 : f32 = u_xlat49;
    u_xlat47 = (x_1970 * x_1971);
    let x_1973 : vec4<f32> = u_xlat1;
    let x_1975 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1978, 0.0f, 1.0f);
    let x_1980 : f32 = u_xlat47;
    let x_1981 : f32 = u_xlat48;
    u_xlat47 = (x_1980 * x_1981);
    let x_1983 : f32 = u_xlat47;
    let x_1985 : vec4<f32> = u_xlat11;
    let x_1987 : vec3<f32> = (vec3<f32>(x_1983, x_1983, x_1983) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1988 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
    let x_1990 : vec4<f32> = u_xlat9;
    let x_1992 : f32 = u_xlat35;
    let x_1995 : vec3<f32> = u_xlat2;
    let x_1996 : vec3<f32> = ((vec3<f32>(x_1990.x, x_1990.y, x_1990.z) * vec3<f32>(x_1992, x_1992, x_1992)) + x_1995);
    let x_1997 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
    let x_1999 : vec4<f32> = u_xlat9;
    let x_2001 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1999.x, x_1999.y, x_1999.z), vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2004 : f32 = u_xlat47;
    u_xlat47 = max(x_2004, 1.17549435e-38f);
    let x_2006 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2006);
    let x_2008 : f32 = u_xlat47;
    let x_2010 : vec4<f32> = u_xlat9;
    let x_2012 : vec3<f32> = (vec3<f32>(x_2008, x_2008, x_2008) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
    let x_2013 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
    let x_2015 : vec4<f32> = u_xlat1;
    let x_2017 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2015.x, x_2015.y, x_2015.z), vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2020, 0.0f, 1.0f);
    let x_2022 : vec4<f32> = u_xlat10;
    let x_2024 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2027, 0.0f, 1.0f);
    let x_2029 : f32 = u_xlat47;
    let x_2030 : f32 = u_xlat47;
    u_xlat47 = (x_2029 * x_2030);
    let x_2032 : f32 = u_xlat47;
    let x_2034 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2032 * x_2034) + 1.00001001358032226562f);
    let x_2037 : f32 = u_xlat48;
    let x_2038 : f32 = u_xlat48;
    u_xlat48 = (x_2037 * x_2038);
    let x_2040 : f32 = u_xlat47;
    let x_2041 : f32 = u_xlat47;
    u_xlat47 = (x_2040 * x_2041);
    let x_2043 : f32 = u_xlat48;
    u_xlat48 = max(x_2043, 0.10000000149011611938f);
    let x_2045 : f32 = u_xlat47;
    let x_2046 : f32 = u_xlat48;
    u_xlat47 = (x_2045 * x_2046);
    let x_2048 : f32 = u_xlat45;
    let x_2049 : f32 = u_xlat47;
    u_xlat47 = (x_2048 * x_2049);
    let x_2051 : f32 = u_xlat43;
    let x_2052 : f32 = u_xlat47;
    u_xlat47 = (x_2051 / x_2052);
    let x_2054 : vec4<f32> = u_xlat5;
    let x_2056 : f32 = u_xlat47;
    let x_2059 : vec4<f32> = u_xlat4;
    let x_2061 : vec3<f32> = ((vec3<f32>(x_2054.x, x_2054.y, x_2054.z) * vec3<f32>(x_2056, x_2056, x_2056)) + vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
    let x_2062 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
    let x_2064 : vec4<f32> = u_xlat9;
    let x_2066 : vec4<f32> = u_xlat11;
    let x_2069 : vec4<f32> = u_xlat8;
    let x_2071 : vec3<f32> = ((vec3<f32>(x_2064.x, x_2064.y, x_2064.z) * vec3<f32>(x_2066.x, x_2066.y, x_2066.z)) + vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);

    continuing {
      let x_2074 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2074 + bitcast<u32>(1i));
    }
  }
  let x_2076 : vec4<f32> = u_xlat3;
  let x_2078 : f32 = u_xlat14;
  let x_2081 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2076.x, x_2076.y, x_2076.z) * vec3<f32>(x_2078, x_2078, x_2078)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat8;
  let x_2086 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2084.x, x_2084.y, x_2084.z) + x_2086);
  let x_2090 : f32 = u_xlat42;
  let x_2092 : vec3<f32> = u_xlat0;
  let x_2093 : vec3<f32> = (vec3<f32>(x_2090, x_2090, x_2090) * x_2092);
  let x_2094 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
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


