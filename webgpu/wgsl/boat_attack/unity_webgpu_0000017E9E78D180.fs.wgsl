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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1025 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1256 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1766 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1206 : f32;
  var x_1339 : f32;
  var x_1350 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1896 : f32;
  var x_1906 : f32;
  var txVec1 : vec3<f32>;
  var x_2327 : f32;
  var x_2340 : f32;
  var x_2388 : f32;
  var x_2399 : vec3<f32>;
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
  u_xlat2.x = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_955) + 4.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_962);
  let x_966 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_966) << bitcast<u32>(2i));
  let x_970 : vec3<f32> = vs_TEXCOORD7;
  let x_972 : i32 = u_xlati2;
  let x_975 : i32 = u_xlati2;
  let x_979 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_970.y, x_970.y, x_970.y) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_987 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
  let x_989 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : i32 = u_xlati2;
  let x_997 : i32 = u_xlati2;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + x_1006);
  let x_1008 : vec3<f32> = u_xlat16;
  let x_1009 : i32 = u_xlati2;
  let x_1012 : i32 = u_xlati2;
  let x_1016 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1009 + 3i) / 4i)][((x_1012 + 3i) % 4i)];
  let x_1018 : vec3<f32> = (x_1008 + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  u_xlat1.w = 1.0f;
  let x_1027 : vec4<f32> = x_1025.unity_SHAr;
  let x_1028 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1027, x_1028);
  let x_1032 : vec4<f32> = x_1025.unity_SHAg;
  let x_1033 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1032, x_1033);
  let x_1037 : vec4<f32> = x_1025.unity_SHAb;
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1037, x_1038);
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1041.y, x_1041.z, x_1041.z, x_1041.x) * vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1043.z));
  let x_1047 : vec4<f32> = x_1025.unity_SHBr;
  let x_1048 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1047, x_1048);
  let x_1052 : vec4<f32> = x_1025.unity_SHBg;
  let x_1053 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1025.unity_SHBb;
  let x_1058 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1057, x_1058);
  let x_1062 : f32 = u_xlat1.y;
  let x_1064 : f32 = u_xlat1.y;
  u_xlat43 = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat1.x;
  let x_1069 : f32 = u_xlat1.x;
  let x_1071 : f32 = u_xlat43;
  u_xlat43 = ((x_1067 * x_1069) + -(x_1071));
  let x_1076 : vec4<f32> = x_1025.unity_SHC;
  let x_1078 : f32 = u_xlat43;
  let x_1081 : vec4<f32> = u_xlat6;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat3;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = max(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1099) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1105 : f32 = u_xlat43;
  u_xlat44 = (-(x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat43;
  let x_1110 : vec4<f32> = u_xlat5;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = u_xlat5;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.x, x_1122.x) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1130 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  let x_1139 : f32 = u_xlat0.x;
  u_xlat43 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat43;
  u_xlat43 = max(x_1141, 0.0078125f);
  let x_1145 : f32 = u_xlat43;
  let x_1146 : f32 = u_xlat43;
  u_xlat45 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat28;
  let x_1149 : f32 = u_xlat44;
  u_xlat28 = (x_1148 + x_1149);
  let x_1151 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1151, 0.0f, 1.0f);
  let x_1153 : f32 = u_xlat43;
  u_xlat44 = ((x_1153 * 4.0f) + 2.0f);
  let x_1156 : f32 = u_xlat14;
  u_xlat14 = min(x_1156, 1.0f);
  let x_1160 : vec4<f32> = u_xlat2;
  let x_1161 : vec2<f32> = vec2<f32>(x_1160.x, x_1160.y);
  let x_1163 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
  let x_1175 : vec3<f32> = txVec0;
  let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
  u_xlat2.x = x_1177;
  let x_1180 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1180) + 1.0f);
  let x_1185 : f32 = u_xlat2.x;
  let x_1187 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1190 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1185 * x_1187) + x_1190);
  let x_1195 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1195);
  let x_1199 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1199 >= 1.0f);
  let x_1201 : bool = u_xlatb30;
  let x_1202 : bool = u_xlatb16;
  u_xlatb16 = (x_1201 | x_1202);
  let x_1204 : bool = u_xlatb16;
  if (x_1204) {
    x_1206 = 1.0f;
  } else {
    let x_1211 : f32 = u_xlat2.x;
    x_1206 = x_1211;
  }
  let x_1212 : f32 = x_1206;
  u_xlat2.x = x_1212;
  let x_1214 : vec3<f32> = vs_TEXCOORD7;
  let x_1217 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1219 : vec3<f32> = (x_1214 + -(x_1217));
  let x_1220 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1224 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1230 : f32 = u_xlat16.x;
  let x_1232 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1235 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1230 * x_1232) + x_1235);
  let x_1237 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1237, 0.0f, 1.0f);
  let x_1241 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1241) + 1.0f);
  let x_1244 : f32 = u_xlat30;
  let x_1245 : f32 = u_xlat46;
  let x_1248 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1244 * x_1245) + x_1248);
  let x_1258 : f32 = x_1256.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1258 == -1.0f));
  let x_1260 : bool = u_xlatb30;
  if (x_1260) {
    let x_1263 : vec3<f32> = vs_TEXCOORD7;
    let x_1266 : vec4<f32> = x_1256.x_MainLightWorldToLight[1i];
    let x_1268 : vec2<f32> = (vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y));
    let x_1269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
    let x_1272 : vec4<f32> = x_1256.x_MainLightWorldToLight[0i];
    let x_1274 : vec3<f32> = vs_TEXCOORD7;
    let x_1277 : vec4<f32> = u_xlat6;
    let x_1279 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(x_1274.x, x_1274.x)) + vec2<f32>(x_1277.x, x_1277.y));
    let x_1280 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
    let x_1283 : vec4<f32> = x_1256.x_MainLightWorldToLight[2i];
    let x_1285 : vec3<f32> = vs_TEXCOORD7;
    let x_1288 : vec4<f32> = u_xlat6;
    let x_1290 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1285.z, x_1285.z)) + vec2<f32>(x_1288.x, x_1288.y));
    let x_1291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
    let x_1293 : vec4<f32> = u_xlat6;
    let x_1296 : vec4<f32> = x_1256.x_MainLightWorldToLight[3i];
    let x_1298 : vec2<f32> = (vec2<f32>(x_1293.x, x_1293.y) + vec2<f32>(x_1296.x, x_1296.y));
    let x_1299 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
    let x_1301 : vec4<f32> = u_xlat6;
    let x_1304 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
    let x_1312 : vec4<f32> = u_xlat6;
    let x_1315 : f32 = x_112.x_GlobalMipBias.x;
    let x_1316 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1312.x, x_1312.y), x_1315);
    u_xlat6 = x_1316;
    let x_1321 : f32 = x_1256.x_MainLightCookieTextureFormat;
    let x_1323 : f32 = x_1256.x_MainLightCookieTextureFormat;
    let x_1325 : f32 = x_1256.x_MainLightCookieTextureFormat;
    let x_1327 : f32 = x_1256.x_MainLightCookieTextureFormat;
    let x_1328 : vec4<f32> = vec4<f32>(x_1321, x_1323, x_1325, x_1327);
    let x_1335 : vec4<bool> = (vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1335.x, x_1335.y);
    let x_1338 : bool = u_xlatb7.y;
    if (x_1338) {
      let x_1343 : f32 = u_xlat6.w;
      x_1339 = x_1343;
    } else {
      let x_1346 : f32 = u_xlat6.x;
      x_1339 = x_1346;
    }
    let x_1347 : f32 = x_1339;
    u_xlat30 = x_1347;
    let x_1349 : bool = u_xlatb7.x;
    if (x_1349) {
      let x_1353 : vec4<f32> = u_xlat6;
      x_1350 = vec3<f32>(x_1353.x, x_1353.y, x_1353.z);
    } else {
      let x_1356 : f32 = u_xlat30;
      x_1350 = vec3<f32>(x_1356, x_1356, x_1356);
    }
    let x_1358 : vec3<f32> = x_1350;
    let x_1359 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1365 : vec4<f32> = u_xlat6;
  let x_1368 : vec4<f32> = x_112.x_MainLightColor;
  let x_1370 : vec3<f32> = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
  let x_1375 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1375;
  let x_1378 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1378;
  let x_1381 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1381;
  let x_1383 : vec4<f32> = u_xlat7;
  let x_1386 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1383.x, x_1383.y, x_1383.z)), vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1389 : f32 = u_xlat30;
  let x_1390 : f32 = u_xlat30;
  u_xlat30 = (x_1389 + x_1390);
  let x_1392 : vec4<f32> = u_xlat1;
  let x_1394 : f32 = u_xlat30;
  let x_1398 : vec4<f32> = u_xlat7;
  let x_1401 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * -(vec3<f32>(x_1394, x_1394, x_1394))) + -(vec3<f32>(x_1398.x, x_1398.y, x_1398.z)));
  let x_1402 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1404 : vec4<f32> = u_xlat1;
  let x_1406 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1404.x, x_1404.y, x_1404.z), vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1409, 0.0f, 1.0f);
  let x_1411 : f32 = u_xlat30;
  u_xlat30 = (-(x_1411) + 1.0f);
  let x_1414 : f32 = u_xlat30;
  let x_1415 : f32 = u_xlat30;
  u_xlat30 = (x_1414 * x_1415);
  let x_1417 : f32 = u_xlat30;
  let x_1418 : f32 = u_xlat30;
  u_xlat30 = (x_1417 * x_1418);
  let x_1421 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1421) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1428 : f32 = u_xlat0.x;
  let x_1429 : f32 = u_xlat46;
  u_xlat0.x = (x_1428 * x_1429);
  let x_1433 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1433 * 6.0f);
  let x_1445 : vec4<f32> = u_xlat8;
  let x_1448 : f32 = u_xlat0.x;
  let x_1449 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1445.x, x_1445.y, x_1445.z), x_1448);
  u_xlat8 = x_1449;
  let x_1451 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1451 + -1.0f);
  let x_1455 : f32 = x_1025.unity_SpecCube0_HDR.w;
  let x_1457 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1455 * x_1457) + 1.0f);
  let x_1462 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1462, 0.0f);
  let x_1466 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1466);
  let x_1470 : f32 = u_xlat0.x;
  let x_1472 : f32 = x_1025.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1470 * x_1472);
  let x_1476 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1476);
  let x_1480 : f32 = u_xlat0.x;
  let x_1482 : f32 = x_1025.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1480 * x_1482);
  let x_1485 : vec4<f32> = u_xlat8;
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1489 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) * vec3<f32>(x_1487.x, x_1487.x, x_1487.x));
  let x_1490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
  let x_1492 : f32 = u_xlat43;
  let x_1494 : f32 = u_xlat43;
  let x_1498 : vec2<f32> = ((vec2<f32>(x_1492, x_1492) * vec2<f32>(x_1494, x_1494)) + vec2<f32>(-1.0f, 1.0f));
  let x_1499 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
  let x_1502 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1502);
  let x_1506 : vec4<f32> = u_xlat5;
  let x_1509 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1506.x, x_1506.y, x_1506.z)) + vec3<f32>(x_1509, x_1509, x_1509));
  let x_1512 : f32 = u_xlat30;
  let x_1514 : vec3<f32> = u_xlat23;
  let x_1516 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1512, x_1512, x_1512) * x_1514) + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec3<f32> = u_xlat0;
  let x_1521 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1519.x, x_1519.x, x_1519.x) * x_1521);
  let x_1523 : vec4<f32> = u_xlat8;
  let x_1525 : vec3<f32> = u_xlat23;
  let x_1526 : vec3<f32> = (vec3<f32>(x_1523.x, x_1523.y, x_1523.z) * x_1525);
  let x_1527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
  let x_1529 : vec4<f32> = u_xlat3;
  let x_1531 : vec4<f32> = u_xlat4;
  let x_1534 : vec4<f32> = u_xlat8;
  let x_1536 : vec3<f32> = ((vec3<f32>(x_1529.x, x_1529.y, x_1529.z) * vec3<f32>(x_1531.x, x_1531.y, x_1531.z)) + vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
  let x_1537 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
  let x_1540 : f32 = u_xlat2.x;
  let x_1542 : f32 = x_1025.unity_LightData.z;
  u_xlat0.x = (x_1540 * x_1542);
  let x_1545 : vec4<f32> = u_xlat1;
  let x_1548 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1545.x, x_1545.y, x_1545.z), vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1551, 0.0f, 1.0f);
  let x_1553 : f32 = u_xlat28;
  let x_1555 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1553 * x_1555);
  let x_1558 : vec3<f32> = u_xlat0;
  let x_1560 : vec4<f32> = u_xlat6;
  let x_1562 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.x, x_1558.x) * vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
  let x_1563 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
  let x_1565 : vec4<f32> = u_xlat7;
  let x_1568 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1570 : vec3<f32> = (vec3<f32>(x_1565.x, x_1565.y, x_1565.z) + vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec4<f32> = u_xlat8;
  let x_1575 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1573.x, x_1573.y, x_1573.z), vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
  let x_1580 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1580, 1.17549435e-38f);
  let x_1585 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1585);
  let x_1588 : vec3<f32> = u_xlat0;
  let x_1590 : vec4<f32> = u_xlat8;
  let x_1592 : vec3<f32> = (vec3<f32>(x_1588.x, x_1588.x, x_1588.x) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec4<f32> = u_xlat1;
  let x_1597 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1595.x, x_1595.y, x_1595.z), vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
  let x_1602 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1602, 0.0f, 1.0f);
  let x_1606 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1608 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1606.x, x_1606.y, x_1606.z), vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
  let x_1613 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1613, 0.0f, 1.0f);
  let x_1616 : vec3<f32> = u_xlat0;
  let x_1618 : vec3<f32> = u_xlat0;
  let x_1620 : vec2<f32> = (vec2<f32>(x_1616.x, x_1616.z) * vec2<f32>(x_1618.x, x_1618.z));
  let x_1621 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1620.x, x_1621.y, x_1620.y);
  let x_1624 : f32 = u_xlat0.x;
  let x_1626 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1624 * x_1626) + 1.00001001358032226562f);
  let x_1632 : f32 = u_xlat0.x;
  let x_1634 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1632 * x_1634);
  let x_1638 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1638, 0.10000000149011611938f);
  let x_1641 : f32 = u_xlat28;
  let x_1643 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1641 * x_1643);
  let x_1646 : f32 = u_xlat44;
  let x_1648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1646 * x_1648);
  let x_1651 : f32 = u_xlat45;
  let x_1653 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1651 / x_1653);
  let x_1656 : vec4<f32> = u_xlat5;
  let x_1658 : vec3<f32> = u_xlat0;
  let x_1661 : vec4<f32> = u_xlat4;
  let x_1663 : vec3<f32> = ((vec3<f32>(x_1656.x, x_1656.y, x_1656.z) * vec3<f32>(x_1658.x, x_1658.x, x_1658.x)) + vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
  let x_1664 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
  let x_1666 : vec4<f32> = u_xlat6;
  let x_1668 : vec4<f32> = u_xlat8;
  let x_1670 : vec3<f32> = (vec3<f32>(x_1666.x, x_1666.y, x_1666.z) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
  let x_1671 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  let x_1674 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1676 : f32 = x_1025.unity_LightData.y;
  u_xlat0.x = min(x_1674, x_1676);
  let x_1681 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1681));
  let x_1685 : f32 = u_xlat16.x;
  let x_1687 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1690 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1685 * x_1687) + x_1690);
  let x_1692 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1692, 0.0f, 1.0f);
  let x_1695 : f32 = x_1256.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1697 : f32 = x_1256.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1699 : f32 = x_1256.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1701 : f32 = x_1256.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1702 : vec4<f32> = vec4<f32>(x_1695, x_1697, x_1699, x_1701);
  let x_1708 : vec4<bool> = (vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1709 : vec2<bool> = vec2<bool>(x_1708.x, x_1708.y);
  let x_1710 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_1709.x, x_1709.y, x_1710.z, x_1710.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1722 : u32 = u_xlatu_loop_1;
    let x_1723 : u32 = u_xlatu0;
    if ((x_1722 < x_1723)) {
    } else {
      break;
    }
    let x_1726 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1726 >> 2u);
    let x_1729 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1729 & 3u));
    let x_1732 : u32 = u_xlatu30;
    let x_1735 : vec4<f32> = x_1025.unity_LightIndices[bitcast<i32>(x_1732)];
    let x_1745 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1750 : vec4<u32> = indexable[x_1745];
    u_xlat30 = dot(x_1735, bitcast<vec4<f32>>(x_1750));
    let x_1754 : f32 = u_xlat30;
    u_xlati30 = i32(x_1754);
    let x_1756 : vec3<f32> = vs_TEXCOORD7;
    let x_1767 : i32 = u_xlati30;
    let x_1769 : vec4<f32> = x_1766.x_AdditionalLightsPosition[x_1767];
    let x_1772 : i32 = u_xlati30;
    let x_1774 : vec4<f32> = x_1766.x_AdditionalLightsPosition[x_1772];
    u_xlat23 = ((-(x_1756) * vec3<f32>(x_1769.w, x_1769.w, x_1769.w)) + vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec3<f32> = u_xlat23;
    let x_1778 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1777, x_1778);
    let x_1780 : f32 = u_xlat46;
    u_xlat46 = max(x_1780, 0.00006103515625f);
    let x_1783 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1783);
    let x_1785 : f32 = u_xlat47;
    let x_1787 : vec3<f32> = u_xlat23;
    let x_1788 : vec3<f32> = (vec3<f32>(x_1785, x_1785, x_1785) * x_1787);
    let x_1789 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
    let x_1792 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1792);
    let x_1794 : f32 = u_xlat46;
    let x_1795 : i32 = u_xlati30;
    let x_1797 : f32 = x_1766.x_AdditionalLightsAttenuation[x_1795].x;
    u_xlat46 = (x_1794 * x_1797);
    let x_1799 : f32 = u_xlat46;
    let x_1801 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1799) * x_1801) + 1.0f);
    let x_1804 : f32 = u_xlat46;
    u_xlat46 = max(x_1804, 0.0f);
    let x_1806 : f32 = u_xlat46;
    let x_1807 : f32 = u_xlat46;
    u_xlat46 = (x_1806 * x_1807);
    let x_1809 : f32 = u_xlat46;
    let x_1810 : f32 = u_xlat48;
    u_xlat46 = (x_1809 * x_1810);
    let x_1812 : i32 = u_xlati30;
    let x_1814 : vec4<f32> = x_1766.x_AdditionalLightsSpotDir[x_1812];
    let x_1816 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1814.x, x_1814.y, x_1814.z), vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
    let x_1819 : f32 = u_xlat48;
    let x_1820 : i32 = u_xlati30;
    let x_1822 : f32 = x_1766.x_AdditionalLightsAttenuation[x_1820].z;
    let x_1824 : i32 = u_xlati30;
    let x_1826 : f32 = x_1766.x_AdditionalLightsAttenuation[x_1824].w;
    u_xlat48 = ((x_1819 * x_1822) + x_1826);
    let x_1828 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1828, 0.0f, 1.0f);
    let x_1830 : f32 = u_xlat48;
    let x_1831 : f32 = u_xlat48;
    u_xlat48 = (x_1830 * x_1831);
    let x_1833 : f32 = u_xlat46;
    let x_1834 : f32 = u_xlat48;
    u_xlat46 = (x_1833 * x_1834);
    let x_1837 : i32 = u_xlati30;
    let x_1839 : f32 = x_845.x_AdditionalShadowParams[x_1837].w;
    u_xlati48 = i32(x_1839);
    let x_1842 : i32 = u_xlati48;
    u_xlatb49 = (x_1842 >= 0i);
    let x_1844 : bool = u_xlatb49;
    if (x_1844) {
      let x_1848 : i32 = u_xlati30;
      let x_1850 : f32 = x_845.x_AdditionalShadowParams[x_1848].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1850, x_1850, x_1850, x_1850))));
      let x_1854 : bool = u_xlatb49;
      if (x_1854) {
        let x_1858 : vec4<f32> = u_xlat10;
        let x_1861 : vec4<f32> = u_xlat10;
        let x_1864 : vec4<bool> = (abs(vec4<f32>(x_1858.z, x_1858.z, x_1858.y, x_1858.z)) >= abs(vec4<f32>(x_1861.x, x_1861.y, x_1861.x, x_1861.x)));
        let x_1866 : vec3<bool> = vec3<bool>(x_1864.x, x_1864.y, x_1864.z);
        let x_1867 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
        let x_1870 : bool = u_xlatb11.y;
        let x_1872 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1870 & x_1872);
        let x_1874 : vec4<f32> = u_xlat10;
        let x_1877 : vec4<bool> = (-(vec4<f32>(x_1874.z, x_1874.y, x_1874.z, x_1874.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1878 : vec3<bool> = vec3<bool>(x_1877.x, x_1877.y, x_1877.w);
        let x_1879 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1878.x, x_1878.y, x_1879.z, x_1878.z);
        let x_1882 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1882);
        let x_1887 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1887);
        let x_1892 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1892);
        let x_1895 : bool = u_xlatb11.z;
        if (x_1895) {
          let x_1900 : f32 = u_xlat11.y;
          x_1896 = x_1900;
        } else {
          let x_1902 : f32 = u_xlat50;
          x_1896 = x_1902;
        }
        let x_1903 : f32 = x_1896;
        u_xlat50 = x_1903;
        let x_1905 : bool = u_xlatb49;
        if (x_1905) {
          let x_1910 : f32 = u_xlat11.x;
          x_1906 = x_1910;
        } else {
          let x_1912 : f32 = u_xlat50;
          x_1906 = x_1912;
        }
        let x_1913 : f32 = x_1906;
        u_xlat49 = x_1913;
        let x_1914 : i32 = u_xlati30;
        let x_1916 : f32 = x_845.x_AdditionalShadowParams[x_1914].w;
        u_xlat50 = trunc(x_1916);
        let x_1918 : f32 = u_xlat49;
        let x_1919 : f32 = u_xlat50;
        u_xlat49 = (x_1918 + x_1919);
        let x_1921 : f32 = u_xlat49;
        u_xlati48 = i32(x_1921);
      }
      let x_1923 : i32 = u_xlati48;
      u_xlati48 = (x_1923 << bitcast<u32>(2i));
      let x_1925 : vec3<f32> = vs_TEXCOORD7;
      let x_1927 : i32 = u_xlati48;
      let x_1930 : i32 = u_xlati48;
      let x_1934 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1927 + 1i) / 4i)][((x_1930 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1925.y, x_1925.y, x_1925.y, x_1925.y) * x_1934);
      let x_1936 : i32 = u_xlati48;
      let x_1938 : i32 = u_xlati48;
      let x_1941 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1936 / 4i)][(x_1938 % 4i)];
      let x_1942 : vec3<f32> = vs_TEXCOORD7;
      let x_1945 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1941 * vec4<f32>(x_1942.x, x_1942.x, x_1942.x, x_1942.x)) + x_1945);
      let x_1947 : i32 = u_xlati48;
      let x_1950 : i32 = u_xlati48;
      let x_1954 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1947 + 2i) / 4i)][((x_1950 + 2i) % 4i)];
      let x_1955 : vec3<f32> = vs_TEXCOORD7;
      let x_1958 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1954 * vec4<f32>(x_1955.z, x_1955.z, x_1955.z, x_1955.z)) + x_1958);
      let x_1960 : vec4<f32> = u_xlat11;
      let x_1961 : i32 = u_xlati48;
      let x_1964 : i32 = u_xlati48;
      let x_1968 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1961 + 3i) / 4i)][((x_1964 + 3i) % 4i)];
      u_xlat11 = (x_1960 + x_1968);
      let x_1970 : vec4<f32> = u_xlat11;
      let x_1972 : vec4<f32> = u_xlat11;
      let x_1974 : vec3<f32> = (vec3<f32>(x_1970.x, x_1970.y, x_1970.z) / vec3<f32>(x_1972.w, x_1972.w, x_1972.w));
      let x_1975 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
      let x_1978 : vec4<f32> = u_xlat11;
      let x_1979 : vec2<f32> = vec2<f32>(x_1978.x, x_1978.y);
      let x_1981 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1979.x, x_1979.y, x_1981);
      let x_1989 : vec3<f32> = txVec1;
      let x_1991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
      u_xlat48 = x_1991;
      let x_1992 : i32 = u_xlati30;
      let x_1994 : f32 = x_845.x_AdditionalShadowParams[x_1992].x;
      u_xlat49 = (1.0f + -(x_1994));
      let x_1997 : f32 = u_xlat48;
      let x_1998 : i32 = u_xlati30;
      let x_2000 : f32 = x_845.x_AdditionalShadowParams[x_1998].x;
      let x_2002 : f32 = u_xlat49;
      u_xlat48 = ((x_1997 * x_2000) + x_2002);
      let x_2005 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_2005);
      let x_2009 : f32 = u_xlat11.z;
      u_xlatb50 = (x_2009 >= 1.0f);
      let x_2011 : bool = u_xlatb49;
      let x_2012 : bool = u_xlatb50;
      u_xlatb49 = (x_2011 | x_2012);
      let x_2014 : bool = u_xlatb49;
      let x_2015 : f32 = u_xlat48;
      u_xlat48 = select(x_2015, 1.0f, x_2014);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_2018 : f32 = u_xlat48;
    u_xlat49 = (-(x_2018) + 1.0f);
    let x_2021 : f32 = u_xlat28;
    let x_2022 : f32 = u_xlat49;
    let x_2024 : f32 = u_xlat48;
    u_xlat48 = ((x_2021 * x_2022) + x_2024);
    let x_2027 : i32 = u_xlati30;
    u_xlati49 = (1i << bitcast<u32>((x_2027 & 31i)));
    let x_2030 : i32 = u_xlati49;
    let x_2033 : f32 = x_1256.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_2030) & bitcast<u32>(x_2033)));
    let x_2037 : i32 = u_xlati49;
    if ((x_2037 != 0i)) {
      let x_2041 : i32 = u_xlati30;
      let x_2043 : f32 = x_1256.x_AdditionalLightsLightTypes[x_2041].el;
      u_xlati49 = i32(x_2043);
      let x_2046 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_2046 != 0i));
      let x_2050 : i32 = u_xlati30;
      u_xlati52 = (x_2050 << bitcast<u32>(2i));
      let x_2052 : i32 = u_xlati50;
      if ((x_2052 != 0i)) {
        let x_2056 : vec3<f32> = vs_TEXCOORD7;
        let x_2058 : i32 = u_xlati52;
        let x_2061 : i32 = u_xlati52;
        let x_2065 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2058 + 1i) / 4i)][((x_2061 + 1i) % 4i)];
        let x_2067 : vec3<f32> = (vec3<f32>(x_2056.y, x_2056.y, x_2056.y) * vec3<f32>(x_2065.x, x_2065.y, x_2065.w));
        let x_2068 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
        let x_2070 : i32 = u_xlati52;
        let x_2072 : i32 = u_xlati52;
        let x_2075 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[(x_2070 / 4i)][(x_2072 % 4i)];
        let x_2077 : vec3<f32> = vs_TEXCOORD7;
        let x_2080 : vec4<f32> = u_xlat11;
        let x_2082 : vec3<f32> = ((vec3<f32>(x_2075.x, x_2075.y, x_2075.w) * vec3<f32>(x_2077.x, x_2077.x, x_2077.x)) + vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
        let x_2083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
        let x_2085 : i32 = u_xlati52;
        let x_2088 : i32 = u_xlati52;
        let x_2092 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2085 + 2i) / 4i)][((x_2088 + 2i) % 4i)];
        let x_2094 : vec3<f32> = vs_TEXCOORD7;
        let x_2097 : vec4<f32> = u_xlat11;
        let x_2099 : vec3<f32> = ((vec3<f32>(x_2092.x, x_2092.y, x_2092.w) * vec3<f32>(x_2094.z, x_2094.z, x_2094.z)) + vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
        let x_2100 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
        let x_2102 : vec4<f32> = u_xlat11;
        let x_2104 : i32 = u_xlati52;
        let x_2107 : i32 = u_xlati52;
        let x_2111 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2104 + 3i) / 4i)][((x_2107 + 3i) % 4i)];
        let x_2113 : vec3<f32> = (vec3<f32>(x_2102.x, x_2102.y, x_2102.z) + vec3<f32>(x_2111.x, x_2111.y, x_2111.w));
        let x_2114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
        let x_2116 : vec4<f32> = u_xlat11;
        let x_2118 : vec4<f32> = u_xlat11;
        let x_2120 : vec2<f32> = (vec2<f32>(x_2116.x, x_2116.y) / vec2<f32>(x_2118.z, x_2118.z));
        let x_2121 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2120.x, x_2120.y, x_2121.z, x_2121.w);
        let x_2123 : vec4<f32> = u_xlat11;
        let x_2126 : vec2<f32> = ((vec2<f32>(x_2123.x, x_2123.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2127.w);
        let x_2129 : vec4<f32> = u_xlat11;
        let x_2133 : vec2<f32> = clamp(vec2<f32>(x_2129.x, x_2129.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
        let x_2136 : i32 = u_xlati30;
        let x_2138 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2136];
        let x_2140 : vec4<f32> = u_xlat11;
        let x_2143 : i32 = u_xlati30;
        let x_2145 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2143];
        let x_2147 : vec2<f32> = ((vec2<f32>(x_2138.x, x_2138.y) * vec2<f32>(x_2140.x, x_2140.y)) + vec2<f32>(x_2145.z, x_2145.w));
        let x_2148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
      } else {
        let x_2151 : i32 = u_xlati49;
        u_xlatb49 = (x_2151 == 1i);
        let x_2153 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_2153);
        let x_2155 : i32 = u_xlati49;
        if ((x_2155 != 0i)) {
          let x_2161 : vec3<f32> = vs_TEXCOORD7;
          let x_2163 : i32 = u_xlati52;
          let x_2166 : i32 = u_xlati52;
          let x_2170 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2163 + 1i) / 4i)][((x_2166 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2161.y, x_2161.y) * vec2<f32>(x_2170.x, x_2170.y));
          let x_2173 : i32 = u_xlati52;
          let x_2175 : i32 = u_xlati52;
          let x_2178 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[(x_2173 / 4i)][(x_2175 % 4i)];
          let x_2180 : vec3<f32> = vs_TEXCOORD7;
          let x_2183 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(x_2180.x, x_2180.x)) + x_2183);
          let x_2185 : i32 = u_xlati52;
          let x_2188 : i32 = u_xlati52;
          let x_2192 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2185 + 2i) / 4i)][((x_2188 + 2i) % 4i)];
          let x_2194 : vec3<f32> = vs_TEXCOORD7;
          let x_2197 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2192.x, x_2192.y) * vec2<f32>(x_2194.z, x_2194.z)) + x_2197);
          let x_2199 : vec2<f32> = u_xlat39;
          let x_2200 : i32 = u_xlati52;
          let x_2203 : i32 = u_xlati52;
          let x_2207 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2200 + 3i) / 4i)][((x_2203 + 3i) % 4i)];
          u_xlat39 = (x_2199 + vec2<f32>(x_2207.x, x_2207.y));
          let x_2210 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2210 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2213 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2213);
          let x_2215 : i32 = u_xlati30;
          let x_2217 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2215];
          let x_2219 : vec2<f32> = u_xlat39;
          let x_2221 : i32 = u_xlati30;
          let x_2223 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2221];
          let x_2225 : vec2<f32> = ((vec2<f32>(x_2217.x, x_2217.y) * x_2219) + vec2<f32>(x_2223.z, x_2223.w));
          let x_2226 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        } else {
          let x_2229 : vec3<f32> = vs_TEXCOORD7;
          let x_2231 : i32 = u_xlati52;
          let x_2234 : i32 = u_xlati52;
          let x_2238 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2231 + 1i) / 4i)][((x_2234 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2229.y, x_2229.y, x_2229.y, x_2229.y) * x_2238);
          let x_2240 : i32 = u_xlati52;
          let x_2242 : i32 = u_xlati52;
          let x_2245 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[(x_2240 / 4i)][(x_2242 % 4i)];
          let x_2246 : vec3<f32> = vs_TEXCOORD7;
          let x_2249 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2245 * vec4<f32>(x_2246.x, x_2246.x, x_2246.x, x_2246.x)) + x_2249);
          let x_2251 : i32 = u_xlati52;
          let x_2254 : i32 = u_xlati52;
          let x_2258 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2251 + 2i) / 4i)][((x_2254 + 2i) % 4i)];
          let x_2259 : vec3<f32> = vs_TEXCOORD7;
          let x_2262 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2258 * vec4<f32>(x_2259.z, x_2259.z, x_2259.z, x_2259.z)) + x_2262);
          let x_2264 : vec4<f32> = u_xlat12;
          let x_2265 : i32 = u_xlati52;
          let x_2268 : i32 = u_xlati52;
          let x_2272 : vec4<f32> = x_1256.x_AdditionalLightsWorldToLights[((x_2265 + 3i) / 4i)][((x_2268 + 3i) % 4i)];
          u_xlat12 = (x_2264 + x_2272);
          let x_2274 : vec4<f32> = u_xlat12;
          let x_2276 : vec4<f32> = u_xlat12;
          let x_2278 : vec3<f32> = (vec3<f32>(x_2274.x, x_2274.y, x_2274.z) / vec3<f32>(x_2276.w, x_2276.w, x_2276.w));
          let x_2279 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
          let x_2281 : vec4<f32> = u_xlat12;
          let x_2283 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2281.x, x_2281.y, x_2281.z), vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
          let x_2286 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2286);
          let x_2288 : f32 = u_xlat49;
          let x_2290 : vec4<f32> = u_xlat12;
          let x_2292 : vec3<f32> = (vec3<f32>(x_2288, x_2288, x_2288) * vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
          let x_2293 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
          let x_2295 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2295.x, x_2295.y, x_2295.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2300 : f32 = u_xlat49;
          u_xlat49 = max(x_2300, 0.00000099999999747524f);
          let x_2303 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2303);
          let x_2305 : f32 = u_xlat49;
          let x_2307 : vec4<f32> = u_xlat12;
          let x_2309 : vec3<f32> = (vec3<f32>(x_2305, x_2305, x_2305) * vec3<f32>(x_2307.z, x_2307.x, x_2307.y));
          let x_2310 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
          let x_2313 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2313);
          let x_2317 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2317, 0.0f, 1.0f);
          let x_2321 : vec4<f32> = u_xlat13;
          let x_2323 : vec4<bool> = (vec4<f32>(x_2321.y, x_2321.z, x_2321.y, x_2321.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2323.x, x_2323.y);
          let x_2326 : bool = u_xlatb39.x;
          if (x_2326) {
            let x_2331 : f32 = u_xlat13.x;
            x_2327 = x_2331;
          } else {
            let x_2334 : f32 = u_xlat13.x;
            x_2327 = -(x_2334);
          }
          let x_2336 : f32 = x_2327;
          u_xlat39.x = x_2336;
          let x_2339 : bool = u_xlatb39.y;
          if (x_2339) {
            let x_2344 : f32 = u_xlat13.x;
            x_2340 = x_2344;
          } else {
            let x_2347 : f32 = u_xlat13.x;
            x_2340 = -(x_2347);
          }
          let x_2349 : f32 = x_2340;
          u_xlat39.y = x_2349;
          let x_2351 : vec4<f32> = u_xlat12;
          let x_2353 : f32 = u_xlat49;
          let x_2356 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2351.x, x_2351.y) * vec2<f32>(x_2353, x_2353)) + x_2356);
          let x_2358 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2358 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2361 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2361, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2365 : i32 = u_xlati30;
          let x_2367 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2365];
          let x_2369 : vec2<f32> = u_xlat39;
          let x_2371 : i32 = u_xlati30;
          let x_2373 : vec4<f32> = x_1256.x_AdditionalLightsCookieAtlasUVRects[x_2371];
          let x_2375 : vec2<f32> = ((vec2<f32>(x_2367.x, x_2367.y) * x_2369) + vec2<f32>(x_2373.z, x_2373.w));
          let x_2376 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
        }
      }
      let x_2383 : vec4<f32> = u_xlat11;
      let x_2385 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2383.x, x_2383.y), 0.0f);
      u_xlat11 = x_2385;
      let x_2387 : bool = u_xlatb2.y;
      if (x_2387) {
        let x_2392 : f32 = u_xlat11.w;
        x_2388 = x_2392;
      } else {
        let x_2395 : f32 = u_xlat11.x;
        x_2388 = x_2395;
      }
      let x_2396 : f32 = x_2388;
      u_xlat49 = x_2396;
      let x_2398 : bool = u_xlatb2.x;
      if (x_2398) {
        let x_2402 : vec4<f32> = u_xlat11;
        x_2399 = vec3<f32>(x_2402.x, x_2402.y, x_2402.z);
      } else {
        let x_2405 : f32 = u_xlat49;
        x_2399 = vec3<f32>(x_2405, x_2405, x_2405);
      }
      let x_2407 : vec3<f32> = x_2399;
      let x_2408 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2414 : vec4<f32> = u_xlat11;
    let x_2416 : i32 = u_xlati30;
    let x_2418 : vec4<f32> = x_1766.x_AdditionalLightsColor[x_2416];
    let x_2420 : vec3<f32> = (vec3<f32>(x_2414.x, x_2414.y, x_2414.z) * vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
    let x_2421 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
    let x_2423 : f32 = u_xlat46;
    let x_2424 : f32 = u_xlat48;
    u_xlat30 = (x_2423 * x_2424);
    let x_2426 : vec4<f32> = u_xlat1;
    let x_2428 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
    let x_2431 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2431, 0.0f, 1.0f);
    let x_2433 : f32 = u_xlat30;
    let x_2434 : f32 = u_xlat46;
    u_xlat30 = (x_2433 * x_2434);
    let x_2436 : f32 = u_xlat30;
    let x_2438 : vec4<f32> = u_xlat11;
    let x_2440 : vec3<f32> = (vec3<f32>(x_2436, x_2436, x_2436) * vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
    let x_2443 : vec3<f32> = u_xlat23;
    let x_2444 : f32 = u_xlat47;
    let x_2447 : vec4<f32> = u_xlat7;
    u_xlat23 = ((x_2443 * vec3<f32>(x_2444, x_2444, x_2444)) + vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
    let x_2450 : vec3<f32> = u_xlat23;
    let x_2451 : vec3<f32> = u_xlat23;
    u_xlat30 = dot(x_2450, x_2451);
    let x_2453 : f32 = u_xlat30;
    u_xlat30 = max(x_2453, 1.17549435e-38f);
    let x_2455 : f32 = u_xlat30;
    u_xlat30 = inverseSqrt(x_2455);
    let x_2457 : f32 = u_xlat30;
    let x_2459 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2457, x_2457, x_2457) * x_2459);
    let x_2461 : vec4<f32> = u_xlat1;
    let x_2463 : vec3<f32> = u_xlat23;
    u_xlat30 = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), x_2463);
    let x_2465 : f32 = u_xlat30;
    u_xlat30 = clamp(x_2465, 0.0f, 1.0f);
    let x_2467 : vec4<f32> = u_xlat10;
    let x_2469 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), x_2469);
    let x_2471 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2471, 0.0f, 1.0f);
    let x_2473 : f32 = u_xlat30;
    let x_2474 : f32 = u_xlat30;
    u_xlat30 = (x_2473 * x_2474);
    let x_2476 : f32 = u_xlat30;
    let x_2478 : f32 = u_xlat9.x;
    u_xlat30 = ((x_2476 * x_2478) + 1.00001001358032226562f);
    let x_2481 : f32 = u_xlat46;
    let x_2482 : f32 = u_xlat46;
    u_xlat46 = (x_2481 * x_2482);
    let x_2484 : f32 = u_xlat30;
    let x_2485 : f32 = u_xlat30;
    u_xlat30 = (x_2484 * x_2485);
    let x_2487 : f32 = u_xlat46;
    u_xlat46 = max(x_2487, 0.10000000149011611938f);
    let x_2489 : f32 = u_xlat30;
    let x_2490 : f32 = u_xlat46;
    u_xlat30 = (x_2489 * x_2490);
    let x_2492 : f32 = u_xlat44;
    let x_2493 : f32 = u_xlat30;
    u_xlat30 = (x_2492 * x_2493);
    let x_2495 : f32 = u_xlat45;
    let x_2496 : f32 = u_xlat30;
    u_xlat30 = (x_2495 / x_2496);
    let x_2498 : vec4<f32> = u_xlat5;
    let x_2500 : f32 = u_xlat30;
    let x_2503 : vec4<f32> = u_xlat4;
    u_xlat23 = ((vec3<f32>(x_2498.x, x_2498.y, x_2498.z) * vec3<f32>(x_2500, x_2500, x_2500)) + vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
    let x_2506 : vec3<f32> = u_xlat23;
    let x_2507 : vec4<f32> = u_xlat11;
    let x_2510 : vec4<f32> = u_xlat8;
    let x_2512 : vec3<f32> = ((x_2506 * vec3<f32>(x_2507.x, x_2507.y, x_2507.z)) + vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
    let x_2513 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);

    continuing {
      let x_2515 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2515 + bitcast<u32>(1i));
    }
  }
  let x_2517 : vec4<f32> = u_xlat3;
  let x_2519 : f32 = u_xlat14;
  let x_2522 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2517.x, x_2517.y, x_2517.z) * vec3<f32>(x_2519, x_2519, x_2519)) + vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec4<f32> = u_xlat8;
  let x_2527 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2525.x, x_2525.y, x_2525.z) + x_2527);
  let x_2531 : f32 = u_xlat42;
  let x_2533 : vec3<f32> = u_xlat0;
  let x_2534 : vec3<f32> = (vec3<f32>(x_2531, x_2531, x_2531) * x_2533);
  let x_2535 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
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


