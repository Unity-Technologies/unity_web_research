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

@group(1) @binding(4) var<uniform> x_967 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1043 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1240 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1527 : AdditionalLights;

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
  var x_1126 : f32;
  var x_1137 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1663 : f32;
  var x_1673 : f32;
  var txVec1 : vec3<f32>;
  var x_2094 : f32;
  var x_2107 : f32;
  var x_2155 : f32;
  var x_2166 : vec3<f32>;
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
  let x_827 : vec4<f32> = vs_TEXCOORD0;
  let x_830 : f32 = x_112.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_827.z, x_827.w), x_830);
  u_xlat2 = x_831;
  let x_836 : vec4<f32> = vs_TEXCOORD0;
  let x_839 : f32 = x_112.x_GlobalMipBias.x;
  let x_840 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_836.z, x_836.w), x_839);
  let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : f32 = u_xlat43;
  u_xlat43 = (x_856 + 0.5f);
  let x_858 : f32 = u_xlat43;
  let x_860 : vec4<f32> = u_xlat3;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat2.w;
  u_xlat43 = max(x_866, 0.00009999999747378752f);
  let x_869 : vec4<f32> = u_xlat2;
  let x_871 : f32 = u_xlat43;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) / vec3<f32>(x_871, x_871, x_871));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat28;
  let x_884 : f32 = u_xlat43;
  u_xlat44 = (x_883 + -(x_884));
  let x_887 : f32 = u_xlat43;
  let x_889 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat5;
  let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec3<f32> = u_xlat0;
  let x_903 : vec4<f32> = u_xlat4;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.x, x_901.x) * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : f32 = u_xlat28;
  u_xlat0.x = (-(x_911) + 1.0f);
  let x_916 : f32 = u_xlat0.x;
  let x_918 : f32 = u_xlat0.x;
  u_xlat28 = (x_916 * x_918);
  let x_920 : f32 = u_xlat28;
  u_xlat28 = max(x_920, 0.0078125f);
  let x_923 : f32 = u_xlat28;
  let x_924 : f32 = u_xlat28;
  u_xlat43 = (x_923 * x_924);
  let x_926 : f32 = u_xlat44;
  u_xlat44 = (x_926 + 1.0f);
  let x_928 : f32 = u_xlat44;
  u_xlat44 = clamp(x_928, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat28;
  u_xlat45 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat14;
  u_xlat14 = min(x_934, 1.0f);
  let x_939 : vec4<f32> = vs_TEXCOORD8;
  let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
  let x_943 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_940.x, x_940.y, x_943);
  let x_956 : vec3<f32> = txVec0;
  let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
  u_xlat46 = x_958;
  let x_969 : f32 = x_967.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_969) + 1.0f);
  let x_973 : f32 = u_xlat46;
  let x_975 : f32 = x_967.x_MainLightShadowParams.x;
  let x_978 : f32 = u_xlat5.x;
  u_xlat46 = ((x_973 * x_975) + x_978);
  let x_982 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_982);
  let x_988 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_988 >= 1.0f);
  let x_992 : bool = u_xlatb19.x;
  let x_993 : bool = u_xlatb5;
  u_xlatb5 = (x_992 | x_993);
  let x_995 : bool = u_xlatb5;
  let x_996 : f32 = u_xlat46;
  u_xlat46 = select(x_996, 1.0f, x_995);
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1005 : vec3<f32> = (x_1000 + -(x_1003));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat5;
  let x_1010 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1016 : f32 = u_xlat5.x;
  let x_1018 : f32 = x_967.x_MainLightShadowParams.z;
  let x_1021 : f32 = x_967.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1016 * x_1018) + x_1021);
  let x_1025 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1025, 0.0f, 1.0f);
  let x_1029 : f32 = u_xlat46;
  u_xlat33 = (-(x_1029) + 1.0f);
  let x_1033 : f32 = u_xlat19.x;
  let x_1034 : f32 = u_xlat33;
  let x_1036 : f32 = u_xlat46;
  u_xlat46 = ((x_1033 * x_1034) + x_1036);
  let x_1045 : f32 = x_1043.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1045 == -1.0f));
  let x_1049 : bool = u_xlatb19.x;
  if (x_1049) {
    let x_1052 : vec3<f32> = vs_TEXCOORD7;
    let x_1055 : vec4<f32> = x_1043.x_MainLightWorldToLight[1i];
    let x_1057 : vec2<f32> = (vec2<f32>(x_1052.y, x_1052.y) * vec2<f32>(x_1055.x, x_1055.y));
    let x_1058 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1057.x, x_1057.y, x_1058.z);
    let x_1061 : vec4<f32> = x_1043.x_MainLightWorldToLight[0i];
    let x_1063 : vec3<f32> = vs_TEXCOORD7;
    let x_1066 : vec3<f32> = u_xlat19;
    let x_1068 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1063.x, x_1063.x)) + vec2<f32>(x_1066.x, x_1066.y));
    let x_1069 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1068.x, x_1068.y, x_1069.z);
    let x_1072 : vec4<f32> = x_1043.x_MainLightWorldToLight[2i];
    let x_1074 : vec3<f32> = vs_TEXCOORD7;
    let x_1077 : vec3<f32> = u_xlat19;
    let x_1079 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1074.z, x_1074.z)) + vec2<f32>(x_1077.x, x_1077.y));
    let x_1080 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1079.x, x_1079.y, x_1080.z);
    let x_1082 : vec3<f32> = u_xlat19;
    let x_1085 : vec4<f32> = x_1043.x_MainLightWorldToLight[3i];
    let x_1087 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.y) + vec2<f32>(x_1085.x, x_1085.y));
    let x_1088 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1087.x, x_1087.y, x_1088.z);
    let x_1090 : vec3<f32> = u_xlat19;
    let x_1093 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1094 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1093.x, x_1093.y, x_1094.z);
    let x_1101 : vec3<f32> = u_xlat19;
    let x_1104 : f32 = x_112.x_GlobalMipBias.x;
    let x_1105 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1101.x, x_1101.y), x_1104);
    u_xlat6 = x_1105;
    let x_1107 : f32 = x_1043.x_MainLightCookieTextureFormat;
    let x_1109 : f32 = x_1043.x_MainLightCookieTextureFormat;
    let x_1111 : f32 = x_1043.x_MainLightCookieTextureFormat;
    let x_1113 : f32 = x_1043.x_MainLightCookieTextureFormat;
    let x_1114 : vec4<f32> = vec4<f32>(x_1107, x_1109, x_1111, x_1113);
    let x_1121 : vec4<bool> = (vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1121.x, x_1121.y);
    let x_1124 : bool = u_xlatb19.y;
    if (x_1124) {
      let x_1130 : f32 = u_xlat6.w;
      x_1126 = x_1130;
    } else {
      let x_1133 : f32 = u_xlat6.x;
      x_1126 = x_1133;
    }
    let x_1134 : f32 = x_1126;
    u_xlat33 = x_1134;
    let x_1136 : bool = u_xlatb19.x;
    if (x_1136) {
      let x_1140 : vec4<f32> = u_xlat6;
      x_1137 = vec3<f32>(x_1140.x, x_1140.y, x_1140.z);
    } else {
      let x_1143 : f32 = u_xlat33;
      x_1137 = vec3<f32>(x_1143, x_1143, x_1143);
    }
    let x_1145 : vec3<f32> = x_1137;
    u_xlat19 = x_1145;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1150 : vec3<f32> = u_xlat19;
  let x_1152 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat19 = (x_1150 * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1156 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1156;
  let x_1159 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1159;
  let x_1162 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1162;
  let x_1165 : vec4<f32> = u_xlat6;
  let x_1168 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat48;
  let x_1172 : f32 = u_xlat48;
  u_xlat48 = (x_1171 + x_1172);
  let x_1174 : vec4<f32> = u_xlat1;
  let x_1176 : f32 = u_xlat48;
  let x_1180 : vec4<f32> = u_xlat6;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * -(vec3<f32>(x_1176, x_1176, x_1176))) + -(vec3<f32>(x_1180.x, x_1180.y, x_1180.z)));
  let x_1184 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1188 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1186.x, x_1186.y, x_1186.z), vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1191, 0.0f, 1.0f);
  let x_1193 : f32 = u_xlat48;
  u_xlat48 = (-(x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat48;
  let x_1197 : f32 = u_xlat48;
  u_xlat48 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat48;
  let x_1200 : f32 = u_xlat48;
  u_xlat48 = (x_1199 * x_1200);
  let x_1204 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1204) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1211 : f32 = u_xlat0.x;
  let x_1212 : f32 = u_xlat49;
  u_xlat0.x = (x_1211 * x_1212);
  let x_1216 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1216 * 6.0f);
  let x_1228 : vec4<f32> = u_xlat7;
  let x_1231 : f32 = u_xlat0.x;
  let x_1232 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1228.x, x_1228.y, x_1228.z), x_1231);
  u_xlat7 = x_1232;
  let x_1234 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1234 + -1.0f);
  let x_1242 : f32 = x_1240.unity_SpecCube0_HDR.w;
  let x_1244 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1242 * x_1244) + 1.0f);
  let x_1249 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1249, 0.0f);
  let x_1253 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1253);
  let x_1257 : f32 = u_xlat0.x;
  let x_1259 : f32 = x_1240.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1257 * x_1259);
  let x_1263 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1263);
  let x_1267 : f32 = u_xlat0.x;
  let x_1269 : f32 = x_1240.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1267 * x_1269);
  let x_1272 : vec4<f32> = u_xlat7;
  let x_1274 : vec3<f32> = u_xlat0;
  let x_1276 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1274.x, x_1274.x, x_1274.x));
  let x_1277 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
  let x_1279 : f32 = u_xlat28;
  let x_1281 : f32 = u_xlat28;
  let x_1285 : vec2<f32> = ((vec2<f32>(x_1279, x_1279) * vec2<f32>(x_1281, x_1281)) + vec2<f32>(-1.0f, 1.0f));
  let x_1286 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1285.x, x_1286.y, x_1285.y);
  let x_1289 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1289);
  let x_1291 : vec4<f32> = u_xlat4;
  let x_1294 : f32 = u_xlat44;
  let x_1296 : vec3<f32> = (-(vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + vec3<f32>(x_1294, x_1294, x_1294));
  let x_1297 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : f32 = u_xlat48;
  let x_1301 : vec4<f32> = u_xlat8;
  let x_1304 : vec4<f32> = u_xlat4;
  let x_1306 : vec3<f32> = ((vec3<f32>(x_1299, x_1299, x_1299) * vec3<f32>(x_1301.x, x_1301.y, x_1301.z)) + vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : f32 = u_xlat28;
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1309, x_1309, x_1309) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1316 : vec4<f32> = u_xlat7;
  let x_1318 : vec4<f32> = u_xlat8;
  let x_1320 : vec3<f32> = (vec3<f32>(x_1316.x, x_1316.y, x_1316.z) * vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat2;
  let x_1325 : vec4<f32> = u_xlat3;
  let x_1328 : vec4<f32> = u_xlat7;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325.x, x_1325.y, x_1325.z)) + vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
  let x_1331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : f32 = u_xlat46;
  let x_1335 : f32 = x_1240.unity_LightData.z;
  u_xlat28 = (x_1333 * x_1335);
  let x_1337 : vec4<f32> = u_xlat1;
  let x_1340 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1343, 0.0f, 1.0f);
  let x_1345 : f32 = u_xlat28;
  let x_1346 : f32 = u_xlat44;
  u_xlat28 = (x_1345 * x_1346);
  let x_1348 : f32 = u_xlat28;
  let x_1350 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1348, x_1348, x_1348) * x_1350);
  let x_1352 : vec4<f32> = u_xlat6;
  let x_1355 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1357 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  let x_1360 : vec4<f32> = u_xlat7;
  let x_1362 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1360.x, x_1360.y, x_1360.z), vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : f32 = u_xlat28;
  u_xlat28 = max(x_1365, 1.17549435e-38f);
  let x_1368 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1368);
  let x_1370 : f32 = u_xlat28;
  let x_1372 : vec4<f32> = u_xlat7;
  let x_1374 : vec3<f32> = (vec3<f32>(x_1370, x_1370, x_1370) * vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat1;
  let x_1379 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1382 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1382, 0.0f, 1.0f);
  let x_1385 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1387 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1385.x, x_1385.y, x_1385.z), vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1390 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1390, 0.0f, 1.0f);
  let x_1392 : f32 = u_xlat28;
  let x_1393 : f32 = u_xlat28;
  u_xlat28 = (x_1392 * x_1393);
  let x_1395 : f32 = u_xlat28;
  let x_1397 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1395 * x_1397) + 1.00001001358032226562f);
  let x_1401 : f32 = u_xlat44;
  let x_1402 : f32 = u_xlat44;
  u_xlat44 = (x_1401 * x_1402);
  let x_1404 : f32 = u_xlat28;
  let x_1405 : f32 = u_xlat28;
  u_xlat28 = (x_1404 * x_1405);
  let x_1407 : f32 = u_xlat44;
  u_xlat44 = max(x_1407, 0.10000000149011611938f);
  let x_1410 : f32 = u_xlat28;
  let x_1411 : f32 = u_xlat44;
  u_xlat28 = (x_1410 * x_1411);
  let x_1413 : f32 = u_xlat45;
  let x_1414 : f32 = u_xlat28;
  u_xlat28 = (x_1413 * x_1414);
  let x_1416 : f32 = u_xlat43;
  let x_1417 : f32 = u_xlat28;
  u_xlat28 = (x_1416 / x_1417);
  let x_1419 : vec4<f32> = u_xlat4;
  let x_1421 : f32 = u_xlat28;
  let x_1424 : vec4<f32> = u_xlat3;
  let x_1426 : vec3<f32> = ((vec3<f32>(x_1419.x, x_1419.y, x_1419.z) * vec3<f32>(x_1421, x_1421, x_1421)) + vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1429 : vec3<f32> = u_xlat19;
  let x_1430 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1429 * vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1434 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1436 : f32 = x_1240.unity_LightData.y;
  u_xlat28 = min(x_1434, x_1436);
  let x_1440 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1440));
  let x_1444 : f32 = u_xlat5.x;
  let x_1446 : f32 = x_967.x_AdditionalShadowFadeParams.x;
  let x_1449 : f32 = x_967.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1444 * x_1446) + x_1449);
  let x_1451 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1451, 0.0f, 1.0f);
  let x_1455 : f32 = x_1043.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1457 : f32 = x_1043.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1459 : f32 = x_1043.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1461 : f32 = x_1043.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1462 : vec4<f32> = vec4<f32>(x_1455, x_1457, x_1459, x_1461);
  let x_1468 : vec4<bool> = (vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1462.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1468.x, x_1468.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1480 : u32 = u_xlatu_loop_1;
    let x_1481 : u32 = u_xlatu28;
    if ((x_1480 < x_1481)) {
    } else {
      break;
    }
    let x_1484 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1484 >> 2u);
    let x_1488 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1488 & 3u));
    let x_1491 : u32 = u_xlatu5;
    let x_1494 : vec4<f32> = x_1240.unity_LightIndices[bitcast<i32>(x_1491)];
    let x_1504 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1509 : vec4<u32> = indexable[x_1504];
    u_xlat5.x = dot(x_1494, bitcast<vec4<f32>>(x_1509));
    let x_1515 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1515);
    let x_1517 : vec3<f32> = vs_TEXCOORD7;
    let x_1528 : i32 = u_xlati5;
    let x_1530 : vec4<f32> = x_1527.x_AdditionalLightsPosition[x_1528];
    let x_1533 : i32 = u_xlati5;
    let x_1535 : vec4<f32> = x_1527.x_AdditionalLightsPosition[x_1533];
    let x_1537 : vec3<f32> = ((-(x_1517) * vec3<f32>(x_1530.w, x_1530.w, x_1530.w)) + vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
    let x_1538 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
    let x_1540 : vec4<f32> = u_xlat9;
    let x_1542 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1540.x, x_1540.y, x_1540.z), vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
    let x_1545 : f32 = u_xlat48;
    u_xlat48 = max(x_1545, 0.00006103515625f);
    let x_1548 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1548);
    let x_1550 : f32 = u_xlat35;
    let x_1552 : vec4<f32> = u_xlat9;
    let x_1554 : vec3<f32> = (vec3<f32>(x_1550, x_1550, x_1550) * vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
    let x_1557 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1557);
    let x_1559 : f32 = u_xlat48;
    let x_1560 : i32 = u_xlati5;
    let x_1562 : f32 = x_1527.x_AdditionalLightsAttenuation[x_1560].x;
    u_xlat48 = (x_1559 * x_1562);
    let x_1564 : f32 = u_xlat48;
    let x_1566 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1564) * x_1566) + 1.0f);
    let x_1569 : f32 = u_xlat48;
    u_xlat48 = max(x_1569, 0.0f);
    let x_1571 : f32 = u_xlat48;
    let x_1572 : f32 = u_xlat48;
    u_xlat48 = (x_1571 * x_1572);
    let x_1574 : f32 = u_xlat48;
    let x_1575 : f32 = u_xlat49;
    u_xlat48 = (x_1574 * x_1575);
    let x_1577 : i32 = u_xlati5;
    let x_1579 : vec4<f32> = x_1527.x_AdditionalLightsSpotDir[x_1577];
    let x_1581 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1579.x, x_1579.y, x_1579.z), vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
    let x_1584 : f32 = u_xlat49;
    let x_1585 : i32 = u_xlati5;
    let x_1587 : f32 = x_1527.x_AdditionalLightsAttenuation[x_1585].z;
    let x_1589 : i32 = u_xlati5;
    let x_1591 : f32 = x_1527.x_AdditionalLightsAttenuation[x_1589].w;
    u_xlat49 = ((x_1584 * x_1587) + x_1591);
    let x_1593 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1593, 0.0f, 1.0f);
    let x_1595 : f32 = u_xlat49;
    let x_1596 : f32 = u_xlat49;
    u_xlat49 = (x_1595 * x_1596);
    let x_1598 : f32 = u_xlat48;
    let x_1599 : f32 = u_xlat49;
    u_xlat48 = (x_1598 * x_1599);
    let x_1602 : i32 = u_xlati5;
    let x_1604 : f32 = x_967.x_AdditionalShadowParams[x_1602].w;
    u_xlati49 = i32(x_1604);
    let x_1607 : i32 = u_xlati49;
    u_xlatb50 = (x_1607 >= 0i);
    let x_1609 : bool = u_xlatb50;
    if (x_1609) {
      let x_1613 : i32 = u_xlati5;
      let x_1615 : f32 = x_967.x_AdditionalShadowParams[x_1613].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1615, x_1615, x_1615, x_1615))));
      let x_1619 : bool = u_xlatb50;
      if (x_1619) {
        let x_1624 : vec4<f32> = u_xlat10;
        let x_1627 : vec4<f32> = u_xlat10;
        let x_1630 : vec4<bool> = (abs(vec4<f32>(x_1624.z, x_1624.z, x_1624.y, x_1624.z)) >= abs(vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.x)));
        let x_1632 : vec3<bool> = vec3<bool>(x_1630.x, x_1630.y, x_1630.z);
        let x_1633 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
        let x_1636 : bool = u_xlatb11.y;
        let x_1638 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1636 & x_1638);
        let x_1640 : vec4<f32> = u_xlat10;
        let x_1643 : vec4<bool> = (-(vec4<f32>(x_1640.z, x_1640.y, x_1640.z, x_1640.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1644 : vec3<bool> = vec3<bool>(x_1643.x, x_1643.y, x_1643.w);
        let x_1645 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1644.x, x_1644.y, x_1645.z, x_1644.z);
        let x_1648 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1648);
        let x_1653 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1653);
        let x_1659 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1659);
        let x_1662 : bool = u_xlatb11.z;
        if (x_1662) {
          let x_1667 : f32 = u_xlat11.y;
          x_1663 = x_1667;
        } else {
          let x_1669 : f32 = u_xlat51;
          x_1663 = x_1669;
        }
        let x_1670 : f32 = x_1663;
        u_xlat51 = x_1670;
        let x_1672 : bool = u_xlatb50;
        if (x_1672) {
          let x_1677 : f32 = u_xlat11.x;
          x_1673 = x_1677;
        } else {
          let x_1679 : f32 = u_xlat51;
          x_1673 = x_1679;
        }
        let x_1680 : f32 = x_1673;
        u_xlat50 = x_1680;
        let x_1681 : i32 = u_xlati5;
        let x_1683 : f32 = x_967.x_AdditionalShadowParams[x_1681].w;
        u_xlat51 = trunc(x_1683);
        let x_1685 : f32 = u_xlat50;
        let x_1686 : f32 = u_xlat51;
        u_xlat50 = (x_1685 + x_1686);
        let x_1688 : f32 = u_xlat50;
        u_xlati49 = i32(x_1688);
      }
      let x_1690 : i32 = u_xlati49;
      u_xlati49 = (x_1690 << bitcast<u32>(2i));
      let x_1692 : vec3<f32> = vs_TEXCOORD7;
      let x_1694 : i32 = u_xlati49;
      let x_1697 : i32 = u_xlati49;
      let x_1701 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1694 + 1i) / 4i)][((x_1697 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1692.y, x_1692.y, x_1692.y, x_1692.y) * x_1701);
      let x_1703 : i32 = u_xlati49;
      let x_1705 : i32 = u_xlati49;
      let x_1708 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[(x_1703 / 4i)][(x_1705 % 4i)];
      let x_1709 : vec3<f32> = vs_TEXCOORD7;
      let x_1712 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1708 * vec4<f32>(x_1709.x, x_1709.x, x_1709.x, x_1709.x)) + x_1712);
      let x_1714 : i32 = u_xlati49;
      let x_1717 : i32 = u_xlati49;
      let x_1721 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1714 + 2i) / 4i)][((x_1717 + 2i) % 4i)];
      let x_1722 : vec3<f32> = vs_TEXCOORD7;
      let x_1725 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1721 * vec4<f32>(x_1722.z, x_1722.z, x_1722.z, x_1722.z)) + x_1725);
      let x_1727 : vec4<f32> = u_xlat11;
      let x_1728 : i32 = u_xlati49;
      let x_1731 : i32 = u_xlati49;
      let x_1735 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1728 + 3i) / 4i)][((x_1731 + 3i) % 4i)];
      u_xlat11 = (x_1727 + x_1735);
      let x_1737 : vec4<f32> = u_xlat11;
      let x_1739 : vec4<f32> = u_xlat11;
      let x_1741 : vec3<f32> = (vec3<f32>(x_1737.x, x_1737.y, x_1737.z) / vec3<f32>(x_1739.w, x_1739.w, x_1739.w));
      let x_1742 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
      let x_1745 : vec4<f32> = u_xlat11;
      let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
      let x_1748 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
      let x_1756 : vec3<f32> = txVec1;
      let x_1758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1756.xy, x_1756.z);
      u_xlat49 = x_1758;
      let x_1759 : i32 = u_xlati5;
      let x_1761 : f32 = x_967.x_AdditionalShadowParams[x_1759].x;
      u_xlat50 = (1.0f + -(x_1761));
      let x_1764 : f32 = u_xlat49;
      let x_1765 : i32 = u_xlati5;
      let x_1767 : f32 = x_967.x_AdditionalShadowParams[x_1765].x;
      let x_1769 : f32 = u_xlat50;
      u_xlat49 = ((x_1764 * x_1767) + x_1769);
      let x_1772 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1772);
      let x_1776 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1776 >= 1.0f);
      let x_1778 : bool = u_xlatb50;
      let x_1779 : bool = u_xlatb51;
      u_xlatb50 = (x_1778 | x_1779);
      let x_1781 : bool = u_xlatb50;
      let x_1782 : f32 = u_xlat49;
      u_xlat49 = select(x_1782, 1.0f, x_1781);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1785 : f32 = u_xlat49;
    u_xlat50 = (-(x_1785) + 1.0f);
    let x_1788 : f32 = u_xlat44;
    let x_1789 : f32 = u_xlat50;
    let x_1791 : f32 = u_xlat49;
    u_xlat49 = ((x_1788 * x_1789) + x_1791);
    let x_1794 : i32 = u_xlati5;
    u_xlati50 = (1i << bitcast<u32>((x_1794 & 31i)));
    let x_1797 : i32 = u_xlati50;
    let x_1800 : f32 = x_1043.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1797) & bitcast<u32>(x_1800)));
    let x_1804 : i32 = u_xlati50;
    if ((x_1804 != 0i)) {
      let x_1808 : i32 = u_xlati5;
      let x_1810 : f32 = x_1043.x_AdditionalLightsLightTypes[x_1808].el;
      u_xlati50 = i32(x_1810);
      let x_1813 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1813 != 0i));
      let x_1817 : i32 = u_xlati5;
      u_xlati52 = (x_1817 << bitcast<u32>(2i));
      let x_1819 : i32 = u_xlati51;
      if ((x_1819 != 0i)) {
        let x_1823 : vec3<f32> = vs_TEXCOORD7;
        let x_1825 : i32 = u_xlati52;
        let x_1828 : i32 = u_xlati52;
        let x_1832 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1825 + 1i) / 4i)][((x_1828 + 1i) % 4i)];
        let x_1834 : vec3<f32> = (vec3<f32>(x_1823.y, x_1823.y, x_1823.y) * vec3<f32>(x_1832.x, x_1832.y, x_1832.w));
        let x_1835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
        let x_1837 : i32 = u_xlati52;
        let x_1839 : i32 = u_xlati52;
        let x_1842 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[(x_1837 / 4i)][(x_1839 % 4i)];
        let x_1844 : vec3<f32> = vs_TEXCOORD7;
        let x_1847 : vec4<f32> = u_xlat11;
        let x_1849 : vec3<f32> = ((vec3<f32>(x_1842.x, x_1842.y, x_1842.w) * vec3<f32>(x_1844.x, x_1844.x, x_1844.x)) + vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
        let x_1850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
        let x_1852 : i32 = u_xlati52;
        let x_1855 : i32 = u_xlati52;
        let x_1859 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1852 + 2i) / 4i)][((x_1855 + 2i) % 4i)];
        let x_1861 : vec3<f32> = vs_TEXCOORD7;
        let x_1864 : vec4<f32> = u_xlat11;
        let x_1866 : vec3<f32> = ((vec3<f32>(x_1859.x, x_1859.y, x_1859.w) * vec3<f32>(x_1861.z, x_1861.z, x_1861.z)) + vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
        let x_1867 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
        let x_1869 : vec4<f32> = u_xlat11;
        let x_1871 : i32 = u_xlati52;
        let x_1874 : i32 = u_xlati52;
        let x_1878 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1871 + 3i) / 4i)][((x_1874 + 3i) % 4i)];
        let x_1880 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) + vec3<f32>(x_1878.x, x_1878.y, x_1878.w));
        let x_1881 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
        let x_1883 : vec4<f32> = u_xlat11;
        let x_1885 : vec4<f32> = u_xlat11;
        let x_1887 : vec2<f32> = (vec2<f32>(x_1883.x, x_1883.y) / vec2<f32>(x_1885.z, x_1885.z));
        let x_1888 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1887.x, x_1887.y, x_1888.z, x_1888.w);
        let x_1890 : vec4<f32> = u_xlat11;
        let x_1893 : vec2<f32> = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
        let x_1896 : vec4<f32> = u_xlat11;
        let x_1900 : vec2<f32> = clamp(vec2<f32>(x_1896.x, x_1896.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1901 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1900.x, x_1900.y, x_1901.z, x_1901.w);
        let x_1903 : i32 = u_xlati5;
        let x_1905 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_1903];
        let x_1907 : vec4<f32> = u_xlat11;
        let x_1910 : i32 = u_xlati5;
        let x_1912 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_1910];
        let x_1914 : vec2<f32> = ((vec2<f32>(x_1905.x, x_1905.y) * vec2<f32>(x_1907.x, x_1907.y)) + vec2<f32>(x_1912.z, x_1912.w));
        let x_1915 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1914.x, x_1914.y, x_1915.z, x_1915.w);
      } else {
        let x_1918 : i32 = u_xlati50;
        u_xlatb50 = (x_1918 == 1i);
        let x_1920 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1920);
        let x_1922 : i32 = u_xlati50;
        if ((x_1922 != 0i)) {
          let x_1928 : vec3<f32> = vs_TEXCOORD7;
          let x_1930 : i32 = u_xlati52;
          let x_1933 : i32 = u_xlati52;
          let x_1937 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1930 + 1i) / 4i)][((x_1933 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1928.y, x_1928.y) * vec2<f32>(x_1937.x, x_1937.y));
          let x_1940 : i32 = u_xlati52;
          let x_1942 : i32 = u_xlati52;
          let x_1945 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[(x_1940 / 4i)][(x_1942 % 4i)];
          let x_1947 : vec3<f32> = vs_TEXCOORD7;
          let x_1950 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1945.x, x_1945.y) * vec2<f32>(x_1947.x, x_1947.x)) + x_1950);
          let x_1952 : i32 = u_xlati52;
          let x_1955 : i32 = u_xlati52;
          let x_1959 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1952 + 2i) / 4i)][((x_1955 + 2i) % 4i)];
          let x_1961 : vec3<f32> = vs_TEXCOORD7;
          let x_1964 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1959.x, x_1959.y) * vec2<f32>(x_1961.z, x_1961.z)) + x_1964);
          let x_1966 : vec2<f32> = u_xlat39;
          let x_1967 : i32 = u_xlati52;
          let x_1970 : i32 = u_xlati52;
          let x_1974 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1967 + 3i) / 4i)][((x_1970 + 3i) % 4i)];
          u_xlat39 = (x_1966 + vec2<f32>(x_1974.x, x_1974.y));
          let x_1977 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1977 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1980 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1980);
          let x_1982 : i32 = u_xlati5;
          let x_1984 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_1982];
          let x_1986 : vec2<f32> = u_xlat39;
          let x_1988 : i32 = u_xlati5;
          let x_1990 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_1988];
          let x_1992 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.y) * x_1986) + vec2<f32>(x_1990.z, x_1990.w));
          let x_1993 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1992.x, x_1992.y, x_1993.z, x_1993.w);
        } else {
          let x_1996 : vec3<f32> = vs_TEXCOORD7;
          let x_1998 : i32 = u_xlati52;
          let x_2001 : i32 = u_xlati52;
          let x_2005 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_1998 + 1i) / 4i)][((x_2001 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1996.y, x_1996.y, x_1996.y, x_1996.y) * x_2005);
          let x_2007 : i32 = u_xlati52;
          let x_2009 : i32 = u_xlati52;
          let x_2012 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[(x_2007 / 4i)][(x_2009 % 4i)];
          let x_2013 : vec3<f32> = vs_TEXCOORD7;
          let x_2016 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2012 * vec4<f32>(x_2013.x, x_2013.x, x_2013.x, x_2013.x)) + x_2016);
          let x_2018 : i32 = u_xlati52;
          let x_2021 : i32 = u_xlati52;
          let x_2025 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_2018 + 2i) / 4i)][((x_2021 + 2i) % 4i)];
          let x_2026 : vec3<f32> = vs_TEXCOORD7;
          let x_2029 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2025 * vec4<f32>(x_2026.z, x_2026.z, x_2026.z, x_2026.z)) + x_2029);
          let x_2031 : vec4<f32> = u_xlat12;
          let x_2032 : i32 = u_xlati52;
          let x_2035 : i32 = u_xlati52;
          let x_2039 : vec4<f32> = x_1043.x_AdditionalLightsWorldToLights[((x_2032 + 3i) / 4i)][((x_2035 + 3i) % 4i)];
          u_xlat12 = (x_2031 + x_2039);
          let x_2041 : vec4<f32> = u_xlat12;
          let x_2043 : vec4<f32> = u_xlat12;
          let x_2045 : vec3<f32> = (vec3<f32>(x_2041.x, x_2041.y, x_2041.z) / vec3<f32>(x_2043.w, x_2043.w, x_2043.w));
          let x_2046 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
          let x_2048 : vec4<f32> = u_xlat12;
          let x_2050 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
          let x_2053 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2053);
          let x_2055 : f32 = u_xlat50;
          let x_2057 : vec4<f32> = u_xlat12;
          let x_2059 : vec3<f32> = (vec3<f32>(x_2055, x_2055, x_2055) * vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
          let x_2060 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
          let x_2062 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2062.x, x_2062.y, x_2062.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2067 : f32 = u_xlat50;
          u_xlat50 = max(x_2067, 0.00000099999999747524f);
          let x_2070 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2070);
          let x_2072 : f32 = u_xlat50;
          let x_2074 : vec4<f32> = u_xlat12;
          let x_2076 : vec3<f32> = (vec3<f32>(x_2072, x_2072, x_2072) * vec3<f32>(x_2074.z, x_2074.x, x_2074.y));
          let x_2077 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
          let x_2080 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2080);
          let x_2084 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2084, 0.0f, 1.0f);
          let x_2088 : vec4<f32> = u_xlat13;
          let x_2090 : vec4<bool> = (vec4<f32>(x_2088.y, x_2088.z, x_2088.y, x_2088.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2090.x, x_2090.y);
          let x_2093 : bool = u_xlatb39.x;
          if (x_2093) {
            let x_2098 : f32 = u_xlat13.x;
            x_2094 = x_2098;
          } else {
            let x_2101 : f32 = u_xlat13.x;
            x_2094 = -(x_2101);
          }
          let x_2103 : f32 = x_2094;
          u_xlat39.x = x_2103;
          let x_2106 : bool = u_xlatb39.y;
          if (x_2106) {
            let x_2111 : f32 = u_xlat13.x;
            x_2107 = x_2111;
          } else {
            let x_2114 : f32 = u_xlat13.x;
            x_2107 = -(x_2114);
          }
          let x_2116 : f32 = x_2107;
          u_xlat39.y = x_2116;
          let x_2118 : vec4<f32> = u_xlat12;
          let x_2120 : f32 = u_xlat50;
          let x_2123 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2118.x, x_2118.y) * vec2<f32>(x_2120, x_2120)) + x_2123);
          let x_2125 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2125 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2128 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2128, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2132 : i32 = u_xlati5;
          let x_2134 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_2132];
          let x_2136 : vec2<f32> = u_xlat39;
          let x_2138 : i32 = u_xlati5;
          let x_2140 : vec4<f32> = x_1043.x_AdditionalLightsCookieAtlasUVRects[x_2138];
          let x_2142 : vec2<f32> = ((vec2<f32>(x_2134.x, x_2134.y) * x_2136) + vec2<f32>(x_2140.z, x_2140.w));
          let x_2143 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2142.x, x_2142.y, x_2143.z, x_2143.w);
        }
      }
      let x_2150 : vec4<f32> = u_xlat11;
      let x_2152 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2150.x, x_2150.y), 0.0f);
      u_xlat11 = x_2152;
      let x_2154 : bool = u_xlatb7.y;
      if (x_2154) {
        let x_2159 : f32 = u_xlat11.w;
        x_2155 = x_2159;
      } else {
        let x_2162 : f32 = u_xlat11.x;
        x_2155 = x_2162;
      }
      let x_2163 : f32 = x_2155;
      u_xlat50 = x_2163;
      let x_2165 : bool = u_xlatb7.x;
      if (x_2165) {
        let x_2169 : vec4<f32> = u_xlat11;
        x_2166 = vec3<f32>(x_2169.x, x_2169.y, x_2169.z);
      } else {
        let x_2172 : f32 = u_xlat50;
        x_2166 = vec3<f32>(x_2172, x_2172, x_2172);
      }
      let x_2174 : vec3<f32> = x_2166;
      let x_2175 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2181 : vec4<f32> = u_xlat11;
    let x_2183 : i32 = u_xlati5;
    let x_2185 : vec4<f32> = x_1527.x_AdditionalLightsColor[x_2183];
    let x_2187 : vec3<f32> = (vec3<f32>(x_2181.x, x_2181.y, x_2181.z) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2188 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
    let x_2190 : f32 = u_xlat48;
    let x_2191 : f32 = u_xlat49;
    u_xlat5.x = (x_2190 * x_2191);
    let x_2194 : vec4<f32> = u_xlat1;
    let x_2196 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2194.x, x_2194.y, x_2194.z), vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
    let x_2199 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2199, 0.0f, 1.0f);
    let x_2202 : f32 = u_xlat5.x;
    let x_2203 : f32 = u_xlat48;
    u_xlat5.x = (x_2202 * x_2203);
    let x_2206 : vec4<f32> = u_xlat5;
    let x_2208 : vec4<f32> = u_xlat11;
    let x_2210 : vec3<f32> = (vec3<f32>(x_2206.x, x_2206.x, x_2206.x) * vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
    let x_2211 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
    let x_2213 : vec4<f32> = u_xlat9;
    let x_2215 : f32 = u_xlat35;
    let x_2218 : vec4<f32> = u_xlat6;
    let x_2220 : vec3<f32> = ((vec3<f32>(x_2213.x, x_2213.y, x_2213.z) * vec3<f32>(x_2215, x_2215, x_2215)) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
    let x_2221 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
    let x_2223 : vec4<f32> = u_xlat9;
    let x_2225 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2223.x, x_2223.y, x_2223.z), vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
    let x_2230 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2230, 1.17549435e-38f);
    let x_2234 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_2234);
    let x_2237 : vec4<f32> = u_xlat5;
    let x_2239 : vec4<f32> = u_xlat9;
    let x_2241 : vec3<f32> = (vec3<f32>(x_2237.x, x_2237.x, x_2237.x) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
    let x_2242 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
    let x_2244 : vec4<f32> = u_xlat1;
    let x_2246 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2244.x, x_2244.y, x_2244.z), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2251 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2251, 0.0f, 1.0f);
    let x_2254 : vec4<f32> = u_xlat10;
    let x_2256 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2259, 0.0f, 1.0f);
    let x_2262 : f32 = u_xlat5.x;
    let x_2264 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2262 * x_2264);
    let x_2268 : f32 = u_xlat5.x;
    let x_2270 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_2268 * x_2270) + 1.00001001358032226562f);
    let x_2274 : f32 = u_xlat48;
    let x_2275 : f32 = u_xlat48;
    u_xlat48 = (x_2274 * x_2275);
    let x_2278 : f32 = u_xlat5.x;
    let x_2280 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2278 * x_2280);
    let x_2283 : f32 = u_xlat48;
    u_xlat48 = max(x_2283, 0.10000000149011611938f);
    let x_2286 : f32 = u_xlat5.x;
    let x_2287 : f32 = u_xlat48;
    u_xlat5.x = (x_2286 * x_2287);
    let x_2290 : f32 = u_xlat45;
    let x_2292 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2290 * x_2292);
    let x_2295 : f32 = u_xlat43;
    let x_2297 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2295 / x_2297);
    let x_2300 : vec4<f32> = u_xlat4;
    let x_2302 : vec4<f32> = u_xlat5;
    let x_2305 : vec4<f32> = u_xlat3;
    let x_2307 : vec3<f32> = ((vec3<f32>(x_2300.x, x_2300.y, x_2300.z) * vec3<f32>(x_2302.x, x_2302.x, x_2302.x)) + vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat9;
    let x_2312 : vec4<f32> = u_xlat11;
    let x_2315 : vec4<f32> = u_xlat8;
    let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.y, x_2310.z) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
    let x_2318 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);

    continuing {
      let x_2320 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2320 + bitcast<u32>(1i));
    }
  }
  let x_2322 : vec4<f32> = u_xlat2;
  let x_2324 : f32 = u_xlat14;
  let x_2327 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324, x_2324, x_2324)) + x_2327);
  let x_2329 : vec4<f32> = u_xlat8;
  let x_2331 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2329.x, x_2329.y, x_2329.z) + x_2331);
  let x_2335 : f32 = u_xlat42;
  let x_2337 : vec3<f32> = u_xlat0;
  let x_2338 : vec3<f32> = (vec3<f32>(x_2335, x_2335, x_2335) * x_2337);
  let x_2339 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
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


