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

@group(1) @binding(4) var<uniform> x_606 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat44 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlati44 : i32;

@group(1) @binding(2) var<uniform> x_793 : UnityPerDraw;

var<private> u_xlat45 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1018 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_1513 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
  var txVec0 : vec3<f32>;
  var x_971 : f32;
  var x_1101 : f32;
  var x_1112 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1643 : f32;
  var x_1653 : f32;
  var txVec1 : vec3<f32>;
  var x_2074 : f32;
  var x_2087 : f32;
  var x_2135 : f32;
  var x_2146 : vec3<f32>;
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
  let x_712 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_712, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_717 : f32 = u_xlat44;
  u_xlat44 = (-(x_717) + 4.0f);
  let x_722 : f32 = u_xlat44;
  u_xlatu44 = u32(x_722);
  let x_726 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_726) << bitcast<u32>(2i));
  let x_729 : vec3<f32> = vs_TEXCOORD7;
  let x_731 : i32 = u_xlati44;
  let x_734 : i32 = u_xlati44;
  let x_738 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_731 + 1i) / 4i)][((x_734 + 1i) % 4i)];
  let x_740 : vec3<f32> = (vec3<f32>(x_729.y, x_729.y, x_729.y) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati44;
  let x_745 : i32 = u_xlati44;
  let x_748 : vec4<f32> = x_606.x_MainLightWorldToShadow[(x_743 / 4i)][(x_745 % 4i)];
  let x_750 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750.x, x_750.x, x_750.x)) + vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : i32 = u_xlati44;
  let x_761 : i32 = u_xlati44;
  let x_765 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_758 + 2i) / 4i)][((x_761 + 2i) % 4i)];
  let x_767 : vec3<f32> = vs_TEXCOORD7;
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767.z, x_767.z, x_767.z)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : i32 = u_xlati44;
  let x_780 : i32 = u_xlati44;
  let x_784 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_777 + 3i) / 4i)][((x_780 + 3i) % 4i)];
  let x_786 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  u_xlat1.w = 1.0f;
  let x_795 : vec4<f32> = x_793.unity_SHAr;
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_795, x_796);
  let x_800 : vec4<f32> = x_793.unity_SHAg;
  let x_801 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_800, x_801);
  let x_805 : vec4<f32> = x_793.unity_SHAb;
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_805, x_806);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_809.y, x_809.z, x_809.z, x_809.x) * vec4<f32>(x_811.x, x_811.y, x_811.z, x_811.z));
  let x_815 : vec4<f32> = x_793.unity_SHBr;
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_815, x_816);
  let x_820 : vec4<f32> = x_793.unity_SHBg;
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_820, x_821);
  let x_825 : vec4<f32> = x_793.unity_SHBb;
  let x_826 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_825, x_826);
  let x_830 : f32 = u_xlat1.y;
  let x_832 : f32 = u_xlat1.y;
  u_xlat43 = (x_830 * x_832);
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat1.x;
  let x_839 : f32 = u_xlat43;
  u_xlat43 = ((x_835 * x_837) + -(x_839));
  let x_844 : vec4<f32> = x_793.unity_SHC;
  let x_846 : f32 = u_xlat43;
  let x_849 : vec4<f32> = u_xlat7;
  let x_851 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat4;
  let x_856 : vec4<f32> = u_xlat6;
  let x_858 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_863 : vec3<f32> = max(vec3<f32>(x_861.x, x_861.y, x_861.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_867 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_867) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat43;
  u_xlat44 = (-(x_872) + 1.0f);
  let x_875 : f32 = u_xlat43;
  let x_877 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = (vec3<f32>(x_875, x_875, x_875) * vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat5;
  let x_886 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_887 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec3<f32> = u_xlat0;
  let x_891 : vec4<f32> = u_xlat5;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.x, x_889.x) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_897 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : f32 = u_xlat28;
  u_xlat0.x = (-(x_899) + 1.0f);
  let x_904 : f32 = u_xlat0.x;
  let x_906 : f32 = u_xlat0.x;
  u_xlat43 = (x_904 * x_906);
  let x_908 : f32 = u_xlat43;
  u_xlat43 = max(x_908, 0.0078125f);
  let x_912 : f32 = u_xlat43;
  let x_913 : f32 = u_xlat43;
  u_xlat45 = (x_912 * x_913);
  let x_915 : f32 = u_xlat28;
  let x_916 : f32 = u_xlat44;
  u_xlat28 = (x_915 + x_916);
  let x_918 : f32 = u_xlat28;
  u_xlat28 = clamp(x_918, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat43;
  u_xlat44 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat14;
  u_xlat14 = min(x_923, 1.0f);
  let x_927 : vec4<f32> = u_xlat3;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_930 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_928.x, x_928.y, x_930);
  let x_942 : vec3<f32> = txVec0;
  let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_942.xy, x_942.z);
  u_xlat3.x = x_944;
  let x_948 : f32 = x_606.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_948) + 1.0f);
  let x_952 : f32 = u_xlat3.x;
  let x_954 : f32 = x_606.x_MainLightShadowParams.x;
  let x_956 : f32 = u_xlat17;
  u_xlat3.x = ((x_952 * x_954) + x_956);
  let x_961 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_961);
  let x_965 : f32 = u_xlat3.z;
  u_xlatb31 = (x_965 >= 1.0f);
  let x_967 : bool = u_xlatb31;
  let x_968 : bool = u_xlatb17;
  u_xlatb17 = (x_967 | x_968);
  let x_970 : bool = u_xlatb17;
  if (x_970) {
    x_971 = 1.0f;
  } else {
    let x_976 : f32 = u_xlat3.x;
    x_971 = x_976;
  }
  let x_977 : f32 = x_971;
  u_xlat3.x = x_977;
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_983 : vec3<f32> = (x_979 + -(x_981));
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat7;
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_992 : f32 = u_xlat17;
  let x_994 : f32 = x_606.x_MainLightShadowParams.z;
  let x_997 : f32 = x_606.x_MainLightShadowParams.w;
  u_xlat31 = ((x_992 * x_994) + x_997);
  let x_999 : f32 = u_xlat31;
  u_xlat31 = clamp(x_999, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat31;
  let x_1007 : f32 = u_xlat46;
  let x_1010 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1006 * x_1007) + x_1010);
  let x_1020 : f32 = x_1018.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1020 == -1.0f));
  let x_1022 : bool = u_xlatb31;
  if (x_1022) {
    let x_1025 : vec3<f32> = vs_TEXCOORD7;
    let x_1028 : vec4<f32> = x_1018.x_MainLightWorldToLight[1i];
    let x_1030 : vec2<f32> = (vec2<f32>(x_1025.y, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y));
    let x_1031 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
    let x_1034 : vec4<f32> = x_1018.x_MainLightWorldToLight[0i];
    let x_1036 : vec3<f32> = vs_TEXCOORD7;
    let x_1039 : vec4<f32> = u_xlat7;
    let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1036.x, x_1036.x)) + vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
    let x_1045 : vec4<f32> = x_1018.x_MainLightWorldToLight[2i];
    let x_1047 : vec3<f32> = vs_TEXCOORD7;
    let x_1050 : vec4<f32> = u_xlat7;
    let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.z, x_1047.z)) + vec2<f32>(x_1050.x, x_1050.y));
    let x_1053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
    let x_1055 : vec4<f32> = u_xlat7;
    let x_1058 : vec4<f32> = x_1018.x_MainLightWorldToLight[3i];
    let x_1060 : vec2<f32> = (vec2<f32>(x_1055.x, x_1055.y) + vec2<f32>(x_1058.x, x_1058.y));
    let x_1061 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
    let x_1063 : vec4<f32> = u_xlat7;
    let x_1066 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1067 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
    let x_1074 : vec4<f32> = u_xlat7;
    let x_1077 : f32 = x_111.x_GlobalMipBias.x;
    let x_1078 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1074.x, x_1074.y), x_1077);
    u_xlat7 = x_1078;
    let x_1083 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1085 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1087 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1089 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1090 : vec4<f32> = vec4<f32>(x_1083, x_1085, x_1087, x_1089);
    let x_1097 : vec4<bool> = (vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1097.x, x_1097.y);
    let x_1100 : bool = u_xlatb8.y;
    if (x_1100) {
      let x_1105 : f32 = u_xlat7.w;
      x_1101 = x_1105;
    } else {
      let x_1108 : f32 = u_xlat7.x;
      x_1101 = x_1108;
    }
    let x_1109 : f32 = x_1101;
    u_xlat31 = x_1109;
    let x_1111 : bool = u_xlatb8.x;
    if (x_1111) {
      let x_1115 : vec4<f32> = u_xlat7;
      x_1112 = vec3<f32>(x_1115.x, x_1115.y, x_1115.z);
    } else {
      let x_1118 : f32 = u_xlat31;
      x_1112 = vec3<f32>(x_1118, x_1118, x_1118);
    }
    let x_1120 : vec3<f32> = x_1112;
    let x_1121 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1127 : vec4<f32> = u_xlat7;
  let x_1130 : vec4<f32> = x_111.x_MainLightColor;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec3<f32> = u_xlat2;
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1135), vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : f32 = u_xlat31;
  let x_1141 : f32 = u_xlat31;
  u_xlat31 = (x_1140 + x_1141);
  let x_1143 : vec4<f32> = u_xlat1;
  let x_1145 : f32 = u_xlat31;
  let x_1149 : vec3<f32> = u_xlat2;
  let x_1151 : vec3<f32> = ((vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * -(vec3<f32>(x_1145, x_1145, x_1145))) + -(x_1149));
  let x_1152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat1;
  let x_1156 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1154.x, x_1154.y, x_1154.z), x_1156);
  let x_1158 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1158, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat31;
  u_xlat31 = (-(x_1160) + 1.0f);
  let x_1163 : f32 = u_xlat31;
  let x_1164 : f32 = u_xlat31;
  u_xlat31 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat31;
  let x_1167 : f32 = u_xlat31;
  u_xlat31 = (x_1166 * x_1167);
  let x_1170 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1170) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1177 : f32 = u_xlat0.x;
  let x_1178 : f32 = u_xlat46;
  u_xlat0.x = (x_1177 * x_1178);
  let x_1182 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1182 * 6.0f);
  let x_1194 : vec4<f32> = u_xlat8;
  let x_1197 : f32 = u_xlat0.x;
  let x_1198 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1194.x, x_1194.y, x_1194.z), x_1197);
  u_xlat8 = x_1198;
  let x_1200 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1200 + -1.0f);
  let x_1204 : f32 = x_793.unity_SpecCube0_HDR.w;
  let x_1206 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1204 * x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1211, 0.0f);
  let x_1215 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1215);
  let x_1219 : f32 = u_xlat0.x;
  let x_1221 : f32 = x_793.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1219 * x_1221);
  let x_1225 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1225);
  let x_1229 : f32 = u_xlat0.x;
  let x_1231 : f32 = x_793.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1229 * x_1231);
  let x_1234 : vec4<f32> = u_xlat8;
  let x_1236 : vec3<f32> = u_xlat0;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
  let x_1239 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : f32 = u_xlat43;
  let x_1243 : f32 = u_xlat43;
  let x_1247 : vec2<f32> = ((vec2<f32>(x_1241, x_1241) * vec2<f32>(x_1243, x_1243)) + vec2<f32>(-1.0f, 1.0f));
  let x_1248 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
  let x_1251 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1251);
  let x_1255 : vec4<f32> = u_xlat5;
  let x_1258 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1255.x, x_1255.y, x_1255.z)) + vec3<f32>(x_1258, x_1258, x_1258));
  let x_1261 : f32 = u_xlat31;
  let x_1263 : vec3<f32> = u_xlat23;
  let x_1265 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1261, x_1261, x_1261) * x_1263) + vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : vec3<f32> = u_xlat0;
  let x_1270 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1268.x, x_1268.x, x_1268.x) * x_1270);
  let x_1272 : vec4<f32> = u_xlat8;
  let x_1274 : vec3<f32> = u_xlat23;
  let x_1275 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * x_1274);
  let x_1276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat4;
  let x_1280 : vec4<f32> = u_xlat6;
  let x_1283 : vec4<f32> = u_xlat8;
  let x_1285 : vec3<f32> = ((vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z)) + vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1289 : f32 = u_xlat3.x;
  let x_1291 : f32 = x_793.unity_LightData.z;
  u_xlat0.x = (x_1289 * x_1291);
  let x_1294 : vec4<f32> = u_xlat1;
  let x_1297 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1300, 0.0f, 1.0f);
  let x_1302 : f32 = u_xlat28;
  let x_1304 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1302 * x_1304);
  let x_1307 : vec3<f32> = u_xlat0;
  let x_1309 : vec4<f32> = u_xlat7;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.x, x_1307.x) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : vec3<f32> = u_xlat2;
  let x_1316 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1318 : vec3<f32> = (x_1314 + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : vec4<f32> = u_xlat8;
  let x_1323 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1328, 1.17549435e-38f);
  let x_1333 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1333);
  let x_1336 : vec3<f32> = u_xlat0;
  let x_1338 : vec4<f32> = u_xlat8;
  let x_1340 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.x, x_1336.x) * vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
  let x_1343 : vec4<f32> = u_xlat1;
  let x_1345 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1343.x, x_1343.y, x_1343.z), vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1350 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1350, 0.0f, 1.0f);
  let x_1354 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1354.x, x_1354.y, x_1354.z), vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1361 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1361, 0.0f, 1.0f);
  let x_1364 : vec3<f32> = u_xlat0;
  let x_1366 : vec3<f32> = u_xlat0;
  let x_1368 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.z) * vec2<f32>(x_1366.x, x_1366.z));
  let x_1369 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1368.x, x_1369.y, x_1368.y);
  let x_1372 : f32 = u_xlat0.x;
  let x_1374 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1372 * x_1374) + 1.00001001358032226562f);
  let x_1380 : f32 = u_xlat0.x;
  let x_1382 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1380 * x_1382);
  let x_1386 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1386, 0.10000000149011611938f);
  let x_1389 : f32 = u_xlat28;
  let x_1391 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1389 * x_1391);
  let x_1394 : f32 = u_xlat44;
  let x_1396 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1394 * x_1396);
  let x_1399 : f32 = u_xlat45;
  let x_1401 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1399 / x_1401);
  let x_1404 : vec4<f32> = u_xlat5;
  let x_1406 : vec3<f32> = u_xlat0;
  let x_1409 : vec4<f32> = u_xlat6;
  let x_1411 : vec3<f32> = ((vec3<f32>(x_1404.x, x_1404.y, x_1404.z) * vec3<f32>(x_1406.x, x_1406.x, x_1406.x)) + vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
  let x_1412 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
  let x_1414 : vec4<f32> = u_xlat7;
  let x_1416 : vec4<f32> = u_xlat8;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1414.x, x_1414.y, x_1414.z) * vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1422 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1424 : f32 = x_793.unity_LightData.y;
  u_xlat0.x = min(x_1422, x_1424);
  let x_1429 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1429));
  let x_1432 : f32 = u_xlat17;
  let x_1434 : f32 = x_606.x_AdditionalShadowFadeParams.x;
  let x_1437 : f32 = x_606.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1432 * x_1434) + x_1437);
  let x_1439 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1439, 0.0f, 1.0f);
  let x_1442 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1444 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1446 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1448 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1449 : vec4<f32> = vec4<f32>(x_1442, x_1444, x_1446, x_1448);
  let x_1455 : vec4<bool> = (vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1449.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1456 : vec2<bool> = vec2<bool>(x_1455.x, x_1455.y);
  let x_1457 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1456.x, x_1456.y, x_1457.z, x_1457.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1469 : u32 = u_xlatu_loop_1;
    let x_1470 : u32 = u_xlatu0;
    if ((x_1469 < x_1470)) {
    } else {
      break;
    }
    let x_1473 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_1473 >> 2u);
    let x_1476 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1476 & 3u));
    let x_1479 : u32 = u_xlatu31;
    let x_1482 : vec4<f32> = x_793.unity_LightIndices[bitcast<i32>(x_1479)];
    let x_1492 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1497 : vec4<u32> = indexable[x_1492];
    u_xlat31 = dot(x_1482, bitcast<vec4<f32>>(x_1497));
    let x_1501 : f32 = u_xlat31;
    u_xlati31 = i32(x_1501);
    let x_1503 : vec3<f32> = vs_TEXCOORD7;
    let x_1514 : i32 = u_xlati31;
    let x_1516 : vec4<f32> = x_1513.x_AdditionalLightsPosition[x_1514];
    let x_1519 : i32 = u_xlati31;
    let x_1521 : vec4<f32> = x_1513.x_AdditionalLightsPosition[x_1519];
    u_xlat23 = ((-(x_1503) * vec3<f32>(x_1516.w, x_1516.w, x_1516.w)) + vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
    let x_1524 : vec3<f32> = u_xlat23;
    let x_1525 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1524, x_1525);
    let x_1527 : f32 = u_xlat46;
    u_xlat46 = max(x_1527, 0.00006103515625f);
    let x_1530 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1530);
    let x_1532 : f32 = u_xlat47;
    let x_1534 : vec3<f32> = u_xlat23;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1532, x_1532, x_1532) * x_1534);
    let x_1536 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1539 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1539);
    let x_1541 : f32 = u_xlat46;
    let x_1542 : i32 = u_xlati31;
    let x_1544 : f32 = x_1513.x_AdditionalLightsAttenuation[x_1542].x;
    u_xlat46 = (x_1541 * x_1544);
    let x_1546 : f32 = u_xlat46;
    let x_1548 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1546) * x_1548) + 1.0f);
    let x_1551 : f32 = u_xlat46;
    u_xlat46 = max(x_1551, 0.0f);
    let x_1553 : f32 = u_xlat46;
    let x_1554 : f32 = u_xlat46;
    u_xlat46 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat46;
    let x_1557 : f32 = u_xlat48;
    u_xlat46 = (x_1556 * x_1557);
    let x_1559 : i32 = u_xlati31;
    let x_1561 : vec4<f32> = x_1513.x_AdditionalLightsSpotDir[x_1559];
    let x_1563 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1561.x, x_1561.y, x_1561.z), vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
    let x_1566 : f32 = u_xlat48;
    let x_1567 : i32 = u_xlati31;
    let x_1569 : f32 = x_1513.x_AdditionalLightsAttenuation[x_1567].z;
    let x_1571 : i32 = u_xlati31;
    let x_1573 : f32 = x_1513.x_AdditionalLightsAttenuation[x_1571].w;
    u_xlat48 = ((x_1566 * x_1569) + x_1573);
    let x_1575 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : f32 = u_xlat48;
    let x_1578 : f32 = u_xlat48;
    u_xlat48 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat46;
    let x_1581 : f32 = u_xlat48;
    u_xlat46 = (x_1580 * x_1581);
    let x_1584 : i32 = u_xlati31;
    let x_1586 : f32 = x_606.x_AdditionalShadowParams[x_1584].w;
    u_xlati48 = i32(x_1586);
    let x_1589 : i32 = u_xlati48;
    u_xlatb49 = (x_1589 >= 0i);
    let x_1591 : bool = u_xlatb49;
    if (x_1591) {
      let x_1595 : i32 = u_xlati31;
      let x_1597 : f32 = x_606.x_AdditionalShadowParams[x_1595].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1597, x_1597, x_1597, x_1597))));
      let x_1601 : bool = u_xlatb49;
      if (x_1601) {
        let x_1605 : vec4<f32> = u_xlat10;
        let x_1608 : vec4<f32> = u_xlat10;
        let x_1611 : vec4<bool> = (abs(vec4<f32>(x_1605.z, x_1605.z, x_1605.y, x_1605.z)) >= abs(vec4<f32>(x_1608.x, x_1608.y, x_1608.x, x_1608.x)));
        let x_1613 : vec3<bool> = vec3<bool>(x_1611.x, x_1611.y, x_1611.z);
        let x_1614 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
        let x_1617 : bool = u_xlatb11.y;
        let x_1619 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1617 & x_1619);
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1624 : vec4<bool> = (-(vec4<f32>(x_1621.z, x_1621.y, x_1621.z, x_1621.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1625 : vec3<bool> = vec3<bool>(x_1624.x, x_1624.y, x_1624.w);
        let x_1626 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1625.x, x_1625.y, x_1626.z, x_1625.z);
        let x_1629 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1629);
        let x_1634 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1634);
        let x_1639 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1639);
        let x_1642 : bool = u_xlatb11.z;
        if (x_1642) {
          let x_1647 : f32 = u_xlat11.y;
          x_1643 = x_1647;
        } else {
          let x_1649 : f32 = u_xlat50;
          x_1643 = x_1649;
        }
        let x_1650 : f32 = x_1643;
        u_xlat50 = x_1650;
        let x_1652 : bool = u_xlatb49;
        if (x_1652) {
          let x_1657 : f32 = u_xlat11.x;
          x_1653 = x_1657;
        } else {
          let x_1659 : f32 = u_xlat50;
          x_1653 = x_1659;
        }
        let x_1660 : f32 = x_1653;
        u_xlat49 = x_1660;
        let x_1661 : i32 = u_xlati31;
        let x_1663 : f32 = x_606.x_AdditionalShadowParams[x_1661].w;
        u_xlat50 = trunc(x_1663);
        let x_1665 : f32 = u_xlat49;
        let x_1666 : f32 = u_xlat50;
        u_xlat49 = (x_1665 + x_1666);
        let x_1668 : f32 = u_xlat49;
        u_xlati48 = i32(x_1668);
      }
      let x_1670 : i32 = u_xlati48;
      u_xlati48 = (x_1670 << bitcast<u32>(2i));
      let x_1672 : vec3<f32> = vs_TEXCOORD7;
      let x_1674 : i32 = u_xlati48;
      let x_1677 : i32 = u_xlati48;
      let x_1681 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1674 + 1i) / 4i)][((x_1677 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1672.y, x_1672.y, x_1672.y, x_1672.y) * x_1681);
      let x_1683 : i32 = u_xlati48;
      let x_1685 : i32 = u_xlati48;
      let x_1688 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[(x_1683 / 4i)][(x_1685 % 4i)];
      let x_1689 : vec3<f32> = vs_TEXCOORD7;
      let x_1692 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1688 * vec4<f32>(x_1689.x, x_1689.x, x_1689.x, x_1689.x)) + x_1692);
      let x_1694 : i32 = u_xlati48;
      let x_1697 : i32 = u_xlati48;
      let x_1701 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1694 + 2i) / 4i)][((x_1697 + 2i) % 4i)];
      let x_1702 : vec3<f32> = vs_TEXCOORD7;
      let x_1705 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1701 * vec4<f32>(x_1702.z, x_1702.z, x_1702.z, x_1702.z)) + x_1705);
      let x_1707 : vec4<f32> = u_xlat11;
      let x_1708 : i32 = u_xlati48;
      let x_1711 : i32 = u_xlati48;
      let x_1715 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_1708 + 3i) / 4i)][((x_1711 + 3i) % 4i)];
      u_xlat11 = (x_1707 + x_1715);
      let x_1717 : vec4<f32> = u_xlat11;
      let x_1719 : vec4<f32> = u_xlat11;
      let x_1721 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.y, x_1717.z) / vec3<f32>(x_1719.w, x_1719.w, x_1719.w));
      let x_1722 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
      let x_1725 : vec4<f32> = u_xlat11;
      let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
      let x_1728 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
      let x_1736 : vec3<f32> = txVec1;
      let x_1738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1736.xy, x_1736.z);
      u_xlat48 = x_1738;
      let x_1739 : i32 = u_xlati31;
      let x_1741 : f32 = x_606.x_AdditionalShadowParams[x_1739].x;
      u_xlat49 = (1.0f + -(x_1741));
      let x_1744 : f32 = u_xlat48;
      let x_1745 : i32 = u_xlati31;
      let x_1747 : f32 = x_606.x_AdditionalShadowParams[x_1745].x;
      let x_1749 : f32 = u_xlat49;
      u_xlat48 = ((x_1744 * x_1747) + x_1749);
      let x_1752 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1752);
      let x_1756 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1756 >= 1.0f);
      let x_1758 : bool = u_xlatb49;
      let x_1759 : bool = u_xlatb50;
      u_xlatb49 = (x_1758 | x_1759);
      let x_1761 : bool = u_xlatb49;
      let x_1762 : f32 = u_xlat48;
      u_xlat48 = select(x_1762, 1.0f, x_1761);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1765 : f32 = u_xlat48;
    u_xlat49 = (-(x_1765) + 1.0f);
    let x_1768 : f32 = u_xlat28;
    let x_1769 : f32 = u_xlat49;
    let x_1771 : f32 = u_xlat48;
    u_xlat48 = ((x_1768 * x_1769) + x_1771);
    let x_1774 : i32 = u_xlati31;
    u_xlati49 = (1i << bitcast<u32>((x_1774 & 31i)));
    let x_1777 : i32 = u_xlati49;
    let x_1780 : f32 = x_1018.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1777) & bitcast<u32>(x_1780)));
    let x_1784 : i32 = u_xlati49;
    if ((x_1784 != 0i)) {
      let x_1788 : i32 = u_xlati31;
      let x_1790 : f32 = x_1018.x_AdditionalLightsLightTypes[x_1788].el;
      u_xlati49 = i32(x_1790);
      let x_1793 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1793 != 0i));
      let x_1797 : i32 = u_xlati31;
      u_xlati52 = (x_1797 << bitcast<u32>(2i));
      let x_1799 : i32 = u_xlati50;
      if ((x_1799 != 0i)) {
        let x_1803 : vec3<f32> = vs_TEXCOORD7;
        let x_1805 : i32 = u_xlati52;
        let x_1808 : i32 = u_xlati52;
        let x_1812 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1805 + 1i) / 4i)][((x_1808 + 1i) % 4i)];
        let x_1814 : vec3<f32> = (vec3<f32>(x_1803.y, x_1803.y, x_1803.y) * vec3<f32>(x_1812.x, x_1812.y, x_1812.w));
        let x_1815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
        let x_1817 : i32 = u_xlati52;
        let x_1819 : i32 = u_xlati52;
        let x_1822 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1817 / 4i)][(x_1819 % 4i)];
        let x_1824 : vec3<f32> = vs_TEXCOORD7;
        let x_1827 : vec4<f32> = u_xlat11;
        let x_1829 : vec3<f32> = ((vec3<f32>(x_1822.x, x_1822.y, x_1822.w) * vec3<f32>(x_1824.x, x_1824.x, x_1824.x)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
        let x_1830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
        let x_1832 : i32 = u_xlati52;
        let x_1835 : i32 = u_xlati52;
        let x_1839 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1832 + 2i) / 4i)][((x_1835 + 2i) % 4i)];
        let x_1841 : vec3<f32> = vs_TEXCOORD7;
        let x_1844 : vec4<f32> = u_xlat11;
        let x_1846 : vec3<f32> = ((vec3<f32>(x_1839.x, x_1839.y, x_1839.w) * vec3<f32>(x_1841.z, x_1841.z, x_1841.z)) + vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
        let x_1847 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
        let x_1849 : vec4<f32> = u_xlat11;
        let x_1851 : i32 = u_xlati52;
        let x_1854 : i32 = u_xlati52;
        let x_1858 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1851 + 3i) / 4i)][((x_1854 + 3i) % 4i)];
        let x_1860 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) + vec3<f32>(x_1858.x, x_1858.y, x_1858.w));
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
        let x_1863 : vec4<f32> = u_xlat11;
        let x_1865 : vec4<f32> = u_xlat11;
        let x_1867 : vec2<f32> = (vec2<f32>(x_1863.x, x_1863.y) / vec2<f32>(x_1865.z, x_1865.z));
        let x_1868 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
        let x_1870 : vec4<f32> = u_xlat11;
        let x_1873 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1874 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
        let x_1876 : vec4<f32> = u_xlat11;
        let x_1880 : vec2<f32> = clamp(vec2<f32>(x_1876.x, x_1876.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1881 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
        let x_1883 : i32 = u_xlati31;
        let x_1885 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1883];
        let x_1887 : vec4<f32> = u_xlat11;
        let x_1890 : i32 = u_xlati31;
        let x_1892 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1890];
        let x_1894 : vec2<f32> = ((vec2<f32>(x_1885.x, x_1885.y) * vec2<f32>(x_1887.x, x_1887.y)) + vec2<f32>(x_1892.z, x_1892.w));
        let x_1895 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1895.z, x_1895.w);
      } else {
        let x_1898 : i32 = u_xlati49;
        u_xlatb49 = (x_1898 == 1i);
        let x_1900 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1900);
        let x_1902 : i32 = u_xlati49;
        if ((x_1902 != 0i)) {
          let x_1908 : vec3<f32> = vs_TEXCOORD7;
          let x_1910 : i32 = u_xlati52;
          let x_1913 : i32 = u_xlati52;
          let x_1917 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1910 + 1i) / 4i)][((x_1913 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1908.y, x_1908.y) * vec2<f32>(x_1917.x, x_1917.y));
          let x_1920 : i32 = u_xlati52;
          let x_1922 : i32 = u_xlati52;
          let x_1925 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1920 / 4i)][(x_1922 % 4i)];
          let x_1927 : vec3<f32> = vs_TEXCOORD7;
          let x_1930 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(x_1927.x, x_1927.x)) + x_1930);
          let x_1932 : i32 = u_xlati52;
          let x_1935 : i32 = u_xlati52;
          let x_1939 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1932 + 2i) / 4i)][((x_1935 + 2i) % 4i)];
          let x_1941 : vec3<f32> = vs_TEXCOORD7;
          let x_1944 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1939.x, x_1939.y) * vec2<f32>(x_1941.z, x_1941.z)) + x_1944);
          let x_1946 : vec2<f32> = u_xlat39;
          let x_1947 : i32 = u_xlati52;
          let x_1950 : i32 = u_xlati52;
          let x_1954 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1947 + 3i) / 4i)][((x_1950 + 3i) % 4i)];
          u_xlat39 = (x_1946 + vec2<f32>(x_1954.x, x_1954.y));
          let x_1957 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1957 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1960 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1960);
          let x_1962 : i32 = u_xlati31;
          let x_1964 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1962];
          let x_1966 : vec2<f32> = u_xlat39;
          let x_1968 : i32 = u_xlati31;
          let x_1970 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1968];
          let x_1972 : vec2<f32> = ((vec2<f32>(x_1964.x, x_1964.y) * x_1966) + vec2<f32>(x_1970.z, x_1970.w));
          let x_1973 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
        } else {
          let x_1976 : vec3<f32> = vs_TEXCOORD7;
          let x_1978 : i32 = u_xlati52;
          let x_1981 : i32 = u_xlati52;
          let x_1985 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1978 + 1i) / 4i)][((x_1981 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1976.y, x_1976.y, x_1976.y, x_1976.y) * x_1985);
          let x_1987 : i32 = u_xlati52;
          let x_1989 : i32 = u_xlati52;
          let x_1992 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1987 / 4i)][(x_1989 % 4i)];
          let x_1993 : vec3<f32> = vs_TEXCOORD7;
          let x_1996 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1992 * vec4<f32>(x_1993.x, x_1993.x, x_1993.x, x_1993.x)) + x_1996);
          let x_1998 : i32 = u_xlati52;
          let x_2001 : i32 = u_xlati52;
          let x_2005 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1998 + 2i) / 4i)][((x_2001 + 2i) % 4i)];
          let x_2006 : vec3<f32> = vs_TEXCOORD7;
          let x_2009 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2005 * vec4<f32>(x_2006.z, x_2006.z, x_2006.z, x_2006.z)) + x_2009);
          let x_2011 : vec4<f32> = u_xlat12;
          let x_2012 : i32 = u_xlati52;
          let x_2015 : i32 = u_xlati52;
          let x_2019 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_2012 + 3i) / 4i)][((x_2015 + 3i) % 4i)];
          u_xlat12 = (x_2011 + x_2019);
          let x_2021 : vec4<f32> = u_xlat12;
          let x_2023 : vec4<f32> = u_xlat12;
          let x_2025 : vec3<f32> = (vec3<f32>(x_2021.x, x_2021.y, x_2021.z) / vec3<f32>(x_2023.w, x_2023.w, x_2023.w));
          let x_2026 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
          let x_2028 : vec4<f32> = u_xlat12;
          let x_2030 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2028.x, x_2028.y, x_2028.z), vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
          let x_2033 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2033);
          let x_2035 : f32 = u_xlat49;
          let x_2037 : vec4<f32> = u_xlat12;
          let x_2039 : vec3<f32> = (vec3<f32>(x_2035, x_2035, x_2035) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
          let x_2040 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
          let x_2042 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2042.x, x_2042.y, x_2042.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2047 : f32 = u_xlat49;
          u_xlat49 = max(x_2047, 0.00000099999999747524f);
          let x_2050 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2050);
          let x_2052 : f32 = u_xlat49;
          let x_2054 : vec4<f32> = u_xlat12;
          let x_2056 : vec3<f32> = (vec3<f32>(x_2052, x_2052, x_2052) * vec3<f32>(x_2054.z, x_2054.x, x_2054.y));
          let x_2057 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
          let x_2060 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2060);
          let x_2064 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2064, 0.0f, 1.0f);
          let x_2068 : vec4<f32> = u_xlat13;
          let x_2070 : vec4<bool> = (vec4<f32>(x_2068.y, x_2068.z, x_2068.y, x_2068.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2070.x, x_2070.y);
          let x_2073 : bool = u_xlatb39.x;
          if (x_2073) {
            let x_2078 : f32 = u_xlat13.x;
            x_2074 = x_2078;
          } else {
            let x_2081 : f32 = u_xlat13.x;
            x_2074 = -(x_2081);
          }
          let x_2083 : f32 = x_2074;
          u_xlat39.x = x_2083;
          let x_2086 : bool = u_xlatb39.y;
          if (x_2086) {
            let x_2091 : f32 = u_xlat13.x;
            x_2087 = x_2091;
          } else {
            let x_2094 : f32 = u_xlat13.x;
            x_2087 = -(x_2094);
          }
          let x_2096 : f32 = x_2087;
          u_xlat39.y = x_2096;
          let x_2098 : vec4<f32> = u_xlat12;
          let x_2100 : f32 = u_xlat49;
          let x_2103 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2098.x, x_2098.y) * vec2<f32>(x_2100, x_2100)) + x_2103);
          let x_2105 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2105 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2108 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2108, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2112 : i32 = u_xlati31;
          let x_2114 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_2112];
          let x_2116 : vec2<f32> = u_xlat39;
          let x_2118 : i32 = u_xlati31;
          let x_2120 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_2118];
          let x_2122 : vec2<f32> = ((vec2<f32>(x_2114.x, x_2114.y) * x_2116) + vec2<f32>(x_2120.z, x_2120.w));
          let x_2123 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
        }
      }
      let x_2130 : vec4<f32> = u_xlat11;
      let x_2132 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2130.x, x_2130.y), 0.0f);
      u_xlat11 = x_2132;
      let x_2134 : bool = u_xlatb3.y;
      if (x_2134) {
        let x_2139 : f32 = u_xlat11.w;
        x_2135 = x_2139;
      } else {
        let x_2142 : f32 = u_xlat11.x;
        x_2135 = x_2142;
      }
      let x_2143 : f32 = x_2135;
      u_xlat49 = x_2143;
      let x_2145 : bool = u_xlatb3.x;
      if (x_2145) {
        let x_2149 : vec4<f32> = u_xlat11;
        x_2146 = vec3<f32>(x_2149.x, x_2149.y, x_2149.z);
      } else {
        let x_2152 : f32 = u_xlat49;
        x_2146 = vec3<f32>(x_2152, x_2152, x_2152);
      }
      let x_2154 : vec3<f32> = x_2146;
      let x_2155 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2161 : vec4<f32> = u_xlat11;
    let x_2163 : i32 = u_xlati31;
    let x_2165 : vec4<f32> = x_1513.x_AdditionalLightsColor[x_2163];
    let x_2167 : vec3<f32> = (vec3<f32>(x_2161.x, x_2161.y, x_2161.z) * vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
    let x_2168 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
    let x_2170 : f32 = u_xlat46;
    let x_2171 : f32 = u_xlat48;
    u_xlat31 = (x_2170 * x_2171);
    let x_2173 : vec4<f32> = u_xlat1;
    let x_2175 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2173.x, x_2173.y, x_2173.z), vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2178, 0.0f, 1.0f);
    let x_2180 : f32 = u_xlat31;
    let x_2181 : f32 = u_xlat46;
    u_xlat31 = (x_2180 * x_2181);
    let x_2183 : f32 = u_xlat31;
    let x_2185 : vec4<f32> = u_xlat11;
    let x_2187 : vec3<f32> = (vec3<f32>(x_2183, x_2183, x_2183) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2188 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
    let x_2190 : vec3<f32> = u_xlat23;
    let x_2191 : f32 = u_xlat47;
    let x_2194 : vec3<f32> = u_xlat2;
    u_xlat23 = ((x_2190 * vec3<f32>(x_2191, x_2191, x_2191)) + x_2194);
    let x_2196 : vec3<f32> = u_xlat23;
    let x_2197 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(x_2196, x_2197);
    let x_2199 : f32 = u_xlat31;
    u_xlat31 = max(x_2199, 1.17549435e-38f);
    let x_2201 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_2201);
    let x_2203 : f32 = u_xlat31;
    let x_2205 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2203, x_2203, x_2203) * x_2205);
    let x_2207 : vec4<f32> = u_xlat1;
    let x_2209 : vec3<f32> = u_xlat23;
    u_xlat31 = dot(vec3<f32>(x_2207.x, x_2207.y, x_2207.z), x_2209);
    let x_2211 : f32 = u_xlat31;
    u_xlat31 = clamp(x_2211, 0.0f, 1.0f);
    let x_2213 : vec4<f32> = u_xlat10;
    let x_2215 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(vec3<f32>(x_2213.x, x_2213.y, x_2213.z), x_2215);
    let x_2217 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2217, 0.0f, 1.0f);
    let x_2219 : f32 = u_xlat31;
    let x_2220 : f32 = u_xlat31;
    u_xlat31 = (x_2219 * x_2220);
    let x_2222 : f32 = u_xlat31;
    let x_2224 : f32 = u_xlat9.x;
    u_xlat31 = ((x_2222 * x_2224) + 1.00001001358032226562f);
    let x_2227 : f32 = u_xlat46;
    let x_2228 : f32 = u_xlat46;
    u_xlat46 = (x_2227 * x_2228);
    let x_2230 : f32 = u_xlat31;
    let x_2231 : f32 = u_xlat31;
    u_xlat31 = (x_2230 * x_2231);
    let x_2233 : f32 = u_xlat46;
    u_xlat46 = max(x_2233, 0.10000000149011611938f);
    let x_2235 : f32 = u_xlat31;
    let x_2236 : f32 = u_xlat46;
    u_xlat31 = (x_2235 * x_2236);
    let x_2238 : f32 = u_xlat44;
    let x_2239 : f32 = u_xlat31;
    u_xlat31 = (x_2238 * x_2239);
    let x_2241 : f32 = u_xlat45;
    let x_2242 : f32 = u_xlat31;
    u_xlat31 = (x_2241 / x_2242);
    let x_2244 : vec4<f32> = u_xlat5;
    let x_2246 : f32 = u_xlat31;
    let x_2249 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2244.x, x_2244.y, x_2244.z) * vec3<f32>(x_2246, x_2246, x_2246)) + vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
    let x_2252 : vec3<f32> = u_xlat23;
    let x_2253 : vec4<f32> = u_xlat11;
    let x_2256 : vec4<f32> = u_xlat8;
    let x_2258 : vec3<f32> = ((x_2252 * vec3<f32>(x_2253.x, x_2253.y, x_2253.z)) + vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);

    continuing {
      let x_2261 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2261 + bitcast<u32>(1i));
    }
  }
  let x_2263 : vec4<f32> = u_xlat4;
  let x_2265 : f32 = u_xlat14;
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2263.x, x_2263.y, x_2263.z) * vec3<f32>(x_2265, x_2265, x_2265)) + vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2271 : vec4<f32> = u_xlat8;
  let x_2273 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2271.x, x_2271.y, x_2271.z) + x_2273);
  let x_2277 : f32 = u_xlat42;
  let x_2279 : vec3<f32> = u_xlat0;
  let x_2280 : vec3<f32> = (vec3<f32>(x_2277, x_2277, x_2277) * x_2279);
  let x_2281 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
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


