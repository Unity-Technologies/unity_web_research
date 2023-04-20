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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_979 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1055 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1252 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1539 : AdditionalLights;

var<private> u_xlat35 : f32;

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

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1138 : f32;
  var x_1149 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1675 : f32;
  var x_1685 : f32;
  var txVec1 : vec3<f32>;
  var x_2106 : f32;
  var x_2119 : f32;
  var x_2167 : f32;
  var x_2178 : vec3<f32>;
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
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_112.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_112.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat43;
  u_xlat43 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat43;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat43 = max(x_878, 0.00009999999747378752f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat43;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat28;
  let x_896 : f32 = u_xlat43;
  u_xlat44 = (x_895 + -(x_896));
  let x_899 : f32 = u_xlat43;
  let x_901 : vec4<f32> = u_xlat5;
  let x_903 : vec3<f32> = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat0;
  let x_915 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat28;
  u_xlat0.x = (-(x_923) + 1.0f);
  let x_928 : f32 = u_xlat0.x;
  let x_930 : f32 = u_xlat0.x;
  u_xlat28 = (x_928 * x_930);
  let x_932 : f32 = u_xlat28;
  u_xlat28 = max(x_932, 0.0078125f);
  let x_935 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat28;
  u_xlat43 = (x_935 * x_936);
  let x_938 : f32 = u_xlat44;
  u_xlat44 = (x_938 + 1.0f);
  let x_940 : f32 = u_xlat44;
  u_xlat44 = clamp(x_940, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat28;
  u_xlat45 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat14;
  u_xlat14 = min(x_946, 1.0f);
  let x_951 : vec4<f32> = vs_TEXCOORD8;
  let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
  let x_955 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_952.x, x_952.y, x_955);
  let x_968 : vec3<f32> = txVec0;
  let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
  u_xlat46 = x_970;
  let x_981 : f32 = x_979.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_981) + 1.0f);
  let x_985 : f32 = u_xlat46;
  let x_987 : f32 = x_979.x_MainLightShadowParams.x;
  let x_990 : f32 = u_xlat5.x;
  u_xlat46 = ((x_985 * x_987) + x_990);
  let x_994 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_994);
  let x_1000 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_1000 >= 1.0f);
  let x_1004 : bool = u_xlatb19.x;
  let x_1005 : bool = u_xlatb5;
  u_xlatb5 = (x_1004 | x_1005);
  let x_1007 : bool = u_xlatb5;
  let x_1008 : f32 = u_xlat46;
  u_xlat46 = select(x_1008, 1.0f, x_1007);
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1017 : vec3<f32> = (x_1012 + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat5;
  let x_1022 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1028 : f32 = u_xlat5.x;
  let x_1030 : f32 = x_979.x_MainLightShadowParams.z;
  let x_1033 : f32 = x_979.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1028 * x_1030) + x_1033);
  let x_1037 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1041 : f32 = u_xlat46;
  u_xlat33 = (-(x_1041) + 1.0f);
  let x_1045 : f32 = u_xlat19.x;
  let x_1046 : f32 = u_xlat33;
  let x_1048 : f32 = u_xlat46;
  u_xlat46 = ((x_1045 * x_1046) + x_1048);
  let x_1057 : f32 = x_1055.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1057 == -1.0f));
  let x_1061 : bool = u_xlatb19.x;
  if (x_1061) {
    let x_1064 : vec3<f32> = vs_TEXCOORD7;
    let x_1067 : vec4<f32> = x_1055.x_MainLightWorldToLight[1i];
    let x_1069 : vec2<f32> = (vec2<f32>(x_1064.y, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y));
    let x_1070 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1069.x, x_1069.y, x_1070.z);
    let x_1073 : vec4<f32> = x_1055.x_MainLightWorldToLight[0i];
    let x_1075 : vec3<f32> = vs_TEXCOORD7;
    let x_1078 : vec3<f32> = u_xlat19;
    let x_1080 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1075.x, x_1075.x)) + vec2<f32>(x_1078.x, x_1078.y));
    let x_1081 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1080.x, x_1080.y, x_1081.z);
    let x_1084 : vec4<f32> = x_1055.x_MainLightWorldToLight[2i];
    let x_1086 : vec3<f32> = vs_TEXCOORD7;
    let x_1089 : vec3<f32> = u_xlat19;
    let x_1091 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1086.z, x_1086.z)) + vec2<f32>(x_1089.x, x_1089.y));
    let x_1092 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1091.x, x_1091.y, x_1092.z);
    let x_1094 : vec3<f32> = u_xlat19;
    let x_1097 : vec4<f32> = x_1055.x_MainLightWorldToLight[3i];
    let x_1099 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) + vec2<f32>(x_1097.x, x_1097.y));
    let x_1100 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1099.x, x_1099.y, x_1100.z);
    let x_1102 : vec3<f32> = u_xlat19;
    let x_1105 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1106 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1105.x, x_1105.y, x_1106.z);
    let x_1113 : vec3<f32> = u_xlat19;
    let x_1116 : f32 = x_112.x_GlobalMipBias.x;
    let x_1117 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1113.x, x_1113.y), x_1116);
    u_xlat6 = x_1117;
    let x_1119 : f32 = x_1055.x_MainLightCookieTextureFormat;
    let x_1121 : f32 = x_1055.x_MainLightCookieTextureFormat;
    let x_1123 : f32 = x_1055.x_MainLightCookieTextureFormat;
    let x_1125 : f32 = x_1055.x_MainLightCookieTextureFormat;
    let x_1126 : vec4<f32> = vec4<f32>(x_1119, x_1121, x_1123, x_1125);
    let x_1133 : vec4<bool> = (vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1126.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1133.x, x_1133.y);
    let x_1136 : bool = u_xlatb19.y;
    if (x_1136) {
      let x_1142 : f32 = u_xlat6.w;
      x_1138 = x_1142;
    } else {
      let x_1145 : f32 = u_xlat6.x;
      x_1138 = x_1145;
    }
    let x_1146 : f32 = x_1138;
    u_xlat33 = x_1146;
    let x_1148 : bool = u_xlatb19.x;
    if (x_1148) {
      let x_1152 : vec4<f32> = u_xlat6;
      x_1149 = vec3<f32>(x_1152.x, x_1152.y, x_1152.z);
    } else {
      let x_1155 : f32 = u_xlat33;
      x_1149 = vec3<f32>(x_1155, x_1155, x_1155);
    }
    let x_1157 : vec3<f32> = x_1149;
    u_xlat19 = x_1157;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1162 : vec3<f32> = u_xlat19;
  let x_1164 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat19 = (x_1162 * vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1168 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1168;
  let x_1171 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1171;
  let x_1174 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1174;
  let x_1177 : vec4<f32> = u_xlat6;
  let x_1180 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1177.x, x_1177.y, x_1177.z)), vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : f32 = u_xlat48;
  let x_1184 : f32 = u_xlat48;
  u_xlat48 = (x_1183 + x_1184);
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1188 : f32 = u_xlat48;
  let x_1192 : vec4<f32> = u_xlat6;
  let x_1195 : vec3<f32> = ((vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * -(vec3<f32>(x_1188, x_1188, x_1188))) + -(vec3<f32>(x_1192.x, x_1192.y, x_1192.z)));
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
  let x_1198 : vec4<f32> = u_xlat1;
  let x_1200 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1203, 0.0f, 1.0f);
  let x_1205 : f32 = u_xlat48;
  u_xlat48 = (-(x_1205) + 1.0f);
  let x_1208 : f32 = u_xlat48;
  let x_1209 : f32 = u_xlat48;
  u_xlat48 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat48;
  let x_1212 : f32 = u_xlat48;
  u_xlat48 = (x_1211 * x_1212);
  let x_1216 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1216) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1223 : f32 = u_xlat0.x;
  let x_1224 : f32 = u_xlat49;
  u_xlat0.x = (x_1223 * x_1224);
  let x_1228 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1228 * 6.0f);
  let x_1240 : vec4<f32> = u_xlat7;
  let x_1243 : f32 = u_xlat0.x;
  let x_1244 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1240.x, x_1240.y, x_1240.z), x_1243);
  u_xlat7 = x_1244;
  let x_1246 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1246 + -1.0f);
  let x_1254 : f32 = x_1252.unity_SpecCube0_HDR.w;
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1254 * x_1256) + 1.0f);
  let x_1261 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1261, 0.0f);
  let x_1265 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1265);
  let x_1269 : f32 = u_xlat0.x;
  let x_1271 : f32 = x_1252.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1269 * x_1271);
  let x_1275 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1275);
  let x_1279 : f32 = u_xlat0.x;
  let x_1281 : f32 = x_1252.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1279 * x_1281);
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = u_xlat0;
  let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286.x, x_1286.x, x_1286.x));
  let x_1289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : f32 = u_xlat28;
  let x_1293 : f32 = u_xlat28;
  let x_1297 : vec2<f32> = ((vec2<f32>(x_1291, x_1291) * vec2<f32>(x_1293, x_1293)) + vec2<f32>(-1.0f, 1.0f));
  let x_1298 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1297.x, x_1298.y, x_1297.y);
  let x_1301 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1301);
  let x_1303 : vec4<f32> = u_xlat4;
  let x_1306 : f32 = u_xlat44;
  let x_1308 : vec3<f32> = (-(vec3<f32>(x_1303.x, x_1303.y, x_1303.z)) + vec3<f32>(x_1306, x_1306, x_1306));
  let x_1309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : f32 = u_xlat48;
  let x_1313 : vec4<f32> = u_xlat8;
  let x_1316 : vec4<f32> = u_xlat4;
  let x_1318 : vec3<f32> = ((vec3<f32>(x_1311, x_1311, x_1311) * vec3<f32>(x_1313.x, x_1313.y, x_1313.z)) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : f32 = u_xlat28;
  let x_1323 : vec4<f32> = u_xlat8;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat7;
  let x_1330 : vec4<f32> = u_xlat8;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat2;
  let x_1337 : vec4<f32> = u_xlat3;
  let x_1340 : vec4<f32> = u_xlat7;
  let x_1342 : vec3<f32> = ((vec3<f32>(x_1335.x, x_1335.y, x_1335.z) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z)) + vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : f32 = u_xlat46;
  let x_1347 : f32 = x_1252.unity_LightData.z;
  u_xlat28 = (x_1345 * x_1347);
  let x_1349 : vec4<f32> = u_xlat1;
  let x_1352 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1349.x, x_1349.y, x_1349.z), vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1355, 0.0f, 1.0f);
  let x_1357 : f32 = u_xlat28;
  let x_1358 : f32 = u_xlat44;
  u_xlat28 = (x_1357 * x_1358);
  let x_1360 : f32 = u_xlat28;
  let x_1362 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1360, x_1360, x_1360) * x_1362);
  let x_1364 : vec4<f32> = u_xlat6;
  let x_1367 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1369 : vec3<f32> = (vec3<f32>(x_1364.x, x_1364.y, x_1364.z) + vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
  let x_1370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1372 : vec4<f32> = u_xlat7;
  let x_1374 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : f32 = u_xlat28;
  u_xlat28 = max(x_1377, 1.17549435e-38f);
  let x_1380 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1380);
  let x_1382 : f32 = u_xlat28;
  let x_1384 : vec4<f32> = u_xlat7;
  let x_1386 : vec3<f32> = (vec3<f32>(x_1382, x_1382, x_1382) * vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat1;
  let x_1391 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1394, 0.0f, 1.0f);
  let x_1397 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1399 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1397.x, x_1397.y, x_1397.z), vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
  let x_1402 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1402, 0.0f, 1.0f);
  let x_1404 : f32 = u_xlat28;
  let x_1405 : f32 = u_xlat28;
  u_xlat28 = (x_1404 * x_1405);
  let x_1407 : f32 = u_xlat28;
  let x_1409 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1407 * x_1409) + 1.00001001358032226562f);
  let x_1413 : f32 = u_xlat44;
  let x_1414 : f32 = u_xlat44;
  u_xlat44 = (x_1413 * x_1414);
  let x_1416 : f32 = u_xlat28;
  let x_1417 : f32 = u_xlat28;
  u_xlat28 = (x_1416 * x_1417);
  let x_1419 : f32 = u_xlat44;
  u_xlat44 = max(x_1419, 0.10000000149011611938f);
  let x_1422 : f32 = u_xlat28;
  let x_1423 : f32 = u_xlat44;
  u_xlat28 = (x_1422 * x_1423);
  let x_1425 : f32 = u_xlat45;
  let x_1426 : f32 = u_xlat28;
  u_xlat28 = (x_1425 * x_1426);
  let x_1428 : f32 = u_xlat43;
  let x_1429 : f32 = u_xlat28;
  u_xlat28 = (x_1428 / x_1429);
  let x_1431 : vec4<f32> = u_xlat4;
  let x_1433 : f32 = u_xlat28;
  let x_1436 : vec4<f32> = u_xlat3;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1433, x_1433, x_1433)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1441 : vec3<f32> = u_xlat19;
  let x_1442 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1441 * vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
  let x_1446 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1448 : f32 = x_1252.unity_LightData.y;
  u_xlat28 = min(x_1446, x_1448);
  let x_1452 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1452));
  let x_1456 : f32 = u_xlat5.x;
  let x_1458 : f32 = x_979.x_AdditionalShadowFadeParams.x;
  let x_1461 : f32 = x_979.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1456 * x_1458) + x_1461);
  let x_1463 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1463, 0.0f, 1.0f);
  let x_1467 : f32 = x_1055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1469 : f32 = x_1055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : f32 = x_1055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1473 : f32 = x_1055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1474 : vec4<f32> = vec4<f32>(x_1467, x_1469, x_1471, x_1473);
  let x_1480 : vec4<bool> = (vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1480.x, x_1480.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1492 : u32 = u_xlatu_loop_1;
    let x_1493 : u32 = u_xlatu28;
    if ((x_1492 < x_1493)) {
    } else {
      break;
    }
    let x_1496 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1496 >> 2u);
    let x_1500 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1500 & 3u));
    let x_1503 : u32 = u_xlatu5;
    let x_1506 : vec4<f32> = x_1252.unity_LightIndices[bitcast<i32>(x_1503)];
    let x_1516 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1521 : vec4<u32> = indexable[x_1516];
    u_xlat5.x = dot(x_1506, bitcast<vec4<f32>>(x_1521));
    let x_1527 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1527);
    let x_1529 : vec3<f32> = vs_TEXCOORD7;
    let x_1540 : i32 = u_xlati5;
    let x_1542 : vec4<f32> = x_1539.x_AdditionalLightsPosition[x_1540];
    let x_1545 : i32 = u_xlati5;
    let x_1547 : vec4<f32> = x_1539.x_AdditionalLightsPosition[x_1545];
    let x_1549 : vec3<f32> = ((-(x_1529) * vec3<f32>(x_1542.w, x_1542.w, x_1542.w)) + vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
    let x_1550 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);
    let x_1552 : vec4<f32> = u_xlat9;
    let x_1554 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1552.x, x_1552.y, x_1552.z), vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : f32 = u_xlat48;
    u_xlat48 = max(x_1557, 0.00006103515625f);
    let x_1560 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1560);
    let x_1562 : f32 = u_xlat35;
    let x_1564 : vec4<f32> = u_xlat9;
    let x_1566 : vec3<f32> = (vec3<f32>(x_1562, x_1562, x_1562) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
    let x_1567 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
    let x_1569 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1569);
    let x_1571 : f32 = u_xlat48;
    let x_1572 : i32 = u_xlati5;
    let x_1574 : f32 = x_1539.x_AdditionalLightsAttenuation[x_1572].x;
    u_xlat48 = (x_1571 * x_1574);
    let x_1576 : f32 = u_xlat48;
    let x_1578 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1576) * x_1578) + 1.0f);
    let x_1581 : f32 = u_xlat48;
    u_xlat48 = max(x_1581, 0.0f);
    let x_1583 : f32 = u_xlat48;
    let x_1584 : f32 = u_xlat48;
    u_xlat48 = (x_1583 * x_1584);
    let x_1586 : f32 = u_xlat48;
    let x_1587 : f32 = u_xlat49;
    u_xlat48 = (x_1586 * x_1587);
    let x_1589 : i32 = u_xlati5;
    let x_1591 : vec4<f32> = x_1539.x_AdditionalLightsSpotDir[x_1589];
    let x_1593 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1591.x, x_1591.y, x_1591.z), vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
    let x_1596 : f32 = u_xlat49;
    let x_1597 : i32 = u_xlati5;
    let x_1599 : f32 = x_1539.x_AdditionalLightsAttenuation[x_1597].z;
    let x_1601 : i32 = u_xlati5;
    let x_1603 : f32 = x_1539.x_AdditionalLightsAttenuation[x_1601].w;
    u_xlat49 = ((x_1596 * x_1599) + x_1603);
    let x_1605 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1605, 0.0f, 1.0f);
    let x_1607 : f32 = u_xlat49;
    let x_1608 : f32 = u_xlat49;
    u_xlat49 = (x_1607 * x_1608);
    let x_1610 : f32 = u_xlat48;
    let x_1611 : f32 = u_xlat49;
    u_xlat48 = (x_1610 * x_1611);
    let x_1614 : i32 = u_xlati5;
    let x_1616 : f32 = x_979.x_AdditionalShadowParams[x_1614].w;
    u_xlati49 = i32(x_1616);
    let x_1619 : i32 = u_xlati49;
    u_xlatb50 = (x_1619 >= 0i);
    let x_1621 : bool = u_xlatb50;
    if (x_1621) {
      let x_1625 : i32 = u_xlati5;
      let x_1627 : f32 = x_979.x_AdditionalShadowParams[x_1625].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1627, x_1627, x_1627, x_1627))));
      let x_1631 : bool = u_xlatb50;
      if (x_1631) {
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1639 : vec4<f32> = u_xlat10;
        let x_1642 : vec4<bool> = (abs(vec4<f32>(x_1636.z, x_1636.z, x_1636.y, x_1636.z)) >= abs(vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.x)));
        let x_1644 : vec3<bool> = vec3<bool>(x_1642.x, x_1642.y, x_1642.z);
        let x_1645 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
        let x_1648 : bool = u_xlatb11.y;
        let x_1650 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1648 & x_1650);
        let x_1652 : vec4<f32> = u_xlat10;
        let x_1655 : vec4<bool> = (-(vec4<f32>(x_1652.z, x_1652.y, x_1652.z, x_1652.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1656 : vec3<bool> = vec3<bool>(x_1655.x, x_1655.y, x_1655.w);
        let x_1657 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1656.x, x_1656.y, x_1657.z, x_1656.z);
        let x_1660 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1660);
        let x_1665 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1665);
        let x_1671 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1671);
        let x_1674 : bool = u_xlatb11.z;
        if (x_1674) {
          let x_1679 : f32 = u_xlat11.y;
          x_1675 = x_1679;
        } else {
          let x_1681 : f32 = u_xlat51;
          x_1675 = x_1681;
        }
        let x_1682 : f32 = x_1675;
        u_xlat51 = x_1682;
        let x_1684 : bool = u_xlatb50;
        if (x_1684) {
          let x_1689 : f32 = u_xlat11.x;
          x_1685 = x_1689;
        } else {
          let x_1691 : f32 = u_xlat51;
          x_1685 = x_1691;
        }
        let x_1692 : f32 = x_1685;
        u_xlat50 = x_1692;
        let x_1693 : i32 = u_xlati5;
        let x_1695 : f32 = x_979.x_AdditionalShadowParams[x_1693].w;
        u_xlat51 = trunc(x_1695);
        let x_1697 : f32 = u_xlat50;
        let x_1698 : f32 = u_xlat51;
        u_xlat50 = (x_1697 + x_1698);
        let x_1700 : f32 = u_xlat50;
        u_xlati49 = i32(x_1700);
      }
      let x_1702 : i32 = u_xlati49;
      u_xlati49 = (x_1702 << bitcast<u32>(2i));
      let x_1704 : vec3<f32> = vs_TEXCOORD7;
      let x_1706 : i32 = u_xlati49;
      let x_1709 : i32 = u_xlati49;
      let x_1713 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1706 + 1i) / 4i)][((x_1709 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1704.y, x_1704.y, x_1704.y, x_1704.y) * x_1713);
      let x_1715 : i32 = u_xlati49;
      let x_1717 : i32 = u_xlati49;
      let x_1720 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[(x_1715 / 4i)][(x_1717 % 4i)];
      let x_1721 : vec3<f32> = vs_TEXCOORD7;
      let x_1724 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1720 * vec4<f32>(x_1721.x, x_1721.x, x_1721.x, x_1721.x)) + x_1724);
      let x_1726 : i32 = u_xlati49;
      let x_1729 : i32 = u_xlati49;
      let x_1733 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1726 + 2i) / 4i)][((x_1729 + 2i) % 4i)];
      let x_1734 : vec3<f32> = vs_TEXCOORD7;
      let x_1737 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1733 * vec4<f32>(x_1734.z, x_1734.z, x_1734.z, x_1734.z)) + x_1737);
      let x_1739 : vec4<f32> = u_xlat11;
      let x_1740 : i32 = u_xlati49;
      let x_1743 : i32 = u_xlati49;
      let x_1747 : vec4<f32> = x_979.x_AdditionalLightsWorldToShadow[((x_1740 + 3i) / 4i)][((x_1743 + 3i) % 4i)];
      u_xlat11 = (x_1739 + x_1747);
      let x_1749 : vec4<f32> = u_xlat11;
      let x_1751 : vec4<f32> = u_xlat11;
      let x_1753 : vec3<f32> = (vec3<f32>(x_1749.x, x_1749.y, x_1749.z) / vec3<f32>(x_1751.w, x_1751.w, x_1751.w));
      let x_1754 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
      let x_1757 : vec4<f32> = u_xlat11;
      let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
      let x_1760 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
      let x_1768 : vec3<f32> = txVec1;
      let x_1770 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1768.xy, x_1768.z);
      u_xlat49 = x_1770;
      let x_1771 : i32 = u_xlati5;
      let x_1773 : f32 = x_979.x_AdditionalShadowParams[x_1771].x;
      u_xlat50 = (1.0f + -(x_1773));
      let x_1776 : f32 = u_xlat49;
      let x_1777 : i32 = u_xlati5;
      let x_1779 : f32 = x_979.x_AdditionalShadowParams[x_1777].x;
      let x_1781 : f32 = u_xlat50;
      u_xlat49 = ((x_1776 * x_1779) + x_1781);
      let x_1784 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1784);
      let x_1788 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1788 >= 1.0f);
      let x_1790 : bool = u_xlatb50;
      let x_1791 : bool = u_xlatb51;
      u_xlatb50 = (x_1790 | x_1791);
      let x_1793 : bool = u_xlatb50;
      let x_1794 : f32 = u_xlat49;
      u_xlat49 = select(x_1794, 1.0f, x_1793);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1797 : f32 = u_xlat49;
    u_xlat50 = (-(x_1797) + 1.0f);
    let x_1800 : f32 = u_xlat44;
    let x_1801 : f32 = u_xlat50;
    let x_1803 : f32 = u_xlat49;
    u_xlat49 = ((x_1800 * x_1801) + x_1803);
    let x_1806 : i32 = u_xlati5;
    u_xlati50 = (1i << bitcast<u32>((x_1806 & 31i)));
    let x_1809 : i32 = u_xlati50;
    let x_1812 : f32 = x_1055.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1809) & bitcast<u32>(x_1812)));
    let x_1816 : i32 = u_xlati50;
    if ((x_1816 != 0i)) {
      let x_1820 : i32 = u_xlati5;
      let x_1822 : f32 = x_1055.x_AdditionalLightsLightTypes[x_1820].el;
      u_xlati50 = i32(x_1822);
      let x_1825 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1825 != 0i));
      let x_1829 : i32 = u_xlati5;
      u_xlati52 = (x_1829 << bitcast<u32>(2i));
      let x_1831 : i32 = u_xlati51;
      if ((x_1831 != 0i)) {
        let x_1835 : vec3<f32> = vs_TEXCOORD7;
        let x_1837 : i32 = u_xlati52;
        let x_1840 : i32 = u_xlati52;
        let x_1844 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1837 + 1i) / 4i)][((x_1840 + 1i) % 4i)];
        let x_1846 : vec3<f32> = (vec3<f32>(x_1835.y, x_1835.y, x_1835.y) * vec3<f32>(x_1844.x, x_1844.y, x_1844.w));
        let x_1847 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
        let x_1849 : i32 = u_xlati52;
        let x_1851 : i32 = u_xlati52;
        let x_1854 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_1849 / 4i)][(x_1851 % 4i)];
        let x_1856 : vec3<f32> = vs_TEXCOORD7;
        let x_1859 : vec4<f32> = u_xlat11;
        let x_1861 : vec3<f32> = ((vec3<f32>(x_1854.x, x_1854.y, x_1854.w) * vec3<f32>(x_1856.x, x_1856.x, x_1856.x)) + vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
        let x_1862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
        let x_1864 : i32 = u_xlati52;
        let x_1867 : i32 = u_xlati52;
        let x_1871 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1864 + 2i) / 4i)][((x_1867 + 2i) % 4i)];
        let x_1873 : vec3<f32> = vs_TEXCOORD7;
        let x_1876 : vec4<f32> = u_xlat11;
        let x_1878 : vec3<f32> = ((vec3<f32>(x_1871.x, x_1871.y, x_1871.w) * vec3<f32>(x_1873.z, x_1873.z, x_1873.z)) + vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
        let x_1879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
        let x_1881 : vec4<f32> = u_xlat11;
        let x_1883 : i32 = u_xlati52;
        let x_1886 : i32 = u_xlati52;
        let x_1890 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1883 + 3i) / 4i)][((x_1886 + 3i) % 4i)];
        let x_1892 : vec3<f32> = (vec3<f32>(x_1881.x, x_1881.y, x_1881.z) + vec3<f32>(x_1890.x, x_1890.y, x_1890.w));
        let x_1893 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
        let x_1895 : vec4<f32> = u_xlat11;
        let x_1897 : vec4<f32> = u_xlat11;
        let x_1899 : vec2<f32> = (vec2<f32>(x_1895.x, x_1895.y) / vec2<f32>(x_1897.z, x_1897.z));
        let x_1900 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1899.x, x_1899.y, x_1900.z, x_1900.w);
        let x_1902 : vec4<f32> = u_xlat11;
        let x_1905 : vec2<f32> = ((vec2<f32>(x_1902.x, x_1902.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1906 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1905.x, x_1905.y, x_1906.z, x_1906.w);
        let x_1908 : vec4<f32> = u_xlat11;
        let x_1912 : vec2<f32> = clamp(vec2<f32>(x_1908.x, x_1908.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1913 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1912.x, x_1912.y, x_1913.z, x_1913.w);
        let x_1915 : i32 = u_xlati5;
        let x_1917 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_1915];
        let x_1919 : vec4<f32> = u_xlat11;
        let x_1922 : i32 = u_xlati5;
        let x_1924 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_1922];
        let x_1926 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1919.x, x_1919.y)) + vec2<f32>(x_1924.z, x_1924.w));
        let x_1927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1926.x, x_1926.y, x_1927.z, x_1927.w);
      } else {
        let x_1930 : i32 = u_xlati50;
        u_xlatb50 = (x_1930 == 1i);
        let x_1932 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1932);
        let x_1934 : i32 = u_xlati50;
        if ((x_1934 != 0i)) {
          let x_1940 : vec3<f32> = vs_TEXCOORD7;
          let x_1942 : i32 = u_xlati52;
          let x_1945 : i32 = u_xlati52;
          let x_1949 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1942 + 1i) / 4i)][((x_1945 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1940.y, x_1940.y) * vec2<f32>(x_1949.x, x_1949.y));
          let x_1952 : i32 = u_xlati52;
          let x_1954 : i32 = u_xlati52;
          let x_1957 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_1952 / 4i)][(x_1954 % 4i)];
          let x_1959 : vec3<f32> = vs_TEXCOORD7;
          let x_1962 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1959.x, x_1959.x)) + x_1962);
          let x_1964 : i32 = u_xlati52;
          let x_1967 : i32 = u_xlati52;
          let x_1971 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1964 + 2i) / 4i)][((x_1967 + 2i) % 4i)];
          let x_1973 : vec3<f32> = vs_TEXCOORD7;
          let x_1976 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1971.x, x_1971.y) * vec2<f32>(x_1973.z, x_1973.z)) + x_1976);
          let x_1978 : vec2<f32> = u_xlat39;
          let x_1979 : i32 = u_xlati52;
          let x_1982 : i32 = u_xlati52;
          let x_1986 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1979 + 3i) / 4i)][((x_1982 + 3i) % 4i)];
          u_xlat39 = (x_1978 + vec2<f32>(x_1986.x, x_1986.y));
          let x_1989 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1989 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1992 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1992);
          let x_1994 : i32 = u_xlati5;
          let x_1996 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_1994];
          let x_1998 : vec2<f32> = u_xlat39;
          let x_2000 : i32 = u_xlati5;
          let x_2002 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_2000];
          let x_2004 : vec2<f32> = ((vec2<f32>(x_1996.x, x_1996.y) * x_1998) + vec2<f32>(x_2002.z, x_2002.w));
          let x_2005 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
        } else {
          let x_2008 : vec3<f32> = vs_TEXCOORD7;
          let x_2010 : i32 = u_xlati52;
          let x_2013 : i32 = u_xlati52;
          let x_2017 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_2010 + 1i) / 4i)][((x_2013 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2008.y, x_2008.y, x_2008.y, x_2008.y) * x_2017);
          let x_2019 : i32 = u_xlati52;
          let x_2021 : i32 = u_xlati52;
          let x_2024 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_2019 / 4i)][(x_2021 % 4i)];
          let x_2025 : vec3<f32> = vs_TEXCOORD7;
          let x_2028 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2024 * vec4<f32>(x_2025.x, x_2025.x, x_2025.x, x_2025.x)) + x_2028);
          let x_2030 : i32 = u_xlati52;
          let x_2033 : i32 = u_xlati52;
          let x_2037 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_2030 + 2i) / 4i)][((x_2033 + 2i) % 4i)];
          let x_2038 : vec3<f32> = vs_TEXCOORD7;
          let x_2041 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2037 * vec4<f32>(x_2038.z, x_2038.z, x_2038.z, x_2038.z)) + x_2041);
          let x_2043 : vec4<f32> = u_xlat12;
          let x_2044 : i32 = u_xlati52;
          let x_2047 : i32 = u_xlati52;
          let x_2051 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_2044 + 3i) / 4i)][((x_2047 + 3i) % 4i)];
          u_xlat12 = (x_2043 + x_2051);
          let x_2053 : vec4<f32> = u_xlat12;
          let x_2055 : vec4<f32> = u_xlat12;
          let x_2057 : vec3<f32> = (vec3<f32>(x_2053.x, x_2053.y, x_2053.z) / vec3<f32>(x_2055.w, x_2055.w, x_2055.w));
          let x_2058 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
          let x_2060 : vec4<f32> = u_xlat12;
          let x_2062 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2060.x, x_2060.y, x_2060.z), vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
          let x_2065 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2065);
          let x_2067 : f32 = u_xlat50;
          let x_2069 : vec4<f32> = u_xlat12;
          let x_2071 : vec3<f32> = (vec3<f32>(x_2067, x_2067, x_2067) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
          let x_2072 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
          let x_2074 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2074.x, x_2074.y, x_2074.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2079 : f32 = u_xlat50;
          u_xlat50 = max(x_2079, 0.00000099999999747524f);
          let x_2082 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2082);
          let x_2084 : f32 = u_xlat50;
          let x_2086 : vec4<f32> = u_xlat12;
          let x_2088 : vec3<f32> = (vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(x_2086.z, x_2086.x, x_2086.y));
          let x_2089 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
          let x_2092 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2092);
          let x_2096 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2096, 0.0f, 1.0f);
          let x_2100 : vec4<f32> = u_xlat13;
          let x_2102 : vec4<bool> = (vec4<f32>(x_2100.y, x_2100.z, x_2100.y, x_2100.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2102.x, x_2102.y);
          let x_2105 : bool = u_xlatb39.x;
          if (x_2105) {
            let x_2110 : f32 = u_xlat13.x;
            x_2106 = x_2110;
          } else {
            let x_2113 : f32 = u_xlat13.x;
            x_2106 = -(x_2113);
          }
          let x_2115 : f32 = x_2106;
          u_xlat39.x = x_2115;
          let x_2118 : bool = u_xlatb39.y;
          if (x_2118) {
            let x_2123 : f32 = u_xlat13.x;
            x_2119 = x_2123;
          } else {
            let x_2126 : f32 = u_xlat13.x;
            x_2119 = -(x_2126);
          }
          let x_2128 : f32 = x_2119;
          u_xlat39.y = x_2128;
          let x_2130 : vec4<f32> = u_xlat12;
          let x_2132 : f32 = u_xlat50;
          let x_2135 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2132, x_2132)) + x_2135);
          let x_2137 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2137 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2140 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2140, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2144 : i32 = u_xlati5;
          let x_2146 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_2144];
          let x_2148 : vec2<f32> = u_xlat39;
          let x_2150 : i32 = u_xlati5;
          let x_2152 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[x_2150];
          let x_2154 : vec2<f32> = ((vec2<f32>(x_2146.x, x_2146.y) * x_2148) + vec2<f32>(x_2152.z, x_2152.w));
          let x_2155 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
        }
      }
      let x_2162 : vec4<f32> = u_xlat11;
      let x_2164 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2162.x, x_2162.y), 0.0f);
      u_xlat11 = x_2164;
      let x_2166 : bool = u_xlatb7.y;
      if (x_2166) {
        let x_2171 : f32 = u_xlat11.w;
        x_2167 = x_2171;
      } else {
        let x_2174 : f32 = u_xlat11.x;
        x_2167 = x_2174;
      }
      let x_2175 : f32 = x_2167;
      u_xlat50 = x_2175;
      let x_2177 : bool = u_xlatb7.x;
      if (x_2177) {
        let x_2181 : vec4<f32> = u_xlat11;
        x_2178 = vec3<f32>(x_2181.x, x_2181.y, x_2181.z);
      } else {
        let x_2184 : f32 = u_xlat50;
        x_2178 = vec3<f32>(x_2184, x_2184, x_2184);
      }
      let x_2186 : vec3<f32> = x_2178;
      let x_2187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2193 : vec4<f32> = u_xlat11;
    let x_2195 : i32 = u_xlati5;
    let x_2197 : vec4<f32> = x_1539.x_AdditionalLightsColor[x_2195];
    let x_2199 : vec3<f32> = (vec3<f32>(x_2193.x, x_2193.y, x_2193.z) * vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
    let x_2200 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
    let x_2202 : f32 = u_xlat48;
    let x_2203 : f32 = u_xlat49;
    u_xlat5.x = (x_2202 * x_2203);
    let x_2206 : vec4<f32> = u_xlat1;
    let x_2208 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2206.x, x_2206.y, x_2206.z), vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
    let x_2211 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2211, 0.0f, 1.0f);
    let x_2214 : f32 = u_xlat5.x;
    let x_2215 : f32 = u_xlat48;
    u_xlat5.x = (x_2214 * x_2215);
    let x_2218 : vec4<f32> = u_xlat5;
    let x_2220 : vec4<f32> = u_xlat11;
    let x_2222 : vec3<f32> = (vec3<f32>(x_2218.x, x_2218.x, x_2218.x) * vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
    let x_2223 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
    let x_2225 : vec4<f32> = u_xlat9;
    let x_2227 : f32 = u_xlat35;
    let x_2230 : vec4<f32> = u_xlat6;
    let x_2232 : vec3<f32> = ((vec3<f32>(x_2225.x, x_2225.y, x_2225.z) * vec3<f32>(x_2227, x_2227, x_2227)) + vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
    let x_2233 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
    let x_2235 : vec4<f32> = u_xlat9;
    let x_2237 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2235.x, x_2235.y, x_2235.z), vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
    let x_2242 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2242, 1.17549435e-38f);
    let x_2246 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_2246);
    let x_2249 : vec4<f32> = u_xlat5;
    let x_2251 : vec4<f32> = u_xlat9;
    let x_2253 : vec3<f32> = (vec3<f32>(x_2249.x, x_2249.x, x_2249.x) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
    let x_2254 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
    let x_2256 : vec4<f32> = u_xlat1;
    let x_2258 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2256.x, x_2256.y, x_2256.z), vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
    let x_2263 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2263, 0.0f, 1.0f);
    let x_2266 : vec4<f32> = u_xlat10;
    let x_2268 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
    let x_2271 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2271, 0.0f, 1.0f);
    let x_2274 : f32 = u_xlat5.x;
    let x_2276 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2274 * x_2276);
    let x_2280 : f32 = u_xlat5.x;
    let x_2282 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_2280 * x_2282) + 1.00001001358032226562f);
    let x_2286 : f32 = u_xlat48;
    let x_2287 : f32 = u_xlat48;
    u_xlat48 = (x_2286 * x_2287);
    let x_2290 : f32 = u_xlat5.x;
    let x_2292 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2290 * x_2292);
    let x_2295 : f32 = u_xlat48;
    u_xlat48 = max(x_2295, 0.10000000149011611938f);
    let x_2298 : f32 = u_xlat5.x;
    let x_2299 : f32 = u_xlat48;
    u_xlat5.x = (x_2298 * x_2299);
    let x_2302 : f32 = u_xlat45;
    let x_2304 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2302 * x_2304);
    let x_2307 : f32 = u_xlat43;
    let x_2309 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2307 / x_2309);
    let x_2312 : vec4<f32> = u_xlat4;
    let x_2314 : vec4<f32> = u_xlat5;
    let x_2317 : vec4<f32> = u_xlat3;
    let x_2319 : vec3<f32> = ((vec3<f32>(x_2312.x, x_2312.y, x_2312.z) * vec3<f32>(x_2314.x, x_2314.x, x_2314.x)) + vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
    let x_2322 : vec4<f32> = u_xlat9;
    let x_2324 : vec4<f32> = u_xlat11;
    let x_2327 : vec4<f32> = u_xlat8;
    let x_2329 : vec3<f32> = ((vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324.x, x_2324.y, x_2324.z)) + vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);

    continuing {
      let x_2332 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2332 + bitcast<u32>(1i));
    }
  }
  let x_2334 : vec4<f32> = u_xlat2;
  let x_2336 : f32 = u_xlat14;
  let x_2339 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * vec3<f32>(x_2336, x_2336, x_2336)) + x_2339);
  let x_2341 : vec4<f32> = u_xlat8;
  let x_2343 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) + x_2343);
  let x_2347 : f32 = u_xlat42;
  let x_2349 : vec3<f32> = u_xlat0;
  let x_2350 : vec3<f32> = (vec3<f32>(x_2347, x_2347, x_2347) * x_2349);
  let x_2351 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


