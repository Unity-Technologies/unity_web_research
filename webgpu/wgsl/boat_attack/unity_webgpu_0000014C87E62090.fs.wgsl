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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1222 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1423 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1717 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1174 : f32;
  var x_1305 : f32;
  var x_1316 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1853 : f32;
  var x_1863 : f32;
  var txVec1 : vec3<f32>;
  var x_2284 : f32;
  var x_2297 : f32;
  var x_2345 : f32;
  var x_2356 : vec3<f32>;
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
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb43;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat43;
  u_xlat43 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat43;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat43;
  u_xlat43 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat43;
  u_xlat43 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_391);
  let x_393 : f32 = u_xlat43;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat43;
  u_xlat43 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat43;
  u_xlat43 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_439);
  let x_441 : f32 = u_xlat43;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat43;
  u_xlat43 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat43;
  u_xlat43 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_509);
  let x_511 : f32 = u_xlat43;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat43;
  u_xlat43 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat43;
  u_xlat43 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_572);
  let x_574 : f32 = u_xlat43;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat43;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat43;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_824 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_941 : f32 = u_xlat43;
  u_xlat43 = (-(x_941) + 4.0f);
  let x_946 : f32 = u_xlat43;
  u_xlatu43 = u32(x_946);
  let x_950 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_950) << bitcast<u32>(2i));
  let x_953 : vec3<f32> = vs_TEXCOORD7;
  let x_955 : i32 = u_xlati43;
  let x_958 : i32 = u_xlati43;
  let x_962 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_955 + 1i) / 4i)][((x_958 + 1i) % 4i)];
  let x_964 : vec3<f32> = (vec3<f32>(x_953.y, x_953.y, x_953.y) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : i32 = u_xlati43;
  let x_969 : i32 = u_xlati43;
  let x_972 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_967 / 4i)][(x_969 % 4i)];
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.x, x_974.x)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : i32 = u_xlati43;
  let x_985 : i32 = u_xlati43;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : i32 = u_xlati43;
  let x_1004 : i32 = u_xlati43;
  let x_1008 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_1001 + 3i) / 4i)][((x_1004 + 3i) % 4i)];
  let x_1010 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1018 : vec4<f32> = vs_TEXCOORD0;
  let x_1021 : f32 = x_112.x_GlobalMipBias.x;
  let x_1022 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1018.z, x_1018.w), x_1021);
  u_xlat3 = x_1022;
  let x_1027 : vec4<f32> = vs_TEXCOORD0;
  let x_1030 : f32 = x_112.x_GlobalMipBias.x;
  let x_1031 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1027.z, x_1027.w), x_1030);
  let x_1032 : vec3<f32> = vec3<f32>(x_1031.x, x_1031.y, x_1031.z);
  let x_1033 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat3;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1040 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat1;
  let x_1044 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat43;
  u_xlat43 = (x_1047 + 0.5f);
  let x_1049 : f32 = u_xlat43;
  let x_1051 : vec4<f32> = u_xlat4;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1049, x_1049, x_1049) * vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1057 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1057, 0.00009999999747378752f);
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : f32 = u_xlat43;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) / vec3<f32>(x_1062, x_1062, x_1062));
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1068 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1068) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1074 : f32 = u_xlat28;
  let x_1075 : f32 = u_xlat43;
  u_xlat44 = (x_1074 + -(x_1075));
  let x_1078 : f32 = u_xlat43;
  let x_1080 : vec4<f32> = u_xlat5;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat5;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1090 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat0;
  let x_1094 : vec4<f32> = u_xlat5;
  let x_1099 : vec3<f32> = ((vec3<f32>(x_1092.x, x_1092.x, x_1092.x) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1100 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1102) + 1.0f);
  let x_1107 : f32 = u_xlat0.x;
  let x_1109 : f32 = u_xlat0.x;
  u_xlat28 = (x_1107 * x_1109);
  let x_1111 : f32 = u_xlat28;
  u_xlat28 = max(x_1111, 0.0078125f);
  let x_1114 : f32 = u_xlat28;
  let x_1115 : f32 = u_xlat28;
  u_xlat43 = (x_1114 * x_1115);
  let x_1117 : f32 = u_xlat44;
  u_xlat44 = (x_1117 + 1.0f);
  let x_1119 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1119, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat28;
  u_xlat45 = ((x_1122 * 4.0f) + 2.0f);
  let x_1125 : f32 = u_xlat14;
  u_xlat14 = min(x_1125, 1.0f);
  let x_1129 : vec4<f32> = u_xlat2;
  let x_1130 : vec2<f32> = vec2<f32>(x_1129.x, x_1129.y);
  let x_1132 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
  let x_1144 : vec3<f32> = txVec0;
  let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
  u_xlat2.x = x_1146;
  let x_1150 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1150) + 1.0f);
  let x_1154 : f32 = u_xlat2.x;
  let x_1156 : f32 = x_833.x_MainLightShadowParams.x;
  let x_1158 : f32 = u_xlat16;
  u_xlat2.x = ((x_1154 * x_1156) + x_1158);
  let x_1163 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1163);
  let x_1167 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1167 >= 1.0f);
  let x_1169 : bool = u_xlatb30;
  let x_1170 : bool = u_xlatb16;
  u_xlatb16 = (x_1169 | x_1170);
  let x_1172 : bool = u_xlatb16;
  if (x_1172) {
    x_1174 = 1.0f;
  } else {
    let x_1179 : f32 = u_xlat2.x;
    x_1174 = x_1179;
  }
  let x_1180 : f32 = x_1174;
  u_xlat2.x = x_1180;
  let x_1182 : vec3<f32> = vs_TEXCOORD7;
  let x_1185 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1187 : vec3<f32> = (x_1182 + -(x_1185));
  let x_1188 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : vec4<f32> = u_xlat6;
  let x_1192 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1196 : f32 = u_xlat16;
  let x_1198 : f32 = x_833.x_MainLightShadowParams.z;
  let x_1201 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1196 * x_1198) + x_1201);
  let x_1203 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1203, 0.0f, 1.0f);
  let x_1207 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1207) + 1.0f);
  let x_1210 : f32 = u_xlat30;
  let x_1211 : f32 = u_xlat46;
  let x_1214 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1210 * x_1211) + x_1214);
  let x_1224 : f32 = x_1222.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1224 == -1.0f));
  let x_1226 : bool = u_xlatb30;
  if (x_1226) {
    let x_1229 : vec3<f32> = vs_TEXCOORD7;
    let x_1232 : vec4<f32> = x_1222.x_MainLightWorldToLight[1i];
    let x_1234 : vec2<f32> = (vec2<f32>(x_1229.y, x_1229.y) * vec2<f32>(x_1232.x, x_1232.y));
    let x_1235 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
    let x_1238 : vec4<f32> = x_1222.x_MainLightWorldToLight[0i];
    let x_1240 : vec3<f32> = vs_TEXCOORD7;
    let x_1243 : vec4<f32> = u_xlat6;
    let x_1245 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240.x, x_1240.x)) + vec2<f32>(x_1243.x, x_1243.y));
    let x_1246 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
    let x_1249 : vec4<f32> = x_1222.x_MainLightWorldToLight[2i];
    let x_1251 : vec3<f32> = vs_TEXCOORD7;
    let x_1254 : vec4<f32> = u_xlat6;
    let x_1256 : vec2<f32> = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1251.z, x_1251.z)) + vec2<f32>(x_1254.x, x_1254.y));
    let x_1257 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
    let x_1259 : vec4<f32> = u_xlat6;
    let x_1262 : vec4<f32> = x_1222.x_MainLightWorldToLight[3i];
    let x_1264 : vec2<f32> = (vec2<f32>(x_1259.x, x_1259.y) + vec2<f32>(x_1262.x, x_1262.y));
    let x_1265 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
    let x_1267 : vec4<f32> = u_xlat6;
    let x_1270 : vec2<f32> = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1271 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
    let x_1278 : vec4<f32> = u_xlat6;
    let x_1281 : f32 = x_112.x_GlobalMipBias.x;
    let x_1282 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1278.x, x_1278.y), x_1281);
    u_xlat6 = x_1282;
    let x_1287 : f32 = x_1222.x_MainLightCookieTextureFormat;
    let x_1289 : f32 = x_1222.x_MainLightCookieTextureFormat;
    let x_1291 : f32 = x_1222.x_MainLightCookieTextureFormat;
    let x_1293 : f32 = x_1222.x_MainLightCookieTextureFormat;
    let x_1294 : vec4<f32> = vec4<f32>(x_1287, x_1289, x_1291, x_1293);
    let x_1301 : vec4<bool> = (vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1301.x, x_1301.y);
    let x_1304 : bool = u_xlatb7.y;
    if (x_1304) {
      let x_1309 : f32 = u_xlat6.w;
      x_1305 = x_1309;
    } else {
      let x_1312 : f32 = u_xlat6.x;
      x_1305 = x_1312;
    }
    let x_1313 : f32 = x_1305;
    u_xlat30 = x_1313;
    let x_1315 : bool = u_xlatb7.x;
    if (x_1315) {
      let x_1319 : vec4<f32> = u_xlat6;
      x_1316 = vec3<f32>(x_1319.x, x_1319.y, x_1319.z);
    } else {
      let x_1322 : f32 = u_xlat30;
      x_1316 = vec3<f32>(x_1322, x_1322, x_1322);
    }
    let x_1324 : vec3<f32> = x_1316;
    let x_1325 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1331 : vec4<f32> = u_xlat6;
  let x_1334 : vec4<f32> = x_112.x_MainLightColor;
  let x_1336 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) * vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
  let x_1337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1341 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1341;
  let x_1344 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1344;
  let x_1347 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1347;
  let x_1349 : vec4<f32> = u_xlat7;
  let x_1352 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)), vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : f32 = u_xlat30;
  let x_1356 : f32 = u_xlat30;
  u_xlat30 = (x_1355 + x_1356);
  let x_1358 : vec4<f32> = u_xlat1;
  let x_1360 : f32 = u_xlat30;
  let x_1364 : vec4<f32> = u_xlat7;
  let x_1367 : vec3<f32> = ((vec3<f32>(x_1358.x, x_1358.y, x_1358.z) * -(vec3<f32>(x_1360, x_1360, x_1360))) + -(vec3<f32>(x_1364.x, x_1364.y, x_1364.z)));
  let x_1368 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec4<f32> = u_xlat1;
  let x_1372 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1370.x, x_1370.y, x_1370.z), vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1375, 0.0f, 1.0f);
  let x_1377 : f32 = u_xlat30;
  u_xlat30 = (-(x_1377) + 1.0f);
  let x_1380 : f32 = u_xlat30;
  let x_1381 : f32 = u_xlat30;
  u_xlat30 = (x_1380 * x_1381);
  let x_1383 : f32 = u_xlat30;
  let x_1384 : f32 = u_xlat30;
  u_xlat30 = (x_1383 * x_1384);
  let x_1387 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1387) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1394 : f32 = u_xlat0.x;
  let x_1395 : f32 = u_xlat46;
  u_xlat0.x = (x_1394 * x_1395);
  let x_1399 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1399 * 6.0f);
  let x_1411 : vec4<f32> = u_xlat8;
  let x_1414 : f32 = u_xlat0.x;
  let x_1415 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1411.x, x_1411.y, x_1411.z), x_1414);
  u_xlat8 = x_1415;
  let x_1417 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1417 + -1.0f);
  let x_1425 : f32 = x_1423.unity_SpecCube0_HDR.w;
  let x_1427 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1425 * x_1427) + 1.0f);
  let x_1432 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1432, 0.0f);
  let x_1436 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1436);
  let x_1440 : f32 = u_xlat0.x;
  let x_1442 : f32 = x_1423.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1440 * x_1442);
  let x_1446 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1446);
  let x_1450 : f32 = u_xlat0.x;
  let x_1452 : f32 = x_1423.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1450 * x_1452);
  let x_1455 : vec4<f32> = u_xlat8;
  let x_1457 : vec3<f32> = u_xlat0;
  let x_1459 : vec3<f32> = (vec3<f32>(x_1455.x, x_1455.y, x_1455.z) * vec3<f32>(x_1457.x, x_1457.x, x_1457.x));
  let x_1460 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : f32 = u_xlat28;
  let x_1464 : f32 = u_xlat28;
  let x_1468 : vec2<f32> = ((vec2<f32>(x_1462, x_1462) * vec2<f32>(x_1464, x_1464)) + vec2<f32>(-1.0f, 1.0f));
  let x_1469 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1468.x, x_1469.y, x_1468.y);
  let x_1472 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1472);
  let x_1474 : vec4<f32> = u_xlat5;
  let x_1477 : f32 = u_xlat44;
  let x_1479 : vec3<f32> = (-(vec3<f32>(x_1474.x, x_1474.y, x_1474.z)) + vec3<f32>(x_1477, x_1477, x_1477));
  let x_1480 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1482 : f32 = u_xlat30;
  let x_1484 : vec4<f32> = u_xlat9;
  let x_1487 : vec4<f32> = u_xlat5;
  let x_1489 : vec3<f32> = ((vec3<f32>(x_1482, x_1482, x_1482) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z)) + vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
  let x_1490 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
  let x_1492 : f32 = u_xlat28;
  let x_1494 : vec4<f32> = u_xlat9;
  let x_1496 : vec3<f32> = (vec3<f32>(x_1492, x_1492, x_1492) * vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1497 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec4<f32> = u_xlat8;
  let x_1501 : vec4<f32> = u_xlat9;
  let x_1503 : vec3<f32> = (vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
  let x_1504 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat3;
  let x_1508 : vec4<f32> = u_xlat4;
  let x_1511 : vec4<f32> = u_xlat8;
  let x_1513 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(x_1508.x, x_1508.y, x_1508.z)) + vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1517 : f32 = u_xlat2.x;
  let x_1519 : f32 = x_1423.unity_LightData.z;
  u_xlat28 = (x_1517 * x_1519);
  let x_1521 : vec4<f32> = u_xlat1;
  let x_1524 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
  let x_1529 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1529, 0.0f, 1.0f);
  let x_1532 : f32 = u_xlat28;
  let x_1534 : f32 = u_xlat2.x;
  u_xlat28 = (x_1532 * x_1534);
  let x_1536 : f32 = u_xlat28;
  let x_1538 : vec4<f32> = u_xlat6;
  let x_1540 : vec3<f32> = (vec3<f32>(x_1536, x_1536, x_1536) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
  let x_1541 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1540.z);
  let x_1543 : vec4<f32> = u_xlat7;
  let x_1546 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1548 : vec3<f32> = (vec3<f32>(x_1543.x, x_1543.y, x_1543.z) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1551 : vec4<f32> = u_xlat6;
  let x_1553 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1551.x, x_1551.y, x_1551.z), vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1556 : f32 = u_xlat28;
  u_xlat28 = max(x_1556, 1.17549435e-38f);
  let x_1559 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1559);
  let x_1561 : f32 = u_xlat28;
  let x_1563 : vec4<f32> = u_xlat6;
  let x_1565 : vec3<f32> = (vec3<f32>(x_1561, x_1561, x_1561) * vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1566 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1568 : vec4<f32> = u_xlat1;
  let x_1570 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
  let x_1573 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1573, 0.0f, 1.0f);
  let x_1576 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1578 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1581, 0.0f, 1.0f);
  let x_1583 : f32 = u_xlat28;
  let x_1584 : f32 = u_xlat28;
  u_xlat28 = (x_1583 * x_1584);
  let x_1586 : f32 = u_xlat28;
  let x_1588 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1586 * x_1588) + 1.00001001358032226562f);
  let x_1592 : f32 = u_xlat46;
  let x_1593 : f32 = u_xlat46;
  u_xlat46 = (x_1592 * x_1593);
  let x_1595 : f32 = u_xlat28;
  let x_1596 : f32 = u_xlat28;
  u_xlat28 = (x_1595 * x_1596);
  let x_1598 : f32 = u_xlat46;
  u_xlat46 = max(x_1598, 0.10000000149011611938f);
  let x_1601 : f32 = u_xlat28;
  let x_1602 : f32 = u_xlat46;
  u_xlat28 = (x_1601 * x_1602);
  let x_1604 : f32 = u_xlat45;
  let x_1605 : f32 = u_xlat28;
  u_xlat28 = (x_1604 * x_1605);
  let x_1607 : f32 = u_xlat43;
  let x_1608 : f32 = u_xlat28;
  u_xlat28 = (x_1607 / x_1608);
  let x_1610 : vec4<f32> = u_xlat5;
  let x_1612 : f32 = u_xlat28;
  let x_1615 : vec4<f32> = u_xlat4;
  let x_1617 : vec3<f32> = ((vec3<f32>(x_1610.x, x_1610.y, x_1610.z) * vec3<f32>(x_1612, x_1612, x_1612)) + vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
  let x_1618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat2;
  let x_1622 : vec4<f32> = u_xlat6;
  let x_1624 : vec3<f32> = (vec3<f32>(x_1620.x, x_1620.z, x_1620.w) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1624.z);
  let x_1628 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1630 : f32 = x_1423.unity_LightData.y;
  u_xlat28 = min(x_1628, x_1630);
  let x_1633 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1633));
  let x_1636 : f32 = u_xlat16;
  let x_1638 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_1641 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat16 = ((x_1636 * x_1638) + x_1641);
  let x_1643 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1643, 0.0f, 1.0f);
  let x_1647 : f32 = x_1222.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1649 : f32 = x_1222.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1651 : f32 = x_1222.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1653 : f32 = x_1222.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1654 : vec4<f32> = vec4<f32>(x_1647, x_1649, x_1651, x_1653);
  let x_1660 : vec4<bool> = (vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1654.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1660.x, x_1660.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1672 : u32 = u_xlatu_loop_1;
    let x_1673 : u32 = u_xlatu28;
    if ((x_1672 < x_1673)) {
    } else {
      break;
    }
    let x_1676 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1676 >> 2u);
    let x_1679 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1679 & 3u));
    let x_1683 : u32 = u_xlatu47;
    let x_1686 : vec4<f32> = x_1423.unity_LightIndices[bitcast<i32>(x_1683)];
    let x_1696 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1701 : vec4<u32> = indexable[x_1696];
    u_xlat47 = dot(x_1686, bitcast<vec4<f32>>(x_1701));
    let x_1705 : f32 = u_xlat47;
    u_xlati47 = i32(x_1705);
    let x_1707 : vec3<f32> = vs_TEXCOORD7;
    let x_1718 : i32 = u_xlati47;
    let x_1720 : vec4<f32> = x_1717.x_AdditionalLightsPosition[x_1718];
    let x_1723 : i32 = u_xlati47;
    let x_1725 : vec4<f32> = x_1717.x_AdditionalLightsPosition[x_1723];
    let x_1727 : vec3<f32> = ((-(x_1707) * vec3<f32>(x_1720.w, x_1720.w, x_1720.w)) + vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
    let x_1728 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
    let x_1731 : vec4<f32> = u_xlat9;
    let x_1733 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_1731.x, x_1731.y, x_1731.z), vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
    let x_1736 : f32 = u_xlat34;
    u_xlat34 = max(x_1736, 0.00006103515625f);
    let x_1739 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1739);
    let x_1741 : f32 = u_xlat48;
    let x_1743 : vec4<f32> = u_xlat9;
    let x_1745 : vec3<f32> = (vec3<f32>(x_1741, x_1741, x_1741) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
    let x_1749 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1749);
    let x_1751 : f32 = u_xlat34;
    let x_1752 : i32 = u_xlati47;
    let x_1754 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1752].x;
    u_xlat34 = (x_1751 * x_1754);
    let x_1756 : f32 = u_xlat34;
    let x_1758 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1756) * x_1758) + 1.0f);
    let x_1761 : f32 = u_xlat34;
    u_xlat34 = max(x_1761, 0.0f);
    let x_1763 : f32 = u_xlat34;
    let x_1764 : f32 = u_xlat34;
    u_xlat34 = (x_1763 * x_1764);
    let x_1766 : f32 = u_xlat34;
    let x_1767 : f32 = u_xlat49;
    u_xlat34 = (x_1766 * x_1767);
    let x_1769 : i32 = u_xlati47;
    let x_1771 : vec4<f32> = x_1717.x_AdditionalLightsSpotDir[x_1769];
    let x_1773 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1771.x, x_1771.y, x_1771.z), vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
    let x_1776 : f32 = u_xlat49;
    let x_1777 : i32 = u_xlati47;
    let x_1779 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1777].z;
    let x_1781 : i32 = u_xlati47;
    let x_1783 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1781].w;
    u_xlat49 = ((x_1776 * x_1779) + x_1783);
    let x_1785 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1785, 0.0f, 1.0f);
    let x_1787 : f32 = u_xlat49;
    let x_1788 : f32 = u_xlat49;
    u_xlat49 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat34;
    let x_1791 : f32 = u_xlat49;
    u_xlat34 = (x_1790 * x_1791);
    let x_1794 : i32 = u_xlati47;
    let x_1796 : f32 = x_833.x_AdditionalShadowParams[x_1794].w;
    u_xlati49 = i32(x_1796);
    let x_1799 : i32 = u_xlati49;
    u_xlatb50 = (x_1799 >= 0i);
    let x_1801 : bool = u_xlatb50;
    if (x_1801) {
      let x_1805 : i32 = u_xlati47;
      let x_1807 : f32 = x_833.x_AdditionalShadowParams[x_1805].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1807, x_1807, x_1807, x_1807))));
      let x_1811 : bool = u_xlatb50;
      if (x_1811) {
        let x_1815 : vec4<f32> = u_xlat10;
        let x_1818 : vec4<f32> = u_xlat10;
        let x_1821 : vec4<bool> = (abs(vec4<f32>(x_1815.z, x_1815.z, x_1815.y, x_1815.z)) >= abs(vec4<f32>(x_1818.x, x_1818.y, x_1818.x, x_1818.x)));
        let x_1823 : vec3<bool> = vec3<bool>(x_1821.x, x_1821.y, x_1821.z);
        let x_1824 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
        let x_1827 : bool = u_xlatb11.y;
        let x_1829 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1827 & x_1829);
        let x_1831 : vec4<f32> = u_xlat10;
        let x_1834 : vec4<bool> = (-(vec4<f32>(x_1831.z, x_1831.y, x_1831.z, x_1831.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1835 : vec3<bool> = vec3<bool>(x_1834.x, x_1834.y, x_1834.w);
        let x_1836 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1835.x, x_1835.y, x_1836.z, x_1835.z);
        let x_1839 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1839);
        let x_1844 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1844);
        let x_1849 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1849);
        let x_1852 : bool = u_xlatb11.z;
        if (x_1852) {
          let x_1857 : f32 = u_xlat11.y;
          x_1853 = x_1857;
        } else {
          let x_1859 : f32 = u_xlat51;
          x_1853 = x_1859;
        }
        let x_1860 : f32 = x_1853;
        u_xlat51 = x_1860;
        let x_1862 : bool = u_xlatb50;
        if (x_1862) {
          let x_1867 : f32 = u_xlat11.x;
          x_1863 = x_1867;
        } else {
          let x_1869 : f32 = u_xlat51;
          x_1863 = x_1869;
        }
        let x_1870 : f32 = x_1863;
        u_xlat50 = x_1870;
        let x_1871 : i32 = u_xlati47;
        let x_1873 : f32 = x_833.x_AdditionalShadowParams[x_1871].w;
        u_xlat51 = trunc(x_1873);
        let x_1875 : f32 = u_xlat50;
        let x_1876 : f32 = u_xlat51;
        u_xlat50 = (x_1875 + x_1876);
        let x_1878 : f32 = u_xlat50;
        u_xlati49 = i32(x_1878);
      }
      let x_1880 : i32 = u_xlati49;
      u_xlati49 = (x_1880 << bitcast<u32>(2i));
      let x_1882 : vec3<f32> = vs_TEXCOORD7;
      let x_1884 : i32 = u_xlati49;
      let x_1887 : i32 = u_xlati49;
      let x_1891 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1884 + 1i) / 4i)][((x_1887 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1882.y, x_1882.y, x_1882.y, x_1882.y) * x_1891);
      let x_1893 : i32 = u_xlati49;
      let x_1895 : i32 = u_xlati49;
      let x_1898 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_1893 / 4i)][(x_1895 % 4i)];
      let x_1899 : vec3<f32> = vs_TEXCOORD7;
      let x_1902 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1898 * vec4<f32>(x_1899.x, x_1899.x, x_1899.x, x_1899.x)) + x_1902);
      let x_1904 : i32 = u_xlati49;
      let x_1907 : i32 = u_xlati49;
      let x_1911 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1904 + 2i) / 4i)][((x_1907 + 2i) % 4i)];
      let x_1912 : vec3<f32> = vs_TEXCOORD7;
      let x_1915 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1911 * vec4<f32>(x_1912.z, x_1912.z, x_1912.z, x_1912.z)) + x_1915);
      let x_1917 : vec4<f32> = u_xlat11;
      let x_1918 : i32 = u_xlati49;
      let x_1921 : i32 = u_xlati49;
      let x_1925 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1918 + 3i) / 4i)][((x_1921 + 3i) % 4i)];
      u_xlat11 = (x_1917 + x_1925);
      let x_1927 : vec4<f32> = u_xlat11;
      let x_1929 : vec4<f32> = u_xlat11;
      let x_1931 : vec3<f32> = (vec3<f32>(x_1927.x, x_1927.y, x_1927.z) / vec3<f32>(x_1929.w, x_1929.w, x_1929.w));
      let x_1932 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
      let x_1935 : vec4<f32> = u_xlat11;
      let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
      let x_1938 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
      let x_1946 : vec3<f32> = txVec1;
      let x_1948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
      u_xlat49 = x_1948;
      let x_1949 : i32 = u_xlati47;
      let x_1951 : f32 = x_833.x_AdditionalShadowParams[x_1949].x;
      u_xlat50 = (1.0f + -(x_1951));
      let x_1954 : f32 = u_xlat49;
      let x_1955 : i32 = u_xlati47;
      let x_1957 : f32 = x_833.x_AdditionalShadowParams[x_1955].x;
      let x_1959 : f32 = u_xlat50;
      u_xlat49 = ((x_1954 * x_1957) + x_1959);
      let x_1962 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1962);
      let x_1966 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1966 >= 1.0f);
      let x_1968 : bool = u_xlatb50;
      let x_1969 : bool = u_xlatb51;
      u_xlatb50 = (x_1968 | x_1969);
      let x_1971 : bool = u_xlatb50;
      let x_1972 : f32 = u_xlat49;
      u_xlat49 = select(x_1972, 1.0f, x_1971);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1975 : f32 = u_xlat49;
    u_xlat50 = (-(x_1975) + 1.0f);
    let x_1978 : f32 = u_xlat16;
    let x_1979 : f32 = u_xlat50;
    let x_1981 : f32 = u_xlat49;
    u_xlat49 = ((x_1978 * x_1979) + x_1981);
    let x_1984 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1984 & 31i)));
    let x_1987 : i32 = u_xlati50;
    let x_1990 : f32 = x_1222.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1987) & bitcast<u32>(x_1990)));
    let x_1994 : i32 = u_xlati50;
    if ((x_1994 != 0i)) {
      let x_1998 : i32 = u_xlati47;
      let x_2000 : f32 = x_1222.x_AdditionalLightsLightTypes[x_1998].el;
      u_xlati50 = i32(x_2000);
      let x_2003 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_2003 != 0i));
      let x_2007 : i32 = u_xlati47;
      u_xlati52 = (x_2007 << bitcast<u32>(2i));
      let x_2009 : i32 = u_xlati51;
      if ((x_2009 != 0i)) {
        let x_2013 : vec3<f32> = vs_TEXCOORD7;
        let x_2015 : i32 = u_xlati52;
        let x_2018 : i32 = u_xlati52;
        let x_2022 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2015 + 1i) / 4i)][((x_2018 + 1i) % 4i)];
        let x_2024 : vec3<f32> = (vec3<f32>(x_2013.y, x_2013.y, x_2013.y) * vec3<f32>(x_2022.x, x_2022.y, x_2022.w));
        let x_2025 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
        let x_2027 : i32 = u_xlati52;
        let x_2029 : i32 = u_xlati52;
        let x_2032 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[(x_2027 / 4i)][(x_2029 % 4i)];
        let x_2034 : vec3<f32> = vs_TEXCOORD7;
        let x_2037 : vec4<f32> = u_xlat11;
        let x_2039 : vec3<f32> = ((vec3<f32>(x_2032.x, x_2032.y, x_2032.w) * vec3<f32>(x_2034.x, x_2034.x, x_2034.x)) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
        let x_2040 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
        let x_2042 : i32 = u_xlati52;
        let x_2045 : i32 = u_xlati52;
        let x_2049 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2042 + 2i) / 4i)][((x_2045 + 2i) % 4i)];
        let x_2051 : vec3<f32> = vs_TEXCOORD7;
        let x_2054 : vec4<f32> = u_xlat11;
        let x_2056 : vec3<f32> = ((vec3<f32>(x_2049.x, x_2049.y, x_2049.w) * vec3<f32>(x_2051.z, x_2051.z, x_2051.z)) + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
        let x_2057 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
        let x_2059 : vec4<f32> = u_xlat11;
        let x_2061 : i32 = u_xlati52;
        let x_2064 : i32 = u_xlati52;
        let x_2068 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2061 + 3i) / 4i)][((x_2064 + 3i) % 4i)];
        let x_2070 : vec3<f32> = (vec3<f32>(x_2059.x, x_2059.y, x_2059.z) + vec3<f32>(x_2068.x, x_2068.y, x_2068.w));
        let x_2071 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
        let x_2073 : vec4<f32> = u_xlat11;
        let x_2075 : vec4<f32> = u_xlat11;
        let x_2077 : vec2<f32> = (vec2<f32>(x_2073.x, x_2073.y) / vec2<f32>(x_2075.z, x_2075.z));
        let x_2078 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2077.x, x_2077.y, x_2078.z, x_2078.w);
        let x_2080 : vec4<f32> = u_xlat11;
        let x_2083 : vec2<f32> = ((vec2<f32>(x_2080.x, x_2080.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2084 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2083.x, x_2083.y, x_2084.z, x_2084.w);
        let x_2086 : vec4<f32> = u_xlat11;
        let x_2090 : vec2<f32> = clamp(vec2<f32>(x_2086.x, x_2086.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2091 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2090.x, x_2090.y, x_2091.z, x_2091.w);
        let x_2093 : i32 = u_xlati47;
        let x_2095 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2093];
        let x_2097 : vec4<f32> = u_xlat11;
        let x_2100 : i32 = u_xlati47;
        let x_2102 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2100];
        let x_2104 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.y) * vec2<f32>(x_2097.x, x_2097.y)) + vec2<f32>(x_2102.z, x_2102.w));
        let x_2105 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
      } else {
        let x_2108 : i32 = u_xlati50;
        u_xlatb50 = (x_2108 == 1i);
        let x_2110 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2110);
        let x_2112 : i32 = u_xlati50;
        if ((x_2112 != 0i)) {
          let x_2118 : vec3<f32> = vs_TEXCOORD7;
          let x_2120 : i32 = u_xlati52;
          let x_2123 : i32 = u_xlati52;
          let x_2127 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2120 + 1i) / 4i)][((x_2123 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2118.y, x_2118.y) * vec2<f32>(x_2127.x, x_2127.y));
          let x_2130 : i32 = u_xlati52;
          let x_2132 : i32 = u_xlati52;
          let x_2135 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[(x_2130 / 4i)][(x_2132 % 4i)];
          let x_2137 : vec3<f32> = vs_TEXCOORD7;
          let x_2140 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2135.x, x_2135.y) * vec2<f32>(x_2137.x, x_2137.x)) + x_2140);
          let x_2142 : i32 = u_xlati52;
          let x_2145 : i32 = u_xlati52;
          let x_2149 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2142 + 2i) / 4i)][((x_2145 + 2i) % 4i)];
          let x_2151 : vec3<f32> = vs_TEXCOORD7;
          let x_2154 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2149.x, x_2149.y) * vec2<f32>(x_2151.z, x_2151.z)) + x_2154);
          let x_2156 : vec2<f32> = u_xlat39;
          let x_2157 : i32 = u_xlati52;
          let x_2160 : i32 = u_xlati52;
          let x_2164 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2157 + 3i) / 4i)][((x_2160 + 3i) % 4i)];
          u_xlat39 = (x_2156 + vec2<f32>(x_2164.x, x_2164.y));
          let x_2167 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2167 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2170 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2170);
          let x_2172 : i32 = u_xlati47;
          let x_2174 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2172];
          let x_2176 : vec2<f32> = u_xlat39;
          let x_2178 : i32 = u_xlati47;
          let x_2180 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2178];
          let x_2182 : vec2<f32> = ((vec2<f32>(x_2174.x, x_2174.y) * x_2176) + vec2<f32>(x_2180.z, x_2180.w));
          let x_2183 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        } else {
          let x_2186 : vec3<f32> = vs_TEXCOORD7;
          let x_2188 : i32 = u_xlati52;
          let x_2191 : i32 = u_xlati52;
          let x_2195 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2188 + 1i) / 4i)][((x_2191 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2186.y, x_2186.y, x_2186.y, x_2186.y) * x_2195);
          let x_2197 : i32 = u_xlati52;
          let x_2199 : i32 = u_xlati52;
          let x_2202 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[(x_2197 / 4i)][(x_2199 % 4i)];
          let x_2203 : vec3<f32> = vs_TEXCOORD7;
          let x_2206 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2202 * vec4<f32>(x_2203.x, x_2203.x, x_2203.x, x_2203.x)) + x_2206);
          let x_2208 : i32 = u_xlati52;
          let x_2211 : i32 = u_xlati52;
          let x_2215 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2208 + 2i) / 4i)][((x_2211 + 2i) % 4i)];
          let x_2216 : vec3<f32> = vs_TEXCOORD7;
          let x_2219 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2215 * vec4<f32>(x_2216.z, x_2216.z, x_2216.z, x_2216.z)) + x_2219);
          let x_2221 : vec4<f32> = u_xlat12;
          let x_2222 : i32 = u_xlati52;
          let x_2225 : i32 = u_xlati52;
          let x_2229 : vec4<f32> = x_1222.x_AdditionalLightsWorldToLights[((x_2222 + 3i) / 4i)][((x_2225 + 3i) % 4i)];
          u_xlat12 = (x_2221 + x_2229);
          let x_2231 : vec4<f32> = u_xlat12;
          let x_2233 : vec4<f32> = u_xlat12;
          let x_2235 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) / vec3<f32>(x_2233.w, x_2233.w, x_2233.w));
          let x_2236 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
          let x_2238 : vec4<f32> = u_xlat12;
          let x_2240 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
          let x_2243 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2243);
          let x_2245 : f32 = u_xlat50;
          let x_2247 : vec4<f32> = u_xlat12;
          let x_2249 : vec3<f32> = (vec3<f32>(x_2245, x_2245, x_2245) * vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
          let x_2250 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
          let x_2252 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2252.x, x_2252.y, x_2252.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2257 : f32 = u_xlat50;
          u_xlat50 = max(x_2257, 0.00000099999999747524f);
          let x_2260 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2260);
          let x_2262 : f32 = u_xlat50;
          let x_2264 : vec4<f32> = u_xlat12;
          let x_2266 : vec3<f32> = (vec3<f32>(x_2262, x_2262, x_2262) * vec3<f32>(x_2264.z, x_2264.x, x_2264.y));
          let x_2267 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
          let x_2270 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2270);
          let x_2274 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2274, 0.0f, 1.0f);
          let x_2278 : vec4<f32> = u_xlat13;
          let x_2280 : vec4<bool> = (vec4<f32>(x_2278.y, x_2278.z, x_2278.y, x_2278.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2280.x, x_2280.y);
          let x_2283 : bool = u_xlatb39.x;
          if (x_2283) {
            let x_2288 : f32 = u_xlat13.x;
            x_2284 = x_2288;
          } else {
            let x_2291 : f32 = u_xlat13.x;
            x_2284 = -(x_2291);
          }
          let x_2293 : f32 = x_2284;
          u_xlat39.x = x_2293;
          let x_2296 : bool = u_xlatb39.y;
          if (x_2296) {
            let x_2301 : f32 = u_xlat13.x;
            x_2297 = x_2301;
          } else {
            let x_2304 : f32 = u_xlat13.x;
            x_2297 = -(x_2304);
          }
          let x_2306 : f32 = x_2297;
          u_xlat39.y = x_2306;
          let x_2308 : vec4<f32> = u_xlat12;
          let x_2310 : f32 = u_xlat50;
          let x_2313 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2308.x, x_2308.y) * vec2<f32>(x_2310, x_2310)) + x_2313);
          let x_2315 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2315 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2318 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2318, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2322 : i32 = u_xlati47;
          let x_2324 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2322];
          let x_2326 : vec2<f32> = u_xlat39;
          let x_2328 : i32 = u_xlati47;
          let x_2330 : vec4<f32> = x_1222.x_AdditionalLightsCookieAtlasUVRects[x_2328];
          let x_2332 : vec2<f32> = ((vec2<f32>(x_2324.x, x_2324.y) * x_2326) + vec2<f32>(x_2330.z, x_2330.w));
          let x_2333 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
        }
      }
      let x_2340 : vec4<f32> = u_xlat11;
      let x_2342 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2340.x, x_2340.y), 0.0f);
      u_xlat11 = x_2342;
      let x_2344 : bool = u_xlatb6.y;
      if (x_2344) {
        let x_2349 : f32 = u_xlat11.w;
        x_2345 = x_2349;
      } else {
        let x_2352 : f32 = u_xlat11.x;
        x_2345 = x_2352;
      }
      let x_2353 : f32 = x_2345;
      u_xlat50 = x_2353;
      let x_2355 : bool = u_xlatb6.x;
      if (x_2355) {
        let x_2359 : vec4<f32> = u_xlat11;
        x_2356 = vec3<f32>(x_2359.x, x_2359.y, x_2359.z);
      } else {
        let x_2362 : f32 = u_xlat50;
        x_2356 = vec3<f32>(x_2362, x_2362, x_2362);
      }
      let x_2364 : vec3<f32> = x_2356;
      let x_2365 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2371 : vec4<f32> = u_xlat11;
    let x_2373 : i32 = u_xlati47;
    let x_2375 : vec4<f32> = x_1717.x_AdditionalLightsColor[x_2373];
    let x_2377 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
    let x_2380 : f32 = u_xlat34;
    let x_2381 : f32 = u_xlat49;
    u_xlat47 = (x_2380 * x_2381);
    let x_2383 : vec4<f32> = u_xlat1;
    let x_2385 : vec4<f32> = u_xlat10;
    u_xlat34 = dot(vec3<f32>(x_2383.x, x_2383.y, x_2383.z), vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
    let x_2388 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2388, 0.0f, 1.0f);
    let x_2390 : f32 = u_xlat47;
    let x_2391 : f32 = u_xlat34;
    u_xlat47 = (x_2390 * x_2391);
    let x_2393 : f32 = u_xlat47;
    let x_2395 : vec4<f32> = u_xlat11;
    let x_2397 : vec3<f32> = (vec3<f32>(x_2393, x_2393, x_2393) * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
    let x_2398 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
    let x_2400 : vec4<f32> = u_xlat9;
    let x_2402 : f32 = u_xlat48;
    let x_2405 : vec4<f32> = u_xlat7;
    let x_2407 : vec3<f32> = ((vec3<f32>(x_2400.x, x_2400.y, x_2400.z) * vec3<f32>(x_2402, x_2402, x_2402)) + vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2408 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
    let x_2410 : vec4<f32> = u_xlat9;
    let x_2412 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2410.x, x_2410.y, x_2410.z), vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
    let x_2415 : f32 = u_xlat47;
    u_xlat47 = max(x_2415, 1.17549435e-38f);
    let x_2417 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2417);
    let x_2419 : f32 = u_xlat47;
    let x_2421 : vec4<f32> = u_xlat9;
    let x_2423 : vec3<f32> = (vec3<f32>(x_2419, x_2419, x_2419) * vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
    let x_2424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
    let x_2426 : vec4<f32> = u_xlat1;
    let x_2428 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
    let x_2431 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2431, 0.0f, 1.0f);
    let x_2433 : vec4<f32> = u_xlat10;
    let x_2435 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_2433.x, x_2433.y, x_2433.z), vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
    let x_2438 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2438, 0.0f, 1.0f);
    let x_2440 : f32 = u_xlat47;
    let x_2441 : f32 = u_xlat47;
    u_xlat47 = (x_2440 * x_2441);
    let x_2443 : f32 = u_xlat47;
    let x_2445 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2443 * x_2445) + 1.00001001358032226562f);
    let x_2448 : f32 = u_xlat34;
    let x_2449 : f32 = u_xlat34;
    u_xlat34 = (x_2448 * x_2449);
    let x_2451 : f32 = u_xlat47;
    let x_2452 : f32 = u_xlat47;
    u_xlat47 = (x_2451 * x_2452);
    let x_2454 : f32 = u_xlat34;
    u_xlat34 = max(x_2454, 0.10000000149011611938f);
    let x_2456 : f32 = u_xlat47;
    let x_2457 : f32 = u_xlat34;
    u_xlat47 = (x_2456 * x_2457);
    let x_2459 : f32 = u_xlat45;
    let x_2460 : f32 = u_xlat47;
    u_xlat47 = (x_2459 * x_2460);
    let x_2462 : f32 = u_xlat43;
    let x_2463 : f32 = u_xlat47;
    u_xlat47 = (x_2462 / x_2463);
    let x_2465 : vec4<f32> = u_xlat5;
    let x_2467 : f32 = u_xlat47;
    let x_2470 : vec4<f32> = u_xlat4;
    let x_2472 : vec3<f32> = ((vec3<f32>(x_2465.x, x_2465.y, x_2465.z) * vec3<f32>(x_2467, x_2467, x_2467)) + vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
    let x_2473 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
    let x_2475 : vec4<f32> = u_xlat9;
    let x_2477 : vec4<f32> = u_xlat11;
    let x_2480 : vec4<f32> = u_xlat8;
    let x_2482 : vec3<f32> = ((vec3<f32>(x_2475.x, x_2475.y, x_2475.z) * vec3<f32>(x_2477.x, x_2477.y, x_2477.z)) + vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
    let x_2483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);

    continuing {
      let x_2485 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2485 + bitcast<u32>(1i));
    }
  }
  let x_2487 : vec4<f32> = u_xlat3;
  let x_2489 : f32 = u_xlat14;
  let x_2492 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2487.x, x_2487.y, x_2487.z) * vec3<f32>(x_2489, x_2489, x_2489)) + vec3<f32>(x_2492.x, x_2492.z, x_2492.w));
  let x_2495 : vec4<f32> = u_xlat8;
  let x_2497 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2495.x, x_2495.y, x_2495.z) + x_2497);
  let x_2501 : f32 = u_xlat42;
  let x_2503 : vec3<f32> = u_xlat0;
  let x_2504 : vec3<f32> = (vec3<f32>(x_2501, x_2501, x_2501) * x_2503);
  let x_2505 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


