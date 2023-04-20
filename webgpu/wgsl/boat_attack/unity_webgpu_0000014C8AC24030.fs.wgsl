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

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_606 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_995 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1183 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1472 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

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

var<private> u_xlatu31 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
  var txVec0 : vec3<f32>;
  var x_948 : f32;
  var x_1078 : f32;
  var x_1089 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1608 : f32;
  var x_1618 : f32;
  var txVec1 : vec3<f32>;
  var x_2039 : f32;
  var x_2052 : f32;
  var x_2100 : f32;
  var x_2111 : vec3<f32>;
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
  let x_598 : vec3<f32> = vs_TEXCOORD7;
  let x_608 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres0;
  let x_611 : vec3<f32> = (x_598 + -(vec3<f32>(x_608.x, x_608.y, x_608.z)));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres1;
  let x_619 : vec3<f32> = (x_614 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_625 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres2;
  let x_628 : vec3<f32> = (x_622 + -(vec3<f32>(x_625.x, x_625.y, x_625.z)));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres3;
  let x_636 : vec3<f32> = (x_631 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_657 : vec4<f32> = u_xlat7;
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = x_606.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_665 < x_667);
  let x_670 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_686);
  let x_691 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_691);
  let x_695 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_695);
  let x_698 : vec4<f32> = u_xlat3;
  let x_700 : vec4<f32> = u_xlat4;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(x_700.y, x_700.z, x_700.w));
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat3;
  let x_708 : vec3<f32> = max(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_708.x, x_708.y, x_708.z);
  let x_711 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_711, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_716 : f32 = u_xlat43;
  u_xlat43 = (-(x_716) + 4.0f);
  let x_721 : f32 = u_xlat43;
  u_xlatu43 = u32(x_721);
  let x_725 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_725) << bitcast<u32>(2i));
  let x_728 : vec3<f32> = vs_TEXCOORD7;
  let x_730 : i32 = u_xlati43;
  let x_733 : i32 = u_xlati43;
  let x_737 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_730 + 1i) / 4i)][((x_733 + 1i) % 4i)];
  let x_739 : vec3<f32> = (vec3<f32>(x_728.y, x_728.y, x_728.y) * vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : i32 = u_xlati43;
  let x_744 : i32 = u_xlati43;
  let x_747 : vec4<f32> = x_606.x_MainLightWorldToShadow[(x_742 / 4i)][(x_744 % 4i)];
  let x_749 : vec3<f32> = vs_TEXCOORD7;
  let x_752 : vec4<f32> = u_xlat3;
  let x_754 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749.x, x_749.x, x_749.x)) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : i32 = u_xlati43;
  let x_760 : i32 = u_xlati43;
  let x_764 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_757 + 2i) / 4i)][((x_760 + 2i) % 4i)];
  let x_766 : vec3<f32> = vs_TEXCOORD7;
  let x_769 : vec4<f32> = u_xlat3;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_766.z, x_766.z, x_766.z)) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat3;
  let x_776 : i32 = u_xlati43;
  let x_779 : i32 = u_xlati43;
  let x_783 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_776 + 3i) / 4i)][((x_779 + 3i) % 4i)];
  let x_785 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_793 : vec4<f32> = vs_TEXCOORD0;
  let x_796 : f32 = x_111.x_GlobalMipBias.x;
  let x_797 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_793.z, x_793.w), x_796);
  u_xlat4 = x_797;
  let x_802 : vec4<f32> = vs_TEXCOORD0;
  let x_805 : f32 = x_111.x_GlobalMipBias.x;
  let x_806 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_802.z, x_802.w), x_805);
  let x_807 : vec3<f32> = vec3<f32>(x_806.x, x_806.y, x_806.z);
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat4;
  let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat43;
  u_xlat43 = (x_822 + 0.5f);
  let x_824 : f32 = u_xlat43;
  let x_826 : vec4<f32> = u_xlat6;
  let x_828 : vec3<f32> = (vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = u_xlat4.w;
  u_xlat43 = max(x_832, 0.00009999999747378752f);
  let x_835 : vec4<f32> = u_xlat4;
  let x_837 : f32 = u_xlat43;
  let x_839 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) / vec3<f32>(x_837, x_837, x_837));
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_843) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_849 : f32 = u_xlat28;
  let x_850 : f32 = u_xlat43;
  u_xlat44 = (x_849 + -(x_850));
  let x_853 : f32 = u_xlat43;
  let x_855 : vec4<f32> = u_xlat5;
  let x_857 : vec3<f32> = (vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat5;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_865 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec3<f32> = u_xlat0;
  let x_869 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.x, x_867.x) * vec3<f32>(x_869.x, x_869.y, x_869.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : f32 = u_xlat28;
  u_xlat0.x = (-(x_877) + 1.0f);
  let x_882 : f32 = u_xlat0.x;
  let x_884 : f32 = u_xlat0.x;
  u_xlat28 = (x_882 * x_884);
  let x_886 : f32 = u_xlat28;
  u_xlat28 = max(x_886, 0.0078125f);
  let x_889 : f32 = u_xlat28;
  let x_890 : f32 = u_xlat28;
  u_xlat43 = (x_889 * x_890);
  let x_892 : f32 = u_xlat44;
  u_xlat44 = (x_892 + 1.0f);
  let x_894 : f32 = u_xlat44;
  u_xlat44 = clamp(x_894, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat28;
  u_xlat45 = ((x_897 * 4.0f) + 2.0f);
  let x_900 : f32 = u_xlat14;
  u_xlat14 = min(x_900, 1.0f);
  let x_904 : vec4<f32> = u_xlat3;
  let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
  let x_907 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_905.x, x_905.y, x_907);
  let x_919 : vec3<f32> = txVec0;
  let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
  u_xlat3.x = x_921;
  let x_925 : f32 = x_606.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_925) + 1.0f);
  let x_929 : f32 = u_xlat3.x;
  let x_931 : f32 = x_606.x_MainLightShadowParams.x;
  let x_933 : f32 = u_xlat17;
  u_xlat3.x = ((x_929 * x_931) + x_933);
  let x_938 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_938);
  let x_942 : f32 = u_xlat3.z;
  u_xlatb31 = (x_942 >= 1.0f);
  let x_944 : bool = u_xlatb31;
  let x_945 : bool = u_xlatb17;
  u_xlatb17 = (x_944 | x_945);
  let x_947 : bool = u_xlatb17;
  if (x_947) {
    x_948 = 1.0f;
  } else {
    let x_953 : f32 = u_xlat3.x;
    x_948 = x_953;
  }
  let x_954 : f32 = x_948;
  u_xlat3.x = x_954;
  let x_956 : vec3<f32> = vs_TEXCOORD7;
  let x_958 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_960 : vec3<f32> = (x_956 + -(x_958));
  let x_961 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_969 : f32 = u_xlat17;
  let x_971 : f32 = x_606.x_MainLightShadowParams.z;
  let x_974 : f32 = x_606.x_MainLightShadowParams.w;
  u_xlat31 = ((x_969 * x_971) + x_974);
  let x_976 : f32 = u_xlat31;
  u_xlat31 = clamp(x_976, 0.0f, 1.0f);
  let x_980 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_980) + 1.0f);
  let x_983 : f32 = u_xlat31;
  let x_984 : f32 = u_xlat46;
  let x_987 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_983 * x_984) + x_987);
  let x_997 : f32 = x_995.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_997 == -1.0f));
  let x_999 : bool = u_xlatb31;
  if (x_999) {
    let x_1002 : vec3<f32> = vs_TEXCOORD7;
    let x_1005 : vec4<f32> = x_995.x_MainLightWorldToLight[1i];
    let x_1007 : vec2<f32> = (vec2<f32>(x_1002.y, x_1002.y) * vec2<f32>(x_1005.x, x_1005.y));
    let x_1008 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
    let x_1011 : vec4<f32> = x_995.x_MainLightWorldToLight[0i];
    let x_1013 : vec3<f32> = vs_TEXCOORD7;
    let x_1016 : vec4<f32> = u_xlat7;
    let x_1018 : vec2<f32> = ((vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(x_1013.x, x_1013.x)) + vec2<f32>(x_1016.x, x_1016.y));
    let x_1019 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
    let x_1022 : vec4<f32> = x_995.x_MainLightWorldToLight[2i];
    let x_1024 : vec3<f32> = vs_TEXCOORD7;
    let x_1027 : vec4<f32> = u_xlat7;
    let x_1029 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1024.z, x_1024.z)) + vec2<f32>(x_1027.x, x_1027.y));
    let x_1030 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
    let x_1032 : vec4<f32> = u_xlat7;
    let x_1035 : vec4<f32> = x_995.x_MainLightWorldToLight[3i];
    let x_1037 : vec2<f32> = (vec2<f32>(x_1032.x, x_1032.y) + vec2<f32>(x_1035.x, x_1035.y));
    let x_1038 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
    let x_1040 : vec4<f32> = u_xlat7;
    let x_1043 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1044 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
    let x_1051 : vec4<f32> = u_xlat7;
    let x_1054 : f32 = x_111.x_GlobalMipBias.x;
    let x_1055 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1051.x, x_1051.y), x_1054);
    u_xlat7 = x_1055;
    let x_1060 : f32 = x_995.x_MainLightCookieTextureFormat;
    let x_1062 : f32 = x_995.x_MainLightCookieTextureFormat;
    let x_1064 : f32 = x_995.x_MainLightCookieTextureFormat;
    let x_1066 : f32 = x_995.x_MainLightCookieTextureFormat;
    let x_1067 : vec4<f32> = vec4<f32>(x_1060, x_1062, x_1064, x_1066);
    let x_1074 : vec4<bool> = (vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1067.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1074.x, x_1074.y);
    let x_1077 : bool = u_xlatb8.y;
    if (x_1077) {
      let x_1082 : f32 = u_xlat7.w;
      x_1078 = x_1082;
    } else {
      let x_1085 : f32 = u_xlat7.x;
      x_1078 = x_1085;
    }
    let x_1086 : f32 = x_1078;
    u_xlat31 = x_1086;
    let x_1088 : bool = u_xlatb8.x;
    if (x_1088) {
      let x_1092 : vec4<f32> = u_xlat7;
      x_1089 = vec3<f32>(x_1092.x, x_1092.y, x_1092.z);
    } else {
      let x_1095 : f32 = u_xlat31;
      x_1089 = vec3<f32>(x_1095, x_1095, x_1095);
    }
    let x_1097 : vec3<f32> = x_1089;
    let x_1098 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1104 : vec4<f32> = u_xlat7;
  let x_1107 : vec4<f32> = x_111.x_MainLightColor;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec3<f32> = u_xlat2;
  let x_1114 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1112), vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : f32 = u_xlat31;
  let x_1118 : f32 = u_xlat31;
  u_xlat31 = (x_1117 + x_1118);
  let x_1120 : vec4<f32> = u_xlat1;
  let x_1122 : f32 = u_xlat31;
  let x_1126 : vec3<f32> = u_xlat2;
  let x_1128 : vec3<f32> = ((vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * -(vec3<f32>(x_1122, x_1122, x_1122))) + -(x_1126));
  let x_1129 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec4<f32> = u_xlat1;
  let x_1133 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1131.x, x_1131.y, x_1131.z), x_1133);
  let x_1135 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1135, 0.0f, 1.0f);
  let x_1137 : f32 = u_xlat31;
  u_xlat31 = (-(x_1137) + 1.0f);
  let x_1140 : f32 = u_xlat31;
  let x_1141 : f32 = u_xlat31;
  u_xlat31 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat31;
  let x_1144 : f32 = u_xlat31;
  u_xlat31 = (x_1143 * x_1144);
  let x_1147 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1147) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1154 : f32 = u_xlat0.x;
  let x_1155 : f32 = u_xlat46;
  u_xlat0.x = (x_1154 * x_1155);
  let x_1159 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1159 * 6.0f);
  let x_1171 : vec4<f32> = u_xlat8;
  let x_1174 : f32 = u_xlat0.x;
  let x_1175 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1171.x, x_1171.y, x_1171.z), x_1174);
  u_xlat8 = x_1175;
  let x_1177 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1177 + -1.0f);
  let x_1185 : f32 = x_1183.unity_SpecCube0_HDR.w;
  let x_1187 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1185 * x_1187) + 1.0f);
  let x_1192 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1192, 0.0f);
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1196);
  let x_1200 : f32 = u_xlat0.x;
  let x_1202 : f32 = x_1183.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1200 * x_1202);
  let x_1206 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1206);
  let x_1210 : f32 = u_xlat0.x;
  let x_1212 : f32 = x_1183.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1210 * x_1212);
  let x_1215 : vec4<f32> = u_xlat8;
  let x_1217 : vec3<f32> = u_xlat0;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(x_1217.x, x_1217.x, x_1217.x));
  let x_1220 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : f32 = u_xlat28;
  let x_1224 : f32 = u_xlat28;
  let x_1228 : vec2<f32> = ((vec2<f32>(x_1222, x_1222) * vec2<f32>(x_1224, x_1224)) + vec2<f32>(-1.0f, 1.0f));
  let x_1229 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1228.x, x_1229.y, x_1228.y);
  let x_1232 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1232);
  let x_1234 : vec4<f32> = u_xlat5;
  let x_1237 : f32 = u_xlat44;
  let x_1239 : vec3<f32> = (-(vec3<f32>(x_1234.x, x_1234.y, x_1234.z)) + vec3<f32>(x_1237, x_1237, x_1237));
  let x_1240 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : f32 = u_xlat31;
  let x_1244 : vec4<f32> = u_xlat9;
  let x_1247 : vec4<f32> = u_xlat5;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1242, x_1242, x_1242) * vec3<f32>(x_1244.x, x_1244.y, x_1244.z)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : f32 = u_xlat28;
  let x_1254 : vec4<f32> = u_xlat9;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252, x_1252, x_1252) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat8;
  let x_1261 : vec4<f32> = u_xlat9;
  let x_1263 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat4;
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1271 : vec4<f32> = u_xlat8;
  let x_1273 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1277 : f32 = u_xlat3.x;
  let x_1279 : f32 = x_1183.unity_LightData.z;
  u_xlat28 = (x_1277 * x_1279);
  let x_1281 : vec4<f32> = u_xlat1;
  let x_1284 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1287, 0.0f, 1.0f);
  let x_1289 : f32 = u_xlat28;
  let x_1290 : f32 = u_xlat44;
  u_xlat28 = (x_1289 * x_1290);
  let x_1292 : f32 = u_xlat28;
  let x_1294 : vec4<f32> = u_xlat7;
  let x_1296 : vec3<f32> = (vec3<f32>(x_1292, x_1292, x_1292) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec3<f32> = u_xlat2;
  let x_1301 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1303 : vec3<f32> = (x_1299 + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat8;
  let x_1308 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : f32 = u_xlat28;
  u_xlat28 = max(x_1311, 1.17549435e-38f);
  let x_1314 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1314);
  let x_1316 : f32 = u_xlat28;
  let x_1318 : vec4<f32> = u_xlat8;
  let x_1320 : vec3<f32> = (vec3<f32>(x_1316, x_1316, x_1316) * vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat1;
  let x_1325 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1328, 0.0f, 1.0f);
  let x_1331 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1333 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1336 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1336, 0.0f, 1.0f);
  let x_1338 : f32 = u_xlat28;
  let x_1339 : f32 = u_xlat28;
  u_xlat28 = (x_1338 * x_1339);
  let x_1341 : f32 = u_xlat28;
  let x_1343 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1341 * x_1343) + 1.00001001358032226562f);
  let x_1347 : f32 = u_xlat44;
  let x_1348 : f32 = u_xlat44;
  u_xlat44 = (x_1347 * x_1348);
  let x_1350 : f32 = u_xlat28;
  let x_1351 : f32 = u_xlat28;
  u_xlat28 = (x_1350 * x_1351);
  let x_1353 : f32 = u_xlat44;
  u_xlat44 = max(x_1353, 0.10000000149011611938f);
  let x_1356 : f32 = u_xlat28;
  let x_1357 : f32 = u_xlat44;
  u_xlat28 = (x_1356 * x_1357);
  let x_1359 : f32 = u_xlat45;
  let x_1360 : f32 = u_xlat28;
  u_xlat28 = (x_1359 * x_1360);
  let x_1362 : f32 = u_xlat43;
  let x_1363 : f32 = u_xlat28;
  u_xlat28 = (x_1362 / x_1363);
  let x_1365 : vec4<f32> = u_xlat5;
  let x_1367 : f32 = u_xlat28;
  let x_1370 : vec4<f32> = u_xlat6;
  let x_1372 : vec3<f32> = ((vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(x_1367, x_1367, x_1367)) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1375 : vec4<f32> = u_xlat7;
  let x_1377 : vec4<f32> = u_xlat8;
  let x_1379 : vec3<f32> = (vec3<f32>(x_1375.x, x_1375.y, x_1375.z) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1383 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1385 : f32 = x_1183.unity_LightData.y;
  u_xlat28 = min(x_1383, x_1385);
  let x_1388 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1388));
  let x_1391 : f32 = u_xlat17;
  let x_1393 : f32 = x_606.x_AdditionalShadowFadeParams.x;
  let x_1396 : f32 = x_606.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1391 * x_1393) + x_1396);
  let x_1398 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1398, 0.0f, 1.0f);
  let x_1401 : f32 = x_995.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1403 : f32 = x_995.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1405 : f32 = x_995.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1407 : f32 = x_995.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1408 : vec4<f32> = vec4<f32>(x_1401, x_1403, x_1405, x_1407);
  let x_1414 : vec4<bool> = (vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1408.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1415 : vec2<bool> = vec2<bool>(x_1414.x, x_1414.y);
  let x_1416 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1415.x, x_1415.y, x_1416.z, x_1416.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1428 : u32 = u_xlatu_loop_1;
    let x_1429 : u32 = u_xlatu28;
    if ((x_1428 < x_1429)) {
    } else {
      break;
    }
    let x_1432 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1432 >> 2u);
    let x_1435 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1435 & 3u));
    let x_1438 : u32 = u_xlatu46;
    let x_1441 : vec4<f32> = x_1183.unity_LightIndices[bitcast<i32>(x_1438)];
    let x_1451 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1456 : vec4<u32> = indexable[x_1451];
    u_xlat46 = dot(x_1441, bitcast<vec4<f32>>(x_1456));
    let x_1460 : f32 = u_xlat46;
    u_xlati46 = i32(x_1460);
    let x_1462 : vec3<f32> = vs_TEXCOORD7;
    let x_1473 : i32 = u_xlati46;
    let x_1475 : vec4<f32> = x_1472.x_AdditionalLightsPosition[x_1473];
    let x_1478 : i32 = u_xlati46;
    let x_1480 : vec4<f32> = x_1472.x_AdditionalLightsPosition[x_1478];
    let x_1482 : vec3<f32> = ((-(x_1462) * vec3<f32>(x_1475.w, x_1475.w, x_1475.w)) + vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1483 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
    let x_1486 : vec4<f32> = u_xlat9;
    let x_1488 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1486.x, x_1486.y, x_1486.z), vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1491 : f32 = u_xlat47;
    u_xlat47 = max(x_1491, 0.00006103515625f);
    let x_1494 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1494);
    let x_1496 : f32 = u_xlat48;
    let x_1498 : vec4<f32> = u_xlat9;
    let x_1500 : vec3<f32> = (vec3<f32>(x_1496, x_1496, x_1496) * vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1501 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
    let x_1504 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1504);
    let x_1506 : f32 = u_xlat47;
    let x_1507 : i32 = u_xlati46;
    let x_1509 : f32 = x_1472.x_AdditionalLightsAttenuation[x_1507].x;
    u_xlat47 = (x_1506 * x_1509);
    let x_1511 : f32 = u_xlat47;
    let x_1513 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1511) * x_1513) + 1.0f);
    let x_1516 : f32 = u_xlat47;
    u_xlat47 = max(x_1516, 0.0f);
    let x_1518 : f32 = u_xlat47;
    let x_1519 : f32 = u_xlat47;
    u_xlat47 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat47;
    let x_1522 : f32 = u_xlat49;
    u_xlat47 = (x_1521 * x_1522);
    let x_1524 : i32 = u_xlati46;
    let x_1526 : vec4<f32> = x_1472.x_AdditionalLightsSpotDir[x_1524];
    let x_1528 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : f32 = u_xlat49;
    let x_1532 : i32 = u_xlati46;
    let x_1534 : f32 = x_1472.x_AdditionalLightsAttenuation[x_1532].z;
    let x_1536 : i32 = u_xlati46;
    let x_1538 : f32 = x_1472.x_AdditionalLightsAttenuation[x_1536].w;
    u_xlat49 = ((x_1531 * x_1534) + x_1538);
    let x_1540 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1540, 0.0f, 1.0f);
    let x_1542 : f32 = u_xlat49;
    let x_1543 : f32 = u_xlat49;
    u_xlat49 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat47;
    let x_1546 : f32 = u_xlat49;
    u_xlat47 = (x_1545 * x_1546);
    let x_1549 : i32 = u_xlati46;
    let x_1551 : f32 = x_606.x_AdditionalShadowParams[x_1549].w;
    u_xlati49 = i32(x_1551);
    let x_1554 : i32 = u_xlati49;
    u_xlatb50 = (x_1554 >= 0i);
    let x_1556 : bool = u_xlatb50;
    if (x_1556) {
      let x_1560 : i32 = u_xlati46;
      let x_1562 : f32 = x_606.x_AdditionalShadowParams[x_1560].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1562, x_1562, x_1562, x_1562))));
      let x_1566 : bool = u_xlatb50;
      if (x_1566) {
        let x_1570 : vec4<f32> = u_xlat10;
        let x_1573 : vec4<f32> = u_xlat10;
        let x_1576 : vec4<bool> = (abs(vec4<f32>(x_1570.z, x_1570.z, x_1570.y, x_1570.z)) >= abs(vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.x)));
        let x_1578 : vec3<bool> = vec3<bool>(x_1576.x, x_1576.y, x_1576.z);
        let x_1579 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
        let x_1582 : bool = u_xlatb11.y;
        let x_1584 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1582 & x_1584);
        let x_1586 : vec4<f32> = u_xlat10;
        let x_1589 : vec4<bool> = (-(vec4<f32>(x_1586.z, x_1586.y, x_1586.z, x_1586.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1590 : vec3<bool> = vec3<bool>(x_1589.x, x_1589.y, x_1589.w);
        let x_1591 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1590.x, x_1590.y, x_1591.z, x_1590.z);
        let x_1594 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1594);
        let x_1599 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1599);
        let x_1604 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1604);
        let x_1607 : bool = u_xlatb11.z;
        if (x_1607) {
          let x_1612 : f32 = u_xlat11.y;
          x_1608 = x_1612;
        } else {
          let x_1614 : f32 = u_xlat51;
          x_1608 = x_1614;
        }
        let x_1615 : f32 = x_1608;
        u_xlat51 = x_1615;
        let x_1617 : bool = u_xlatb50;
        if (x_1617) {
          let x_1622 : f32 = u_xlat11.x;
          x_1618 = x_1622;
        } else {
          let x_1624 : f32 = u_xlat51;
          x_1618 = x_1624;
        }
        let x_1625 : f32 = x_1618;
        u_xlat50 = x_1625;
        let x_1626 : i32 = u_xlati46;
        let x_1628 : f32 = x_606.x_AdditionalShadowParams[x_1626].w;
        u_xlat51 = trunc(x_1628);
        let x_1630 : f32 = u_xlat50;
        let x_1631 : f32 = u_xlat51;
        u_xlat50 = (x_1630 + x_1631);
        let x_1633 : f32 = u_xlat50;
        u_xlati49 = i32(x_1633);
      }
      let x_1635 : i32 = u_xlati49;
      u_xlati49 = (x_1635 << bitcast<u32>(2i));
      let x_1637 : vec3<f32> = vs_TEXCOORD7;
      let x_1639 : i32 = u_xlati49;
      let x_1642 : i32 = u_xlati49;
      let x_1646 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1639 + 1i) / 4i)][((x_1642 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1637.y, x_1637.y, x_1637.y, x_1637.y) * x_1646);
      let x_1648 : i32 = u_xlati49;
      let x_1650 : i32 = u_xlati49;
      let x_1653 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[(x_1648 / 4i)][(x_1650 % 4i)];
      let x_1654 : vec3<f32> = vs_TEXCOORD7;
      let x_1657 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1653 * vec4<f32>(x_1654.x, x_1654.x, x_1654.x, x_1654.x)) + x_1657);
      let x_1659 : i32 = u_xlati49;
      let x_1662 : i32 = u_xlati49;
      let x_1666 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1659 + 2i) / 4i)][((x_1662 + 2i) % 4i)];
      let x_1667 : vec3<f32> = vs_TEXCOORD7;
      let x_1670 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1666 * vec4<f32>(x_1667.z, x_1667.z, x_1667.z, x_1667.z)) + x_1670);
      let x_1672 : vec4<f32> = u_xlat11;
      let x_1673 : i32 = u_xlati49;
      let x_1676 : i32 = u_xlati49;
      let x_1680 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1673 + 3i) / 4i)][((x_1676 + 3i) % 4i)];
      u_xlat11 = (x_1672 + x_1680);
      let x_1682 : vec4<f32> = u_xlat11;
      let x_1684 : vec4<f32> = u_xlat11;
      let x_1686 : vec3<f32> = (vec3<f32>(x_1682.x, x_1682.y, x_1682.z) / vec3<f32>(x_1684.w, x_1684.w, x_1684.w));
      let x_1687 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
      let x_1690 : vec4<f32> = u_xlat11;
      let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
      let x_1693 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
      let x_1701 : vec3<f32> = txVec1;
      let x_1703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
      u_xlat49 = x_1703;
      let x_1704 : i32 = u_xlati46;
      let x_1706 : f32 = x_606.x_AdditionalShadowParams[x_1704].x;
      u_xlat50 = (1.0f + -(x_1706));
      let x_1709 : f32 = u_xlat49;
      let x_1710 : i32 = u_xlati46;
      let x_1712 : f32 = x_606.x_AdditionalShadowParams[x_1710].x;
      let x_1714 : f32 = u_xlat50;
      u_xlat49 = ((x_1709 * x_1712) + x_1714);
      let x_1717 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1717);
      let x_1721 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1721 >= 1.0f);
      let x_1723 : bool = u_xlatb50;
      let x_1724 : bool = u_xlatb51;
      u_xlatb50 = (x_1723 | x_1724);
      let x_1726 : bool = u_xlatb50;
      let x_1727 : f32 = u_xlat49;
      u_xlat49 = select(x_1727, 1.0f, x_1726);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1730 : f32 = u_xlat49;
    u_xlat50 = (-(x_1730) + 1.0f);
    let x_1733 : f32 = u_xlat44;
    let x_1734 : f32 = u_xlat50;
    let x_1736 : f32 = u_xlat49;
    u_xlat49 = ((x_1733 * x_1734) + x_1736);
    let x_1739 : i32 = u_xlati46;
    u_xlati50 = (1i << bitcast<u32>((x_1739 & 31i)));
    let x_1742 : i32 = u_xlati50;
    let x_1745 : f32 = x_995.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1742) & bitcast<u32>(x_1745)));
    let x_1749 : i32 = u_xlati50;
    if ((x_1749 != 0i)) {
      let x_1753 : i32 = u_xlati46;
      let x_1755 : f32 = x_995.x_AdditionalLightsLightTypes[x_1753].el;
      u_xlati50 = i32(x_1755);
      let x_1758 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1758 != 0i));
      let x_1762 : i32 = u_xlati46;
      u_xlati52 = (x_1762 << bitcast<u32>(2i));
      let x_1764 : i32 = u_xlati51;
      if ((x_1764 != 0i)) {
        let x_1768 : vec3<f32> = vs_TEXCOORD7;
        let x_1770 : i32 = u_xlati52;
        let x_1773 : i32 = u_xlati52;
        let x_1777 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1770 + 1i) / 4i)][((x_1773 + 1i) % 4i)];
        let x_1779 : vec3<f32> = (vec3<f32>(x_1768.y, x_1768.y, x_1768.y) * vec3<f32>(x_1777.x, x_1777.y, x_1777.w));
        let x_1780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
        let x_1782 : i32 = u_xlati52;
        let x_1784 : i32 = u_xlati52;
        let x_1787 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[(x_1782 / 4i)][(x_1784 % 4i)];
        let x_1789 : vec3<f32> = vs_TEXCOORD7;
        let x_1792 : vec4<f32> = u_xlat11;
        let x_1794 : vec3<f32> = ((vec3<f32>(x_1787.x, x_1787.y, x_1787.w) * vec3<f32>(x_1789.x, x_1789.x, x_1789.x)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
        let x_1795 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
        let x_1797 : i32 = u_xlati52;
        let x_1800 : i32 = u_xlati52;
        let x_1804 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1797 + 2i) / 4i)][((x_1800 + 2i) % 4i)];
        let x_1806 : vec3<f32> = vs_TEXCOORD7;
        let x_1809 : vec4<f32> = u_xlat11;
        let x_1811 : vec3<f32> = ((vec3<f32>(x_1804.x, x_1804.y, x_1804.w) * vec3<f32>(x_1806.z, x_1806.z, x_1806.z)) + vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
        let x_1814 : vec4<f32> = u_xlat11;
        let x_1816 : i32 = u_xlati52;
        let x_1819 : i32 = u_xlati52;
        let x_1823 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1816 + 3i) / 4i)][((x_1819 + 3i) % 4i)];
        let x_1825 : vec3<f32> = (vec3<f32>(x_1814.x, x_1814.y, x_1814.z) + vec3<f32>(x_1823.x, x_1823.y, x_1823.w));
        let x_1826 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
        let x_1828 : vec4<f32> = u_xlat11;
        let x_1830 : vec4<f32> = u_xlat11;
        let x_1832 : vec2<f32> = (vec2<f32>(x_1828.x, x_1828.y) / vec2<f32>(x_1830.z, x_1830.z));
        let x_1833 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1832.x, x_1832.y, x_1833.z, x_1833.w);
        let x_1835 : vec4<f32> = u_xlat11;
        let x_1838 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1839 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1838.x, x_1838.y, x_1839.z, x_1839.w);
        let x_1841 : vec4<f32> = u_xlat11;
        let x_1845 : vec2<f32> = clamp(vec2<f32>(x_1841.x, x_1841.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
        let x_1848 : i32 = u_xlati46;
        let x_1850 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_1848];
        let x_1852 : vec4<f32> = u_xlat11;
        let x_1855 : i32 = u_xlati46;
        let x_1857 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_1855];
        let x_1859 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(x_1852.x, x_1852.y)) + vec2<f32>(x_1857.z, x_1857.w));
        let x_1860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
      } else {
        let x_1863 : i32 = u_xlati50;
        u_xlatb50 = (x_1863 == 1i);
        let x_1865 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1865);
        let x_1867 : i32 = u_xlati50;
        if ((x_1867 != 0i)) {
          let x_1873 : vec3<f32> = vs_TEXCOORD7;
          let x_1875 : i32 = u_xlati52;
          let x_1878 : i32 = u_xlati52;
          let x_1882 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1875 + 1i) / 4i)][((x_1878 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1873.y, x_1873.y) * vec2<f32>(x_1882.x, x_1882.y));
          let x_1885 : i32 = u_xlati52;
          let x_1887 : i32 = u_xlati52;
          let x_1890 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[(x_1885 / 4i)][(x_1887 % 4i)];
          let x_1892 : vec3<f32> = vs_TEXCOORD7;
          let x_1895 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(x_1892.x, x_1892.x)) + x_1895);
          let x_1897 : i32 = u_xlati52;
          let x_1900 : i32 = u_xlati52;
          let x_1904 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1897 + 2i) / 4i)][((x_1900 + 2i) % 4i)];
          let x_1906 : vec3<f32> = vs_TEXCOORD7;
          let x_1909 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1904.x, x_1904.y) * vec2<f32>(x_1906.z, x_1906.z)) + x_1909);
          let x_1911 : vec2<f32> = u_xlat39;
          let x_1912 : i32 = u_xlati52;
          let x_1915 : i32 = u_xlati52;
          let x_1919 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1912 + 3i) / 4i)][((x_1915 + 3i) % 4i)];
          u_xlat39 = (x_1911 + vec2<f32>(x_1919.x, x_1919.y));
          let x_1922 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1922 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1925 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1925);
          let x_1927 : i32 = u_xlati46;
          let x_1929 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_1927];
          let x_1931 : vec2<f32> = u_xlat39;
          let x_1933 : i32 = u_xlati46;
          let x_1935 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_1933];
          let x_1937 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * x_1931) + vec2<f32>(x_1935.z, x_1935.w));
          let x_1938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
        } else {
          let x_1941 : vec3<f32> = vs_TEXCOORD7;
          let x_1943 : i32 = u_xlati52;
          let x_1946 : i32 = u_xlati52;
          let x_1950 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1943 + 1i) / 4i)][((x_1946 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1941.y, x_1941.y, x_1941.y, x_1941.y) * x_1950);
          let x_1952 : i32 = u_xlati52;
          let x_1954 : i32 = u_xlati52;
          let x_1957 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[(x_1952 / 4i)][(x_1954 % 4i)];
          let x_1958 : vec3<f32> = vs_TEXCOORD7;
          let x_1961 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1957 * vec4<f32>(x_1958.x, x_1958.x, x_1958.x, x_1958.x)) + x_1961);
          let x_1963 : i32 = u_xlati52;
          let x_1966 : i32 = u_xlati52;
          let x_1970 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1963 + 2i) / 4i)][((x_1966 + 2i) % 4i)];
          let x_1971 : vec3<f32> = vs_TEXCOORD7;
          let x_1974 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1970 * vec4<f32>(x_1971.z, x_1971.z, x_1971.z, x_1971.z)) + x_1974);
          let x_1976 : vec4<f32> = u_xlat12;
          let x_1977 : i32 = u_xlati52;
          let x_1980 : i32 = u_xlati52;
          let x_1984 : vec4<f32> = x_995.x_AdditionalLightsWorldToLights[((x_1977 + 3i) / 4i)][((x_1980 + 3i) % 4i)];
          u_xlat12 = (x_1976 + x_1984);
          let x_1986 : vec4<f32> = u_xlat12;
          let x_1988 : vec4<f32> = u_xlat12;
          let x_1990 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) / vec3<f32>(x_1988.w, x_1988.w, x_1988.w));
          let x_1991 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
          let x_1993 : vec4<f32> = u_xlat12;
          let x_1995 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1993.x, x_1993.y, x_1993.z), vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
          let x_1998 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1998);
          let x_2000 : f32 = u_xlat50;
          let x_2002 : vec4<f32> = u_xlat12;
          let x_2004 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
          let x_2005 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
          let x_2007 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2007.x, x_2007.y, x_2007.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2012 : f32 = u_xlat50;
          u_xlat50 = max(x_2012, 0.00000099999999747524f);
          let x_2015 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2015);
          let x_2017 : f32 = u_xlat50;
          let x_2019 : vec4<f32> = u_xlat12;
          let x_2021 : vec3<f32> = (vec3<f32>(x_2017, x_2017, x_2017) * vec3<f32>(x_2019.z, x_2019.x, x_2019.y));
          let x_2022 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
          let x_2025 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2025);
          let x_2029 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2029, 0.0f, 1.0f);
          let x_2033 : vec4<f32> = u_xlat13;
          let x_2035 : vec4<bool> = (vec4<f32>(x_2033.y, x_2033.z, x_2033.y, x_2033.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2035.x, x_2035.y);
          let x_2038 : bool = u_xlatb39.x;
          if (x_2038) {
            let x_2043 : f32 = u_xlat13.x;
            x_2039 = x_2043;
          } else {
            let x_2046 : f32 = u_xlat13.x;
            x_2039 = -(x_2046);
          }
          let x_2048 : f32 = x_2039;
          u_xlat39.x = x_2048;
          let x_2051 : bool = u_xlatb39.y;
          if (x_2051) {
            let x_2056 : f32 = u_xlat13.x;
            x_2052 = x_2056;
          } else {
            let x_2059 : f32 = u_xlat13.x;
            x_2052 = -(x_2059);
          }
          let x_2061 : f32 = x_2052;
          u_xlat39.y = x_2061;
          let x_2063 : vec4<f32> = u_xlat12;
          let x_2065 : f32 = u_xlat50;
          let x_2068 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2063.x, x_2063.y) * vec2<f32>(x_2065, x_2065)) + x_2068);
          let x_2070 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2070 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2073 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2073, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2077 : i32 = u_xlati46;
          let x_2079 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_2077];
          let x_2081 : vec2<f32> = u_xlat39;
          let x_2083 : i32 = u_xlati46;
          let x_2085 : vec4<f32> = x_995.x_AdditionalLightsCookieAtlasUVRects[x_2083];
          let x_2087 : vec2<f32> = ((vec2<f32>(x_2079.x, x_2079.y) * x_2081) + vec2<f32>(x_2085.z, x_2085.w));
          let x_2088 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2087.x, x_2087.y, x_2088.z, x_2088.w);
        }
      }
      let x_2095 : vec4<f32> = u_xlat11;
      let x_2097 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2095.x, x_2095.y), 0.0f);
      u_xlat11 = x_2097;
      let x_2099 : bool = u_xlatb3.y;
      if (x_2099) {
        let x_2104 : f32 = u_xlat11.w;
        x_2100 = x_2104;
      } else {
        let x_2107 : f32 = u_xlat11.x;
        x_2100 = x_2107;
      }
      let x_2108 : f32 = x_2100;
      u_xlat50 = x_2108;
      let x_2110 : bool = u_xlatb3.x;
      if (x_2110) {
        let x_2114 : vec4<f32> = u_xlat11;
        x_2111 = vec3<f32>(x_2114.x, x_2114.y, x_2114.z);
      } else {
        let x_2117 : f32 = u_xlat50;
        x_2111 = vec3<f32>(x_2117, x_2117, x_2117);
      }
      let x_2119 : vec3<f32> = x_2111;
      let x_2120 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2126 : vec4<f32> = u_xlat11;
    let x_2128 : i32 = u_xlati46;
    let x_2130 : vec4<f32> = x_1472.x_AdditionalLightsColor[x_2128];
    let x_2132 : vec3<f32> = (vec3<f32>(x_2126.x, x_2126.y, x_2126.z) * vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
    let x_2133 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
    let x_2135 : f32 = u_xlat47;
    let x_2136 : f32 = u_xlat49;
    u_xlat46 = (x_2135 * x_2136);
    let x_2138 : vec4<f32> = u_xlat1;
    let x_2140 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2138.x, x_2138.y, x_2138.z), vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
    let x_2143 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2143, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat46;
    let x_2146 : f32 = u_xlat47;
    u_xlat46 = (x_2145 * x_2146);
    let x_2148 : f32 = u_xlat46;
    let x_2150 : vec4<f32> = u_xlat11;
    let x_2152 : vec3<f32> = (vec3<f32>(x_2148, x_2148, x_2148) * vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
    let x_2153 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
    let x_2155 : vec4<f32> = u_xlat9;
    let x_2157 : f32 = u_xlat48;
    let x_2160 : vec3<f32> = u_xlat2;
    let x_2161 : vec3<f32> = ((vec3<f32>(x_2155.x, x_2155.y, x_2155.z) * vec3<f32>(x_2157, x_2157, x_2157)) + x_2160);
    let x_2162 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
    let x_2164 : vec4<f32> = u_xlat9;
    let x_2166 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2164.x, x_2164.y, x_2164.z), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
    let x_2169 : f32 = u_xlat46;
    u_xlat46 = max(x_2169, 1.17549435e-38f);
    let x_2171 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2171);
    let x_2173 : f32 = u_xlat46;
    let x_2175 : vec4<f32> = u_xlat9;
    let x_2177 : vec3<f32> = (vec3<f32>(x_2173, x_2173, x_2173) * vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
    let x_2180 : vec4<f32> = u_xlat1;
    let x_2182 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2180.x, x_2180.y, x_2180.z), vec3<f32>(x_2182.x, x_2182.y, x_2182.z));
    let x_2185 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2185, 0.0f, 1.0f);
    let x_2187 : vec4<f32> = u_xlat10;
    let x_2189 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2187.x, x_2187.y, x_2187.z), vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
    let x_2192 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2192, 0.0f, 1.0f);
    let x_2194 : f32 = u_xlat46;
    let x_2195 : f32 = u_xlat46;
    u_xlat46 = (x_2194 * x_2195);
    let x_2197 : f32 = u_xlat46;
    let x_2199 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2197 * x_2199) + 1.00001001358032226562f);
    let x_2202 : f32 = u_xlat47;
    let x_2203 : f32 = u_xlat47;
    u_xlat47 = (x_2202 * x_2203);
    let x_2205 : f32 = u_xlat46;
    let x_2206 : f32 = u_xlat46;
    u_xlat46 = (x_2205 * x_2206);
    let x_2208 : f32 = u_xlat47;
    u_xlat47 = max(x_2208, 0.10000000149011611938f);
    let x_2210 : f32 = u_xlat46;
    let x_2211 : f32 = u_xlat47;
    u_xlat46 = (x_2210 * x_2211);
    let x_2213 : f32 = u_xlat45;
    let x_2214 : f32 = u_xlat46;
    u_xlat46 = (x_2213 * x_2214);
    let x_2216 : f32 = u_xlat43;
    let x_2217 : f32 = u_xlat46;
    u_xlat46 = (x_2216 / x_2217);
    let x_2219 : vec4<f32> = u_xlat5;
    let x_2221 : f32 = u_xlat46;
    let x_2224 : vec4<f32> = u_xlat6;
    let x_2226 : vec3<f32> = ((vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * vec3<f32>(x_2221, x_2221, x_2221)) + vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
    let x_2227 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
    let x_2229 : vec4<f32> = u_xlat9;
    let x_2231 : vec4<f32> = u_xlat11;
    let x_2234 : vec4<f32> = u_xlat8;
    let x_2236 : vec3<f32> = ((vec3<f32>(x_2229.x, x_2229.y, x_2229.z) * vec3<f32>(x_2231.x, x_2231.y, x_2231.z)) + vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
    let x_2237 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);

    continuing {
      let x_2239 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2239 + bitcast<u32>(1i));
    }
  }
  let x_2241 : vec4<f32> = u_xlat4;
  let x_2243 : f32 = u_xlat14;
  let x_2246 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2241.x, x_2241.y, x_2241.z) * vec3<f32>(x_2243, x_2243, x_2243)) + vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat8;
  let x_2251 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2249.x, x_2249.y, x_2249.z) + x_2251);
  let x_2255 : f32 = u_xlat42;
  let x_2257 : vec3<f32> = u_xlat0;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2255, x_2255, x_2255) * x_2257);
  let x_2259 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
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


