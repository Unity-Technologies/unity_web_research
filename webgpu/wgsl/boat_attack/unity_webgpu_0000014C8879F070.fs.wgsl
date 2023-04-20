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

var<private> u_xlatb44 : bool;

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

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

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

@group(1) @binding(5) var<uniform> x_1234 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1435 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1729 : AdditionalLights;

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
  var x_1186 : f32;
  var x_1317 : f32;
  var x_1328 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1865 : f32;
  var x_1875 : f32;
  var txVec1 : vec3<f32>;
  var x_2296 : f32;
  var x_2309 : f32;
  var x_2357 : f32;
  var x_2368 : vec3<f32>;
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
  let x_280 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_280);
  let x_282 : bool = u_xlatb44;
  if (((select(0i, 1i, x_282) * -1i) != 0i)) {
    discard;
  }
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 0.00006103515625f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_112.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat43;
  u_xlat43 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_404);
  let x_406 : f32 = u_xlat43;
  u_xlat7.z = max(x_406, 0.0000000000000001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_13.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_112.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat43;
  u_xlat43 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat43;
  u_xlat43 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_452);
  let x_454 : f32 = u_xlat43;
  u_xlat8.z = max(x_454, 0.0000000000000001f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_462 : f32 = x_13.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_112.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat43;
  u_xlat43 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat43;
  u_xlat43 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_521);
  let x_523 : f32 = u_xlat43;
  u_xlat8.z = max(x_523, 0.0000000000000001f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_532 : f32 = x_13.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_112.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat43;
  u_xlat43 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat43;
  u_xlat43 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat8.z = max(x_586, 0.0000000000000001f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_595 : f32 = x_13.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00000999999974737875f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat43;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_13.x_Smoothness0;
  let x_676 : f32 = x_13.x_Smoothness1;
  let x_678 : f32 = x_13.x_Smoothness2;
  let x_680 : f32 = x_13.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_13.x_LayerHasMask0;
  let x_690 : f32 = x_13.x_LayerHasMask1;
  let x_693 : f32 = x_13.x_LayerHasMask2;
  let x_696 : f32 = x_13.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_13.x_Metallic0;
  let x_724 : f32 = x_13.x_Metallic1;
  let x_727 : f32 = x_13.x_Metallic2;
  let x_730 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_13.x_LayerHasMask0;
  let x_737 : f32 = x_13.x_LayerHasMask1;
  let x_739 : f32 = x_13.x_LayerHasMask2;
  let x_741 : f32 = x_13.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_13.x_Metallic0;
  let x_748 : f32 = x_13.x_Metallic1;
  let x_750 : f32 = x_13.x_Metallic2;
  let x_752 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_13.x_LayerHasMask0;
  let x_775 : f32 = x_13.x_LayerHasMask1;
  let x_777 : f32 = x_13.x_LayerHasMask2;
  let x_779 : f32 = x_13.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat43;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_836 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat43;
  u_xlat43 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat43;
  u_xlatu43 = u32(x_958);
  let x_962 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati43;
  let x_970 : i32 = u_xlati43;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati43;
  let x_981 : i32 = u_xlati43;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati43;
  let x_997 : i32 = u_xlati43;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati43;
  let x_1016 : i32 = u_xlati43;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1030 : vec4<f32> = vs_TEXCOORD0;
  let x_1033 : f32 = x_112.x_GlobalMipBias.x;
  let x_1034 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1030.z, x_1030.w), x_1033);
  u_xlat3 = x_1034;
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_112.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1056 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = (x_1059 + 0.5f);
  let x_1061 : f32 = u_xlat43;
  let x_1063 : vec4<f32> = u_xlat4;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1069 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1069, 0.00009999999747378752f);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : f32 = u_xlat43;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) / vec3<f32>(x_1074, x_1074, x_1074));
  let x_1077 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1080) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1086 : f32 = u_xlat28;
  let x_1087 : f32 = u_xlat43;
  u_xlat44 = (x_1086 + -(x_1087));
  let x_1090 : f32 = u_xlat43;
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat5;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1102 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.x, x_1104.x) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1114) + 1.0f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat0.x;
  u_xlat28 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat28;
  u_xlat28 = max(x_1123, 0.0078125f);
  let x_1126 : f32 = u_xlat28;
  let x_1127 : f32 = u_xlat28;
  u_xlat43 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat44;
  u_xlat44 = (x_1129 + 1.0f);
  let x_1131 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat28;
  u_xlat45 = ((x_1134 * 4.0f) + 2.0f);
  let x_1137 : f32 = u_xlat14;
  u_xlat14 = min(x_1137, 1.0f);
  let x_1141 : vec4<f32> = u_xlat2;
  let x_1142 : vec2<f32> = vec2<f32>(x_1141.x, x_1141.y);
  let x_1144 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1142.x, x_1142.y, x_1144);
  let x_1156 : vec3<f32> = txVec0;
  let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
  u_xlat2.x = x_1158;
  let x_1162 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1162) + 1.0f);
  let x_1166 : f32 = u_xlat2.x;
  let x_1168 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1170 : f32 = u_xlat16;
  u_xlat2.x = ((x_1166 * x_1168) + x_1170);
  let x_1175 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1175);
  let x_1179 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1179 >= 1.0f);
  let x_1181 : bool = u_xlatb30;
  let x_1182 : bool = u_xlatb16;
  u_xlatb16 = (x_1181 | x_1182);
  let x_1184 : bool = u_xlatb16;
  if (x_1184) {
    x_1186 = 1.0f;
  } else {
    let x_1191 : f32 = u_xlat2.x;
    x_1186 = x_1191;
  }
  let x_1192 : f32 = x_1186;
  u_xlat2.x = x_1192;
  let x_1194 : vec3<f32> = vs_TEXCOORD7;
  let x_1197 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1199 : vec3<f32> = (x_1194 + -(x_1197));
  let x_1200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat6;
  let x_1204 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1208 : f32 = u_xlat16;
  let x_1210 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1213 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1208 * x_1210) + x_1213);
  let x_1215 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1215, 0.0f, 1.0f);
  let x_1219 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1219) + 1.0f);
  let x_1222 : f32 = u_xlat30;
  let x_1223 : f32 = u_xlat46;
  let x_1226 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1222 * x_1223) + x_1226);
  let x_1236 : f32 = x_1234.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1236 == -1.0f));
  let x_1238 : bool = u_xlatb30;
  if (x_1238) {
    let x_1241 : vec3<f32> = vs_TEXCOORD7;
    let x_1244 : vec4<f32> = x_1234.x_MainLightWorldToLight[1i];
    let x_1246 : vec2<f32> = (vec2<f32>(x_1241.y, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y));
    let x_1247 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
    let x_1250 : vec4<f32> = x_1234.x_MainLightWorldToLight[0i];
    let x_1252 : vec3<f32> = vs_TEXCOORD7;
    let x_1255 : vec4<f32> = u_xlat6;
    let x_1257 : vec2<f32> = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1252.x, x_1252.x)) + vec2<f32>(x_1255.x, x_1255.y));
    let x_1258 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
    let x_1261 : vec4<f32> = x_1234.x_MainLightWorldToLight[2i];
    let x_1263 : vec3<f32> = vs_TEXCOORD7;
    let x_1266 : vec4<f32> = u_xlat6;
    let x_1268 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1263.z, x_1263.z)) + vec2<f32>(x_1266.x, x_1266.y));
    let x_1269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
    let x_1271 : vec4<f32> = u_xlat6;
    let x_1274 : vec4<f32> = x_1234.x_MainLightWorldToLight[3i];
    let x_1276 : vec2<f32> = (vec2<f32>(x_1271.x, x_1271.y) + vec2<f32>(x_1274.x, x_1274.y));
    let x_1277 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1276.x, x_1276.y, x_1277.z, x_1277.w);
    let x_1279 : vec4<f32> = u_xlat6;
    let x_1282 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1283 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
    let x_1290 : vec4<f32> = u_xlat6;
    let x_1293 : f32 = x_112.x_GlobalMipBias.x;
    let x_1294 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1290.x, x_1290.y), x_1293);
    u_xlat6 = x_1294;
    let x_1299 : f32 = x_1234.x_MainLightCookieTextureFormat;
    let x_1301 : f32 = x_1234.x_MainLightCookieTextureFormat;
    let x_1303 : f32 = x_1234.x_MainLightCookieTextureFormat;
    let x_1305 : f32 = x_1234.x_MainLightCookieTextureFormat;
    let x_1306 : vec4<f32> = vec4<f32>(x_1299, x_1301, x_1303, x_1305);
    let x_1313 : vec4<bool> = (vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1306.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1313.x, x_1313.y);
    let x_1316 : bool = u_xlatb7.y;
    if (x_1316) {
      let x_1321 : f32 = u_xlat6.w;
      x_1317 = x_1321;
    } else {
      let x_1324 : f32 = u_xlat6.x;
      x_1317 = x_1324;
    }
    let x_1325 : f32 = x_1317;
    u_xlat30 = x_1325;
    let x_1327 : bool = u_xlatb7.x;
    if (x_1327) {
      let x_1331 : vec4<f32> = u_xlat6;
      x_1328 = vec3<f32>(x_1331.x, x_1331.y, x_1331.z);
    } else {
      let x_1334 : f32 = u_xlat30;
      x_1328 = vec3<f32>(x_1334, x_1334, x_1334);
    }
    let x_1336 : vec3<f32> = x_1328;
    let x_1337 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1343 : vec4<f32> = u_xlat6;
  let x_1346 : vec4<f32> = x_112.x_MainLightColor;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1353 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1353;
  let x_1356 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1356;
  let x_1359 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1359;
  let x_1361 : vec4<f32> = u_xlat7;
  let x_1364 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1361.x, x_1361.y, x_1361.z)), vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1367 : f32 = u_xlat30;
  let x_1368 : f32 = u_xlat30;
  u_xlat30 = (x_1367 + x_1368);
  let x_1370 : vec4<f32> = u_xlat1;
  let x_1372 : f32 = u_xlat30;
  let x_1376 : vec4<f32> = u_xlat7;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1370.x, x_1370.y, x_1370.z) * -(vec3<f32>(x_1372, x_1372, x_1372))) + -(vec3<f32>(x_1376.x, x_1376.y, x_1376.z)));
  let x_1380 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat1;
  let x_1384 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1387, 0.0f, 1.0f);
  let x_1389 : f32 = u_xlat30;
  u_xlat30 = (-(x_1389) + 1.0f);
  let x_1392 : f32 = u_xlat30;
  let x_1393 : f32 = u_xlat30;
  u_xlat30 = (x_1392 * x_1393);
  let x_1395 : f32 = u_xlat30;
  let x_1396 : f32 = u_xlat30;
  u_xlat30 = (x_1395 * x_1396);
  let x_1399 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1399) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1406 : f32 = u_xlat0.x;
  let x_1407 : f32 = u_xlat46;
  u_xlat0.x = (x_1406 * x_1407);
  let x_1411 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1411 * 6.0f);
  let x_1423 : vec4<f32> = u_xlat8;
  let x_1426 : f32 = u_xlat0.x;
  let x_1427 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1423.x, x_1423.y, x_1423.z), x_1426);
  u_xlat8 = x_1427;
  let x_1429 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1429 + -1.0f);
  let x_1437 : f32 = x_1435.unity_SpecCube0_HDR.w;
  let x_1439 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1437 * x_1439) + 1.0f);
  let x_1444 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1444, 0.0f);
  let x_1448 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1448);
  let x_1452 : f32 = u_xlat0.x;
  let x_1454 : f32 = x_1435.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1452 * x_1454);
  let x_1458 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1458);
  let x_1462 : f32 = u_xlat0.x;
  let x_1464 : f32 = x_1435.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1462 * x_1464);
  let x_1467 : vec4<f32> = u_xlat8;
  let x_1469 : vec3<f32> = u_xlat0;
  let x_1471 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1469.x, x_1469.x, x_1469.x));
  let x_1472 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
  let x_1474 : f32 = u_xlat28;
  let x_1476 : f32 = u_xlat28;
  let x_1480 : vec2<f32> = ((vec2<f32>(x_1474, x_1474) * vec2<f32>(x_1476, x_1476)) + vec2<f32>(-1.0f, 1.0f));
  let x_1481 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1480.x, x_1481.y, x_1480.y);
  let x_1484 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1484);
  let x_1486 : vec4<f32> = u_xlat5;
  let x_1489 : f32 = u_xlat44;
  let x_1491 : vec3<f32> = (-(vec3<f32>(x_1486.x, x_1486.y, x_1486.z)) + vec3<f32>(x_1489, x_1489, x_1489));
  let x_1492 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
  let x_1494 : f32 = u_xlat30;
  let x_1496 : vec4<f32> = u_xlat9;
  let x_1499 : vec4<f32> = u_xlat5;
  let x_1501 : vec3<f32> = ((vec3<f32>(x_1494, x_1494, x_1494) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z)) + vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
  let x_1502 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
  let x_1504 : f32 = u_xlat28;
  let x_1506 : vec4<f32> = u_xlat9;
  let x_1508 : vec3<f32> = (vec3<f32>(x_1504, x_1504, x_1504) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
  let x_1509 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
  let x_1511 : vec4<f32> = u_xlat8;
  let x_1513 : vec4<f32> = u_xlat9;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat3;
  let x_1520 : vec4<f32> = u_xlat4;
  let x_1523 : vec4<f32> = u_xlat8;
  let x_1525 : vec3<f32> = ((vec3<f32>(x_1518.x, x_1518.y, x_1518.z) * vec3<f32>(x_1520.x, x_1520.y, x_1520.z)) + vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
  let x_1526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
  let x_1529 : f32 = u_xlat2.x;
  let x_1531 : f32 = x_1435.unity_LightData.z;
  u_xlat28 = (x_1529 * x_1531);
  let x_1533 : vec4<f32> = u_xlat1;
  let x_1536 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
  let x_1541 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1541, 0.0f, 1.0f);
  let x_1544 : f32 = u_xlat28;
  let x_1546 : f32 = u_xlat2.x;
  u_xlat28 = (x_1544 * x_1546);
  let x_1548 : f32 = u_xlat28;
  let x_1550 : vec4<f32> = u_xlat6;
  let x_1552 : vec3<f32> = (vec3<f32>(x_1548, x_1548, x_1548) * vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
  let x_1553 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1552.x, x_1553.y, x_1552.y, x_1552.z);
  let x_1555 : vec4<f32> = u_xlat7;
  let x_1558 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1560 : vec3<f32> = (vec3<f32>(x_1555.x, x_1555.y, x_1555.z) + vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
  let x_1561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1563 : vec4<f32> = u_xlat6;
  let x_1565 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1563.x, x_1563.y, x_1563.z), vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1568 : f32 = u_xlat28;
  u_xlat28 = max(x_1568, 1.17549435e-38f);
  let x_1571 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1571);
  let x_1573 : f32 = u_xlat28;
  let x_1575 : vec4<f32> = u_xlat6;
  let x_1577 : vec3<f32> = (vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
  let x_1578 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
  let x_1580 : vec4<f32> = u_xlat1;
  let x_1582 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1580.x, x_1580.y, x_1580.z), vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
  let x_1585 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1585, 0.0f, 1.0f);
  let x_1588 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1590 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1588.x, x_1588.y, x_1588.z), vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1593, 0.0f, 1.0f);
  let x_1595 : f32 = u_xlat28;
  let x_1596 : f32 = u_xlat28;
  u_xlat28 = (x_1595 * x_1596);
  let x_1598 : f32 = u_xlat28;
  let x_1600 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1598 * x_1600) + 1.00001001358032226562f);
  let x_1604 : f32 = u_xlat46;
  let x_1605 : f32 = u_xlat46;
  u_xlat46 = (x_1604 * x_1605);
  let x_1607 : f32 = u_xlat28;
  let x_1608 : f32 = u_xlat28;
  u_xlat28 = (x_1607 * x_1608);
  let x_1610 : f32 = u_xlat46;
  u_xlat46 = max(x_1610, 0.10000000149011611938f);
  let x_1613 : f32 = u_xlat28;
  let x_1614 : f32 = u_xlat46;
  u_xlat28 = (x_1613 * x_1614);
  let x_1616 : f32 = u_xlat45;
  let x_1617 : f32 = u_xlat28;
  u_xlat28 = (x_1616 * x_1617);
  let x_1619 : f32 = u_xlat43;
  let x_1620 : f32 = u_xlat28;
  u_xlat28 = (x_1619 / x_1620);
  let x_1622 : vec4<f32> = u_xlat5;
  let x_1624 : f32 = u_xlat28;
  let x_1627 : vec4<f32> = u_xlat4;
  let x_1629 : vec3<f32> = ((vec3<f32>(x_1622.x, x_1622.y, x_1622.z) * vec3<f32>(x_1624, x_1624, x_1624)) + vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
  let x_1630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
  let x_1632 : vec4<f32> = u_xlat2;
  let x_1634 : vec4<f32> = u_xlat6;
  let x_1636 : vec3<f32> = (vec3<f32>(x_1632.x, x_1632.z, x_1632.w) * vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1637 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1636.x, x_1637.y, x_1636.y, x_1636.z);
  let x_1640 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1642 : f32 = x_1435.unity_LightData.y;
  u_xlat28 = min(x_1640, x_1642);
  let x_1645 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1645));
  let x_1648 : f32 = u_xlat16;
  let x_1650 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1653 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat16 = ((x_1648 * x_1650) + x_1653);
  let x_1655 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1655, 0.0f, 1.0f);
  let x_1659 : f32 = x_1234.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1661 : f32 = x_1234.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1663 : f32 = x_1234.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1665 : f32 = x_1234.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1666 : vec4<f32> = vec4<f32>(x_1659, x_1661, x_1663, x_1665);
  let x_1672 : vec4<bool> = (vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1666.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1672.x, x_1672.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1684 : u32 = u_xlatu_loop_1;
    let x_1685 : u32 = u_xlatu28;
    if ((x_1684 < x_1685)) {
    } else {
      break;
    }
    let x_1688 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1688 >> 2u);
    let x_1691 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1691 & 3u));
    let x_1695 : u32 = u_xlatu47;
    let x_1698 : vec4<f32> = x_1435.unity_LightIndices[bitcast<i32>(x_1695)];
    let x_1708 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1713 : vec4<u32> = indexable[x_1708];
    u_xlat47 = dot(x_1698, bitcast<vec4<f32>>(x_1713));
    let x_1717 : f32 = u_xlat47;
    u_xlati47 = i32(x_1717);
    let x_1719 : vec3<f32> = vs_TEXCOORD7;
    let x_1730 : i32 = u_xlati47;
    let x_1732 : vec4<f32> = x_1729.x_AdditionalLightsPosition[x_1730];
    let x_1735 : i32 = u_xlati47;
    let x_1737 : vec4<f32> = x_1729.x_AdditionalLightsPosition[x_1735];
    let x_1739 : vec3<f32> = ((-(x_1719) * vec3<f32>(x_1732.w, x_1732.w, x_1732.w)) + vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
    let x_1740 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
    let x_1743 : vec4<f32> = u_xlat9;
    let x_1745 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_1743.x, x_1743.y, x_1743.z), vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
    let x_1748 : f32 = u_xlat34;
    u_xlat34 = max(x_1748, 0.00006103515625f);
    let x_1751 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1751);
    let x_1753 : f32 = u_xlat48;
    let x_1755 : vec4<f32> = u_xlat9;
    let x_1757 : vec3<f32> = (vec3<f32>(x_1753, x_1753, x_1753) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
    let x_1758 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
    let x_1761 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1761);
    let x_1763 : f32 = u_xlat34;
    let x_1764 : i32 = u_xlati47;
    let x_1766 : f32 = x_1729.x_AdditionalLightsAttenuation[x_1764].x;
    u_xlat34 = (x_1763 * x_1766);
    let x_1768 : f32 = u_xlat34;
    let x_1770 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1768) * x_1770) + 1.0f);
    let x_1773 : f32 = u_xlat34;
    u_xlat34 = max(x_1773, 0.0f);
    let x_1775 : f32 = u_xlat34;
    let x_1776 : f32 = u_xlat34;
    u_xlat34 = (x_1775 * x_1776);
    let x_1778 : f32 = u_xlat34;
    let x_1779 : f32 = u_xlat49;
    u_xlat34 = (x_1778 * x_1779);
    let x_1781 : i32 = u_xlati47;
    let x_1783 : vec4<f32> = x_1729.x_AdditionalLightsSpotDir[x_1781];
    let x_1785 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1783.x, x_1783.y, x_1783.z), vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : f32 = u_xlat49;
    let x_1789 : i32 = u_xlati47;
    let x_1791 : f32 = x_1729.x_AdditionalLightsAttenuation[x_1789].z;
    let x_1793 : i32 = u_xlati47;
    let x_1795 : f32 = x_1729.x_AdditionalLightsAttenuation[x_1793].w;
    u_xlat49 = ((x_1788 * x_1791) + x_1795);
    let x_1797 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1797, 0.0f, 1.0f);
    let x_1799 : f32 = u_xlat49;
    let x_1800 : f32 = u_xlat49;
    u_xlat49 = (x_1799 * x_1800);
    let x_1802 : f32 = u_xlat34;
    let x_1803 : f32 = u_xlat49;
    u_xlat34 = (x_1802 * x_1803);
    let x_1806 : i32 = u_xlati47;
    let x_1808 : f32 = x_845.x_AdditionalShadowParams[x_1806].w;
    u_xlati49 = i32(x_1808);
    let x_1811 : i32 = u_xlati49;
    u_xlatb50 = (x_1811 >= 0i);
    let x_1813 : bool = u_xlatb50;
    if (x_1813) {
      let x_1817 : i32 = u_xlati47;
      let x_1819 : f32 = x_845.x_AdditionalShadowParams[x_1817].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1819, x_1819, x_1819, x_1819))));
      let x_1823 : bool = u_xlatb50;
      if (x_1823) {
        let x_1827 : vec4<f32> = u_xlat10;
        let x_1830 : vec4<f32> = u_xlat10;
        let x_1833 : vec4<bool> = (abs(vec4<f32>(x_1827.z, x_1827.z, x_1827.y, x_1827.z)) >= abs(vec4<f32>(x_1830.x, x_1830.y, x_1830.x, x_1830.x)));
        let x_1835 : vec3<bool> = vec3<bool>(x_1833.x, x_1833.y, x_1833.z);
        let x_1836 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
        let x_1839 : bool = u_xlatb11.y;
        let x_1841 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1839 & x_1841);
        let x_1843 : vec4<f32> = u_xlat10;
        let x_1846 : vec4<bool> = (-(vec4<f32>(x_1843.z, x_1843.y, x_1843.z, x_1843.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1847 : vec3<bool> = vec3<bool>(x_1846.x, x_1846.y, x_1846.w);
        let x_1848 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1847.x, x_1847.y, x_1848.z, x_1847.z);
        let x_1851 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1851);
        let x_1856 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1856);
        let x_1861 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1861);
        let x_1864 : bool = u_xlatb11.z;
        if (x_1864) {
          let x_1869 : f32 = u_xlat11.y;
          x_1865 = x_1869;
        } else {
          let x_1871 : f32 = u_xlat51;
          x_1865 = x_1871;
        }
        let x_1872 : f32 = x_1865;
        u_xlat51 = x_1872;
        let x_1874 : bool = u_xlatb50;
        if (x_1874) {
          let x_1879 : f32 = u_xlat11.x;
          x_1875 = x_1879;
        } else {
          let x_1881 : f32 = u_xlat51;
          x_1875 = x_1881;
        }
        let x_1882 : f32 = x_1875;
        u_xlat50 = x_1882;
        let x_1883 : i32 = u_xlati47;
        let x_1885 : f32 = x_845.x_AdditionalShadowParams[x_1883].w;
        u_xlat51 = trunc(x_1885);
        let x_1887 : f32 = u_xlat50;
        let x_1888 : f32 = u_xlat51;
        u_xlat50 = (x_1887 + x_1888);
        let x_1890 : f32 = u_xlat50;
        u_xlati49 = i32(x_1890);
      }
      let x_1892 : i32 = u_xlati49;
      u_xlati49 = (x_1892 << bitcast<u32>(2i));
      let x_1894 : vec3<f32> = vs_TEXCOORD7;
      let x_1896 : i32 = u_xlati49;
      let x_1899 : i32 = u_xlati49;
      let x_1903 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1896 + 1i) / 4i)][((x_1899 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1894.y, x_1894.y, x_1894.y, x_1894.y) * x_1903);
      let x_1905 : i32 = u_xlati49;
      let x_1907 : i32 = u_xlati49;
      let x_1910 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1905 / 4i)][(x_1907 % 4i)];
      let x_1911 : vec3<f32> = vs_TEXCOORD7;
      let x_1914 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1910 * vec4<f32>(x_1911.x, x_1911.x, x_1911.x, x_1911.x)) + x_1914);
      let x_1916 : i32 = u_xlati49;
      let x_1919 : i32 = u_xlati49;
      let x_1923 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1916 + 2i) / 4i)][((x_1919 + 2i) % 4i)];
      let x_1924 : vec3<f32> = vs_TEXCOORD7;
      let x_1927 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1923 * vec4<f32>(x_1924.z, x_1924.z, x_1924.z, x_1924.z)) + x_1927);
      let x_1929 : vec4<f32> = u_xlat11;
      let x_1930 : i32 = u_xlati49;
      let x_1933 : i32 = u_xlati49;
      let x_1937 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1930 + 3i) / 4i)][((x_1933 + 3i) % 4i)];
      u_xlat11 = (x_1929 + x_1937);
      let x_1939 : vec4<f32> = u_xlat11;
      let x_1941 : vec4<f32> = u_xlat11;
      let x_1943 : vec3<f32> = (vec3<f32>(x_1939.x, x_1939.y, x_1939.z) / vec3<f32>(x_1941.w, x_1941.w, x_1941.w));
      let x_1944 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
      let x_1947 : vec4<f32> = u_xlat11;
      let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
      let x_1950 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
      let x_1958 : vec3<f32> = txVec1;
      let x_1960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1958.xy, x_1958.z);
      u_xlat49 = x_1960;
      let x_1961 : i32 = u_xlati47;
      let x_1963 : f32 = x_845.x_AdditionalShadowParams[x_1961].x;
      u_xlat50 = (1.0f + -(x_1963));
      let x_1966 : f32 = u_xlat49;
      let x_1967 : i32 = u_xlati47;
      let x_1969 : f32 = x_845.x_AdditionalShadowParams[x_1967].x;
      let x_1971 : f32 = u_xlat50;
      u_xlat49 = ((x_1966 * x_1969) + x_1971);
      let x_1974 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1974);
      let x_1978 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1978 >= 1.0f);
      let x_1980 : bool = u_xlatb50;
      let x_1981 : bool = u_xlatb51;
      u_xlatb50 = (x_1980 | x_1981);
      let x_1983 : bool = u_xlatb50;
      let x_1984 : f32 = u_xlat49;
      u_xlat49 = select(x_1984, 1.0f, x_1983);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1987 : f32 = u_xlat49;
    u_xlat50 = (-(x_1987) + 1.0f);
    let x_1990 : f32 = u_xlat16;
    let x_1991 : f32 = u_xlat50;
    let x_1993 : f32 = u_xlat49;
    u_xlat49 = ((x_1990 * x_1991) + x_1993);
    let x_1996 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1996 & 31i)));
    let x_1999 : i32 = u_xlati50;
    let x_2002 : f32 = x_1234.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1999) & bitcast<u32>(x_2002)));
    let x_2006 : i32 = u_xlati50;
    if ((x_2006 != 0i)) {
      let x_2010 : i32 = u_xlati47;
      let x_2012 : f32 = x_1234.x_AdditionalLightsLightTypes[x_2010].el;
      u_xlati50 = i32(x_2012);
      let x_2015 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_2015 != 0i));
      let x_2019 : i32 = u_xlati47;
      u_xlati52 = (x_2019 << bitcast<u32>(2i));
      let x_2021 : i32 = u_xlati51;
      if ((x_2021 != 0i)) {
        let x_2025 : vec3<f32> = vs_TEXCOORD7;
        let x_2027 : i32 = u_xlati52;
        let x_2030 : i32 = u_xlati52;
        let x_2034 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2027 + 1i) / 4i)][((x_2030 + 1i) % 4i)];
        let x_2036 : vec3<f32> = (vec3<f32>(x_2025.y, x_2025.y, x_2025.y) * vec3<f32>(x_2034.x, x_2034.y, x_2034.w));
        let x_2037 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
        let x_2039 : i32 = u_xlati52;
        let x_2041 : i32 = u_xlati52;
        let x_2044 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[(x_2039 / 4i)][(x_2041 % 4i)];
        let x_2046 : vec3<f32> = vs_TEXCOORD7;
        let x_2049 : vec4<f32> = u_xlat11;
        let x_2051 : vec3<f32> = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.w) * vec3<f32>(x_2046.x, x_2046.x, x_2046.x)) + vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
        let x_2052 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
        let x_2054 : i32 = u_xlati52;
        let x_2057 : i32 = u_xlati52;
        let x_2061 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2054 + 2i) / 4i)][((x_2057 + 2i) % 4i)];
        let x_2063 : vec3<f32> = vs_TEXCOORD7;
        let x_2066 : vec4<f32> = u_xlat11;
        let x_2068 : vec3<f32> = ((vec3<f32>(x_2061.x, x_2061.y, x_2061.w) * vec3<f32>(x_2063.z, x_2063.z, x_2063.z)) + vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
        let x_2069 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
        let x_2071 : vec4<f32> = u_xlat11;
        let x_2073 : i32 = u_xlati52;
        let x_2076 : i32 = u_xlati52;
        let x_2080 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2073 + 3i) / 4i)][((x_2076 + 3i) % 4i)];
        let x_2082 : vec3<f32> = (vec3<f32>(x_2071.x, x_2071.y, x_2071.z) + vec3<f32>(x_2080.x, x_2080.y, x_2080.w));
        let x_2083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
        let x_2085 : vec4<f32> = u_xlat11;
        let x_2087 : vec4<f32> = u_xlat11;
        let x_2089 : vec2<f32> = (vec2<f32>(x_2085.x, x_2085.y) / vec2<f32>(x_2087.z, x_2087.z));
        let x_2090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2089.x, x_2089.y, x_2090.z, x_2090.w);
        let x_2092 : vec4<f32> = u_xlat11;
        let x_2095 : vec2<f32> = ((vec2<f32>(x_2092.x, x_2092.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2096 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2095.x, x_2095.y, x_2096.z, x_2096.w);
        let x_2098 : vec4<f32> = u_xlat11;
        let x_2102 : vec2<f32> = clamp(vec2<f32>(x_2098.x, x_2098.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2103.w);
        let x_2105 : i32 = u_xlati47;
        let x_2107 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2105];
        let x_2109 : vec4<f32> = u_xlat11;
        let x_2112 : i32 = u_xlati47;
        let x_2114 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2112];
        let x_2116 : vec2<f32> = ((vec2<f32>(x_2107.x, x_2107.y) * vec2<f32>(x_2109.x, x_2109.y)) + vec2<f32>(x_2114.z, x_2114.w));
        let x_2117 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
      } else {
        let x_2120 : i32 = u_xlati50;
        u_xlatb50 = (x_2120 == 1i);
        let x_2122 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2122);
        let x_2124 : i32 = u_xlati50;
        if ((x_2124 != 0i)) {
          let x_2130 : vec3<f32> = vs_TEXCOORD7;
          let x_2132 : i32 = u_xlati52;
          let x_2135 : i32 = u_xlati52;
          let x_2139 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2132 + 1i) / 4i)][((x_2135 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2130.y, x_2130.y) * vec2<f32>(x_2139.x, x_2139.y));
          let x_2142 : i32 = u_xlati52;
          let x_2144 : i32 = u_xlati52;
          let x_2147 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[(x_2142 / 4i)][(x_2144 % 4i)];
          let x_2149 : vec3<f32> = vs_TEXCOORD7;
          let x_2152 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2147.x, x_2147.y) * vec2<f32>(x_2149.x, x_2149.x)) + x_2152);
          let x_2154 : i32 = u_xlati52;
          let x_2157 : i32 = u_xlati52;
          let x_2161 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2154 + 2i) / 4i)][((x_2157 + 2i) % 4i)];
          let x_2163 : vec3<f32> = vs_TEXCOORD7;
          let x_2166 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(x_2163.z, x_2163.z)) + x_2166);
          let x_2168 : vec2<f32> = u_xlat39;
          let x_2169 : i32 = u_xlati52;
          let x_2172 : i32 = u_xlati52;
          let x_2176 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2169 + 3i) / 4i)][((x_2172 + 3i) % 4i)];
          u_xlat39 = (x_2168 + vec2<f32>(x_2176.x, x_2176.y));
          let x_2179 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2179 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2182 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2182);
          let x_2184 : i32 = u_xlati47;
          let x_2186 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2184];
          let x_2188 : vec2<f32> = u_xlat39;
          let x_2190 : i32 = u_xlati47;
          let x_2192 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2190];
          let x_2194 : vec2<f32> = ((vec2<f32>(x_2186.x, x_2186.y) * x_2188) + vec2<f32>(x_2192.z, x_2192.w));
          let x_2195 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
        } else {
          let x_2198 : vec3<f32> = vs_TEXCOORD7;
          let x_2200 : i32 = u_xlati52;
          let x_2203 : i32 = u_xlati52;
          let x_2207 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2200 + 1i) / 4i)][((x_2203 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2198.y, x_2198.y, x_2198.y, x_2198.y) * x_2207);
          let x_2209 : i32 = u_xlati52;
          let x_2211 : i32 = u_xlati52;
          let x_2214 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[(x_2209 / 4i)][(x_2211 % 4i)];
          let x_2215 : vec3<f32> = vs_TEXCOORD7;
          let x_2218 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2214 * vec4<f32>(x_2215.x, x_2215.x, x_2215.x, x_2215.x)) + x_2218);
          let x_2220 : i32 = u_xlati52;
          let x_2223 : i32 = u_xlati52;
          let x_2227 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2220 + 2i) / 4i)][((x_2223 + 2i) % 4i)];
          let x_2228 : vec3<f32> = vs_TEXCOORD7;
          let x_2231 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2227 * vec4<f32>(x_2228.z, x_2228.z, x_2228.z, x_2228.z)) + x_2231);
          let x_2233 : vec4<f32> = u_xlat12;
          let x_2234 : i32 = u_xlati52;
          let x_2237 : i32 = u_xlati52;
          let x_2241 : vec4<f32> = x_1234.x_AdditionalLightsWorldToLights[((x_2234 + 3i) / 4i)][((x_2237 + 3i) % 4i)];
          u_xlat12 = (x_2233 + x_2241);
          let x_2243 : vec4<f32> = u_xlat12;
          let x_2245 : vec4<f32> = u_xlat12;
          let x_2247 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) / vec3<f32>(x_2245.w, x_2245.w, x_2245.w));
          let x_2248 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
          let x_2250 : vec4<f32> = u_xlat12;
          let x_2252 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2250.x, x_2250.y, x_2250.z), vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
          let x_2255 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2255);
          let x_2257 : f32 = u_xlat50;
          let x_2259 : vec4<f32> = u_xlat12;
          let x_2261 : vec3<f32> = (vec3<f32>(x_2257, x_2257, x_2257) * vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
          let x_2262 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
          let x_2264 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2264.x, x_2264.y, x_2264.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2269 : f32 = u_xlat50;
          u_xlat50 = max(x_2269, 0.00000099999999747524f);
          let x_2272 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2272);
          let x_2274 : f32 = u_xlat50;
          let x_2276 : vec4<f32> = u_xlat12;
          let x_2278 : vec3<f32> = (vec3<f32>(x_2274, x_2274, x_2274) * vec3<f32>(x_2276.z, x_2276.x, x_2276.y));
          let x_2279 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
          let x_2282 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2282);
          let x_2286 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2286, 0.0f, 1.0f);
          let x_2290 : vec4<f32> = u_xlat13;
          let x_2292 : vec4<bool> = (vec4<f32>(x_2290.y, x_2290.z, x_2290.y, x_2290.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2292.x, x_2292.y);
          let x_2295 : bool = u_xlatb39.x;
          if (x_2295) {
            let x_2300 : f32 = u_xlat13.x;
            x_2296 = x_2300;
          } else {
            let x_2303 : f32 = u_xlat13.x;
            x_2296 = -(x_2303);
          }
          let x_2305 : f32 = x_2296;
          u_xlat39.x = x_2305;
          let x_2308 : bool = u_xlatb39.y;
          if (x_2308) {
            let x_2313 : f32 = u_xlat13.x;
            x_2309 = x_2313;
          } else {
            let x_2316 : f32 = u_xlat13.x;
            x_2309 = -(x_2316);
          }
          let x_2318 : f32 = x_2309;
          u_xlat39.y = x_2318;
          let x_2320 : vec4<f32> = u_xlat12;
          let x_2322 : f32 = u_xlat50;
          let x_2325 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2320.x, x_2320.y) * vec2<f32>(x_2322, x_2322)) + x_2325);
          let x_2327 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2327 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2330 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2330, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2334 : i32 = u_xlati47;
          let x_2336 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2334];
          let x_2338 : vec2<f32> = u_xlat39;
          let x_2340 : i32 = u_xlati47;
          let x_2342 : vec4<f32> = x_1234.x_AdditionalLightsCookieAtlasUVRects[x_2340];
          let x_2344 : vec2<f32> = ((vec2<f32>(x_2336.x, x_2336.y) * x_2338) + vec2<f32>(x_2342.z, x_2342.w));
          let x_2345 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        }
      }
      let x_2352 : vec4<f32> = u_xlat11;
      let x_2354 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2352.x, x_2352.y), 0.0f);
      u_xlat11 = x_2354;
      let x_2356 : bool = u_xlatb6.y;
      if (x_2356) {
        let x_2361 : f32 = u_xlat11.w;
        x_2357 = x_2361;
      } else {
        let x_2364 : f32 = u_xlat11.x;
        x_2357 = x_2364;
      }
      let x_2365 : f32 = x_2357;
      u_xlat50 = x_2365;
      let x_2367 : bool = u_xlatb6.x;
      if (x_2367) {
        let x_2371 : vec4<f32> = u_xlat11;
        x_2368 = vec3<f32>(x_2371.x, x_2371.y, x_2371.z);
      } else {
        let x_2374 : f32 = u_xlat50;
        x_2368 = vec3<f32>(x_2374, x_2374, x_2374);
      }
      let x_2376 : vec3<f32> = x_2368;
      let x_2377 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2383 : vec4<f32> = u_xlat11;
    let x_2385 : i32 = u_xlati47;
    let x_2387 : vec4<f32> = x_1729.x_AdditionalLightsColor[x_2385];
    let x_2389 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) * vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
    let x_2390 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
    let x_2392 : f32 = u_xlat34;
    let x_2393 : f32 = u_xlat49;
    u_xlat47 = (x_2392 * x_2393);
    let x_2395 : vec4<f32> = u_xlat1;
    let x_2397 : vec4<f32> = u_xlat10;
    u_xlat34 = dot(vec3<f32>(x_2395.x, x_2395.y, x_2395.z), vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
    let x_2400 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2400, 0.0f, 1.0f);
    let x_2402 : f32 = u_xlat47;
    let x_2403 : f32 = u_xlat34;
    u_xlat47 = (x_2402 * x_2403);
    let x_2405 : f32 = u_xlat47;
    let x_2407 : vec4<f32> = u_xlat11;
    let x_2409 : vec3<f32> = (vec3<f32>(x_2405, x_2405, x_2405) * vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
    let x_2410 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
    let x_2412 : vec4<f32> = u_xlat9;
    let x_2414 : f32 = u_xlat48;
    let x_2417 : vec4<f32> = u_xlat7;
    let x_2419 : vec3<f32> = ((vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2414, x_2414, x_2414)) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
    let x_2420 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
    let x_2422 : vec4<f32> = u_xlat9;
    let x_2424 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2422.x, x_2422.y, x_2422.z), vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
    let x_2427 : f32 = u_xlat47;
    u_xlat47 = max(x_2427, 1.17549435e-38f);
    let x_2429 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2429);
    let x_2431 : f32 = u_xlat47;
    let x_2433 : vec4<f32> = u_xlat9;
    let x_2435 : vec3<f32> = (vec3<f32>(x_2431, x_2431, x_2431) * vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
    let x_2436 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
    let x_2438 : vec4<f32> = u_xlat1;
    let x_2440 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2438.x, x_2438.y, x_2438.z), vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
    let x_2443 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2443, 0.0f, 1.0f);
    let x_2445 : vec4<f32> = u_xlat10;
    let x_2447 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_2445.x, x_2445.y, x_2445.z), vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
    let x_2450 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2450, 0.0f, 1.0f);
    let x_2452 : f32 = u_xlat47;
    let x_2453 : f32 = u_xlat47;
    u_xlat47 = (x_2452 * x_2453);
    let x_2455 : f32 = u_xlat47;
    let x_2457 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2455 * x_2457) + 1.00001001358032226562f);
    let x_2460 : f32 = u_xlat34;
    let x_2461 : f32 = u_xlat34;
    u_xlat34 = (x_2460 * x_2461);
    let x_2463 : f32 = u_xlat47;
    let x_2464 : f32 = u_xlat47;
    u_xlat47 = (x_2463 * x_2464);
    let x_2466 : f32 = u_xlat34;
    u_xlat34 = max(x_2466, 0.10000000149011611938f);
    let x_2468 : f32 = u_xlat47;
    let x_2469 : f32 = u_xlat34;
    u_xlat47 = (x_2468 * x_2469);
    let x_2471 : f32 = u_xlat45;
    let x_2472 : f32 = u_xlat47;
    u_xlat47 = (x_2471 * x_2472);
    let x_2474 : f32 = u_xlat43;
    let x_2475 : f32 = u_xlat47;
    u_xlat47 = (x_2474 / x_2475);
    let x_2477 : vec4<f32> = u_xlat5;
    let x_2479 : f32 = u_xlat47;
    let x_2482 : vec4<f32> = u_xlat4;
    let x_2484 : vec3<f32> = ((vec3<f32>(x_2477.x, x_2477.y, x_2477.z) * vec3<f32>(x_2479, x_2479, x_2479)) + vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
    let x_2485 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
    let x_2487 : vec4<f32> = u_xlat9;
    let x_2489 : vec4<f32> = u_xlat11;
    let x_2492 : vec4<f32> = u_xlat8;
    let x_2494 : vec3<f32> = ((vec3<f32>(x_2487.x, x_2487.y, x_2487.z) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z)) + vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
    let x_2495 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);

    continuing {
      let x_2497 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2497 + bitcast<u32>(1i));
    }
  }
  let x_2499 : vec4<f32> = u_xlat3;
  let x_2501 : f32 = u_xlat14;
  let x_2504 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2499.x, x_2499.y, x_2499.z) * vec3<f32>(x_2501, x_2501, x_2501)) + vec3<f32>(x_2504.x, x_2504.z, x_2504.w));
  let x_2507 : vec4<f32> = u_xlat8;
  let x_2509 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2507.x, x_2507.y, x_2507.z) + x_2509);
  let x_2513 : f32 = u_xlat42;
  let x_2515 : vec3<f32> = u_xlat0;
  let x_2516 : vec3<f32> = (vec3<f32>(x_2513, x_2513, x_2513) * x_2515);
  let x_2517 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
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


